function [cociente] = ratio(img)
rec = imcrop(img);
imshow(rec)

% Componentes
img_r = rec(:,:,1);
img_g = rec(:,:,2);
img_b = rec(:,:,3);

% Máximos del histograma
[maxim_r,pos_r] = max(imhist(img_r));
[maxim_g,pos_g] = max(imhist(img_g));
cociente = pos_g/pos_r;
end

