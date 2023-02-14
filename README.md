# Smart Face-Mask recognizer

With Regards Team Bazinga ;)

The Following codes is to be run in MATLAB r2020a version or newer. The data given are personal, it should not be duplicated or altered.

## [1.Yoloobjectdetector](https://github.com/Bishal1022/Mask-NoMask/tree/main/1.Yoloobjectdetector):

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

## [2.Masknomaskclassifier](https://github.com/Bishal1022/Mask-NoMask/tree/main/2.Masknomaskclassifier):

It classifies if the person is wearing mask or not. Here, we've trained the model.

1)  **datapreprocessing.m:** It prepares the data for training the model for mask/no-mask classification.

2)  **TrainandTest.m:** It is used to train the classifier to detect if the person is wearing mask or not.

3)  **Utilities:** It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to detect mask.

4)  **TrainingData:** It is the sample training data used for training the model.

## [3.FaceClassifier](https://github.com/Bishal1022/Mask-NoMask/tree/main/3.FaceClassifier):

It identifies the face of the people. Here, we've trained the model.

1)  **datapreprocessing.m:** It prepares the data for training the model to identify the person.

2)  **TrainandTest.m:** It is used to train the classifier to detect the person not wearing mask.

3)  **Utilities:** It contains detectorYoloV2.mat which is the trained YOLOv2 model for human face detetction. It is necessary to identify the region of interest to extract HOG features to identify the person.

4)  **TrainingData:** It is the sample training data used for training the model.

## [4.Final code](https://github.com/Bishal1022/Mask-NoMask/tree/main/4.Final%20code):

It is the final code joining all the parts. It performs the whole function of smart mask/no-mask recognition.

1)  **maintest.m:** It contains the main code which performs the complete task. Running this file will give the desired results.

2)  **faceMaskrecognize.m:** It is a funnction called to perform the face mask recognition. It contains two functions, one for mask recognition and other for face recognition. When no mask is detected, it calls for face recognition.

3)  **maskrecognizer.m:** It extracts the HOG features of the query image and detects the mask is present or not passing to the trained model.

4)  **facerecognizer.m:** Upon no mask detection, the extracted features is passed to the facerecognizer function to identify the person.

5)  **utilities:** It contains trained model of YOLOv2, maskClassifier, faceClassifier.

6)  **data:** It contains the test data for testing the code.


<p align="center">
<img width="800" alt="image" src="https://user-images.githubusercontent.com/62088646/213447674-2d336f55-7c05-4be4-aab8-b3ceb1c54e83.jpg">
</p>


    
## 5. Results:
In result we can see two situations:

1) When the person is wearing mask: It detects the mask and displays "Mask detected" 
2) When the person is not wearing mask: It identifies the person from the dataset and displays "person_name wear mask save life"

<p align="center">
<img width="800" alt="image" src="https://user-images.githubusercontent.com/62088646/213443494-cd8f4dc7-d015-4d56-8aa3-15c656df86f8.jpg">
</p>



## 6. Achievement:
**◉ Published Paper:**  [Smart Face Recognition with Mask/No Mask Detection](https://link.springer.com/chapter/10.1007/978-981-16-2911-2_15)

<p align="center">
<img width="700" alt="Screenshot_20230119_182901" src="https://user-images.githubusercontent.com/62088646/213449314-49e87a9e-2ade-450c-a6aa-0180eb73fba1.png">
</p>


**◉ First Position in #ShowYourSkill 2020 under Technology track:**

<p align="center">
<img width="700" alt="image" src="https://user-images.githubusercontent.com/62088646/204082914-1caa4f36-2299-4537-8d3b-ad9d3c9619bf.png">
</p>
