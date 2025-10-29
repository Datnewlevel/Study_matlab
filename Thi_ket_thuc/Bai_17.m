% X�a c�c bi?n ?� l?u, l�m s?ch c?a s? Command v� ?�ng t?t c? c�c c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x ch?y t? 0 ??n 2*pi.
% 'pi' l� h?ng s? pi (?3.14) c� s?n trong MATLAB.
% B??c nh?y l� pi/12 ?? c� s? l??ng ?i?m marker v?a ph?i, gi?ng h�nh m?u.
x = 0:pi/12:2*pi;

%% 2. T�nh to�n gi� tr? c�c h�m s?
y = sin(x - pi);
z = cos(x);

%% 3. V? v� t�y ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i v� ??t m�u n?n x�m
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? t�y ch?nh chi ti?t
ax = gca;

% Gi? ?? th? ?? v? ch?ng c�c h�m l�n nhau
hold on;

% V? ?? th? h�m y = sin(x - pi)
% '-s' : n�t li?n (-) v� marker h�nh vu�ng (square)
% 'Color', 'b' : M�u ???ng v� vi?n marker l� xanh d??ng (blue)
% 'MarkerFaceColor', 'g' : T� m�u b�n trong marker l� xanh l� (green)
% 'MarkerSize', 8 : ??t k�ch th??c marker l?n h?n m?t ch�t
% 'LineWidth', 2 : ??t ?? d�y ???ng n?i l� 2
plot(x, y, '-s', 'Color', 'b', 'MarkerFaceColor', 'g', 'MarkerSize', 8, 'LineWidth', 2);


% V? ?? th? h�m z = cos(x)
% 'k-' : n�t li?n m�u ?en (black)
% 'LineWidth', 3 : ??t ?? d�y ???ng l� 3 ?? n�t ??m nh? h�nh
plot(x, z, 'k-', 'LineWidth', 3);

%% 4. Ho�n thi?n ?? th?
% B?t l??i v� ??t ki?u l??i l� n�t ??t ('--')
grid on;
ax.GridLineStyle = '--';

% Th�m ti�u ?? v� nh�n cho c�c tr?c
title('Do thi ham so y = sin(x - pi), z = cosx');
xlabel('Truc x');
ylabel('Truc y,z');
xlim([0 7]);
ylim([-1 1]);

legend('y = sin(x - \pi)', 'z = cosx', 'Location', 'SouthEast');

text(2.7, -0.1, 'y = sin(x - \pi)', 'Rotation', 70, 'FontWeight', 'bold');
text(3.7, -0.7, 'z = cosx', 'Rotation', 65, 'FontWeight', 'bold');

hold off;