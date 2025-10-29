%% B�I T?P 5: T�NH T�CH T THEO T�NH CH?N L? C?A N
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P V� KI?M TRA S? NGUY�N N
fprintf('CHUONG TRINH TINH BIEU THUC T\n');
fprintf('----------------------------\n');

% Y�u c?u ng??i d�ng nh?p v�o s? nguy�n n
n = input('Nhap vao so nguyen n (1 <= n <= 50): ');

% S? d?ng v�ng l?p 'while' ?? ??m b?o ng??i d�ng nh?p ?�ng ?i?u ki?n
% V�ng l?p s? ti?p t?c ch?y mi?n l� n < 1 HO?C n > 50
while n < 1 || n > 50
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 50): ');
end

%% PH?N 2: T�NH GI� TR? BI?U TH?C T
% Kh?i t?o gi� tr? ban ??u cho T. Ph?i l� 1 v� ?�y l� ph�p nh�n.
T = 1; 

% S? d?ng c�u l?nh 'if-else' ?? ki?m tra xem n l� ch?n hay l?
% H�m mod(n, 2) s? tr? v? 0 n?u n ch?n, v� 1 n?u n l?.
if mod(n, 2) == 1
    % --- TR??NG H?P 1: n L� S? L? ---
    fprintf('n = %d la so le. Tinh T = 1*3*5*...*n\n', n);
    
    % S? d?ng v�ng l?p 'for' v?i b??c nh?y l� 2
    % C� ph�p: for bien_dem = gia_tri_bat_dau : buoc_nhay : gia_tri_ket_thuc
    % V�ng l?p s? b?t ??u t? 1, v� ? m?i b??c, gi� tr? c?a i s? t?ng l�n 2.
        for i = 1:2:n
        T = T * i;
    end
    
else
    % --- TR??NG H?P 2: n L� S? CH?N ---
    fprintf('n = %d la so chan. Tinh T = 2*4*6*...*n\n', n);
    
    % V�ng l?p n�y c?ng c� b??c nh?y l� 2, nh?ng b?t ??u t? 2.
        for i = 2:2:n
        T = T * i;
    end
end

%% PH?N 3: XU?T K?T QU?
fprintf('\n--- KET QUA ---\n');
% MATLAB c� th? x? l� c�c s? r?t l?n, n�n n� c� th? hi?n th? k?t qu?
% d??i d?ng khoa h?c (v� d?: 1.2345e+10).
fprintf('Gia tri cua bieu thuc T la: %e\n', T);

% N?u b?n mu?n hi?n th? d??i d?ng s? nguy�n l?n (c� th? kh�ng ch�nh x�c ho�n to�n)
% fprintf('Gia tri cua bieu thuc T la: %.0f\n', T);