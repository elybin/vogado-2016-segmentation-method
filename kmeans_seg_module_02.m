%% K-means Segmentation (option: K Number of Segments)
% Alireza Asvadi
% http://www.a-asvadi.ir
% 2012
% Questions regarding the code may be directed to alireza.asvadi@gmail.com
%% initialize
clc
clear all
close all
% kmeans_seg_lib.m

%% Load Image
I = (imread('all-idb/02.png'));                    % Load Image
  
I =  rgb2gray(I);

% X = size(I,1) % height
% Y = size(I,2) % width
% 
% F = reshape(I,size(I,1)*size(I,2),1)



T2 = kmeans(G, 8)
% T2 = props(F, 8)
%% Show
figure()
subplot(121); imshow(I); title('original')
subplot(122); imshow(G); title('segmented')
disp('number of segments ='); disp(K)
