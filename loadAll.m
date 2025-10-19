% loadAll.m
% T?i t?t c? các bi?n t? m?t th? m?c con.

% --- Thi?t l?p ---
folderName = 'Bai_tap_2'; % <-- Tên th? m?c ch?a file c?n t?i
matFileName = 'myWorkspace.mat';
matFilePath = fullfile(folderName, matFileName);

% --- Ki?m tra file có t?n t?i không ---
if exist(matFilePath, 'file')
    disp(['?ang t?i các bi?n t?: ', matFilePath]);
    load(matFilePath);
    disp('?ã t?i thành công các bi?n!');
    disp(['L?u ý: ?? m? l?i các figure, hãy m? các file .fig trong th? m?c "', folderName, '".']);
else
    disp(['L?i: Không tìm th?y file ', matFileName, ' trong th? m?c ', folderName, '.']);
end