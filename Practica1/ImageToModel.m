function [] = ImageToModel()
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    path_directory = 'Images\'; 
    Files=dir([path_directory '*.jpg']);

    for k=1:length(Files)
        figure('units','normalized','outerposition',[0 0 1 1])

        currentfilename = strcat(path_directory,Files(k).name);
        disp(Files(k).name)
        
        currentimage = imread(currentfilename);
        
        R = currentimage(:, :, 1); 
        G = currentimage(:, :, 2); 
        B = currentimage(:, :, 3);
        
        if (contains(Files(k).name, 'Manzana'))
            currentimage_Gray = binarize(currentimage, 'white');  
        else
            currentimage_Gray = binarize(currentimage, 'black');
        end
        
        subplot(2,4,1);
        imshow(currentimage); title('Original Image');
        subplot(2,4,2);
        imshow(R); title('Red Slayer');
        subplot(2,4,3);
        imshow(G); title('GreenS Slayer');
        subplot(2,4,4);
        imshow(B); title('Blue Slayer');
        subplot(2,4,5);
        imshow(currentimage_Gray); title('Model');
        
    end
end

