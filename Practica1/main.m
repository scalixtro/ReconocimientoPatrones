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

% Relacion color manzanas
img_M6_rel = ratio(img_M6);
img_M7_rel = ratio(img_M7);
img_M8_rel = ratio(img_M8);
img_M9_rel = ratio(img_M9);
img_M10_rel = ratio(img_M10);
img_M11_rel = ratio(img_M11);
img_M12_rel = ratio(img_M12);
relM = [img_M6_rel img_M7_rel img_M8_rel img_M9_rel img_M10_rel img_M11_rel img_M12_rel]'


% Relacion color naranjas
img_N1_rel = ratio(img_N1);
img_N2_rel = ratio(img_N2);
img_N3_rel = ratio(img_N3);
img_N4_rel = ratio(img_N4);
img_N5_rel = ratio(img_N5);
relN = [img_N1_rel img_N2_rel img_N3_rel img_N4_rel img_N5_rel]'

% Relacion forma manzanas
img_M6_rel_forma = forma(img_M6_bin);
img_M7_rel_forma = forma(img_M7_bin);
img_M8_rel_forma = forma(img_M8_bin);
img_M9_rel_forma = forma(img_M9_bin);
img_M10_rel_forma = forma(img_M10_bin);
img_M11_rel_forma = forma(img_M11_bin);
img_M12_rel_forma = forma(img_M12_bin);
rel_f_M = [img_M6_rel_forma img_M7_rel_forma img_M8_rel_forma img_M9_rel_forma img_M10_rel_forma img_M11_rel_forma img_M12_rel_forma]'

% Relacion forma naranjas
img_N1_rel_forma = forma(img_N1_bin);
img_N2_rel_forma = forma(img_N2_bin);
img_N3_rel_forma = forma(img_N3_bin);
img_N4_rel_forma = forma(img_N4_bin);
img_N5_rel_forma = forma(img_N5_bin);
rel_f_N = [img_N1_rel_forma img_N2_rel_forma img_N3_rel_forma img_N4_rel_forma img_N5_rel_forma]'

