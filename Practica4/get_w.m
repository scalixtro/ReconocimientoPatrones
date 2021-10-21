function [w] = get_w(CMA, u, wo)
    % Obtiene los valores de w entre dos clases basado en entrenamiento
    % CMA: Conjunto de entrenamiento
    % u: mu
    % wo: Valor inicial de w vectores horizontales
    % n: numero de clases
    
    aciertos = 0;
    n = length(wo(:,1));
    l = length(CMA);
    % Hacemos un vector con los numeros de clases repetidos por ejemplo
    % [1 2 3 4 1 2 3 4 ...]
    vec_clases = mod(1:l, n);
    vec_clases(vec_clases == 0) = n;

    w = wo;
    % Aumentamos en 1 el CMA
    CMA = vertcat(CMA, ones(1,l));

    % Recorrer el CMA
    while aciertos ~= l
        for i=1:l
            if aciertos == l
                break
            end
            x = CMA(:,i);
            distancias = w*x;
            clase = vec_clases(i);        % Clase actual
            otras_clases = distancias ;   % Vector con distancias diferentes a la actual
            otras_clases(clase) = [];
            if ~all(distancias(clase) > otras_clases)
                w(distancias >= distancias(clase),:) = w(distancias >= distancias(clase),:) - u * x';
                w(clase,:) = w(clase,:) + 2*u * x'; 
                aciertos = 0;
            else
                aciertos = aciertos + 1;
            end
        end
    end
    
end
