% X�a c�c bi?n ?� l?u, l�m s?ch c?a s? Command v� ?�ng t?t c? c�c c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
x = -2*pi:0.15:pi; % D?i x v� b??c nh?y ?? kh?p v?i h�nh m?u

%% 2. T�nh to�n gi� tr? c�c h�m s?
y = sin(x) + cos(x);
z = sin(x) - cos(x);

%% 3. V? v� t�y ch?nh ?? th?
figure;
ax = gca;
hold on;

% === S?A L?I T?I ?�Y: D�ng n�t ch?m g?ch '-.' ===
% V? ?? th? h�m z = sinx - cosx (???ng n�t ch?m g?ch xanh)
plot(x, z, 'b-.', 'LineWidth', 3.5);

% K? thu?t v? 2 l?p cho ?? th? y ?? ???ng k? kh�ng ?i qua t�m
% 1. V? ???ng n�t li?n m�u ?en tr??c
plot(x, y, 'k-', 'LineWidth', 2.5);

% 2. V? c�c marker h�nh tr�n (vi?n ?en, n?n tr?ng) l�n tr�n
plot(x, y, 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'k', 'LineWidth', 1);

%% 4. Ho�n thi?n ?? th?
grid on;
ax.GridLineStyle = '--';
xlim([-8 4]);
ylim([-1.5 1.5]);
title('Do thi ham so y = sinx + cosx, z = sinx - cosx');
xlabel('Truc x');
ylabel('Truc y,z');

% Th�m c�c d�ng ch? ch� th�ch
text(-6, -0.9, 'sinx - cosx', 'Rotation', 70, 'FontWeight', 'bold', 'Color', 'b', 'FontSize', 11);
text(-1.5, 0.2, 'sinx + cosx', 'Rotation', 80, 'FontWeight', 'bold', 'BackgroundColor', 'y', 'FontSize', 11);

hold off;