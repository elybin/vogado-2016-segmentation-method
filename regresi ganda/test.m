%% load 
clear;
House = load('House.mat');
House = House.House;

%% split 
y = House{:,1};
x1 = House{:,2};
x2 = House{:,3};
x3 = House{:,4};
[n,~]= size(y);
% [b,yc,itcon]= regresiberganda(y,x1,x2,x3,xp1,xp2,xp2,talpha)
xp1 = 1500; %luas tanah
xp2 = 160; %jarak jalan
xp3 = 3;  %jumlah kamar
talpha = 2.365;

hasil_fitlm = fitlm(House,'Harga~Luas+Jarak+Kamar')
x = [ones(n,1) x1 x2 x3];
hasil_regress = regress(y, x)
[hasil_b,yc,itcon]= regresiberganda(y,x1,x2,x3,xp1,xp2,xp3,talpha)
