function  predictedLabel = facerecognizer(queryFeatures,faceClassifier)
%facerecognize recognizes the face in the querry image.
predictedLabel = predict(faceClassifier,queryFeatures);
end

