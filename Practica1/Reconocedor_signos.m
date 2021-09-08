clear all, close all, clc

% Lectura y binarizacion de la imagen
img = imread('./binarios/manzana6.jpg');
img_rec = imcrop(img);
show_rgb(img_rec);
show_rgb_gray(img_rec);
show_histogram(img_rec);
img_bin = binarize(img,'white');

% Obtencion de caracteristicas
img_color = color(img_rec);
img_forma = forma(img_bin);
v = [img_color img_forma]';

% Grafica los datos de las características de color y forma de la manzana y naranja

% Datos de las manzanas rojas
x1 = [0.5417 0.4500 0.5139 0.3625 0.3867]; % Color
y1 = [0.3883 0.4637 0.4046 0.4376 0.4270]; % Forma

% Datos de las naranjas 
x2 = [0.8696 0.8333 0.8672 0.8904 0.8906]; % Color
y2 = [0.5065 0.5237 0.4601 0.4235 0.5135]; % Forma


% Función discriminante
fd = img_forma + 1.013*img_color-1.136;

if fd > 0 
    disp("Es una naranja")
else 
    disp("Es una manzana")
end

% Recta
x = 0:0.01:3;
y = -1.94*x+1.8075;

% Grafica
figure;
plot(x1,y1,'r*',x2,y2,'bo',x,y,'g-',img_color,img_forma,'kx','LineWidth',2)

% Elementos de la gráfica 
title('Clasificación de frutas')
xlabel('Color')
ylabel('Forma')
legend('Manzanas rojas','Naranjas', 'Recta fd')
axis([0 1 0 1.5])