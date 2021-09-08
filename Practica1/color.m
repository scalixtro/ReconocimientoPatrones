function [r_color] = color(img)
    % Recortar la imagen
    
%     imshow(rec)

    % Componentes en escala de grises 
    img_r = img(:,:,1);
    img_g = img(:,:,2);
    img_b = img(:,:,3);

    % Máximos del histograma
    [maxim_r,pos_r] = max(imhist(img_r));
    [maxim_g,pos_g] = max(imhist(img_g));
    r_color = pos_g/pos_r;
end