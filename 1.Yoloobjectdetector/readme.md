# 1.Yoloobjectdetector

It detects human face from the given frame using yolov2 algorithm. It puts a bounding box identifying human face from the
body.

1) **dataprocessing.m:** This code preprocess the data for training the model
    for yolov2 network

2) **designtrain.m:** It contains code to design yolov2 network which will be
    used to train the data and test it with a video.

3)  **Utilities:**

    i) AnchorBoxes.m: It is the code for anchor box used in YOLOv2.

    ii) detectorYoloV2.mat: As YOLOv2 training takes time, after training the model is save. It is the trained YOLOv2 network.

    iii) TrainingData.mat: It is the preprocessed training data.

    iv) Train.mat: It is the ground truth of the data.

4) **Results:** It contains the snapshot of the training process.

5)  **data:** It contains the data to test the YOLOv2.
