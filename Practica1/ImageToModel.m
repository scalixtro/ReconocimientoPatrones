function [] = ImageToModel()
    
    path_directory = 'Images\'; 
    %Create path directory with files to search
    Files=dir([path_directory '\*.jpg']);

    for k=1:length(Files)
        
        %Maximize window figures
        figure('units','normalized','outerposition',[0 0 1 1])
        
        %Concat directory and files
        currentfilename = strcat(path_directory,Files(k).name);
        %Display name of interactive file
        disp(Files(k).name)
        
        %Read file
        currentimage = imread(currentfilename);
        
        %Convert RGB images
        R = currentimage(:, :, 1); 
        G = currentimage(:, :, 2); 
        B = currentimage(:, :, 3);
        
       %Apply one filter or other according to name file
        if (contains(Files(k).name, 'Manzana'))
            currentimage_Gray = binarize(currentimage, 'white');  
        else
            currentimage_Gray = binarize(currentimage, 'black');
        end
        
        disp(FindMaxValueInImage(currentimage_Gray));

        %Show images
        subplot(2,4,1);
        imshow(currentimage); title('Original Image');
        subplot(2,4,2);
        imshow(R); title('Red Layer');
        subplot(2,4,3);
        imshow(G); title('Green Layer');
        subplot(2,4,4);
        imshow(B); title('Blue Layer');
        subplot(2,4,5);
        imshow(currentimage_Gray); title('Model');
        
    end
end

