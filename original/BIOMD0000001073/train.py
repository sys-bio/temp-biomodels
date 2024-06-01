import pandas as pd
import pickle
from sklearn.ensemble import RandomForestClassifier
from sklearn import metrics

SAVE_DATA = './05_pickled_data/'

def load_pickle(path):
    '''
    :param path:
    :return:
    '''
    with open(path, "rb") as handle: ret = pickle.load(handle)
    return ret

# Loading pickle files of training(Liu), validation(Riaz) and pathway-gene dictionary

liu_mut = load_pickle(SAVE_DATA+'liu_mut.pickle')
liu_clin = load_pickle(SAVE_DATA + 'liu_clin.pickle')
riaz_mut_val = load_pickle(SAVE_DATA + 'riaz_mut.pickle')
riaz_clin_val = load_pickle(SAVE_DATA + 'riaz_clin.pickle')
GO_test_genes_dict_intersection = load_pickle(SAVE_DATA + 'GO_test_genes_dict_intersection.pickle')

# Changing clinical 'Response' label from RECIST criteria to bool 

def br_0_1(br_labels):
    '''
    This is a function to turn the br labels into 0 or 1
    :param br_labels: the br labels of the data, a pandas series
    :return: a pandas series of 0 and 1, 0 for negative br outcome, 1 for positive br outcome
    '''
    return br_labels.replace(to_replace=['CR', 'PR'], value=1).replace(to_replace=['PD', 'SD', 'MR','NE'], value=0)

# Defining function to train Random Forest model

def train_random_forest(pathway_dictionary,pathway,train_mut=liu_mut,train_clin=liu_clin,max_depth = 5, min_samples_split = 2,random_state = 100):
    '''

    :param pathway_dictionary:
    :param pathway:
    :param train_mut:
    :param train_clin:
    :param max_depth:
    :param min_samples_split:
    :param random_state:
    :return:
    '''
    rforest = RandomForestClassifier(max_depth=max_depth, min_samples_split=min_samples_split,
                                     random_state=random_state)
    rforest = rforest.fit(train_mut[pathway_dictionary[pathway]], br_0_1(train_clin['BR']))
    return rforest

# Training the Random Forest Model

rforest_ROLP = train_random_forest(pathway_dictionary=GO_test_genes_dict_intersection, pathway='GO_REGULATION_OF_LEUKOCYTE_PROLIFERATION', train_mut=liu_mut, train_clin=liu_clin, max_depth = 5, min_samples_split = 2, random_state = 100)

# Evaluating the ROC score on the validation (Riaz) data
print("ROC AUC Score on Validation (Riaz) data:", metrics.roc_auc_score(br_0_1(riaz_clin_val['BR']), rforest_ROLP.predict_proba(riaz_mut_val[GO_test_genes_dict_intersection['GO_REGULATION_OF_LEUKOCYTE_PROLIFERATION']])[:, 1]))
print('Program executed successfully. Feel free to try the trained model rforest_ROLP on your own data.')