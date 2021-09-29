% Instituto Politecnico Nacional
% UPIITA
% Reconocimiento de Patrones
% Reconocedor de colores de una imagen 

clc;
clear;
close all;

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

% Obtener los prototipos de cada clase
prototypes = get_prototypes({color1, color2, color3, color4});
% Obtener los coeficientes de las rectas que los separan
coef = get_med(prototypes);
% Clasificar cada pixel
for i=1:x
    for j=1:y
        R = img(i,j,1);
        G = img(i,j,2);
        B = img(i,j,3);
        px = [R G B];
        class = linearDecisionFunction(coef,double(px));
        new_img(i,j,1) = prototypes(class,1);
        new_img(i,j,2) = prototypes(class,2);
        new_img(i,j,3) = prototypes(class,3);
    end
end

%new_img = uint8(new_img);
imshow(uint8(new_img));