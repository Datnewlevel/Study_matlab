% T?o 1 t?p scrip th?c hi?n nh?p 2 s? nguy�n n( 1<= n <=100) t? b�n ph�m v� s? d?ng c�u l?nh for ho?c while t�nh gi� tr? bi?u th?c sau
% A = |e^n - e^(n-1)/ 2^2 + e^(n-2) / 3^3 - ... +- e/n^n|
% Nh?p v� ki?m tra n
n = input('Nhap so nguyen n( 1 <= n <= 100): ');
while ~isscalar(n)  || n ~= fix(n) || n < 1 || n > 100
    n = input('Khong hop le. Nhap lai n: \n');
end
%Tinh tong 
S = 0;
for i = 1:n
    term = (-1)^(i-1) * exp(n - i + 1) / (i^i);
    S = S + term;
end
A = abs(S);
fprintf('A = %.15g\n', A);