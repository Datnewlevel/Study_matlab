% Xóa các bi?n ?ã l?u, làm s?ch c?a s? Command và ?óng t?t c? các c?a s? ?? th?
clc;
clear all;
close all;

%% 1. Kh?i t?o d? li?u
% T?o m?t vector x ch?y t? -pi ??n pi theo yêu c?u ?? bài.
% B??c nh?y là pi/20 ?? có s? l??ng marker (hình tam giác) v?a ph?i.
x = -pi:pi/20:pi;

%% 2. Tính toán giá tr? các hàm s?
y = sin(2*x);
z = -exp(x); % L?nh exp(x) trong MATLAB chính là hàm s? e^x

%% 3. V? và tùy ch?nh ?? th?
% T?o m?t c?a s? ?? th? m?i và ??t màu n?n xám
figure;

% L?y "tay c?m" c?a tr?c t?a ?? ?? tùy ch?nh chi ti?t
ax = gca;

% V? ?? th? hàm y = sin(2x)
% 'k>-' : k(?en), >(marker tam giác sang ph?i), -(nét li?n)
% 'MarkerFaceColor', 'g' : Tô màu bên trong marker là xanh lá (green)
% 'MarkerSize', 8 : ??t kích th??c marker l?n h?n m?t chút
plot(x, y, 'k>-', 'MarkerFaceColor', 'g', 'MarkerSize', 8, 'LineWidth', 2);

hold on;
% V? ?? th? hàm z = -e^x
% 'm-' : nét li?n màu h?ng tím (magenta)
% 'LineWidth', 3 : ??t ?? dày ???ng là 3 ?? nét ??m nh? hình
plot(x, z, 'm-', 'LineWidth', 4);

grid on;
ax.GridLineStyle = '--';
% V? ?i?m ??c bi?t t?i g?c t?a ?? (0,0)
% 'ko' : marker hình tròn (o) màu ?en (k)
% 'MarkerFaceColor', 'k' : Tô màu bên trong marker c?ng là màu ?en
plot(0, 0, 'o', 'MarkerFaceColor', 'k', 'MarkerSize', 15);

%% 4. Hoàn thi?n ?? th?
% ??t gi?i h?n cho tr?c x ?? kh?p v?i hình m?u
xlim([-4 4]);
ylim([-1 1]);

% Thêm tiêu ?? và nhãn cho các tr?c
title('Do thi ham so y = sin2x , z = -e^x');
xlabel('Truc x');
ylabel('y, z');

% Thêm chú thích (legend)
% L?u ý: ?? bài ghi z=-e^x và hình v? c?ng kh?p v?i hàm này.
% Chú thích trong hình m?u b? gõ nh?m thành z=-e^-x, chúng ta s? dùng hàm ?úng.
legend('y = sin2x', 'z = -e^x', 'Location', 'NorthEast');

% Thêm dòng ch? chú thích cho ?i?m g?c t?a ??
text(0.15, 0.1, '(0;0)', 'FontWeight', 'bold');

% T?t ch? ?? v? ch?ng
hold off;