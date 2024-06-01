import pandas as pd
import numpy as np
from sklearn import metrics
from sklearn.ensemble import RandomForestClassifier
import onnxruntime as rt
from skl2onnx.common.data_types import FloatTensorType
from skl2onnx import convert_sklearn

df1 = pd.read_csv("training_set_coding_noncoding_ZM_16000_01.csv")
X_train1 = np.asarray(df1.loc[:, df1.columns != 'type'])
y_train1 = df1.iloc[:, -1].astype(int).values
clf=RandomForestClassifier(n_estimators=600)
clf.fit(X_train1,y_train1)

initial_type = [('float_input', FloatTensorType([None, 74]))]
onx = convert_sklearn(clf, initial_types=initial_type,target_opset=12)
with open("zmays_trained_model.onnx", "wb") as f:
 f.write(onx.SerializeToString())
