function [r_color] = color(img)
    % Recortar la imagen
    rec = imcrop(img);
    imshow(rec)
    [x1,y1,z1] = size(rec)

    rojo=zeros(x1,y1,z1);
    verde=zeros(x1,y1,z1);
    azul=zeros(x1,y1,z1);
    for i = 1:x1
        for j = 1:y1
            rojo(i,j,1) = rec(i,j,1);
            verde(i,j,2) = rec(i,j,2);
            azul(i,j,3) = rec(i,j,3);
        end
    end
    figure(1)
    subplot(2,2,1)
    imshow(rojo/256)
    title('Componente roja')
    subplot(2,2,2)
    imshow(verde/256)
    title('Componente verde')
    subplot(2,2,3)
    imshow(azul/256)
    title('Componente azul')

    % Componentes en escala de grises 
    img_r = rec(:,:,1);
    img_g = rec(:,:,2);
    img_b = rec(:,:,3);

    % Imagenes de componentes en escala de grises
    figure(2)
    subplot(2,2,1)
    imshow(img_r)
    title('Componente roja en escala de grises')
    subplot(2,2,2)
    imshow(img_g)
    title('Componente verde en escala de grises')
    subplot(2,2,3)
    imshow(img_b)
    title('Componente azul en escala de grises')

    % Histogramas
    figure(3)
    subplot(2,2,1)
    imhist(img_r)
    title('Histograma de componente roja')
    subplot(2,2,2)
    imhist(img_g)
    title('Histograma de componente verde')
    subplot(2,2,3)
    imhist(img_b)
    title('Histograma de componente azul')

    % Máximos del histograma
    [maxim_r,pos_r] = max(imhist(img_r));
    [maxim_g,pos_g] = max(imhist(img_g));
    r_color = pos_g/pos_r;
end

