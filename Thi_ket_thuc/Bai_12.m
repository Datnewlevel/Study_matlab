% Xóa các bi?n ?ã l?u, làm s?ch c?a s? Command và ?óng t?t c? các c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
x = -2*pi:0.15:pi; % D?i x và b??c nh?y ?? kh?p v?i hình m?u

%% 2. Tính toán giá tr? các hàm s?
y = sin(x) + cos(x);
z = sin(x) - cos(x);

%% 3. V? và tùy ch?nh ?? th?
figure;
ax = gca;
hold on;

% === S?A L?I T?I ?ÂY: Dùng nét ch?m g?ch '-.' ===
% V? ?? th? hàm z = sinx - cosx (???ng nét ch?m g?ch xanh)
plot(x, z, 'b-.', 'LineWidth', 3.5);

% K? thu?t v? 2 l?p cho ?? th? y ?? ???ng k? không ?i qua tâm
% 1. V? ???ng nét li?n màu ?en tr??c
plot(x, y, 'k-', 'LineWidth', 2.5);

% 2. V? các marker hình tròn (vi?n ?en, n?n tr?ng) lên trên
plot(x, y, 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'k', 'LineWidth', 1);

%% 4. Hoàn thi?n ?? th?
grid on;
ax.GridLineStyle = '--';
xlim([-8 4]);
ylim([-1.5 1.5]);
title('Do thi ham so y = sinx + cosx, z = sinx - cosx');
xlabel('Truc x');
ylabel('Truc y,z');

% Thêm các dòng ch? chú thích
text(-6, -0.9, 'sinx - cosx', 'Rotation', 70, 'FontWeight', 'bold', 'Color', 'b', 'FontSize', 11);
text(-1.5, 0.2, 'sinx + cosx', 'Rotation', 80, 'FontWeight', 'bold', 'BackgroundColor', 'y', 'FontSize', 11);

hold off;