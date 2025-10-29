clc;
clear all;
close all;

x = -pi:pi/10:2*pi;

%% 2. T�nh to�n gi� tr? c�c h�m s?
y = 2 * sin(x);
z = 3 * cos(x);

%% 3. V? v� t�y ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i v� ??t m�u n?n x�m
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? t�y ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng c�c h�m l�n nhau
hold on;

% V? ?? th? h�m y = 2sinx
% 'd' : ch? v? marker h�nh thoi (diamond), kh�ng v? ???ng n?i
% 'MarkerEdgeColor', 'k' : M�u vi?n marker l� ?en (black)
% 'MarkerFaceColor', 'm' : T� m�u b�n trong marker l� h?ng t�m (magenta)
% 'MarkerSize', 8 : ??t k�ch th??c marker l?n h?n m?t ch�t
plot(x, y, 'd', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'm', 'MarkerSize', 8, 'LineWidth', 1.5);

% V? ?? th? h�m z = 3cosx
% 'b-' : n�t li?n m�u xanh (blue)
% 'LineWidth', 2.5 : ??t ?? d�y ???ng l� 2.5 ?? n�t ??m nh? h�nh
plot(x, z, 'b-', 'LineWidth', 2.5);

%% 4. Ho�n thi?n ?? th?
% B?t l??i v� ??t ki?u l??i l� n�t ??t ('--')
grid on;
ax.GridLineStyle = '--';

% ??t gi?i h?n cho c�c tr?c ?? gi?ng v?i h�nh m?u
xlim([-4 8]);
ylim([-3.5 3.5]);

% Th�m ti�u ?? v� nh�n cho c�c tr?c
title('Do thi ham so y = 2sinx, z = 3cosx');
xlabel('Truc x');
ylabel('Truc y,z');

% Th�m ch� th�ch (legend) v� ??t ? g�c d??i b�n ph?i
legend('y = 2sinx', 'z = 3cosx', 'Location', 'SouthEast');

% Th�m c�c d�ng ch? ch� th�ch xoay nghi�ng tr�n ?? th?
% text(t?a_??_x, t?a_??_y, 'N?i dung', 'Rotation', g�c_xoay)
text(0.5, -2, 'Ham y', 'Rotation', 60, 'FontWeight', 'bold');
text(4.5, 1.5, 'Ham z', 'Rotation', 75, 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;