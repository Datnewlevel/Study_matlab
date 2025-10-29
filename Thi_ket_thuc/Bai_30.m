% X�a c�c bi?n ?� l?u, l�m s?ch c?a s? Command v� ?�ng t?t c? c�c c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x d�y ??c (-20 ??n 20) ?? v? ?? th? y (???ng cong h?ng)
x_fine = -20:1:20;

% T?o m?t vector x th?a h?n (-12 ??n 12) ?? v? c�c marker z (ng�i sao)
% D?i gi� tr? n�y ng?n h?n ?? kh?p v?i h�nh m?u.
x_coarse = -12:2:12;

%% 2. T�nh to�n gi� tr? c�c h�m s?
% T�nh y d?a tr�n vector d�y ??c
y = -(x_fine.^2);

% T�nh z d?a tr�n vector th?a
z = -(x_coarse.^2) - 200;

%% 3. V? v� t�y ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i v� ??t m�u n?n x�m
figure;

% Gi? ?? th? ?? v? ch?ng c�c h�m l�n nhau
hold on;

% V? ?? th? h�m y = -x^2
% 'm-*' : m(h?ng), -(n�t li?n), *(marker hoa th?)
% 'LineWidth', 1.5 : ??t ?? d�y ???ng l� 1.5
% 'MarkerSize', 10 : ??t k�ch th??c marker l?n h?n m?t ch�t
plot(x_fine, y, 'm-*', 'LineWidth', 1.5, 'MarkerSize', 10);

% V? ?? th? h�m z = -x^2 - 200
% 'p' : marker h�nh ng�i sao 5 c�nh (pentagram)
% 'MarkerEdgeColor', 'k' : M�u vi?n marker l� ?en (black)
% 'MarkerFaceColor', 'r' : T� m�u b�n trong marker l� ?? (red)
% 'MarkerSize', 18 : ??t k�ch th??c marker r?t l?n
% 'LineWidth', 1.5 : ??t ?? d�y vi?n marker
plot(x_coarse, z, 'p', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r', 'MarkerSize', 18, 'LineWidth', 1.5);

%% 4. Ho�n thi?n ?? th?
% B? l??i (m?c ??nh l� kh�ng c� l??i, n�n kh�ng c?n l?nh grid off)

% Th�m ti�u ?? v� nh�n cho c�c tr?c
title('Do thi ham so y = -x^2, z = -x^2 - 200');
xlabel('Truc x');
ylabel('Truc y,z');

% ??t gi?i h?n tr?c x,y
xlim([-20 20]);
ylim([-400 50]);

% Th�m ch� th�ch (legend) v� ??t ? g�c tr�n b�n tr�i
legend('y = -x^2', 'z = -x^2 - 200', 'Location', 'NorthWest');

% Th�m c�c d�ng ch? ch� th�ch
text(-1, -50, 'x = 0', 'FontWeight', 'bold');
text(-14, -200, 'x < 0', 'Rotation', 30, 'FontWeight', 'bold');
text(12, -200, 'x > 0', 'Rotation', -30, 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;