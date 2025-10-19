disp('Chuong trinh giai pt Bac 2');
a = input('Nhap a: ');
b = input('Nhap b: ');
c = input('Nhap c: ');
[x1,x2] = quadroot(a, b, c);
disp('Phuong trinh co nghiem la:');
fprintf('x1 = %f\n', x1);
fprintf('x2 = %f\n', x2);