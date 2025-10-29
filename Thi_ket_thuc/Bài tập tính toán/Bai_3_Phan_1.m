%% BÀI T?P 3: KI?M TRA VÀ PHÂN LO?I TAM GIÁC
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P D? LI?U T? NG??I DÙNG
fprintf('CHUONG TRINH KIEM TRA 3 SO NGUYEN a, b, c CO PHAI LA CANH CUA TAM GIAC KHONG\n');
fprintf('---------------------------------------------------------------------------\n');

% Yêu c?u ng??i dùng nh?p vào ?? dài 3 c?nh
a = input('Nhap vao do dai canh a: ');
b = input('Nhap vao do dai canh b: ');
c = input('Nhap vao do dai canh c: ');

%% PH?N 2: KI?M TRA VÀ BI?N LU?N
fprintf('\n--- KET QUA ---\n');

% --- B??C 1: KI?M TRA ?I?U KI?N T?N T?I TAM GIÁC ---
% ?i?u ki?n c?n ?? a, b, c là 3 c?nh c?a m?t tam giác:
% 1. C? 3 c?nh ??u ph?i là s? d??ng.
% 2. T?ng ?? dài 2 c?nh b?t k? ph?i l?n h?n c?nh còn l?i (B?t ??ng th?c tam giác).
if (a > 0 && b > 0 && c > 0) && (a + b > c) && (a + c > b) && (b + c > a)
    % N?u t?t c? các ?i?u ki?n trên ??u ?úng, a, b, c t?o thành m?t tam giác.
    fprintf('Ba so a=%.f, b=%.f, c=%.f co the la 3 canh cua mot tam giac.\n', a, b, c);
    
    % --- B??C 2: PHÂN LO?I TAM GIÁC ---
    % S? d?ng if-elseif-else l?ng nhau ?? xét các tr??ng h?p.
    % ?u tiên xét các tr??ng h?p ??c bi?t nh?t tr??c (vuông cân, ??u).
    
    % Ki?m tra ??nh lý Pytago ?? xem có ph?i tam giác vuông không.
        isVuong = (a^2 + b^2 == c^2) || (a^2 + c^2 == b^2) || (b^2 + c^2 == a^2);
    
    if a == b && b == c
        % Tr??ng h?p 1: Tam giác ??u (c? 3 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC DEU.\n');
        
    elseif (a == b || a == c || b == c) && isVuong
        % Tr??ng h?p 2: Tam giác vuông cân (v?a vuông, v?a có 2 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC VUONG CAN.\n');
        
    elseif a == b || a == c || b == c
        % Tr??ng h?p 3: Tam giác cân (ch? có 2 c?nh b?ng nhau)
        fprintf('=> Day la mot TAM GIAC CAN.\n');
        
    elseif isVuong
        % Tr??ng h?p 4: Tam giác vuông (ch? th?a mãn ??nh lý Pytago)
        fprintf('=> Day la mot TAM GIAC VUONG.\n');
        
    else
        % Tr??ng h?p 5: Không r?i vào các tr??ng h?p trên
        fprintf('=> Day la mot TAM GIAC THUONG.\n');
    end
    
else
    % N?u m?t trong các ?i?u ki?n ? B??C 1 b? sai
    fprintf('Ba so a=%.f, b=%.f, c=%.f KHONG THE la 3 canh cua mot tam giac.\n', a, b, c);
end