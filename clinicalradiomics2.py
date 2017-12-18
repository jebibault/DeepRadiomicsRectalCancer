from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import os
import urllib
import numpy as np
import tensorflow as tf

# Data sets
ClinicalRadiomicsTrain3 = "ClinicalRadiomicsTrain4.csv"
ClinicalRadiomicsTest = "ClinicalRadiomicsTest2.csv"

def main():
  # Load datasets
  training_set = tf.contrib.learn.datasets.base.load_csv_with_header(
      filename=ClinicalRadiomicsTrain3,
      target_dtype=np.int,
      features_dtype=np.float32)
  test_set = tf.contrib.learn.datasets.base.load_csv_with_header(
      filename=ClinicalRadiomicsTest,
      target_dtype=np.int,
      features_dtype=np.float32)

  # Specify that all features have real-value data
  feature_columns = [tf.feature_column.numeric_column("x", shape=[357])]

  # Build 3 layer DNN with 10, 20, 10 units respectively
  classifier = tf.estimator.DNNClassifier(feature_columns=feature_columns,
                                          hidden_units=[10,20, 10],
                                          n_classes=2,
                                          model_dir="/tmp/clinicalrad2_model")
  # Define the training inputs
  train_input_fn = tf.estimator.inputs.numpy_input_fn(
      x={"x": np.array(training_set.data)},
      y=np.array(training_set.target),
      num_epochs=None,
      shuffle=True)

  # Train model
  classifier.train(input_fn=train_input_fn, steps=3000)

  # Define the test inputs
  test_input_fn = tf.estimator.inputs.numpy_input_fn(
      x={"x": np.array(test_set.data)},
      y=np.array(test_set.target),
      num_epochs=10,
      shuffle=False)

  # Evaluate accuracy
  accuracy_score = classifier.evaluate(input_fn=test_input_fn)["accuracy"]

  print("\nTest Accuracy: {0:f}\n".format(accuracy_score))

if __name__ == "__main__":
    main()