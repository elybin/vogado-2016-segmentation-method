% Vogado's Image Segmentation Method
%
% @author       Khakim Assidiqi <hamas182@gmail.com>
% @created      march, 4th 2020
%% initialize
clc
clear all
close all
    
% loading rgb image
image_path = 'BloodSeg/BloodImage_00000.jpg'; % BloodSeg
image_rgb = imread(image_path); %Read the color image

A = wbc_vogado_02(image_rgb);
% figure, imshow(A);
