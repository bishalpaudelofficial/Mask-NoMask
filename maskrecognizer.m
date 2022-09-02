function [masklabel,queryFeatures] = maskrecognizer(queryimage,maskClassifier)
%maskdetector detect person is wearing mask or not
%   Detailed explanation goes here

queryFeatures = extractHOGFeatures(queryimage,'CellSize',[4 4]);
masklabel = predict(maskClassifier,queryFeatures);

end

