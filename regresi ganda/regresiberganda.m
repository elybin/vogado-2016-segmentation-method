function [b,yc,itcon]= regresiberganda(y,x1,x2,x3,xp1,xp2,xp3,talpha)
% creator: Anan Nugroho
% email:anannugroho@mail.unnes.ac.id
%% keterangan coding
% b = koefisien regresi berganda
% y = variabel terikat
% x1,x2,x3 = variabel bebas

% [n,~]= size(y);
%% Main code
[n,~]= size(y);
x = [ones(n,1) x1 x2 x3];
b = inv(x'*x)*x'*y;
% persamaan regresi berganda
yc = b(1)+b(2)*xp1+b(3)*xp2+b(4)*xp3;
% interval confidency
df = n-k-1
SSE = sum((y-yc).^2);
se= sqrt(SSE/n-3);
itcon= talpha*se*sqrt((1/n)+((xp1-mean(x1))^2/sum((x1-mean(x1)).^2))+((xp2-mean(x2))^2/sum((x2-mean(x2)).^2))+((xp3-mean(x3))^2/sum((x3-mean(x3)).^2)));