data1 = load('attributelist1.mat');
data2 = load('attributelist2.mat');

attr1 = data1.attribute_list(:,1:end);

data2.attribute_list(1:length(attr1), :) = data1.attribute_list(1:end, :);
attr = data2.attribute_list;

for i = 1:7
    line = attr(:,i);
    max_value = max(line);
    min_value = min(line);
    line = (line-min_value) ./ (max_value-min_value);
    attr(:,i)=line;
    
end