load 'filenames2.mat'
load 'logical0.mat'
load 'logical1.mat'
len = length(filenames2);
img_names = "";
num_img_names = "";
for i = 1:len
    img_names(i,1) = string(filenames2(i).name);
    list = split(filenames2(i).name, "_");
    num_img_names(i,1) = string(strcat(list{1, 1}, '.jpg'));
end
img_names = img_names(idx,1);
img_names = img_names(x,1);
num_img_names = num_img_names(idx,1);
num_img_names = num_img_names(x,1);

load 'koniq10k_scores_and_distributions.mat';
koniq_img_names = koniq10kscoresanddistributions(:,1);
intersect_img_names = intersect(num_img_names, koniq_img_names);

filename='resylt.csv';%.csv可以更改为.txt等
fid=fopen(filename,'w');

for i = 1:length(img_names)
    img_name = img_names(i,1);
    num_img_name = num_img_names(i,1);
    if length(find(num_img_name == intersect_img_names))==0
        org_img_path = strcat("../../images_before_filtering/", img_name);
        tar_img_path = strcat("../../images/", img_name);
        copyfile(org_img_path, tar_img_path);
        fprintf(fid,'%s\n',img_name);%   ','是分隔符
    else
        disp(num_img_name)
    end
    if mod(i,1000)==0
        disp(strcat('have completed:', num2str(i)))
    end
end
fclose(fid);