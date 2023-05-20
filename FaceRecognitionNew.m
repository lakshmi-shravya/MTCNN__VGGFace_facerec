%% written by Lakshmi Shravya Ramaraju 20134509
%% link to the folder containing the feature extractor and the classifier ----> https://uniofnottm-my.sharepoint.com/:f:/g/personal/leylr3_nottingham_ac_uk/EkPngVIOUbRIqHZ_o3XeWooBoKQsvgz80UbYoYDb5tI5RA?e=ckwpgu
function  outputID=FaceRecognitionNew(trainImgSet, trainPersonID, testPath)
%% load pretrained feature extractor and SVM classification model
load('Classifier.mat');
load('Feature_Extractor');
%% Face recognition for all the test images
imdsTest = imageDatastore(testPath,   'IncludeSubfolders', true, 'LabelSource','none');
inputSize = [224,224,3];
layer = 'pool5';

imdsTest.ReadFcn = @(loc)applyMTCNN(imread(loc));
augimdsTest = augmentedImageDatastore(inputSize(1:2),imdsTest);
featuresTest = activations(net,augimdsTest,layer,'OutputAs','rows');
YPred = predict(classifier,featuresTest);
outputID = char(YPred);
end
%% function that helps to extract the face from the test images
function img=applyMTCNN(img)
    if size(img,3)~=3
        cmap = jet(256);
        img = ind2rgb(img, cmap);
    end
    [bboxes, scores, landmarks] = mtcnn.detectFaces(img);
    if ~isempty(bboxes)
        [A,I]= max(scores);
        img = imcrop(img,bboxes(I,:));
    end
end