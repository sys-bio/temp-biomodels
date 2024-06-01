# -*- coding: utf-8 -*-
# change from https://github.com/BioAI-kits/RadClin/tree/main

import pandas as pd
import numpy as np
from imblearn.over_sampling import RandomOverSampler
from sklearn.feature_selection import RFE,RFECV
from sklearn.ensemble import RandomForestClassifier
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.ensemble import HistGradientBoostingClassifier
from sklearn.model_selection import train_test_split
import xgboost as xgb
import joblib
from sklearn.linear_model import LogisticRegression
from sklearn import  metrics
from sklearn.metrics import roc_curve, RocCurveDisplay, auc,make_scorer,accuracy_score,roc_auc_score,confusion_matrix, roc_auc_score
from sklearn.model_selection import GridSearchCV, StratifiedKFold, KFold
from sklearn.svm import SVC
from imblearn.over_sampling import RandomOverSampler
from collections import Counter
from sklearn.naive_bayes import GaussianNB
from sklearn.neural_network import MLPClassifier as MLP
import shap
import pdpbox


# load the data
df_cli = pd.read_excel('./immunotherapy_112_V4.xlsx')
# delete useless column
df_cli = df_cli.set_index('影像号',drop=True)

def f(x):
    return df_cli.loc[x, 'Label_0 (DCB=0 PFS>6,NDB=1 PFS≤6)']
df_pre = pd.read_csv('./precontrast_features.csv')
X_pre = df_pre.iloc[:,1:].values
Y_pre = df_pre.patient_id.map(f)
pd.value_counts(Y_pre)


# enlarge the sample size by resampling
ros = RandomOverSampler(random_state=42)
X_pre_up, Y_pre_up = ros.fit_resample(X_pre, Y_pre)

pd.value_counts(Y_pre_up)
# feature selection
X_train, X_test, Y_train, Y_test = train_test_split(X_pre_up, Y_pre_up, test_size=0.3, shuffle=True, random_state=42)
select = RFE(estimator=RandomForestClassifier(n_estimators=100, random_state=42),
             n_features_to_select=15,
             step=0.02
            )
select.fit(X_train, Y_train)
X_train_selected = select.transform(X_train)

estimator_pre = select.estimator_  # random forest model

features_pre = df_pre.iloc[:, 1:].columns.values[select.get_support()]  # feature selected

features_pre_imp = select.estimator_.feature_importances_  # feature importance

## Metric

# acc
acc_pre = select.estimator_.score(X_test[:,select.get_support()], Y_test)

# auc
proba_pre = select.estimator_.predict_proba(X_test[:,select.get_support()])[:,1]
auc_pre = roc_auc_score(Y_test, proba_pre)

tn, fp, fn, tp = confusion_matrix(y_true=Y_test, y_pred=select.estimator_.predict(X_test[:,select.get_support()])).ravel()
# sensitivity
sensitivity_pre = tp / (tp + fn)

# specificity
specificity_pre = tn / (tn + fp)

print('ACC: {:.3}, AUC: {:.3}, Sensitivity:{:.3f}, Specificity: {:.3}'.format(acc_pre, auc_pre, sensitivity_pre, specificity_pre))

# load the post data

df_cli = pd.read_excel('./immunotherapy_112_V4.xlsx')
df_cli = df_cli.set_index('影像号',drop=True)

def f(x):
    return df_cli.loc[x, 'Label_0 (DCB=0 PFS>6,NDB=1 PFS≤6)']
df_pos = pd.read_csv('./postcontrast_features.csv')
X_pos = df_pos.iloc[:,1:].values
Y_pos = df_pos.patient_id.map(f)

# enlarge the sample size by resampling
ros = RandomOverSampler(random_state=42)
X_pos_up, Y_pos_up = ros.fit_resample(X_pos, Y_pos)

pd.value_counts(Y_pos_up)
X_train, X_test, Y_train, Y_test = train_test_split(X_pos_up, Y_pos_up, test_size=0.3, shuffle=True, random_state=42)
select = RFE(estimator=RandomForestClassifier(n_estimators=100, random_state=42),
             n_features_to_select=15,
             step=0.02
            )
