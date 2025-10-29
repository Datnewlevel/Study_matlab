%% B�I T?P: T�M S? NG�Y V� QU� C?A TH�NG
clc;
clear all;
close all;
%Nh?p input
thang = input('Nhap vao thang (1-12): ');
nam = input('Nhap vao nam (vi du: 2025): ');

%% PH?N 2: T�NH TO�N S? NG�Y TRONG TH�NG
% S? d?ng c�u l?nh 'switch' ?? ki?m tra gi� tr? c?a bi?n 'thang'
% ?�y l� c�ch hi?u qu? khi b?n c� m?t bi?n c?n so s�nh v?i nhi?u gi� tr? kh�c nhau.

switch thang
    case {1, 3, 5, 7, 8, 10, 12}
        % Tr??ng h?p c�c th�ng c� 31 ng�y
        soNgay = 31;
        
    case {4, 6, 9, 11}
        % Tr??ng h?p c�c th�ng c� 30 ng�y
        soNgay = 30;
        
    case 2
        % Tr??ng h?p ??c bi?t: Th�ng 2, c?n ki?m tra n?m nhu?n
        % ?i?u ki?n n?m nhu?n:
        % 1. Chia h?t cho 4 NH?NG kh�ng chia h?t cho 100
        % 2. HO?C chia h?t cho 400
        % H�m mod(a, b) d�ng ?? l?y s? d? c?a ph�p chia a cho b.
        if (mod(nam, 4) == 0 && mod(nam, 100) ~= 0) || (mod(nam, 400) == 0)
            % N?u l� n?m nhu?n
            soNgay = 29;
        else
            % N?u l� n?m kh�ng nhu?n
            soNgay = 28;
        end
        
    otherwise
        % Tr??ng h?p ng??i d�ng nh?p m?t th�ng kh�ng h?p l? (v� d?: 13, 0, -5)
        soNgay = 0; % G�n m?t gi� tr? ??c bi?t ?? b�o hi?u th�ng kh�ng h?p l?
end

%% PH?N 3: X�C ??NH QU� V� XU?T K?T QU?
% Ki?m tra xem th�ng ng??i d�ng nh?p c� h?p l? kh�ng tr??c khi xu?t k?t qu?
if soNgay == 0
    % N?u th�ng kh�ng h?p l?
    fprintf('Thang ban nhap khong hop le. Vui long chay lai chuong trinh.\n');
else
    % N?u th�ng h?p l?, ti?n h�nh t�m qu� v� in k?t qu?
    
    % D�ng if-elseif-else (d? hi?u cho ng??i m?i)
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