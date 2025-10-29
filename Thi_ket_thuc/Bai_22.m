clc;
clear all;
close all;

x = -pi:pi/10:2*pi;

%% 2. Tính toán giá tr? các hàm s?
y = 2 * sin(x);
z = 3 * cos(x);

%% 3. V? và tùy ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i và ??t màu n?n xám
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? tùy ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng các hàm lên nhau
hold on;

% V? ?? th? hàm y = 2sinx
% 'd' : ch? v? marker hình thoi (diamond), không v? ???ng n?i
% 'MarkerEdgeColor', 'k' : Màu vi?n marker là ?en (black)
% 'MarkerFaceColor', 'm' : Tô màu bên trong marker là h?ng tím (magenta)
% 'MarkerSize', 8 : ??t kích th??c marker l?n h?n m?t chút
plot(x, y, 'd', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'm', 'MarkerSize', 8, 'LineWidth', 1.5);

% V? ?? th? hàm z = 3cosx
% 'b-' : nét li?n màu xanh (blue)
% 'LineWidth', 2.5 : ??t ?? dày ???ng là 2.5 ?? nét ??m nh? hình
plot(x, z, 'b-', 'LineWidth', 2.5);

%% 4. Hoàn thi?n ?? th?
% B?t l??i và ??t ki?u l??i là nét ??t ('--')
grid on;
ax.GridLineStyle = '--';

% ??t gi?i h?n cho các tr?c ?? gi?ng v?i hình m?u
xlim([-4 8]);
ylim([-3.5 3.5]);

% Thêm tiêu ?? và nhãn cho các tr?c
title('Do thi ham so y = 2sinx, z = 3cosx');
xlabel('Truc x');
ylabel('Truc y,z');

% Thêm chú thích (legend) và ??t ? góc d??i bên ph?i
legend('y = 2sinx', 'z = 3cosx', 'Location', 'SouthEast');

% Thêm các dòng ch? chú thích xoay nghiêng trên ?? th?
% text(t?a_??_x, t?a_??_y, 'N?i dung', 'Rotation', góc_xoay)
text(0.5, -2, 'Ham y', 'Rotation', 60, 'FontWeight', 'bold');
text(4.5, 1.5, 'Ham z', 'Rotation', 75, 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;