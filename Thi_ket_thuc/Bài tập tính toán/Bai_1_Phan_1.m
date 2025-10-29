%% BÀI T?P: TÌM S? NGÀY VÀ QUÝ C?A THÁNG
clc;
clear all;
close all;
%Nh?p input
thang = input('Nhap vao thang (1-12): ');
nam = input('Nhap vao nam (vi du: 2025): ');

%% PH?N 2: TÍNH TOÁN S? NGÀY TRONG THÁNG
% S? d?ng câu l?nh 'switch' ?? ki?m tra giá tr? c?a bi?n 'thang'
% ?ây là cách hi?u qu? khi b?n có m?t bi?n c?n so sánh v?i nhi?u giá tr? khác nhau.

switch thang
    case {1, 3, 5, 7, 8, 10, 12}
        % Tr??ng h?p các tháng có 31 ngày
        soNgay = 31;
        
    case {4, 6, 9, 11}
        % Tr??ng h?p các tháng có 30 ngày
        soNgay = 30;
        
    case 2
        % Tr??ng h?p ??c bi?t: Tháng 2, c?n ki?m tra n?m nhu?n
        % ?i?u ki?n n?m nhu?n:
        % 1. Chia h?t cho 4 NH?NG không chia h?t cho 100
        % 2. HO?C chia h?t cho 400
        % Hàm mod(a, b) dùng ?? l?y s? d? c?a phép chia a cho b.
        if (mod(nam, 4) == 0 && mod(nam, 100) ~= 0) || (mod(nam, 400) == 0)
            % N?u là n?m nhu?n
            soNgay = 29;
        else
            % N?u là n?m không nhu?n
            soNgay = 28;
        end
        
    otherwise
        % Tr??ng h?p ng??i dùng nh?p m?t tháng không h?p l? (ví d?: 13, 0, -5)
        soNgay = 0; % Gán m?t giá tr? ??c bi?t ?? báo hi?u tháng không h?p l?
end

%% PH?N 3: XÁC ??NH QUÝ VÀ XU?T K?T QU?
% Ki?m tra xem tháng ng??i dùng nh?p có h?p l? không tr??c khi xu?t k?t qu?
if soNgay == 0
    % N?u tháng không h?p l?
    fprintf('Thang ban nhap khong hop le. Vui long chay lai chuong trinh.\n');
else
    % N?u tháng h?p l?, ti?n hành tìm quý và in k?t qu?
    
    % Dùng if-elseif-else (d? hi?u cho ng??i m?i)
    if thang <= 3
        quy = 1;
    elseif thang <= 6
        quy = 2;
    elseif thang <= 9
        quy = 3;
    else
        quy = 4;
    end
    
    fprintf('\n--- KET QUA ---\n');
    fprintf('Thang %d nam %d co %d ngay.\n', thang, nam, soNgay);
    fprintf('Thang %d thuoc quy %d.\n', thang, quy);
end