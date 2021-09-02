function [cociente] = ratio(img)
rec = imcrop(img);
imshow(rec)

% Componentes
img_r = rec(:,:,1);
img_g = rec(:,:,2);
img_b = rec(:,:,3);

% Imagenes
% figure(1)
% subplot(2,2,1)
% imshow(img_r)
% subplot(2,2,2)
% imshow(img_g)
% subplot(2,2,3)
% imshow(img_b)

% Histogramas
% figure(2)
% subplot(2,2,1)
% imhist(img_r)
% subplot(2,2,2)
% imhist(img_g)
% subplot(2,2,3)
% imhist(img_b)

% Máximos del histograma
[maxim_r,pos_r] = max(imhist(img_r));
[maxim_g,pos_g] = max(imhist(img_g));
cociente = pos_g/pos_r;
end

