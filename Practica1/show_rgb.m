function [] = show_rgb(img)
    % Funcion que muestra la imagen en sus componentes RGB a color
    
    % Creamos los arrays de las imagenes
    img_size = size(img);
    img_r = zeros(img_size);
    img_g = zeros(img_size);
    img_b = zeros(img_size);
    img = im2double(img);
    
    for i = 1:img_size(1)
        for j = 1:img_size(2)
            img_r(i,j,1) = img(i,j,1);
            img_g(i,j,2) = img(i,j,2);
            img_b(i,j,3) = img(i,j,3);
        end
    end
    
    figure;
    subplot(2,2,1);
    imshow(img);
    title('Imagen original');
    subplot(2,2,2);
    imshow(img_r);
    title('Imagen en rojo');
    subplot(2,2,3);
    imshow(img_g);
    title('Imagen en verde');
    subplot(2,2,4);
    imshow(img_b);
    title('Imagen en azul');
    
end