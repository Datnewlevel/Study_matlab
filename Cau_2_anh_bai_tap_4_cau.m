% Tính giá tr? bi?u th?c S = 1/n^2 + sqrt(2)/(n-1)^2 + ... + sqrt(n-1)/2^2 + sqrt(n)

% B??c 1: Nh?p s? nguyên n
n = input('Nhap so nguyen n (1 <= n <= 50): ');

% Ki?m tra ?i?u ki?n n
while n < 1 || n > 50
    disp('n phai trong khoang 1 den 50!');
    n = input('Nhap lai n: ');
end

% B??c 2: Tính t?ng S
S = 0;

% S? d?ng vòng l?p for
for i = 1:(n-1)
    tu_so = sqrt(i);           % T? s?: sqrt(i)
    mau_so = (n - i + 1)^2;    % M?u s?: (n-i+1)^2
    S = S + tu_so / mau_so;
end

% C?ng thêm s? h?ng cu?i cùng: sqrt(n)
S = S + sqrt(n);

% Hi?n th? k?t qu?
disp(['Gia tri bieu thuc S = ', num2str(S)]);

% Hi?n th? chi ti?t t?ng s? h?ng (tùy ch?n)
disp(' ');
disp('Chi tiet cac so hang:');
for i = 1:(n-1)
    tu_so = sqrt(i);
    mau_so = (n - i + 1)^2;
    so_hang = tu_so / mau_so;
    fprintf('So hang %d: sqrt(%d)/%d^2 = %.4f\n', i, i, n-i+1, so_hang);
end
fprintf('So hang %d: sqrt(%d) = %.4f\n', n, n, sqrt(n));