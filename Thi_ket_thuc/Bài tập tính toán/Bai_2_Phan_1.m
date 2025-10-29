%% B�I T?P 2: GI?I V� BI?N LU?N PH??NG TR�NH ax^2 + bx + c = 0
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P H? S? T? NG??I D�NG
% In ra ti�u ?? c?a ch??ng tr�nh ?? ng??i d�ng d? hi?u
fprintf('CHUONG TRINH GIAI VA BIEN LUAN PHUONG TRINH BAC 2: ax^2 + bx + c = 0\n');
fprintf('------------------------------------------------------------------\n');

% S? d?ng l?nh input() ?? y�u c?u ng??i d�ng nh?p v�o c�c h? s? a, b, v� c
a = input('Nhap he so a: ');
b = input('Nhap he so b: ');
c = input('Nhap he so c: ');

%% PH?N 2: BI?N LU?N V� GI?I PH??NG TR�NH
% S? d?ng c�u l?nh if-else l?ng nhau ?? x�t t?t c? c�c tr??ng h?p c� th? x?y ra

fprintf('\n--- KET QUA BIEN LUAN ---\n');

% --- TR??NG H?P 1: a = 0 ---
% N?u a = 0, ph??ng tr�nh tr? th�nh ph??ng tr�nh b?c nh?t: bx + c = 0
if a == 0
    fprintf('He so a = 0. Day la phuong trinh bac nhat: %.2fx + %.2f = 0\n', b, c);
    
    % X�t c�c tr??ng h?p c?a ph??ng tr�nh b?c nh?t
    if b ~= 0 % N?u b kh�c 0
        x = -c / b;
        fprintf('Phuong trinh co mot nghiem duy nhat: x = %.4f\n', x);
    else % N?u b = 0
        if c == 0
            % Ph??ng tr�nh c� d?ng 0 = 0 (lu�n ?�ng)
            fprintf('Phuong trinh co vo so nghiem.\n');
        else
            % Ph??ng tr�nh c� d?ng c = 0 v?i c kh�c 0 (v� l�)
            fprintf('Phuong trinh vo nghiem.\n');
        end
    end
    
% --- TR??NG H?P 2: a ~= 0 ---
% N?u a kh�c 0, ?�y l� ph??ng tr�nh b?c hai th?c s?
else
    fprintf('He so a ~= 0. Day la phuong trinh bac hai.\n');
    
    % T�nh bi?t th?c delta
    delta = b^2 - 4*a*c;
    fprintf('Biet thuc delta = %.4f\n', delta);
    
    % Bi?n lu?n d?a v�o gi� tr? c?a delta
        if delta > 0
        % N?u delta > 0, c� 2 nghi?m th?c ph�n bi?t
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        fprintf('Phuong trinh co 2 nghiem thuc phan biet:\n');
        fprintf('x1 = %.4f\n', x1);
        fprintf('x2 = %.4f\n', x2);
        
    elseif delta == 0
        % N?u delta = 0, c� nghi?m k�p
        x = -b / (2*a);
        fprintf('Phuong trinh co nghiem kep:\n');
        fprintf('x = %.4f\n', x);
        
    else % delta < 0
        % N?u delta < 0, c� 2 nghi?m ph?c
        % MATLAB t? ??ng x? l� c?n b?c hai c?a s? �m v� cho ra s? ph?c
        x1 = (-b + sqrt(delta)) / (2*a);
        x2 = (-b - sqrt(delta)) / (2*a);
        fprintf('Phuong trinh khong co nghiem thuc, co 2 nghiem phuc lien hop:\n');
        
        % D�ng l?nh disp() ?? in s? ph?c v� fprintf() kh�ng h? tr? tr?c ti?p
        disp('x1 =');
        disp(x1);
        disp('x2 =');
        disp(x2);
    end
end