clc;
clear all;
close all;

x = -20:0.1:20;
y = x.^2 - 50;
z = 100 * sin(x);
figure;

plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(x, z, 'k-.', 'LineWidth', 1.5);

title('Do thi ham so y = x^2 - 50, z = 100sinx');
xlabel('Truc x');
ylabel('Truc y,z');

ylim([-150 300]);
xlim([-20 20]);
legend('y = x^2 - 50', 'z = 100sinx','Location', 'Southeast')
%L?nh test: thêm các dùng chú thích lên ?? th?
text(-15, 220, 'x < 0', 'FontWeight', 'bold', 'Rotation', -60);
text(14, 190, 'x > 0', 'FontWeight', 'bold', 'Rotation', 60);
hold off;