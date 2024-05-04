
matFileName = 'gray_images.mat';
variableName = 'gray_image_data';
matObj = matfile(matFileName, 'Writable', true);


imageFolderPath = 'C:\Users\MMinuzero\Desktop\sci\dataset\AnimeCeleb\after';
imageFiles = dir(fullfile(imageFolderPath, '*.jpg')); % ͼ���ļ�


imageData = [];

for i = 1:length(imageFiles)
    grayImage = imread(fullfile(imageFolderPath, imageFiles(i).name));
    imageData(:, :, i) = grayImage;
end

matObj.(variableName) = imageData;

clear matObj;
