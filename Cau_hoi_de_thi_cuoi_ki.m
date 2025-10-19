% Xóa các bi?n c? và làm s?ch màn hình Command Window
clear;
clc;

%% B??c 1: Yêu c?u ng??i dùng nh?p s? l??ng ph?n t? n và ki?m tra
% S? d?ng m?t vòng l?p vô h?n ?? yêu c?u nh?p l?i n?u n không h?p l?
while true
    % input() dùng ?? hi?n th? thông báo và nh?n d? li?u t? bàn phím
    n = input('Nhap so luong phan tu n (tu 1 den 50): ');

    % Ki?m tra xem n có n?m trong kho?ng [1, 50] hay không
    if n >= 1 && n <= 50
        % N?u n h?p l?, thoát kh?i vòng l?p 'while'
        break;
    else
        % N?u n không h?p l?, hi?n th? thông báo l?i
        disp('Phan tu n ko hop le. Vui long nhap lai');
    end
end

%% B??c 2: Nh?p dãy g?m n s? nguyên
% Kh?i t?o m?t m?ng r?ng ?? l?u dãy s?
daySo = [];

% Dùng vòng l?p for ch?y t? 1 ??n n ?? nh?p t?ng s?
fprintf('Vui long nhap %d so nguyen:\n', n);
for i = 1:n
    % Yêu c?u nh?p s? th? i và l?u vào bi?n 'so'
    so = input(sprintf('Nhap so thu %d: ', i));
    % Thêm s? v?a nh?p vào cu?i c?a m?ng 'daySo'
    daySo(end+1) = so;
end

%% B??c 3: Kh?i t?o các bi?n ?? l?u k?t qu?
tongSoChan = 0;         % Bi?n l?u t?ng các s? ch?n, ban ??u b?ng 0
dayChiaHetCho5 = [];    % M?ng r?ng ?? l?u các s? chia h?t cho 5

%% B??c 4: Duy?t qua dãy s? ?? tính toán
% Dùng vòng l?p for ?? ?i qua t?ng ph?n t? trong 'daySo'
for i = 1:length(daySo)
    % L?y ra ph?n t? hi?n t?i
    phanTuHienTai = daySo(i);

    % ---- Nhi?m v? 1: Ki?m tra và tính t?ng s? ch?n ----
    % mod(a, b) là hàm chia l?y ph?n d? c?a a cho b
    % N?u ph?n d? khi chia cho 2 b?ng 0, thì ?ó là s? ch?n
    if mod(phanTuHienTai, 2) == 0
        % C?ng d?n vào bi?n t?ng
        tongSoChan = tongSoChan + phanTuHienTai;
    end

    % ---- Nhi?m v? 2: Tìm các s? chia h?t cho 5 ----
    % N?u ph?n d? khi chia cho 5 b?ng 0, thì s? ?ó chia h?t cho 5
    if mod(phanTuHienTai, 5) == 0
        % Thêm ph?n t? này vào cu?i c?a dãy m?i
        dayChiaHetCho5(end+1) = phanTuHienTai;
    end
end

%% B??c 5: In k?t qu? ra màn hình
% fprintf() dùng ?? in ra màn hình theo ??nh d?ng
fprintf('\n--- Ket Qua ---\n');
fprintf('Tong cac so chan la: %d\n', tongSoChan);

% Ki?m tra xem dãy s? chia h?t cho 5 có r?ng không
if isempty(dayChiaHetCho5)
    fprintf('Khong co so nao trong day chia het cho 5.\n');
else
    fprintf('Day gom cac phan tu chia het cho 5 la:\n');
    % disp() dùng ?? hi?n th? giá tr? c?a m?t bi?n (? ?ây là c? m?ng)
    disp(dayChiaHetCho5);
end