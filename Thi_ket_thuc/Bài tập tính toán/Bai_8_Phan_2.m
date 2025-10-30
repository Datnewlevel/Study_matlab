%% B�I T?P 8: T�NH GI� TR? BI?U TH?C A
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P V� KI?M TRA ??U V�O
fprintf('CHUONG TRINH TINH BIEU THUC A = -x^n/(1*lnx) + x^(n-1)/(2*lnx) - ...\n');
fprintf('------------------------------------------------------------------\n');

% --- Nh?p v� ki?m tra n ---
n = input('Nhap so nguyen n (1 <= n <= 50): ');
% S? d?ng v�ng l?p 'while' ?? ??m b?o n h?p l? (l� s? nguy�n trong kho?ng [1, 50])
% floor(n) ~= n d�ng ?? ki?m tra xem n c� ph?i l� s? nguy�n kh�ng.
while n < 1 || n > 50 || floor(n) ~= n
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap so nguyen n (1 <= n <= 50): ');
end

% --- Nh?p v� ki?m tra x ---
x = input('Nhap so nguyen x (1 < x <= 50): ');
% ?i?u ki?n x > 1 l� b?t bu?c v� ln(1) = 0 s? g�y l?i chia cho 0.
while x <= 1 || x > 50 || floor(x) ~= x
    fprintf('So x khong hop le (phai la so nguyen > 1). Vui long nhap lai.\n');
    x = input('Nhap so nguyen x (1 < x <= 50): ');
end

%% PH?N 2: T�NH TO�N BI?U TH?C A
% Kh?i t?o gi� tr? ban ??u cho A. V� ?�y l� m?t chu?i t?ng, ta b?t ??u b?ng 0.
A = 0;

% T�nh ln(x) m?t l?n tr??c v�ng l?p ?? t?i ?u hi?u su?t.
% Trong MATLAB, h�m logarit t? nhi�n ln(x) ???c vi?t l� log(x).
ln_x = log(x);

% S? d?ng v�ng l?p 'for' ?? t�nh t?ng c�c s? h?ng t? k = 1 ??n n.
% Bi?n ??m k s? ??i di?n cho v? tr� c?a s? h?ng trong chu?i.
for k = 1:n
    % --- PH�N T�CH QUY LU?T C?A S? H?NG TH? k ---
    
    % 1. Quy lu?t c?a D?U (+, -):
    % D?u ?an xen theo quy lu?t: -, +, -, +, ...
    % Khi k = 1 (l?), d?u l� -
    % Khi k = 2 (ch?n), d?u l� +
    % => C�ng th?c t?ng qu�t cho d?u l�: (-1)^k
    dau = (-1)^k;
    
    % 2. Quy lu?t c?a T? S? (l?y th?a c?a x):
    % Khi k = 1, s? m? l� n
    % Khi k = 2, s? m? l� n-1
    % => C�ng th?c t?ng qu�t: so_mu = n - k + 1
    tuSo = x^(n - k + 1);
    
    % 3. Quy lu?t c?a M?U S?:
    % Khi k = 1, m?u s? l� 1 * ln(x)
    % Khi k = 2, m?u s? l� 2 * ln(x)
    % => C�ng th?c t?ng qu�t: mauSo = k * ln(x)
    mauSo = k * ln_x;
    
    % T�nh gi� tr? c?a s? h?ng hi?n t?i
    soHangHienTai = dau * tuSo / mauSo;
    
    % C?ng d?n s? h?ng v?a t�nh v�o t?ng A
    A = A + soHangHienTai;
end

%% PH?N 3: XU?T K?T QU? RA M�N H�NH
fprintf('\n--- KET QUA ---\n');
% S? d?ng %.6f ?? hi?n th? k?t qu? v?i 6 ch? s? sau d?u ph?y
fprintf('Voi n = %d va x = %d, gia tri cua bieu thuc A la: %.6f\n', n, x, A);