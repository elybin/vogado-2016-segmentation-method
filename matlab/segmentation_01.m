% Ground Truth Maker v1.0
% 22 Jan 2020 @khakim

%default path 
defpath = pwd
defpath = 'D:/UNNES/SKRIPSI/code'
datasetext = '*.jpeg'
% read file
selpath = uigetdir(defpath, 'Select a dataset folder');
files = dir(fullfile(selpath, datasetext));

% loop through all files
for c = 1:numel(files)
    close all
    current_file = [files(c).folder + "\" + files(c).name]
    current_image = imread(current_file);
    current_caption = [files(c).name + " (" + c + " of " + numel(files) + ")"] 
    set(0,'DefaultTextInterpreter','none'); % disable weird figure caption
    figure(c), imagesc(current_image), colormap gray, title (current_caption);
    
    % accept btn
    accept_btn = uicontrol;
    accept_btn.Position = [350 0 150 20];
    accept_btn.String = 'Accept';
    
    % undo btn
    undo_btn = uicontrol;
    undo_btn.Position = [100 0 50 20];
    undo_btn.String = 'Undo';
    undo_btn.Callback = @undoCallBack;
    
    % clear btn
    clear_btn = uicontrol;
    clear_btn.Position = [50 0 50 20];
    clear_btn.String = 'Clear';
    clear_btn.Callback = @clearCallBack;
    
    h = imagesc(current_image);
    
    
    for c2 = 1:2
        himage = imfreehand; 
        setColor(himage,'red');
        BW = createMask(himage)|BW;
        position = wait(himage); 
        accept_btn.String = string("Accept (" + c2 + ")");
        
        accept_btn.Callback = acceptCallBack(himage,h);
    end
    
   % show the resulting mask
    imagesc(BW), colormap gray, title ('GT');

    
%     
%     
%     % Close figure or leave it open
%     try
%         waitforbuttonpress
%         close(c)
%         disp('mouse or key pressed')
%     catch
%         disp('figure closed')
%     end

end

% function x =  acceptCallBack(a)
%     x = "lol";
% % 	GT = createMask(himage,h(end));
% % 	imagesc(GT), colormap gray, title ('GT');
%     disp(a);
% end
function tmp = acceptCallBack(himage2, h2)
    
    disp("dd");
    
    if exist('ans','var') == 1
        disp("accepet clicked!");
%         GT = createMask(himage2,h2(end));
%         imagesc(GT), colormap gray, title ('GT');
    end
    
    tmp = string(1) % non sense variable
%     display(a)
end