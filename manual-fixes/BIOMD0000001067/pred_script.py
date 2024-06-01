import pandas as pd
import numpy as np
from sklearn import metrics
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import roc_curve, roc_auc_score
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report
import matplotlib.pyplot as plt
import onnxruntime as rt
from skl2onnx.common.data_types import FloatTensorType
from skl2onnx import convert_sklearn

df2 = pd.read_csv("test_set_ZM_set1.csv")
X_test1 = np.asarray(df2.loc[:, df2.columns != 'type'])
y_test1 = df2.iloc[:, -1].astype(int).values

sess = rt.InferenceSession("zmays_trained_model.onnx")
input_name = sess.get_inputs()[0].name
pred_onx = sess.run(None, {input_name: X_test1.astype(np.float32)})[0]
print(classification_report(y_test1, pred_onx))


