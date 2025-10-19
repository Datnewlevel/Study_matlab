function [x1, x2] = quadroot(a, b, c)
% Hàm tính nghi?m c?a ph??ng trình b?c 2

radical = sqrt(b^2 - 4*a*c);    %Tính c?n
x1 = (-b + radical) / (2*a);    %nghi?m 1
x2 = (-b - radical) / (2*a);    %nghi?m 2
end