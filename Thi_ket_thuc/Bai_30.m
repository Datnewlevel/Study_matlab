% Xóa các bi?n ?ã l?u, làm s?ch c?a s? Command và ?óng t?t c? các c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x dày ??c (-20 ??n 20) ?? v? ?? th? y (???ng cong h?ng)
x_fine = -20:1:20;

% T?o m?t vector x th?a h?n (-12 ??n 12) ?? v? các marker z (ngôi sao)
% D?i giá tr? này ng?n h?n ?? kh?p v?i hình m?u.
x_coarse = -12:2:12;

%% 2. Tính toán giá tr? các hàm s?
% Tính y d?a trên vector dày ??c
y = -(x_fine.^2);

% Tính z d?a trên vector th?a
z = -(x_coarse.^2) - 200;

%% 3. V? và tùy ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i và ??t màu n?n xám
figure;

% Gi? ?? th? ?? v? ch?ng các hàm lên nhau
hold on;

% V? ?? th? hàm y = -x^2
% 'm-*' : m(h?ng), -(nét li?n), *(marker hoa th?)
% 'LineWidth', 1.5 : ??t ?? dày ???ng là 1.5
% 'MarkerSize', 10 : ??t kích th??c marker l?n h?n m?t chút
plot(x_fine, y, 'm-*', 'LineWidth', 1.5, 'MarkerSize', 10);

% V? ?? th? hàm z = -x^2 - 200
% 'p' : marker hình ngôi sao 5 cánh (pentagram)
% 'MarkerEdgeColor', 'k' : Màu vi?n marker là ?en (black)
% 'MarkerFaceColor', 'r' : Tô màu bên trong marker là ?? (red)
% 'MarkerSize', 18 : ??t kích th??c marker r?t l?n
% 'LineWidth', 1.5 : ??t ?? dày vi?n marker
plot(x_coarse, z, 'p', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r', 'MarkerSize', 18, 'LineWidth', 1.5);

%% 4. Hoàn thi?n ?? th?
% B? l??i (m?c ??nh là không có l??i, nên không c?n l?nh grid off)

% Thêm tiêu ?? và nhãn cho các tr?c
title('Do thi ham so y = -x^2, z = -x^2 - 200');
xlabel('Truc x');
ylabel('Truc y,z');

% ??t gi?i h?n tr?c x,y
xlim([-20 20]);
ylim([-400 50]);

% Thêm chú thích (legend) và ??t ? góc trên bên trái
legend('y = -x^2', 'z = -x^2 - 200', 'Location', 'NorthWest');

% Thêm các dòng ch? chú thích
text(-1, -50, 'x = 0', 'FontWeight', 'bold');
text(-14, -200, 'x < 0', 'Rotation', 30, 'FontWeight', 'bold');
text(12, -200, 'x > 0', 'Rotation', -30, 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;