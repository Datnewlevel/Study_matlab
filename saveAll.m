% saveAll.m
% L?u t?t c? c�c bi?n v� figure v�o m?t th? m?c con.

% --- Thi?t l?p ---
folderName = 'Bai_tap_2'; % <-- T�n th? m?c b?n mu?n l?u v�o

% --- T?o th? m?c n?u n� ch?a t?n t?i ---
if ~exist(folderName, 'dir')
   mkdir(folderName);
   disp(['?� t?o th? m?c m?i: ', folderName]);
end

% --- L?u c�c bi?n trong Workspace ---
matFilePath = fullfile(folderName, 'myWorkspace.mat');
disp(['?ang l?u t?t c? c�c bi?n v�o: ', matFilePath]);
save(matFilePath);
disp('?� l?u th�nh c�ng c�c bi?n!');
disp('------------------------------------');

% --- L?u t?t c? c�c Figure ?ang m? ---
disp('?ang t�m v� l?u t?t c? c�c figure...');
figHandles = findall(0, 'Type', 'figure');

if isempty(figHandles)
    disp('Kh�ng t�m th?y figure n�o ?ang m?.');
else
    [~, sortIdx] = sort([figHandles.Number]);
    figHandles = figHandles(sortIdx);
    
    for i = 1:length(figHandles)
        h = figHandles(i);
        figName = ['figure', num2str(h.Number), '.fig'];
        figFilePath = fullfile(folderName, figName); % T?o ???ng d?n ??y ??
        
        savefig(h, figFilePath);
        disp([' -> ?� l?u th�nh c�ng: ', figFilePath]);
    end
    disp('Ho�n t?t vi?c l?u c�c figure!');
end