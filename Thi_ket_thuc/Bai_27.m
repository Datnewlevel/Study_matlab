% X�a c�c bi?n ?� l?u, l�m s?ch c?a s? Command v� ?�ng t?t c? c�c c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x ch?y t? -pi ??n pi theo y�u c?u ?? b�i.
% B??c nh?y l� pi/20 ?? c� s? l??ng marker (h�nh tam gi�c) v?a ph?i.
x = -pi:pi/20:pi;

%% 2. T�nh to�n gi� tr? c�c h�m s?
y = sin(2*x);
z = -exp(x); % L?nh exp(x) trong MATLAB ch�nh l� h�m s? e^x

%% 3. V? v� t�y ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i v� ??t m�u n?n x�m
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? t�y ch?nh chi ti?t
ax = gca;

% V? ?? th? h�m y = sin(2x)
% 'k>-' : k(?en), >(marker tam gi�c sang ph?i), -(n�t li?n)
% 'MarkerFaceColor', 'g' : T� m�u b�n trong marker l� xanh l� (green)
% 'MarkerSize', 8 : ??t k�ch th??c marker l?n h?n m?t ch�t
plot(x, y, 'k>-', 'MarkerFaceColor', 'g', 'MarkerSize', 8, 'LineWidth', 2);

hold on;
% V? ?? th? h�m z = -e^x
% 'm-' : n�t li?n m�u h?ng t�m (magenta)
% 'LineWidth', 3 : ??t ?? d�y ???ng l� 3 ?? n�t ??m nh? h�nh
plot(x, z, 'm-', 'LineWidth', 4);

grid on;
ax.GridLineStyle = '--';
% V? ?i?m ??c bi?t t?i g?c t?a ?? (0,0)
% 'ko' : marker h�nh tr�n (o) m�u ?en (k)
% 'MarkerFaceColor', 'k' : T� m�u b�n trong marker c?ng l� m�u ?en
plot(0, 0, 'o', 'MarkerFaceColor', 'k', 'MarkerSize', 15);

%% 4. Ho�n thi?n ?? th?
% ??t gi?i h?n cho tr?c x ?? kh?p v?i h�nh m?u
xlim([-4 4]);
ylim([-1 1]);

% Th�m ti�u ?? v� nh�n cho c�c tr?c
title('Do thi ham so y = sin2x , z = -e^x');
xlabel('Truc x');
ylabel('y, z');

% Th�m ch� th�ch (legend)
% L?u �: ?? b�i ghi z=-e^x v� h�nh v? c?ng kh?p v?i h�m n�y.
% Ch� th�ch trong h�nh m?u b? g� nh?m th�nh z=-e^-x, ch�ng ta s? d�ng h�m ?�ng.
legend('y = sin2x', 'z = -e^x', 'Location', 'NorthEast');

% Th�m d�ng ch? ch� th�ch cho ?i?m g?c t?a ??
text(0.15, 0.1, '(0;0)', 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;