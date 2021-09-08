function [] = show_rgb_gray(img)
    img = im2double(img);
    figure;
    subplot(2,2,1);
    imshow(img(:,:,1));
    title('Intensidades de rojo');
    subplot(2,2,2);
    imshow(img(:,:,2));
    title('Intensidades de verde');
    subplot(2,2,3);
    imshow(img(:,:,3));
    title('Intensidades de azul');
end