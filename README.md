With Regards Team Bazinga ;)

The Following codes is to be run in MATLAB r2020a version or newer The data given is personal. It should not be duplicated or altered.

## 1.Yoloobjectdetector:

It detects human face from the given frame using yolov2 algorithm. It puts a bounding box identifying human face from the
body.

    a. dataprocessing.m:This code preprocess the data for training the model
    for yolov2 network

    b. designtrain.m: It contains code to design yolov2 network which will be
    used to train the data and test it with a video.

    c.  Utilities
        i) AnchorBoxes.m: It is the code for anchor box used in YOLOv2.

        ii) detectorYoloV2.mat: As YOLOv2 training takes time, after training the model is save. It is the trained YOLOv2 network.

        iii) TrainingData.mat: It is the preprocessed training data.

        iv) Train.mat: It is the ground truth of the data.

    d.  Results: It contains the snapshot of the training process.

    e.  data: It contains the data to test the YOLOv2.

## 2. Masknomaskclassifier:

It classifies if the person is wearing mask or not. Here, we've trained the model.

    a.  datapreprocessing.m: It prepares the data for training the model for mask/no-mask classification.

    b.  TrainandTest.m: It is used to train the classifier to detect if the person is wearing mask or not.

    c.  Utilities: It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to detect mask.

    d.  TrainingData: It is the sample training data used for training the model.

## 3. FaceClassifier:

It identifies the face of the people. Here, we've trained the model.

    a.  datapreprocessing.m: It prepares the data for training the model to identify the person.

    b.  TrainandTest.m: It is used to train the classifier to detect the person not wearing mask.

    c.  Utilities: It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to identify the person.

    d.  TrainingData: It is the sample training data used for training the model.

## 4. Final code:

It is the final code joining all the parts. It performs the whole function of smart mask/no-mask recognition.

    a.  maintest.m: It contains the main code which performs the complete task. Running this file will give the desired results.

    b.  faceMaskrecognize.m: It is a funnction called to perform the face mask recognition. It contains two functions, one for mask recognition and other for face recognition. When no mask is detected, it calls for face recognition.

    c.  maskrecognizer.m: It extracts the HOG features of the query image and detects the mask is present or not passing to the trained model.

    d.  facerecognizer.m: Upon no mask detection, the extracted features is passed to the facerecognizer function to identify the person.

    e.  utilities: It contains trained model of YOLOv2, maskClassifier, faceClassifier.

    f.  data: It contains the test data for testing the code.
    
## 4. Result:
<img width="411" alt="image" src="https://user-images.githubusercontent.com/62088646/204082914-1caa4f36-2299-4537-8d3b-ad9d3c9619bf.png">
