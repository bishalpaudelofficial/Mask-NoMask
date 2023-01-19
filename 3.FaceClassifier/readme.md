# 3.FaceClassifier:

It identifies the face of the people. Here, we've trained the model.

1)  **datapreprocessing.m:** It prepares the data for training the model to identify the person.

2)  **TrainandTest.m:** It is used to train the classifier to detect the person not wearing mask.

3)  **Utilities:** It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to identify the person.

4)  **TrainingData:** It is the sample training data used for training the model.
