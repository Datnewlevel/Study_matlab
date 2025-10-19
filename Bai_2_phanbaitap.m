% Th?c hi?n nh?p ma tr?n A k�ch th??c 4x4 t? b�n ph�m. S? d?ng c�u l?nh
% for,if... ?? t�m ph?n t? c� gi� tr? l?n nh?t trong c�c ph?n t? n?m tr�n
% c?t 1 v� h�ng 4 c?a ma tr?n A?
A = zeros(4,4);
fprintf('Nhap ma tran A (4x4): \n');
for i = 1:4
    for j = 1:4
        A(i,j) = input(sprintf('A(%d,%d) = ', i, j));
    end
end

%Khoi tao gia tri lon nhat
maxVal = -inf;
row = 1; col = 1;

%Duyet cot 1
for i = 1:4
    if A(i,1) > maxVal
    maxVal = A(i,1);
    row = i; col = 1;
    end
end
%Duyet hang 4
for j = 1:4
    if A(4,j) > maxVal
        maxVal = A(4,j);
        row = 4; col = j;
    end
end

%In ket qua
fprintf('\n Ma tran A la: \n');
disp(A);
fprintf('Max value in col 1 and row 4 is: %g at location (%d,%d). \n',...
    maxVal, row, col);