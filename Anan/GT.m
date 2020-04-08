

[file,path] = uigetfile('*.m',...
   'Select One or More Files', ...
   'MultiSelect', 'on');
I = imread([path,file{1}]);
%% get pixel location of GT
close all
h = imagesc(I);
himage = imfreehand; 
position = wait(himage); 
% citra biner
% GT = createMask(himage,h(end));
TI = createMask(himage,h(end));
figure(1),imagesc(TI), colormap gray, title ('TI');
figure(2),imagesc(GT), colormap gray, title ('GT');
TP = (GT&TI);
hasil{1}.GT= GT;
load('khakim.mat')
save('khakim.mat','hasil')
figure(3),imagesc(TP), colormap gray, title ('TP');
AreaTP = bwarea(TP);