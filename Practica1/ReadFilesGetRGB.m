function [] = ReadFilesGetRGB()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
path_directory = 'Images\'; 
Files=dir([path_directory '*.jpg']);

    for k=1:length(Files)
        figure;
        h = [];
        h(1) = subplot(2,4,1);
        h(2) = subplot(2,4,2);
        h(3) = subplot(2,4,3);
        h(4) = subplot(2,4,4);
        h(5) = subplot(2,4,5);
        h(6) = subplot(2,4,6);
        h(7) = subplot(2,4,7);
        h(8) = subplot(2,4,8);
    
        disp(Files(k).name)
        currentfilename = strcat(path_directory,Files(k).name);
        
        currentimage = imread(currentfilename);
        currentimage = im2double(currentimage);
        R = currentimage(:, :, 1); 
        G = currentimage(:, :, 2); 
        B = currentimage(:, :, 3);
        
        currentimage_Gray = currentimage;
        R_Gray = R;
        G_Gray = G;
        B_Gray = B;
        
        image(currentimage,'Parent',h(1));
        image(R,'Parent',h(2));
        image(G,'Parent',h(3));
        image(B,'Parent',h(4));
        
        image(currentimage_Gray,'Parent',h(5));
        image(R_Gray,'Parent',h(6));
        image(G_Gray,'Parent',h(7));
        image(B_Gray,'Parent',h(8));
    end

end

