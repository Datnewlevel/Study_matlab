%% BÀI T?P 7: TÍNH GIÁ TR? BI?U TH?C A V?I D?U ?AN XEN
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P VÀ KI?M TRA S? NGUYÊN N
fprintf('CHUONG TRINH TINH BIEU THUC A = 100 - n/e + (n-1)/e^2 - ...\n');
fprintf('------------------------------------------------------------\n');

% Yêu c?u ng??i dùng nh?p vào s? nguyên n
n = input('Nhap vao so nguyen n (1 <= n <= 100): ');

% S? d?ng vòng l?p 'while' ?? ??m b?o ng??i dùng nh?p ?úng ?i?u ki?n
while n < 1 || n > 100
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 100): ');
end

%% PH?N 2: TÍNH TOÁN GIÁ TR? BI?U TH?C A
% Kh?i t?o giá tr? ban ??u cho A. Bi?u th?c b?t ??u b?ng 100.
A = 100;

% S? d?ng vòng l?p 'for' ?? tính t?ng các s? h?ng t? k = 1 ??n n
% Bi?n ??m k s? ??i di?n cho s? m? c?a e trong m?i s? h?ng.
for k = 1:n
    % --- PHÂN TÍCH QUY LU?T C?A M?I S? H?NG ---
    
    % 1. Quy lu?t c?a T? S?:
    % Khi k = 1, t? s? là n
    % Khi k = 2, t? s? là n-1
    % Khi k = 3, t? s? là n-2
    % => Công th?c t?ng quát: tuSo = n - k + 1
    tuSo = n - k + 1;
    
    % 2. Quy lu?t c?a M?U S?:
    % M?u s? luôn là e^k. Trong MATLAB, hàm e^x ???c vi?t là exp(x).
    mauSo = exp(k);
    
    % 3. Quy lu?t c?a D?U (+, -):
    % D?u ?an xen theo quy lu?t: -, +, -, +, ...
    % Khi k = 1 (l?), d?u là -
    % Khi k = 2 (ch?n), d?u là +
    % => Công th?c t?ng quát cho d?u là: (-1)^k
    dau = (-1)^k;
    
    % Tính giá tr? c?a s? h?ng hi?n t?i
    soHangHienTai = dau * tuSo / mauSo;
    
    % C?ng s? h?ng v?a tính vào t?ng A
    A = A + soHangHienTai;
end

%% PH?N 3: XU?T K?T QU? RA MÀN HÌNH
fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d, gia tri cua bieu thuc A la: %.6f\n', n, A);