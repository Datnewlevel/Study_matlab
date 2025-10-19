% saveAll.m
% L?u t?t c? các bi?n và figure vào m?t th? m?c con.

% --- Thi?t l?p ---
folderName = 'Bai_tap_2'; % <-- Tên th? m?c b?n mu?n l?u vào

% --- T?o th? m?c n?u nó ch?a t?n t?i ---
if ~exist(folderName, 'dir')
   mkdir(folderName);
   disp(['?ã t?o th? m?c m?i: ', folderName]);
end

% --- L?u các bi?n trong Workspace ---
matFilePath = fullfile(folderName, 'myWorkspace.mat');
disp(['?ang l?u t?t c? các bi?n vào: ', matFilePath]);
save(matFilePath);
disp('?ã l?u thành công các bi?n!');
disp('------------------------------------');

% --- L?u t?t c? các Figure ?ang m? ---
disp('?ang tìm và l?u t?t c? các figure...');
figHandles = findall(0, 'Type', 'figure');

if isempty(figHandles)
    disp('Không tìm th?y figure nào ?ang m?.');
else
    [~, sortIdx] = sort([figHandles.Number]);
    figHandles = figHandles(sortIdx);
    
    for i = 1:length(figHandles)
        h = figHandles(i);
        figName = ['figure', num2str(h.Number), '.fig'];
        figFilePath = fullfile(folderName, figName); % T?o ???ng d?n ??y ??
        
        savefig(h, figFilePath);
        disp([' -> ?ã l?u thành công: ', figFilePath]);
    end
    disp('Hoàn t?t vi?c l?u các figure!');
end