select.fit(X_train, Y_train)
X_train_selected = select.transform(X_train)

estimator_pos = select.estimator_  # random forest for post data

features_pos = df_pos.iloc[:, 1:].columns.values[select.get_support()]

features_pos_imp = select.estimator_.feature_importances_

X_cli = df_cli.iloc[:, 4:].values
Y_cli = df_cli.loc[:, 'Label_0 (DCB=0 PFS>6,NDB=1 PFS≤6)']
ros = RandomOverSampler(random_state=42)
X_cli_up, Y_cli_up = ros.fit_resample(X_cli, Y_cli)
X_train, X_test, Y_train, Y_test = train_test_split(X_cli_up, Y_cli_up, test_size=0.3, shuffle=True, random_state=42)
select = RFE(estimator=RandomForestClassifier(n_estimators=100, random_state=42),
             n_features_to_select=5,
             step=0.02
            )
select.fit(X_train, Y_train)
X_train_selected = select.transform(X_train)

estimator_cli = select.estimator_

features_cli = df_cli.iloc[:, 4:].columns.values[select.get_support()]

features_cli_imp = select.estimator_.feature_importances_

# merge the two dataset
df_merge = df_cli.loc[:, ['Label_0 (DCB=0 PFS>6,NDB=1 PFS≤6)'] + list(features_cli)]
df_merge = df_merge.sort_index()
df_merge = df_merge.reset_index(drop=True)
df_rad_pre = df_pre.sort_values('patient_id').loc[:, features_pre].reset_index(drop=True)
df_rad_pos = df_pos.sort_values('patient_id').loc[:, features_pos].reset_index(drop=True)
df_merge = pd.concat([df_merge, df_rad_pos, df_rad_pre], axis=1)
X_merge = df_merge.iloc[:, 1:].values
Y_merge = df_merge.loc[:, 'Label_0 (DCB=0 PFS>6,NDB=1 PFS≤6)']
ros = RandomOverSampler(random_state=42)
X_merge_up, Y_merge_up = ros.fit_resample(X_merge, Y_merge)



df_radiomic = pd.concat([df_rad_pos, df_rad_pre], axis=1)
X_radiomic = df_radiomic.values
Y_radiomic = Y_merge

ros = RandomOverSampler(random_state=42)
X_radiomic_up, Y_radiomic_up = ros.fit_resample(X_radiomic, Y_radiomic)

# the best parameter
tuned_parameters = param_grid = {'n_estimators': [30, 50, 100, 150],
                                 'max_features': [5, 10, 15, 20]}

gs_rf = GridSearchCV(RandomForestClassifier(),
                  tuned_parameters,
                  refit = True,
                  cv = 5,
                  scoring = 'roc_auc',
                  verbose = 1,
                  n_jobs = -1)
gs_rf.fit(X_radiomic_up,Y_radiomic_up) #Run fit with all sets of parameters.
print('RF best parameter: ',gs_rf.best_params_)
print('RF best performance: ', gs_rf.best_score_)


# tuned_parameters = {'kernel': ['rbf', 'sigmoid', 'linear'],
#                      'C': [1, 10, 100]}

# gs_svm = GridSearchCV(SVC(),
#                   tuned_parameters,
#                   refit = True,
#                   cv = 5,
#                   scoring = 'roc_auc',
#                   verbose = 1,
#                   n_jobs = -1)
# gs_svm.fit(X_radiomic_up,Y_radiomic_up) #Run fit with all sets of parameters.
# print('SVM best parameter: ',gs_svm.best_params_)
# print('SVM best performance: ', gs_svm.best_score_)



tuned_parameters = {'n_estimators': [30, 50, 100, 150],
                     'learning_rate': [0.1, 0.01],
                    'max_depth': [3, 4, 5, 6, 7, 8, 9, 10, 11]
                   }

gs_xgboost = GridSearchCV(xgb.XGBClassifier(),
                  tuned_parameters,
                  refit = True,
                  cv = 5,
                  scoring = 'roc_auc',
                  verbose = 1,
                  n_jobs = -1)
