clc;
clear;

% Manzanas
img_M6 = imread('./binarios/Manzana6.jpg');
img_M7 = imread('./binarios/Manzana7.jpg');
img_M8 = imread('./binarios/Manzana8.jpg');
img_M9 = imread('./binarios/Manzana9.jpg');
img_M10 = imread('./binarios/Manzana10.jpg');
img_M11 = imread('./binarios/Manzana11.jpg');
img_M12 = imread('./binarios/Manzana12.jpg');

% Naranjas
img_N1 = imread('./binarios/N1.jpg');
img_N2 = imread('./binarios/N2.jpg');
img_N3 = imread('./binarios/N3.jpg');
img_N4 = imread('./binarios/N4.jpg');
img_N5 = imread('./binarios/N5.jpg');

% Binarizar manzanas
img_M6_bin = binarize(img_M6, 'white');
img_M7_bin = binarize(img_M7, 'white');
img_M8_bin = binarize(img_M8, 'white');
img_M9_bin = binarize(img_M9, 'white');
img_M10_bin = binarize(img_M10, 'white');
img_M11_bin = binarize(img_M11, 'white');
img_M12_bin = binarize(img_M12, 'white');

% Binarizar Naranjas
img_N1_bin = binarize(img_N1, 'black');
img_N2_bin = binarize(img_N2, 'black');
img_N3_bin = binarize(img_N3, 'black');
img_N4_bin = binarize(img_N4, 'black');
img_N5_bin = binarize(img_N5, 'black');