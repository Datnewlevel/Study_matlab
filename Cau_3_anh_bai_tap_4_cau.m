% Tính trung bình c?ng các s? chia h?t cho 3 nh?ng không chia h?t cho 5

% B??c 1: Nh?p s? l??ng ph?n t? n
n = input('Nhap so nguyen n (1 <= n <= 50): ');

% Ki?m tra ?i?u ki?n n
while n < 1 || n > 50
    disp('n phai trong khoang 1 den 50!');
    n = input('Nhap lai n: ');
end

% B??c 2: Nh?p dãy n s? nguyên
disp(['Nhap ', num2str(n), ' so nguyen:']);
day = zeros(1, n);

for i = 1:n
    day(i) = input(['Nhap so thu ', num2str(i), ': ']);
end

% Hi?n th? dãy ?ã nh?p
disp('Day so vua nhap:');
disp(day);

% B??c 3: Tìm các s? chia h?t cho 3 nh?ng không chia h?t cho 5
day_thoa_man = [];

for i = 1:n
    if mod(day(i), 3) == 0 && mod(day(i), 5) ~= 0
        day_thoa_man = [day_thoa_man, day(i)];
    end
end

% B??c 4: Tính trung bình c?ng và hi?n th? k?t qu?
if isempty(day_thoa_man)
    disp('Khong co so nao chia het cho 3 ma khong chia het cho 5');
else
    disp('Cac so chia het cho 3 nhung khong chia het cho 5:');
    disp(day_thoa_man);
    
    trung_binh = sum(day_thoa_man) / length(day_thoa_man);
    disp(['Trung binh cong: ', num2str(trung_binh)]);
end