% Xóa các bi?n ?ã l?u, làm s?ch c?a s? Command và ?óng t?t c? các c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x ch?y t? 0 ??n 2*pi.
% 'pi' là h?ng s? pi (?3.14) có s?n trong MATLAB.
% B??c nh?y là pi/12 ?? có s? l??ng ?i?m marker v?a ph?i, gi?ng hình m?u.
x = 0:pi/12:2*pi;

%% 2. Tính toán giá tr? các hàm s?
y = sin(x - pi);
z = cos(x);

%% 3. V? và tùy ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i và ??t màu n?n xám
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? tùy ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng các hàm lên nhau
hold on;

% V? ?? th? hàm y = sin(x - pi)
% '-s' : nét li?n (-) và marker hình vuông (square)
% 'Color', 'b' : Màu ???ng và vi?n marker là xanh d??ng (blue)
% 'MarkerFaceColor', 'g' : Tô màu bên trong marker là xanh lá (green)
% 'MarkerSize', 8 : ??t kích th??c marker l?n h?n m?t chút
% 'LineWidth', 2 : ??t ?? dày ???ng n?i là 2
plot(x, y, '-s', 'Color', 'b', 'MarkerFaceColor', 'g', 'MarkerSize', 8, 'LineWidth', 2);


% V? ?? th? hàm z = cos(x)
% 'k-' : nét li?n màu ?en (black)
% 'LineWidth', 3 : ??t ?? dày ???ng là 3 ?? nét ??m nh? hình
plot(x, z, 'k-', 'LineWidth', 3);

%% 4. Hoàn thi?n ?? th?
% B?t l??i và ??t ki?u l??i là nét ??t ('--')
grid on;
ax.GridLineStyle = '--';

% Thêm tiêu ?? và nhãn cho các tr?c
title('Do thi ham so y = sin(x - pi), z = cosx');
xlabel('Truc x');
ylabel('Truc y,z');
xlim([0 7]);
ylim([-1 1]);

legend('y = sin(x - \pi)', 'z = cosx', 'Location', 'SouthEast');

text(2.7, -0.1, 'y = sin(x - \pi)', 'Rotation', 70, 'FontWeight', 'bold');
text(3.7, -0.7, 'z = cosx', 'Rotation', 65, 'FontWeight', 'bold');

hold off;