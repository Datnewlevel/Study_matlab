clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u (?i?m m?u ch?t)
% T?o m?t vector x th?a cho ?? th? y (???ng m�u xanh)
x_coarse = -5:0.25:5;

% T?o m?t vector x d�y ??c cho ?? th? z (???ng m�u h?ng)
x_fine = -5:0.01:5;

%% 2. T�nh to�n c�c h�m s?
% T�nh y d?a tr�n vector th?a
y = x_coarse.^3 + 1;

% T�nh z d?a tr�n vector d�y ??c
z = (x_fine + 5) ./ (x_fine.^3 + 1);

% X? l� ?i?m gi�n ?o?n c?a z
z(isinf(z)) = NaN;

%% 3. V? ?? th?
figure;
hold on;

% V? ?? th? y (m�u xanh) b?ng d? li?u th?a (x_coarse)
plot(x_coarse, y, 'b-*', 'LineWidth', 1);

% V? ?? th? z (m�u h?ng) b?ng d? li?u d�y ??c (x_fine)
plot(x_fine, z, 'm-', 'LineWidth', 2.5);

%% 4. Ho�n thi?n ?? th?
grid on;
ax.GridLineStyle = '--';

xlim([-5 5]);
ylim([-150 150]);

title('Do thi ham so y = x^3 + 1, z = (x + 5)/(x^3 + 1)');
xlabel('Truc x');
ylabel('Truc y,z');

legend('y = x^3 + 1', 'z = (x + 5)/(x^3 + 1)', 'Location', 'SouthEast');

text(-4, 20, '(x + 5)/(x^3 + 1)');
text(-3.3, 10, '\downarrow');
text(3, 60, 'x^3 + 1 \rightarrow');

hold off;