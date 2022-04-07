%% initilization
clear all
clc

%% dir images

addpath(genpath("getAttribute"))

% brightness_sum=[]  
contrast_sum=[]
sharpness_sum=[]
colorfulness_sum=[]
imgPath = '/media/h428ti/SSD/image_final/image/';        % 图像库路径
imgDir  = dir([imgPath '*.png']); % 遍历所有jpg格式文件
for i = 1:length(imgDir)          % 遍历结构体就可以一一处理图片了
    image = imread([imgPath imgDir(i).name]); %读取每张图片
    
%     if length(size(image)) < 3
%          image = gray2rgb(image);
%     end
%     [height, width, dim] = size(image);
%     bitrate = double(bytes)/double(height * width);
    % jpeg compression ratio
%     JpegRatio = getJpegRatio(image, double(bytes));

%     brightness = getBrightness(image);
    colorfulness = getColorfulness(image);
    contrast = globalContrastFactor(image);
    sharpness = getSharpness(rgb2gray(image));
%     attribute_list(i, :) = [brightness, colorfulness, contrast, sharpness];
%     brightness_sum(i)=brightness
    contrast_sum(i) = contrast;
    sharpness_sum(i) = sharpness;
    colorfulness_sum(i) = colorfulness;
    if mod(i, 10) == 0
        disp(strcat("have completed:", num2str(i)))
        
    end
 
end
%% addpath

%% attribute list saving

%% process ima
% len = length(filenames);
% path = "../authentic/";
% for i = start_point:len/2
%     filename = filenames(i).name;
%     % file size
%     bytes = filenames(i).bytes;
%     image = imread(strcat(path, filename));
%     if length(size(image)) < 3
%          image = gray2rgb(image);
%     end
%     [height, width, dim] = size(image);
%     bitrate = double(bytes)/double(height * width);
%     % jpeg compression ratio
% %     JpegRatio = getJpegRatio(image, double(bytes));
%     brightness = getBrightness(image);
%     colorfulness = getColorfulness(image);
%     contrast = globalContrastFactor(image);
%     sharpness = getSharpness(rgb2gray(image));
%     attribute_list(i, :) = [bitrate, JpegRatio, brightness, colorfulness, contrast, sharpness];
%     if mod(i, 10) == 0
%         disp(strcat("have completed:", num2str(i)))
%         % overlay storage
%         save("attributelist.mat", "attribute_list", "i")
%     end
% end
