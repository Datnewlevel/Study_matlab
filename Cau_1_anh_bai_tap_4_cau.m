% Bài tap 1 xu ly n so nguyen

% Buoc 1: Nhap so luong phan tu n
n = input('Nhap so nguyen n (1 <= n <= 50): ');

% Kiem tra dieu kien n
while n < 1 || n > 50
    disp('n phai trong khoang 1 den 50!');
    n = input('Nhap lai n: ');
end

% Buoc 2: Nhap day n so nguyen
disp(['Nhap ', num2str(n), ' so nguyen:']);
day = zeros(1, n); % Khoi tao mang

for i = 1:n
    day(i) = input(['Nhap so thu ', num2str(i), ': ']);
end

% Hien thi day da nhap
disp('Day so vua nhap:');
disp(day);

% Buoc 3: Tinh tong cac so le
tong_so_le = 0;
for i = 1:n
    if mod(day(i), 2) ~= 0  % Kiem tra so le
        tong_so_le = tong_so_le + day(i);
    end
end

disp(['Tong cac so le: ', num2str(tong_so_le)]);

% Buoc 4: Tao day moi gom cac so chia het cho 3
day_chia_het_3 = [];
for i = 1:n
    if mod(day(i), 3) == 0  % Kiem tra chia het cho 3
        day_chia_het_3 = [day_chia_het_3, day(i)];
    end
end

% Hi?n th? k?t qu?
if isempty(day_chia_het_3)
    disp('Khong co so nao chia het cho 3');
else
    disp('Day cac so chia het cho 3:');
    disp(day_chia_het_3);
end