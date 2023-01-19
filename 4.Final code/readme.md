# 4.Final code:

It is the final code joining all the parts. It performs the whole function of smart mask/no-mask recognition.

1)  **maintest.m:** It contains the main code which performs the complete task. Running this file will give the desired results.

2)  **faceMaskrecognize.m:** It is a funnction called to perform the face mask recognition. It contains two functions, one for mask recognition and other for face recognition. When no mask is detected, it calls for face recognition.

3)  **maskrecognizer.m:** It extracts the HOG features of the query image and detects the mask is present or not passing to the trained model.

4)  **facerecognizer.m:** Upon no mask detection, the extracted features is passed to the facerecognizer function to identify the person.

5)  **utilities:** It contains trained model of YOLOv2, maskClassifier, faceClassifier.

6)  **data:** It contains the test data for testing the code.
