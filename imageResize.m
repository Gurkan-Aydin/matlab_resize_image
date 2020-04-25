clear variables 
close all
clc
name = 'cat';
datasetPath = fullfile(matlabroot,'cat_dog_2',name); 
imds = imageDatastore(datasetPath,'IncludeSubfolders',false,'LabelSource','foldernames');


folder = sprintf('C:\Users\luminary\Desktop\%s',name);
from = 1;
to = 100;
for i=from:to
    image = imresize(imread(imds.Files{i,1}),[32 , 32]);
    baseFileName = sprintf('%s.%d.png', name, i-from);
    fullFileName = fullfile(folder, baseFileName);
    imwrite(image, fullFileName);
end