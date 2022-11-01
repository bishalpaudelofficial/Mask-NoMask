function [a] = faceMaskrecognize(queryimage,maskClassifier,faceClassifier)
%faceMaskDetector Takes query image and recognizes people not wearing mask.
%   Inputs to the function are queryimage and area of bounding box.
%   Queryimage is passed to maskdetector to detect if the person is wearing
%   mask or not. If person is wearing mask then it stores Mask detected in
%   a. If the person is detected without mask, the query image is further
%   sent to facerecognize function. It recognises the person from the
%   training database and sends in a. 
  masklabel={};

  [masklabel,queryFeatures] = maskrecognizer(queryimage,maskClassifier);
  
if ~isempty(masklabel)
        a=masklabel{1};
        a=size(a);
        if a(1,2)==4
            a='Mask detected';  
        elseif a(1,2)==6
            personLabel = facerecognizer(queryFeatures,faceClassifier);
            if isempty(personLabel)
                personLabel = {'unkown person'};
            end
            a = strcat(cellstr(personLabel),' wear mask save life');
        end
end
end

