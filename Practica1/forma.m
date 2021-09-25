function [r_forma] = forma(img_bin)
    [x,y] = size(img_bin);
    maximo = 0;
    altura_fruta = 0;
    altura_ancho = 0;
    [i,j] = find(img_bin==1);
    dif = min(i)-1;
    for i = 1:x
        contador = 0;
        for j = 1:y
            if img_bin(i,j) == 1
                contador = contador+1;
            end
        end

        max_fila = contador;
        if max_fila>=maximo
            maximo = max_fila;
            altura_ancho = i;
        end
        if contador ~= 0
            altura_fruta = altura_fruta+1;
        end

    end

    altura_ancho = altura_ancho-dif;
    r_forma = altura_ancho / altura_fruta;

end

