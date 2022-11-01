%% Refresher
%With Regards Team Bazinga ;)
clc;
close all;
clear;
%% Read Mathworks Face Gallery
faceGallery = imageSet('TrainingData', 'recursive');
galleryNames = {faceGallery.Description};
%% Create HoG training features from face gallery
trainingFeatures = zeros(1,46656);
featureCount = 1;

for i=1:size(faceGallery,2)
    for j = 1:faceGallery(i).Count
        sizeNormalizedImage = imresize(read(faceGallery(i),j),[150 150]);
        trainingFeatures(featureCount,:) = extractHOGFeatures(sizeNormalizedImage,'CellSize',[4 4]);
        trainingLabel{featureCount} = faceGallery(i).Description;    
        featureCount = featureCount + 1;
    end
    personIndex{i} = faceGallery(i).Description;
end

%% Train A Multiclass SVM Classifier Using HOG Features
faceClassifier = fitcecoc(trainingFeatures,trainingLabel);
save('utilities\faceClassifier.mat','faceClassifier', '-v7.3');
%% Test video
% vidobj =  vision.VideoFileReader('data\nomask.mp4');%Name of the video
% viewer = vision.DeployableVideoPlayer;
% load(fullfile("utilities","detectorYoloV2.mat"));
% load(fullfile("utilities","faceClassifier.mat"));
% load(fullfile("utilities","maskClassifier.mat"));
% 
% position =  [1 20];
% value = 'Processing...';
% counter=1;
% maskLabel={};
% 
% while ~isDone(vidobj)
%     image=step(vidobj);
%     [bboxes,scores,labels] = detect(detectorYolo2,image);
%     image = insertText(image,position,value,'AnchorPoint','LeftBottom');
%     if ~isempty(bboxes) 
%      image= insertShape(image,'rectangle', bboxes,'Linewidth',3);
%      crop = imcrop(image,bboxes(1,:));    
%      gray1=rgb2gray(crop);
%      queryimage=imresize(gray1,[150 150]);
%      ab=bboxes(1,3)*bboxes(1,4);
%        if counter>=1 && ab>5000
%            queryFeatures = extractHOGFeatures(queryimage,'CellSize',[4 4]);
%            masklabel = predict(maskClassifier,queryFeatures);
%        counter=counter-1;
%        end
%     end
%     if ~isempty(maskLabel)
%         a=maskLabel{1};
%         a=size(a);
%         if a(1,2)==4
%             a='Mask detected';  
%         elseif a(1,2)==6
%             personLabel = predict(faceClassifier,queryFeatures);
%             a = strcat(cellstr(personLabel),' wear mask save life');
%         end    
%       image = insertText(image,[40 45],a,'AnchorPoint','LeftBottom');
%     end
% 
%     step(viewer, image);
% end
% 
% release(viewer);
% %% Test single image
% I = imread('a126.jpeg');
% queryFeatures = extractHOGFeatures(I,'CellSize',[4 4]);
% masklabel = predict(faceClassifier,queryFeatures)