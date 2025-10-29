%% BÀI T?P 2: GI?I VÀ BI?N LU?N PH??NG TRÌNH ax^2 + bx + c = 0
% Xóa các bi?n ?ã l?u và làm s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P H? S? T? NG??I DÙNG
% In ra tiêu ?? c?a ch??ng trình ?? ng??i dùng d? hi?u
fprintf('CHUONG TRINH GIAI VA BIEN LUAN PHUONG TRINH BAC 2: ax^2 + bx + c = 0\n');
fprintf('------------------------------------------------------------------\n');

% S? d?ng l?nh input() ?? yêu c?u ng??i dùng nh?p vào các h? s? a, b, và c
a = input('Nhap he so a: ');
b = input('Nhap he so b: ');
c = input('Nhap he so c: ');

%% PH?N 2: BI?N LU?N VÀ GI?I PH??NG TRÌNH
% S? d?ng câu l?nh if-else l?ng nhau ?? xét t?t c? các tr??ng h?p có th? x?y ra

fprintf('\n--- KET QUA BIEN LUAN ---\n');

% --- TR??NG H?P 1: a = 0 ---
% N?u a = 0, ph??ng trình tr? thành ph??ng trình b?c nh?t: bx + c = 0
if a == 0
    fprintf('He so a = 0. Day la phuong trinh bac nhat: %.2fx + %.2f = 0\n', b, c);
    
    % Xét các tr??ng h?p c?a ph??ng trình b?c nh?t
    if b ~= 0 % N?u b khác 0
        x = -c / b;
        fprintf('Phuong trinh co mot nghiem duy nhat: x = %.4f\n', x);
    else % N?u b = 0
        if c == 0
            % Ph??ng trình có d?ng 0 = 0 (luôn ?úng)
            fprintf('Phuong trinh co vo so nghiem.\n');
        else
            % Ph??ng trình có d?ng c = 0 v?i c khác 0 (vô lý)
            fprintf('Phuong trinh vo nghiem.\n');
        end
    end
    
% --- TR??NG H?P 2: a ~= 0 ---
% N?u a khác 0, ?ây là ph??ng trình b?c hai th?c s?
else
    fprintf('He so a ~= 0. Day la phuong trinh bac hai.\n');
    
    % Tính bi?t th?c delta
    delta = b^2 - 4*a*c;
    fprintf('Biet thuc delta = %.4f\n', delta);
    
    % Bi?n lu?n d?a vào giá tr? c?a delta
        if delta > 0
        % N?u delta > 0, có 2 nghi?m th?c phân bi?t
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        fprintf('Phuong trinh co 2 nghiem thuc phan biet:\n');
        fprintf('x1 = %.4f\n', x1);
        fprintf('x2 = %.4f\n', x2);
        
    elseif delta == 0
        % N?u delta = 0, có nghi?m kép
        x = -b / (2*a);
        fprintf('Phuong trinh co nghiem kep:\n');
        fprintf('x = %.4f\n', x);
        
    else % delta < 0
        % N?u delta < 0, có 2 nghi?m ph?c
        % MATLAB t? ??ng x? lý c?n b?c hai c?a s? âm và cho ra s? ph?c
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        fprintf('Phuong trinh khong co nghiem thuc, co 2 nghiem phuc lien hop:\n');
        
        % Dùng l?nh disp() ?? in s? ph?c vì fprintf() không h? tr? tr?c ti?p
        disp('x1 =');
        disp(x1);
        disp('x2 =');
        disp(x2);
    end
end