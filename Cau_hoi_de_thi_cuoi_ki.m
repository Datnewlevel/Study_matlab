% X�a c�c bi?n c? v� l�m s?ch m�n h�nh Command Window
clear;
clc;

%% B??c 1: Y�u c?u ng??i d�ng nh?p s? l??ng ph?n t? n v� ki?m tra
% S? d?ng m?t v�ng l?p v� h?n ?? y�u c?u nh?p l?i n?u n kh�ng h?p l?
while true
    % input() d�ng ?? hi?n th? th�ng b�o v� nh?n d? li?u t? b�n ph�m
    n = input('Nhap so luong phan tu n (tu 1 den 50): ');

    % Ki?m tra xem n c� n?m trong kho?ng [1, 50] hay kh�ng
    if n >= 1 && n <= 50
        % N?u n h?p l?, tho�t kh?i v�ng l?p 'while'
        break;
    else
        % N?u n kh�ng h?p l?, hi?n th? th�ng b�o l?i
        disp('Phan tu n ko hop le. Vui long nhap lai');
    end
end

%% B??c 2: Nh?p d�y g?m n s? nguy�n
% Kh?i t?o m?t m?ng r?ng ?? l?u d�y s?
daySo = [];

% D�ng v�ng l?p for ch?y t? 1 ??n n ?? nh?p t?ng s?
fprintf('Vui long nhap %d so nguyen:\n', n);
for i = 1:n
    % Y�u c?u nh?p s? th? i v� l?u v�o bi?n 'so'
    so = input(sprintf('Nhap so thu %d: ', i));
    % Th�m s? v?a nh?p v�o cu?i c?a m?ng 'daySo'
    daySo(end+1) = so;
end

%% B??c 3: Kh?i t?o c�c bi?n ?? l?u k?t qu?
tongSoChan = 0;         % Bi?n l?u t?ng c�c s? ch?n, ban ??u b?ng 0
dayChiaHetCho5 = [];    % M?ng r?ng ?? l?u c�c s? chia h?t cho 5

%% B??c 4: Duy?t qua d�y s? ?? t�nh to�n
% D�ng v�ng l?p for ?? ?i qua t?ng ph?n t? trong 'daySo'
for i = 1:length(daySo)
    % L?y ra ph?n t? hi?n t?i
    phanTuHienTai = daySo(i);

    % ---- Nhi?m v? 1: Ki?m tra v� t�nh t?ng s? ch?n ----
    % mod(a, b) l� h�m chia l?y ph?n d? c?a a cho b
    % N?u ph?n d? khi chia cho 2 b?ng 0, th� ?� l� s? ch?n
    if mod(phanTuHienTai, 2) == 0
        % C?ng d?n v�o bi?n t?ng
        tongSoChan = tongSoChan + phanTuHienTai;
    end

    % ---- Nhi?m v? 2: T�m c�c s? chia h?t cho 5 ----
    % N?u ph?n d? khi chia cho 5 b?ng 0, th� s? ?� chia h?t cho 5
    if mod(phanTuHienTai, 5) == 0
        % Th�m ph?n t? n�y v�o cu?i c?a d�y m?i
        dayChiaHetCho5(end+1) = phanTuHienTai;
    end
end

%% B??c 5: In k?t qu? ra m�n h�nh
% fprintf() d�ng ?? in ra m�n h�nh theo ??nh d?ng
fprintf('\n--- Ket Qua ---\n');
fprintf('Tong cac so chan la: %d\n', tongSoChan);

% Ki?m tra xem d�y s? chia h?t cho 5 c� r?ng kh�ng
if isempty(dayChiaHetCho5)
    fprintf('Khong co so nao trong day chia het cho 5.\n');
else
    fprintf('Day gom cac phan tu chia het cho 5 la:\n');
    % disp() d�ng ?? hi?n th? gi� tr? c?a m?t bi?n (? ?�y l� c? m?ng)
    disp(dayChiaHetCho5);
end