gs_xgboost.fit(X_radiomic_up,Y_radiomic_up) #Run fit with all sets of parameters.
print('XGboost best parameter: ',gs_xgboost.best_params_)
print('XGboost best performance: ', gs_xgboost.best_score_)

tuned_parameters = {"hidden_layer_sizes": [(64,32,8), (32,16,8)],
                    "solver": ['adam', 'sgd', 'lbfgs'],
                    "max_iter": [50,100],
                    "batch_size":[8,16],
                    "alpha":[1e-3],
                    "activation":['logistic', 'tanh', 'relu']
                     }
gs_mlp = GridSearchCV(MLP(random_state=42),
                  tuned_parameters,
                  refit = True,
                  cv = 5,
                  verbose = 1,
                  scoring = 'roc_auc',
                  n_jobs = -1)
gs_mlp.fit(X_radiomic_up,Y_radiomic_up) #Run fit with all sets of parameters.
print('MLP best parameter: ',gs_mlp.best_params_)
print('MLP best performance: ', gs_mlp.best_score_)

# model training process
##############################  Init Plot  ####################################
fig, ax = plt.subplots(figsize=(10,8))  # for cross validation
ax.plot([0, 1], [0, 1], linestyle='--', lw=2, color='grey',
        label='Reference Line', alpha=.8)
ax.set(xlim=[-0.05, 1.05], ylim=[-0.05, 1.05],
       title="ROC curve with multiple machine learning methods")
df_out = pd.DataFrame(columns=['Method','Acc' ,'AUC', 'Spec', 'Sens'])


##############################  LR  ####################################
kf = KFold(n_splits=5, random_state=42, shuffle=True)  # five fold cross validation
tprs, aucs, accs, specs, senss = [], [], [], [], []  # original metric
mean_fpr = np.linspace(0, 1, 100)  # original value

for train_index, test_index in kf.split(X=X_radiomic_up):
    Xtrain, Xtest, Ytrain, Ytest = X_radiomic_up[train_index], X_radiomic_up[test_index], Y_radiomic_up[train_index], Y_radiomic_up[test_index]
    classifier = LogisticRegression(random_state=42, solver='liblinear')
    classifier = classifier.fit(Xtrain, Ytrain)
    viz = RocCurveDisplay.from_estimator(classifier, Xtest, Ytest)
    interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
    interp_tpr[0] = 0.0
    tprs.append(interp_tpr)
    aucs.append(viz.roc_auc)
    accs.append(classifier.score(X=Xtest, y=Ytest))
    TN, FP, FN, TP = confusion_matrix(y_true=Ytest, y_pred=classifier.predict(Xtest)).ravel()
    senss.append(TP / float(TP+FN))
    specs.append(TN / float(TN+FP))

# plot
# mean_tpr = np.mean(tprs, axis=0)
# mean_tpr[-1] = 1.0
# mean_auc = auc(mean_fpr, mean_tpr)
# std_auc = np.std(aucs)
# ax.plot(mean_fpr, mean_tpr, color=sns.color_palette("Set2")[0],
#         label=r'LR Model (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
#         lw=3, alpha=.8)
# ax.legend(loc="lower right")

# save data
df_out = df_out.append({'Method': 'LR',
                        'Acc': str(round(np.mean(accs),3)) + "±" + str(round(np.std(accs),3)),
                        'AUC': str(round(mean_auc,3)) + "±" + str(round(std_auc,3)),
                        'Spec':str(round(np.mean(specs),3)) + "±" + str(round(np.std(specs),3)),
                        'Sens':str(round(np.mean(senss),3)) + "±" + str(round(np.std(senss),3))}, ignore_index=True)
cls_lr = classifier

##############################  SVM  ####################################
# kf = KFold(n_splits=5, random_state=42, shuffle=True)
# tprs, aucs, accs, specs, senss = [], [], [], [], []
# mean_fpr = np.linspace(0, 1, 100)
# for train_index, test_index in kf.split(X=X_radiomic_up):

