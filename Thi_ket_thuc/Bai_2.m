clc;
clear all;
close all;

x = -pi:0.2:pi;
y = sin(x);
z = cos(x);

figure;
% L?y tr?c t?a ?? hi?n t?i ?? tùy ch?nh
ax = gca; 
% ??t ki?u ???ng l??i thành d?ng d?u ch?m ':'
%ax.GridLineStyle = ':';

%Dòng l?nh ?? thu nh? khu v?c ?? th?
set(ax, 'Position', [0.15 0.15 0.7 0.7]);
hold on;
% V? ?? th? hàm y = sin(x)
plot(x, y, '--', 'LineWidth', 4);
hold on;
% V? ?? th? hàm z = cos(x)
plot(x, z, 'k-d', 'LineWidth', 2, 'MarkerFaceColor', 'm');

grid on;
ax.GridColor = [0 0 0]; %Màu l??i
ax.LineWidth = 2; %?? dày l??i
title('Do thi ham so y = sinx, z = cosx');
xlabel('x');
ylabel('y,z');
xlim([-5 5]);
ylim([-1.2 1.2]);
legend('y = sinx', 'z = cosx', 'Location', 'Northwest');
text(-0.8, -0.4, 'y=sinx', 'Rotation', 65, 'FontWeight', 'bold');
text(2.2, -0.1, 'z=cosx', 'Rotation', -65, 'FontWeight', 'bold');
hold off;