% Instituto Politecnico Nacional
% UPIITA
% Reconocimiento de Patrones
% Reconocedor de colores de una imagen utilizando la distancia modificada

clear;
clc;
% Leer imagen
img = imread('cmyrgb1.jpg');
% Tamaño de la imagen
[x,y] = size(img(:,:,1));
new_img = zeros(size(img));

% Obtener las muestras de los diferentes colores
color1 = impixel(img)';
color2 = impixel(img)';
color3 = impixel(img)';
color4 = impixel(img)';

color5 = impixel(img)';
color6 = impixel(img)';
color7 = impixel(img)';

% Array con las muestras de cada clase
clases = {color1, color2, color3, color4, color5, color6, color7};
% Obtener los prototipos de cada clase
prototypes = get_prototypes(clases);
% Clasificar los pixeles de la imagen
for i=1:x
    for j=1:y
        R = img(i,j,1);
        G = img(i,j,2);
        B = img(i,j,3);
        px = [R G B];
        class = classify_distance(prototypes,double(px));
        new_img(i,j,1) = prototypes(class,1);
        new_img(i,j,2) = prototypes(class,2);
        new_img(i,j,3) = prototypes(class,3);
    end
end
% Mostrar la imagen con los pixeles clasificados
imshow(uint8(new_img));