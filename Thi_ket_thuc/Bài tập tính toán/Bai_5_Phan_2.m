%% BÀI T?P 5: TÍNH TÍCH T THEO TÍNH CH?N L? C?A N
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P VÀ KI?M TRA S? NGUYÊN N
fprintf('CHUONG TRINH TINH BIEU THUC T\n');
fprintf('----------------------------\n');

% Yêu c?u ng??i dùng nh?p vào s? nguyên n
n = input('Nhap vao so nguyen n (1 <= n <= 50): ');

% S? d?ng vòng l?p 'while' ?? ??m b?o ng??i dùng nh?p ?úng ?i?u ki?n
% Vòng l?p s? ti?p t?c ch?y mi?n là n < 1 HO?C n > 50
while n < 1 || n > 50
    fprintf('So n khong hop le. Vui long nhap lai.\n');
    n = input('Nhap vao so nguyen n (1 <= n <= 50): ');
end

%% PH?N 2: TÍNH GIÁ TR? BI?U TH?C T
% Kh?i t?o giá tr? ban ??u cho T. Ph?i là 1 vì ?ây là phép nhân.
T = 1; 

% S? d?ng câu l?nh 'if-else' ?? ki?m tra xem n là ch?n hay l?
% Hàm mod(n, 2) s? tr? v? 0 n?u n ch?n, và 1 n?u n l?.
if mod(n, 2) == 1
    % --- TR??NG H?P 1: n LÀ S? L? ---
    fprintf('n = %d la so le. Tinh T = 1*3*5*...*n\n', n);
    
    % S? d?ng vòng l?p 'for' v?i b??c nh?y là 2
    % Cú pháp: for bien_dem = gia_tri_bat_dau : buoc_nhay : gia_tri_ket_thuc
    % Vòng l?p s? b?t ??u t? 1, và ? m?i b??c, giá tr? c?a i s? t?ng lên 2.
        for i = 1:2:n
        T = T * i;
    end
    
else
    % --- TR??NG H?P 2: n LÀ S? CH?N ---
    fprintf('n = %d la so chan. Tinh T = 2*4*6*...*n\n', n);
    
    % Vòng l?p này c?ng có b??c nh?y là 2, nh?ng b?t ??u t? 2.
        for i = 2:2:n
        T = T * i;
    end
end

%% PH?N 3: XU?T K?T QU?
fprintf('\n--- KET QUA ---\n');
% MATLAB có th? x? lý các s? r?t l?n, nên nó có th? hi?n th? k?t qu?
% d??i d?ng khoa h?c (ví d?: 1.2345e+10).
fprintf('Gia tri cua bieu thuc T la: %e\n', T);

% N?u b?n mu?n hi?n th? d??i d?ng s? nguyên l?n (có th? không chính xác hoàn toàn)
% fprintf('Gia tri cua bieu thuc T la: %.0f\n', T);