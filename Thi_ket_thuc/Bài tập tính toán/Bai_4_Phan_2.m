%% B�I T?P 4: GI?I H? PH??NG TR�NH TUY?N T�NH 3 ?N
% X�a c�c bi?n ?� l?u v� l�m s?ch c?a s? Command
clc;
clear all;
close all;

%% PH?N 1: NH?P H? S? B?NG V�NG L?P FOR
fprintf('CHUONG TRINH GIAI HE PHUONG TRINH 3 AN (ax + by + cz = d)\n');
fprintf('----------------------------------------------------------\n');

% Kh?i t?o m?t ma tr?n r?ng 3x4 ?? ch?a t?t c? 12 h? s?
HeSo = zeros(3, 4); 

% S? d?ng v�ng l?p 'for' ?? l?p qua 3 ph??ng tr�nh (3 d�ng)
for i = 1:3
    % In th�ng b�o cho ng??i d�ng bi?t ?ang nh?p cho ph??ng tr�nh n�o
    fprintf('\n--- Nhap he so cho phuong trinh thu %d ---\n', i);
    
    % Y�u c?u nh?p l?n l??t c�c h? s? a, b, c, d cho ph??ng tr�nh th? i
    % v� l?u ch�ng v�o d�ng th? i c?a ma tr?n HeSo
    HeSo(i, 1) = input(sprintf('Nhap he so a%d: ', i)); % H? s? a
    HeSo(i, 2) = input(sprintf('Nhap he so b%d: ', i)); % H? s? b
    HeSo(i, 3) = input(sprintf('Nhap he so c%d: ', i)); % H? s? c
    HeSo(i, 4) = input(sprintf('Nhap he so d%d: ', i)); % H? s? d
end

%% PH?N 2: T�CH MA TR?N H? S? A V� VECTOR K?T QU? D
% T? ma tr?n HeSo, ta t�ch ra 2 th�nh ph?n ch�nh c?a h? ph??ng tr�nh AX = D
% Ma tr?n A ch?a c�c h? s? c?a x, y, z (3 c?t ??u ti�n)
A = HeSo(:, 1:3);

% Vector c?t D ch?a c�c h?ng s? k?t qu? (c?t cu?i c�ng)
D = HeSo(:, 4);


fprintf('\n--- He phuong trinh duoc bieu dien duoi dang ma tran AX = D ---\n');
disp('Ma tran he so A:');
disp(A);
disp('Vector ket qua D:');
disp(D);

%% PH?N 3: GI?I H? PH??NG TR�NH
% ??u ti�n, ta c?n t�nh ??nh th?c c?a ma tr?n A.
% N?u ??nh th?c kh�c 0, h? c� nghi?m duy nh?t.
% N?u ??nh th?c b?ng 0, h? c� v� s? nghi?m ho?c v� nghi?m.
detA = det(A); % H�m det() d�ng ?? t�nh ??nh th?c

if detA ~= 0
    fprintf('\nDinh thuc cua ma tran A = %.4f (khac 0), he phuong trinh co nghiem duy nhat.\n', detA);
    
    % --- Ph??ng ph�p 1: Ngh?ch ??o ma tr?n ---
    fprintf('\n--- Giai theo phuong phap NGHICH DAO MA TRAN ---\n');
    % C�ng th?c: X = A^(-1) * D
    A_inv = inv(A); % H�m inv() d�ng ?? t�m ma tr?n ngh?ch ??o
    X1 = A_inv * D;
    
    fprintf('Nghiem cua he phuong trinh la:\n');
    fprintf('x = %.4f\n', X1(1));
    fprintf('y = %.4f\n', X1(2));
    fprintf('z = %.4f\n', X1(3));
    
    % --- Ph??ng ph�p 2: ??nh th?c (Quy t?c Cramer) ---
    fprintf('\n--- Giai theo phuong phap DINH THUC (Quy tac Cramer) ---\n');
    % C�ng th?c: x = det(Ax)/det(A), y = det(Ay)/det(A), z = det(Az)/det(A)
        % T?o ma tr?n Ax b?ng c�ch thay th? c?t 1 c?a A b?ng D
    Ax = A;
    Ax(:, 1) = D;
    
    % T?o ma tr?n Ay b?ng c�ch thay th? c?t 2 c?a A b?ng D
    Ay = A;
    Ay(:, 2) = D;
    
    % T?o ma tr?n Az b?ng c�ch thay th? c?t 3 c?a A b?ng D
    Az = A;
    Az(:, 3) = D;
    
    % T�nh c�c nghi?m
    x2 = det(Ax) / detA;
    y2 = det(Ay) / detA;
    z2 = det(Az) / detA;
    
    fprintf('Nghiem cua he phuong trinh la:\n');
    fprintf('x = %.4f\n', x2);
    fprintf('y = %.4f\n', y2);
    fprintf('z = %.4f\n', z2);
    
else
    % Tr??ng h?p ??nh th?c b?ng 0
    fprintf('\nDinh thuc cua ma tran A = 0.\n');
    fprintf('He phuong trinh co vo so nghiem hoac vo nghiem.\n');
end