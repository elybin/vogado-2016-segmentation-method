I = imread([path,file{1}]);
h = imagesc(I);
TI = createMask(himage,h(end));
figure(1),imagesc(TI), colormap gray, title ('TI');