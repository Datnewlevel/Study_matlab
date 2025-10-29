%% B�I T?P 6: T�NH GI� TR? BI?U TH?C A
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P V� KI?M TRA S? NGUY�N N
fprintf('CHUONG TRINH TINH BIEU THUC A\n');
fprintf('----------------------------\n');

% Y�u c?u ng??i d�ng nh?p v�o s? nguy�n n
n = input('Nhap vao so nguyen n (1 <= n <= 50): ');

% S? d?ng v�ng l?p 'while' ?? ??m b?o ng??i d�ng nh?p ?�ng ?i?u ki?n
while n < 1 || n > 50
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 50): ');
end

%% PH?N 2: T�NH TO�N BI?U TH?C B�N TRONG C?N B?C HAI
% Kh?i t?o m?t bi?n ?? ch?a t?ng c�c s? h?ng b�n trong d?u c?n.
% Gi� tr? kh?i ??u l� 1, v� bi?u th?c b?t ??u b?ng "1 + ..."
tongTrongCan = 1;

% X? l� tr??ng h?p ??c bi?t: N?u n = 1, bi?u th?c l� sqrt(1) = 1.
% V�ng l?p for k = 2:1 s? kh�ng ch?y, n�n k?t qu? v?n ?�ng.

% S? d?ng v�ng l?p 'for' ?? t�nh t?ng c�c s? h?ng t? 1/2 ??n 1/n
% Bi?n ??m k s? ch?y t? 2, 3, 4, ... cho ??n n.
for k = 2:n
    % --- PH�N T�CH QUY LU?T S? M? ---
    % Khi k = 2, s? m? l� n-1
    % Khi k = 3, s? m? l� n-2
    % ...
    % Khi k = n, s? m? l� 1 (v� 1/n = (1/n)^1)
    % Ta th?y r?ng: k + so_mu = (n+1) => so_mu = n + 1 - k
    so_mu = n + 1 - k;
    
    % T�nh gi� tr? c?a s? h?ng hi?n t?i
    soHangHienTai = (1/k) ^ so_mu;
    
    % C?ng s? h?ng v?a t�nh v�o t?ng
    tongTrongCan = tongTrongCan + soHangHienTai;
end

%% PH?N 3: T�NH K?T QU? CU?I C�NG V� XU?T RA M�N H�NH
% T�nh c?n b?c hai c?a t?ng v?a t�m ???c
A = sqrt(tongTrongCan);

fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d, gia tri cua bieu thuc A la: %.6f\n', n, A);