function [] = show_histogram(img)
    % Muestra los histogramas de las componentes RGB de una imagen
    img = im2double(img);
    r = img(:,:,1);
    g = img(:,:,2);
    b = img(:,:,3);
    max_r = max(imhist(r));
    max_g = max(imhist(g));
    max_b = max(imhist(b));
    
    subplot(2,2,1);
    imhist(r);
    ylim([0 max_r]);
    title('Histograma de R');
    subplot(2,2,2);
    imhist(g);
    ylim([0 max_g]);
    title('Histograma de G');
    subplot(2,2,3);
    imhist(b);
    ylim([0 max_b]);
    title('Histograma de B');
end

