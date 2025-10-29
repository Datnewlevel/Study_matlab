%% BÀI T?P 6: TÍNH GIÁ TR? BI?U TH?C A
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P VÀ KI?M TRA S? NGUYÊN N
fprintf('CHUONG TRINH TINH BIEU THUC A\n');
fprintf('----------------------------\n');

% Yêu c?u ng??i dùng nh?p vào s? nguyên n
n = input('Nhap vao so nguyen n (1 <= n <= 50): ');

% S? d?ng vòng l?p 'while' ?? ??m b?o ng??i dùng nh?p ?úng ?i?u ki?n
while n < 1 || n > 50
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 50): ');
end

%% PH?N 2: TÍNH TOÁN BI?U TH?C BÊN TRONG C?N B?C HAI
% Kh?i t?o m?t bi?n ?? ch?a t?ng các s? h?ng bên trong d?u c?n.
% Giá tr? kh?i ??u là 1, vì bi?u th?c b?t ??u b?ng "1 + ..."
tongTrongCan = 1;

% X? lý tr??ng h?p ??c bi?t: N?u n = 1, bi?u th?c là sqrt(1) = 1.
% Vòng l?p for k = 2:1 s? không ch?y, nên k?t qu? v?n ?úng.

% S? d?ng vòng l?p 'for' ?? tính t?ng các s? h?ng t? 1/2 ??n 1/n
% Bi?n ??m k s? ch?y t? 2, 3, 4, ... cho ??n n.
for k = 2:n
    % --- PHÂN TÍCH QUY LU?T S? M? ---
    % Khi k = 2, s? m? là n-1
    % Khi k = 3, s? m? là n-2
    % ...
    % Khi k = n, s? m? là 1 (vì 1/n = (1/n)^1)
    % Ta th?y r?ng: k + so_mu = (n+1) => so_mu = n + 1 - k
    so_mu = n + 1 - k;
    
    % Tính giá tr? c?a s? h?ng hi?n t?i
    soHangHienTai = (1/k) ^ so_mu;
    
    % C?ng s? h?ng v?a tính vào t?ng
    tongTrongCan = tongTrongCan + soHangHienTai;
end

%% PH?N 3: TÍNH K?T QU? CU?I CÙNG VÀ XU?T RA MÀN HÌNH
% Tính c?n b?c hai c?a t?ng v?a tìm ???c
A = sqrt(tongTrongCan);

fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d, gia tri cua bieu thuc A la: %.6f\n', n, A);