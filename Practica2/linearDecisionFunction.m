function [class] = linearDecisionFunction(w, x)
    % Funcion para clasificar un punto dentro de cualquier numero de
    % clases. Las reglas se deben especificar
    % w: Una matriz con los coeficientes de las funciones discriminantes 
    % [a b c d] (ax1 + bx2 + cx3 + ... + d)
    % x: Un vector con el punto [x1 x2 x3 ...] que queremos clasificar.
    
    x = [x 1];    
    fd = sign(x * w');
    
    if fd(1) > 0 && fd(2) > 0
        class = '1';
    elseif fd(1) < 0 && fd(3) > 0
        class = '2';
    elseif fd(2) < 0 && fd(3) < 0
        class = '3';
    end
    
end