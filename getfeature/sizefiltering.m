
clear all
clc

%% dir images
filenames = load("filenames.mat");
filenames = filenames.filenames;

%% process ima
len = length(filenames);
srcpath = "D:\YFCC\image\";
dstpath = "D:\YFCC\images\";
count = 0;
for i = 1:len
    try
         filename = filenames(i).name;
         image = imread(strcat(srcpath, filename));
         if length(size(image)) < 3
             image = gray2rgb(image);
         end
         [height, width, dim] = size(image);
         max_hw = max(width, height);
         min_hw = min(width, height);
         if max_hw >=720 & max_hw<=6000 & min_hw >= 540 & min_hw <=6000
              copyfile(strcat(srcpath, filename),strcat(dstpath, filename)); 
              count = count + 1;
         end
         
    catch
        disp(filename)
    end
     if mod(i,100) == 0
         disp(strcat("have completed:", num2str(i), ",saved:", num2str(count)));
     end
end
