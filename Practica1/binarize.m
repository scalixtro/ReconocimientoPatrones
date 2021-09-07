function [img_binary] = binarize(img, background)
    % Binariza una imagen
    % img = imagen en RGB
    % background = debe ser 'black' o 'white' para binarizar correctamente
    % la imagen
    
    img = im2double(img);
    img_r = img(:,:,1);
    img_b = img(:,:,3);
    
    if strcmp(background, 'white')
        img_binary = imcomplement(imbinarize(img_b));
    elseif strcmp(background, 'black')
        img_binary = imbinarize(img_r);
    else
        error('Introduce black o white como argumento para background');
    end
    
    % Elemento estructurante para operaciones morfologicas
    se = strel('disk',18,8);
    % Operaciones morfologicas
    img_binary = imerode(img_binary, se);
    img_binary = bwareaopen(img_binary, 5000);
    img_binary = imdilate(img_binary, se);
    img_binary = imfill(img_binary, 'holes');

end