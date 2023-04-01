clc;
close all;
addpath('functions');
Input_path = './images/';  
Output_path='./results/';
namelist = dir(strcat(Input_path,'*.jpg')); 
len = length(namelist);
tic;
for i = 1:len
    name=namelist(i).name; 
    image=im2double(imread(strcat(Input_path, name)));
    output=UIEF(image);  
    imwrite(output,[Output_path,name]); 
end
toc;