clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u (?i?m m?u ch?t)
% T?o m?t vector x th?a cho ?? th? y (???ng màu xanh)
x_coarse = -5:0.25:5;

% T?o m?t vector x dày ??c cho ?? th? z (???ng màu h?ng)
x_fine = -5:0.01:5;

%% 2. Tính toán các hàm s?
% Tính y d?a trên vector th?a
y = x_coarse.^3 + 1;

% Tính z d?a trên vector dày ??c
z = (x_fine + 5) ./ (x_fine.^3 + 1);

% X? lý ?i?m gián ?o?n c?a z
z(isinf(z)) = NaN;

%% 3. V? ?? th?
figure;
hold on;

% V? ?? th? y (màu xanh) b?ng d? li?u th?a (x_coarse)
plot(x_coarse, y, 'b-*', 'LineWidth', 1);

% V? ?? th? z (màu h?ng) b?ng d? li?u dày ??c (x_fine)
plot(x_fine, z, 'm-', 'LineWidth', 2.5);

%% 4. Hoàn thi?n ?? th?
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