#     Xtrain, Xtest, Ytrain, Ytest = X_radiomic_up[train_index], X_radiomic_up[test_index], Y_radiomic_up[train_index], Y_radiomic_up[test_index]
#     classifier = SVC(random_state=42, **gs_svm.best_params_)
#     classifier = classifier.fit(Xtrain, Ytrain)
#     viz = RocCurveDisplay.from_estimator(classifier, Xtest, Ytest)
#     interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
#     interp_tpr[0] = 0.0
#     tprs.append(interp_tpr)
#     aucs.append(viz.roc_auc)
#     accs.append(classifier.score(X=Xtest, y=Ytest))
#     TN, FP, FN, TP = confusion_matrix(y_true=Ytest, y_pred=classifier.predict(Xtest)).ravel()
#     senss.append(TP / float(TP+FN))
#     specs.append(TN / float(TN+FP))
# # plot
# # mean_tpr = np.mean(tprs, axis=0)
# # mean_tpr[-1] = 1.0
# # mean_auc = auc(mean_fpr, mean_tpr)
# # std_auc = np.std(aucs)
# # ax.plot(mean_fpr, mean_tpr, color=sns.color_palette("Set2")[1],
# #         label=r'SVM Model (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
# #         lw=3, alpha=.8)
# # ax.legend(loc="lower right")
# # save data
# df_out = df_out.append({'Method': 'SVM',
#                         'Acc': str(round(np.mean(accs),3)) + "±" + str(round(np.std(accs),3)),
#                         'AUC': str(round(mean_auc,3)) + "±" + str(round(std_auc,3)),
#                         'Spec':str(round(np.mean(specs),3)) + "±" + str(round(np.std(specs),3)),
#                         'Sens':str(round(np.mean(senss),3)) + "±" + str(round(np.std(senss),3))}, ignore_index=True)
# cls_svm = classifier

##############################  MLP  ####################################
kf = KFold(n_splits=5, random_state=42, shuffle=True)
tprs, aucs, accs, specs, senss = [], [], [], [], []
mean_fpr = np.linspace(0, 1, 100)
for train_index, test_index in kf.split(X=X_radiomic_up):
    Xtrain, Xtest, Ytrain, Ytest = X_radiomic_up[train_index], X_radiomic_up[test_index], Y_radiomic_up[train_index], Y_radiomic_up[test_index]
    classifier = MLP(random_state=42, activation='tanh', alpha= 0.001, batch_size= 16, hidden_layer_sizes= (64, 32, 8), max_iter= 100, solver= 'adam')
    classifier = classifier.fit(Xtrain, Ytrain)
    viz = RocCurveDisplay.from_estimator(classifier, Xtest, Ytest)
    interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
    interp_tpr[0] = 0.0
    tprs.append(interp_tpr)
    aucs.append(viz.roc_auc)
    accs.append(classifier.score(X=Xtest, y=Ytest))
    TN, FP, FN, TP = confusion_matrix(y_true=Ytest, y_pred=classifier.predict(Xtest)).ravel()
    senss.append(TP / float(TP+FN))
    specs.append(TN / float(TN+FP))

# plot
# mean_tpr = np.mean(tprs, axis=0)
# mean_tpr[-1] = 1.0
# mean_auc = auc(mean_fpr, mean_tpr)
# std_auc = np.std(aucs)
# ax.plot(mean_fpr, mean_tpr, color=sns.color_palette("Set2")[5],
#         label=r'MLP Model (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
#         lw=3, alpha=.8)
# ax.legend(loc="lower right")
# save data
df_out = df_out.append({'Method': 'MLP',
                        'Acc': str(round(np.mean(accs),3)) + "±" + str(round(np.std(accs),3)),
                        'AUC': str(round(mean_auc,3)) + "±" + str(round(std_auc,3)),
                        'Spec':str(round(np.mean(specs),3)) + "±" + str(round(np.std(specs),3)),
                        'Sens':str(round(np.mean(senss),3)) + "±" + str(round(np.std(senss),3))}, ignore_index=True)
cls_mlp = classifier

