%% B�I T?P 7: T�NH GI� TR? BI?U TH?C A V?I D?U ?AN XEN
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P V� KI?M TRA S? NGUY�N N
fprintf('CHUONG TRINH TINH BIEU THUC A = 100 - n/e + (n-1)/e^2 - ...\n');
fprintf('------------------------------------------------------------\n');

% Y�u c?u ng??i d�ng nh?p v�o s? nguy�n n
n = input('Nhap vao so nguyen n (1 <= n <= 100): ');

% S? d?ng v�ng l?p 'while' ?? ??m b?o ng??i d�ng nh?p ?�ng ?i?u ki?n
while n < 1 || n > 100
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 100): ');
end

%% PH?N 2: T�NH TO�N GI� TR? BI?U TH?C A
% Kh?i t?o gi� tr? ban ??u cho A. Bi?u th?c b?t ??u b?ng 100.
A = 100;

% S? d?ng v�ng l?p 'for' ?? t�nh t?ng c�c s? h?ng t? k = 1 ??n n
% Bi?n ??m k s? ??i di?n cho s? m? c?a e trong m?i s? h?ng.
for k = 1:n
    % --- PH�N T�CH QUY LU?T C?A M?I S? H?NG ---
    
    % 1. Quy lu?t c?a T? S?:
    % Khi k = 1, t? s? l� n
    % Khi k = 2, t? s? l� n-1
    % Khi k = 3, t? s? l� n-2
    % => C�ng th?c t?ng qu�t: tuSo = n - k + 1
    tuSo = n - k + 1;
    
    % 2. Quy lu?t c?a M?U S?:
    % M?u s? lu�n l� e^k. Trong MATLAB, h�m e^x ???c vi?t l� exp(x).
    mauSo = exp(k);
    
    % 3. Quy lu?t c?a D?U (+, -):
    % D?u ?an xen theo quy lu?t: -, +, -, +, ...
    % Khi k = 1 (l?), d?u l� -
    % Khi k = 2 (ch?n), d?u l� +
    % => C�ng th?c t?ng qu�t cho d?u l�: (-1)^k
    dau = (-1)^k;
    
    % T�nh gi� tr? c?a s? h?ng hi?n t?i
    soHangHienTai = dau * tuSo / mauSo;
    
    % C?ng s? h?ng v?a t�nh v�o t?ng A
    A = A + soHangHienTai;
end

%% PH?N 3: XU?T K?T QU? RA M�N H�NH
fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d, gia tri cua bieu thuc A la: %.6f\n', n, A);