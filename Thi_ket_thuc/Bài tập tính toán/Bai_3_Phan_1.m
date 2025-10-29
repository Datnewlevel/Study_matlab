%% B�I T?P 3: KI?M TRA V� PH�N LO?I TAM GI�C
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P D? LI?U T? NG??I D�NG
fprintf('CHUONG TRINH KIEM TRA 3 SO NGUYEN a, b, c CO PHAI LA CANH CUA TAM GIAC KHONG\n');
fprintf('---------------------------------------------------------------------------\n');

% Y�u c?u ng??i d�ng nh?p v�o ?? d�i 3 c?nh
a = input('Nhap vao do dai canh a: ');
b = input('Nhap vao do dai canh b: ');
c = input('Nhap vao do dai canh c: ');

%% PH?N 2: KI?M TRA V� BI?N LU?N
fprintf('\n--- KET QUA ---\n');

% --- B??C 1: KI?M TRA ?I?U KI?N T?N T?I TAM GI�C ---
% ?i?u ki?n c?n ?? a, b, c l� 3 c?nh c?a m?t tam gi�c:
% 1. C? 3 c?nh ??u ph?i l� s? d??ng.
% 2. T?ng ?? d�i 2 c?nh b?t k? ph?i l?n h?n c?nh c�n l?i (B?t ??ng th?c tam gi�c).
if (a > 0 && b > 0 && c > 0) && (a + b > c) && (a + c > b) && (b + c > a)
    % N?u t?t c? c�c ?i?u ki?n tr�n ??u ?�ng, a, b, c t?o th�nh m?t tam gi�c.
    fprintf('Ba so a=%.f, b=%.f, c=%.f co the la 3 canh cua mot tam giac.\n', a, b, c);
    
    % --- B??C 2: PH�N LO?I TAM GI�C ---
    % S? d?ng if-elseif-else l?ng nhau ?? x�t c�c tr??ng h?p.
    % ?u ti�n x�t c�c tr??ng h?p ??c bi?t nh?t tr??c (vu�ng c�n, ??u).
    
    % Ki?m tra ??nh l� Pytago ?? xem c� ph?i tam gi�c vu�ng kh�ng.
        isVuong = (a^2 + b^2 == c^2) || (a^2 + c^2 == b^2) || (b^2 + c^2 == a^2);
    
    if a == b && b == c
        % Tr??ng h?p 1: Tam gi�c ??u (c? 3 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC DEU.\n');
        
    elseif (a == b || a == c || b == c) && isVuong
        % Tr??ng h?p 2: Tam gi�c vu�ng c�n (v?a vu�ng, v?a c� 2 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC VUONG CAN.\n');
        
    elseif a == b || a == c || b == c
        % Tr??ng h?p 3: Tam gi�c c�n (ch? c� 2 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC CAN.\n');
        
    elseif isVuong
        % Tr??ng h?p 4: Tam gi�c vu�ng (ch? th?a m�n ??nh l� Pytago)
        fprintf('=> Day la mot TAM GIAC VUONG.\n');
        
    else
        % Tr??ng h?p 5: Kh�ng r?i v�o c�c tr??ng h?p tr�n
        fprintf('=> Day la mot TAM GIAC THUONG.\n');
    end
    
else
    % N?u m?t trong c�c ?i?u ki?n ? B??C 1 b? sai
    fprintf('Ba so a=%.f, b=%.f, c=%.f KHONG THE la 3 canh cua mot tam giac.\n', a, b, c);
end