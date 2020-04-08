A = [1 5 7 7 9 10 9 3 3 2 1 3 3 5 ]
A = [1 2 3 4 5 4 3 2 1]
N = size(A);
Mean = sum(A)/N(2);
modus = mode(A)
median = median(A)
% standar deviasi/simpangan adalah :  hampir bisa dikatakana ketelitian
% semakin kecil berarti semakin bagus
StdDev = std(A)
var = var(A)



urutan1 = round(0.25*N(2))
Q1 = A(urutan1)

x = [0 9];
y = [4 4];
line(x,y,'Color','red','LineStyle','-')