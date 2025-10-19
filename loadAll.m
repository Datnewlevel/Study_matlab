% loadAll.m
% T?i t?t c? c�c bi?n t? m?t th? m?c con.

% --- Thi?t l?p ---
folderName = 'Bai_tap_2'; % <-- T�n th? m?c ch?a file c?n t?i
matFileName = 'myWorkspace.mat';
matFilePath = fullfile(folderName, matFileName);

% --- Ki?m tra file c� t?n t?i kh�ng ---
if exist(matFilePath, 'file')
    disp(['?ang t?i c�c bi?n t?: ', matFilePath]);
    load(matFilePath);
    disp('?� t?i th�nh c�ng c�c bi?n!');
    disp(['L?u �: ?? m? l?i c�c figure, h�y m? c�c file .fig trong th? m?c "', folderName, '".']);
else
    disp(['L?i: Kh�ng t�m th?y file ', matFileName, ' trong th? m?c ', folderName, '.']);
end