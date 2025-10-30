%% BÀI T?P 9: TÍNH GIÁ TR? BI?U TH?C A
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P VÀ KI?M TRA ??U VÀO
fprintf('CHUONG TRINH TINH BIEU THUC A = log10(1)/x^n - log10(2)/x^(n-1) + ...\n');
fprintf('------------------------------------------------------------------\n');

% --- Nh?p và ki?m tra n ---
n = input('Nhap so nguyen n (1 <= n <= 100): ');
% Vòng l?p 'while' ?? ??m b?o n h?p l? (là s? nguyên trong kho?ng [1, 100])
while n < 1 || n > 100 || floor(n) ~= n
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap so nguyen n (1 <= n <= 100): ');
end

% --- Nh?p và ki?m tra x ---
x = input('Nhap so nguyen x (1 <= x <= 100): ');
% floor(x) ~= x dùng ?? ki?m tra xem x có ph?i là s? nguyên không.
while x < 1 || x > 100 || floor(x) ~= x
    fprintf('So x khong hop le. Vui long nhap lai.\n');
    x = input('Nhap so nguyen x (1 <= x <= 100): ');
end

%% PH?N 2: TÍNH TOÁN BI?U TH?C A
% Kh?i t?o giá tr? ban ??u cho A. Vì ?ây là m?t chu?i t?ng, ta b?t ??u b?ng 0.
A = 0;

% S? d?ng vòng l?p 'for' ?? tính t?ng các s? h?ng t? k = 1 ??n n.
% Bi?n ??m k s? ??i di?n cho v? trí c?a s? h?ng trong chu?i.
for k = 1:n
    % --- PHÂN TÍCH QUY LU?T C?A S? H?NG TH? k ---
    
    % 1. Quy lu?t c?a D?U (+, -):
    % D?u ?an xen theo quy lu?t: +, -, +, -, ...
    % Khi k = 1, d?u là +
    % Khi k = 2, d?u là -
    % => Công th?c t?ng quát cho d?u là: (-1)^(k+1)
    dau = (-1)^(k+1);
    
    % 2. Quy lu?t c?a T? S?:
    % T? s? là log10(1), log10(2), log10(3), ...
    % Trong MATLAB, hàm logarit c? s? 10 ???c vi?t là log10().
    % => Công th?c t?ng quát: tuSo = log10(k)
    tuSo = log10(k);
    
    % 3. Quy lu?t c?a M?U S? (s? m? c?a x):
    % S? m? c?a x là n, n-1, n-2, ...
    % Khi k = 1, s? m? là n
    % Khi k = 2, s? m? là n-1
    % => Công th?c t?ng quát: so_mu = n - k + 1
    so_mu = n - k + 1;
    mauSo = x^so_mu;
    
    % Tính giá tr? c?a s? h?ng hi?n t?i
    soHangHienTai = dau * tuSo / mauSo;
    
    % C?ng d?n s? h?ng v?a tính vào t?ng A
    A = A + soHangHienTai;
end

%% PH?N 3: XU?T K?T QU? RA MÀN HÌNH
fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d va x = %d, gia tri cua bieu thuc A la: %.6f\n', n, x, A);