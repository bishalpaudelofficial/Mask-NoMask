%% Refresher
%With Regards Team Bazinga ;)
clc;
close all;
clear;
%% Load Pretrained Networks
disp('The trained model is being loaded....')
load(fullfile("utilities","detectorYoloV2.mat"));
load(fullfile("utilities","maskClassifier.mat"));
load(fullfile("utilities","faceClassifier.mat"));% trained classifier
disp('Model loaded Succesfully')
%% Test
disp('Processing Video...')
vidobj =  vision.VideoFileReader('data\mask2.mp4');%Name of the video
%It will load the video from data folder 
%mask1, mask2, nomask1, nomask2 videos are present
viewer = vision.DeployableVideoPlayer;


position =  [1 20];
a = 'Processing...';
%   p = gcp;
counter=1;
b={};
while ~isDone(vidobj)
    image=step(vidobj);
    [bboxes,scores,labels] = detect(detectorYolo2,image);
    image = insertText(image,position,a,'AnchorPoint','LeftBottom');

    if ~isempty(bboxes) 
     image= insertShape(image,'rectangle', bboxes,'Linewidth',3);
     crop = imcrop(image,bboxes(1,:));    
     gray1=rgb2gray(crop);
     queryimage=imresize(gray1,[150 150]);
     ab=bboxes(1,3)*bboxes(1,4);
     
      if counter>=1 && ab>6000
%       f = parfeval(p,@faceMaskrecognize,1,queryimage);
%       b = fetchOutputs(f);
        b=faceMaskrecognize(queryimage,maskClassifier,faceClassifier);
        
        counter=counter-1;
      end     
    end
    if ~isempty(b)
    image = insertText(image,[40 45],b,'AnchorPoint','LeftBottom');
    end
    step(viewer, image);
end
release(viewer);
clear viewer;
clear vidobj;