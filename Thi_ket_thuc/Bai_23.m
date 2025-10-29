clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% ?? v? ???ng nét ??t (y) ???c m??t mà, ta c?n nhi?u ?i?m d? li?u
x_fine = -10:0.1:10;

% ?? v? các marker (z) không b? quá dày ??c, ta dùng b??c nh?y l?n h?n
x_coarse = -10:0.5:10;

%% 2. Tính toán giá tr? các hàm s?
% Tính y d?a trên vector dày ??c
y = -(x_fine.^3) - 7;

% Tính z d?a trên vector th?a
z = x_coarse.^3;

%% 3. V? và tùy ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i và ??t màu n?n xám
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? tùy ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng các hàm lên nhau
hold on;

% V? ?? th? hàm y = -x^3 - 7
% 'b--' : nét ??t (--) màu xanh (blue)
% 'LineWidth', 2.5 : ??t ?? dày ???ng là 2.5 ?? nét ??m nh? hình
plot(x_fine, y, 'b--', 'LineWidth', 2.5);

% V? ?? th? hàm z = x^3
% 'o' : ch? v? marker hình tròn (circle), không v? ???ng n?i
% 'MarkerEdgeColor', 'k' : Màu vi?n marker là ?en (black)
% 'MarkerFaceColor', 'g' : Tô màu bên trong marker là xanh lá (green)
% 'MarkerSize', 10 : ??t kích th??c marker l?n
% 'LineWidth', 2 : ??t ?? dày vi?n marker là 2
plot(x_coarse, z, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'g', 'MarkerSize', 10, 'LineWidth', 2);

%% 4. Hoàn thi?n ?? th?
% B?t l??i và ??t ki?u l??i là nét ??t ('--')
grid on;
ax.GridLineStyle = '--';

% ??t gi?i h?n cho tr?c y ?? kh?p v?i hình m?u
xlim([-10 10]);
ylim([-1500 1100]);

% Thêm tiêu ?? và nhãn cho các tr?c
title('Do thi ham so y = -x^3 - 7, z = x^3');
xlabel('Truc x');
ylabel('Truc y');

% Thêm chú thích (legend) và ??t ? góc d??i bên ph?i
legend('y = -x^3 - 7', 'z = x^3', 'Location', 'SouthEast');

% Thêm các dòng ch? chú thích có n?n vàng
text(-8, 300, 'x < 0', 'Rotation', 15, 'FontWeight', 'bold', 'BackgroundColor', 'y');
text(6, -500, 'x > 0', 'Rotation', -25, 'FontWeight', 'bold', 'BackgroundColor', 'y');

% T?t ch? ?? v? ch?ng
hold off;