##############################  RF  ####################################
kf = KFold(n_splits=5, random_state=42, shuffle=True)
tprs, aucs, accs, specs, senss = [], [], [], [], []
mean_fpr = np.linspace(0, 1, 100)
for train_index, test_index in kf.split(X=X_radiomic_up):
    Xtrain, Xtest, Ytrain, Ytest = X_radiomic_up[train_index], X_radiomic_up[test_index], Y_radiomic_up[train_index], Y_radiomic_up[test_index]
    classifier = RandomForestClassifier(random_state=42, max_features=5, n_estimators=30)
    classifier = classifier.fit(Xtrain, Ytrain)
    viz = RocCurveDisplay.from_estimator(classifier, Xtest, Ytest)
    interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
    interp_tpr[0] = 0.0
    tprs.append(interp_tpr)
    aucs.append(viz.roc_auc)
    accs.append(classifier.score(X=Xtest, y=Ytest))
    TN, FP, FN, TP = confusion_matrix(y_true=Ytest, y_pred=classifier.predict(Xtest)).ravel()
    senss.append(TP / float(TP+FN))
    specs.append(TN / float(TN+FP))

# plot
# mean_tpr = np.mean(tprs, axis=0)
# mean_tpr[-1] = 1.0
# mean_auc = auc(mean_fpr, mean_tpr)
# std_auc = np.std(aucs)
# ax.plot(mean_fpr, mean_tpr, color=sns.color_palette("Set2")[2],
#         label=r'RF Model (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
#         lw=3, alpha=.8)
# ax.legend(loc="lower right")
# save data
df_out = df_out.append({'Method': 'RF',
                        'Acc': str(round(np.mean(accs),3)) + "±" + str(round(np.std(accs),3)),
                        'AUC': str(round(mean_auc,3)) + "±" + str(round(std_auc,3)),
                        'Spec':str(round(np.mean(specs),3)) + "±" + str(round(np.std(specs),3)),
                        'Sens':str(round(np.mean(senss),3)) + "±" + str(round(np.std(senss),3))}, ignore_index=True)
cls_rf = classifier


##############################  XGBoost  ####################################
from sklearn.ensemble import HistGradientBoostingClassifier
import xgboost as xgb

kf = KFold(n_splits=5, random_state=42, shuffle=True)
tprs, aucs, accs, specs, senss = [], [], [], [], []
mean_fpr = np.linspace(0, 1, 100)
for train_index, test_index in kf.split(X=X_radiomic_up):

    Xtrain, Xtest, Ytrain, Ytest = X_radiomic_up[train_index], X_radiomic_up[test_index], Y_radiomic_up[train_index], Y_radiomic_up[test_index]
    classifier =xgb.XGBClassifier(random_state=42, learning_rate= 0.1, max_depth= 7, n_estimators= 100)
    classifier = classifier.fit(Xtrain, Ytrain)
    viz = RocCurveDisplay.from_estimator(classifier, Xtest, Ytest)
    interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
    interp_tpr[0] = 0.0
    tprs.append(interp_tpr)
    aucs.append(viz.roc_auc)
    accs.append(classifier.score(X=Xtest, y=Ytest))
    TN, FP, FN, TP = confusion_matrix(y_true=Ytest, y_pred=classifier.predict(Xtest)).ravel()
    senss.append(TP / float(TP+FN))
    specs.append(TN / float(TN+FP))
# plot
# mean_tpr = np.mean(tprs, axis=0)
# mean_tpr[-1] = 1.0
# mean_auc = auc(mean_fpr, mean_tpr)
# std_auc = np.std(aucs)
# ax.plot(mean_fpr, mean_tpr, color=sns.color_palette("Set2")[4],
#         label=r'XGBoost Model (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
#         lw=3, alpha=.8)
# ax.legend(loc="lower right")
# save data
df_out = df_out.append({'Method': 'XGBoost',
                        'Acc': str(round(np.mean(accs),3)) + "±" + str(round(np.std(accs),3)),
                        'AUC': str(round(mean_auc,3)) + "±" + str(round(std_auc,3)),
                        'Spec':str(round(np.mean(specs),3)) + "±" + str(round(np.std(specs),3)),
                        'Sens':str(round(np.mean(senss),3)) + "±" + str(round(np.std(senss),3))}, ignore_index=True)
cls_xgboost = classifier

##############################  Output  ###################################
# fig.savefig('methods.pdf')
# fig.savefig('methods.png', dpi=600)

