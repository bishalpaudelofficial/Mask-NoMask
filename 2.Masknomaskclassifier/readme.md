# 2.Masknomaskclassifier:

It classifies if the person is wearing mask or not. Here, we've trained the model.

1)  **datapreprocessing.m:** It prepares the data for training the model for mask/no-mask classification.

2)  **TrainandTest.m:** It is used to train the classifier to detect if the person is wearing mask or not.

3)  **Utilities:** It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to detect mask.

4)  **TrainingData:** It is the sample training data used for training the model.
