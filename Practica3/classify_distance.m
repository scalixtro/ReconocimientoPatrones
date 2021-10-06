function [class] = classify_distance(w, x)
    % Funcion que clasifica un punto x en alguna de las clases determinada
    % por el numero de prototipos.
    % w: Matriz con los prototipos [px1, px2, px3, ... , pxn]
    % x: Entrada a clasificar [x1, x2, x3, ... , xn]
    
    % Calculamos la constante para cada clase -0.5 * (x1^2 + ... + xn^2)
    constant = -0.5 * sum(w.^2,2); 
    % Aumentar la matriz de coeficientes para incluir la constante
    w = horzcat(w, constant);
    x = [x 1];

    fd = x * w';
    % Obtenemos el indice del maximo, si hay valores repetidos tenemos el
    % indice del primero que aparezca
    [M,class] = max(fd);
end