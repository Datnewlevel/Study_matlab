clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% ?? v? ???ng n�t ??t (y) ???c m??t m�, ta c?n nhi?u ?i?m d? li?u
x_fine = -10:0.1:10;

% ?? v? c�c marker (z) kh�ng b? qu� d�y ??c, ta d�ng b??c nh?y l?n h?n
x_coarse = -10:0.5:10;

%% 2. T�nh to�n gi� tr? c�c h�m s?
% T�nh y d?a tr�n vector d�y ??c
y = -(x_fine.^3) - 7;

% T�nh z d?a tr�n vector th?a
z = x_coarse.^3;

%% 3. V? v� t�y ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i v� ??t m�u n?n x�m
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? t�y ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng c�c h�m l�n nhau
hold on;

% V? ?? th? h�m y = -x^3 - 7
% 'b--' : n�t ??t (--) m�u xanh (blue)
% 'LineWidth', 2.5 : ??t ?? d�y ???ng l� 2.5 ?? n�t ??m nh? h�nh
plot(x_fine, y, 'b--', 'LineWidth', 2.5);

% V? ?? th? h�m z = x^3
% 'o' : ch? v? marker h�nh tr�n (circle), kh�ng v? ???ng n?i
% 'MarkerEdgeColor', 'k' : M�u vi?n marker l� ?en (black)
% 'MarkerFaceColor', 'g' : T� m�u b�n trong marker l� xanh l� (green)
% 'MarkerSize', 10 : ??t k�ch th??c marker l?n
% 'LineWidth', 2 : ??t ?? d�y vi?n marker l� 2
plot(x_coarse, z, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'g', 'MarkerSize', 10, 'LineWidth', 2);

%% 4. Ho�n thi?n ?? th?
% B?t l??i v� ??t ki?u l??i l� n�t ??t ('--')
grid on;
ax.GridLineStyle = '--';

% ??t gi?i h?n cho tr?c y ?? kh?p v?i h�nh m?u
xlim([-10 10]);
ylim([-1500 1100]);

% Th�m ti�u ?? v� nh�n cho c�c tr?c
title('Do thi ham so y = -x^3 - 7, z = x^3');
xlabel('Truc x');
ylabel('Truc y');

% Th�m ch� th�ch (legend) v� ??t ? g�c d??i b�n ph?i
legend('y = -x^3 - 7', 'z = x^3', 'Location', 'SouthEast');

% Th�m c�c d�ng ch? ch� th�ch c� n?n v�ng
text(-8, 300, 'x < 0', 'Rotation', 15, 'FontWeight', 'bold', 'BackgroundColor', 'y');
text(6, -500, 'x > 0', 'Rotation', -25, 'FontWeight', 'bold', 'BackgroundColor', 'y');

% T?t ch? ?? v? ch?ng
hold off;