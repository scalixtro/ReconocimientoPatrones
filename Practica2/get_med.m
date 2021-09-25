function [coef] = get_med(prototypes)
    % Calcula el hiperplano entre dos clases y retorna una matriz donde
    % cada fila es la funcion discriminante entre dos clases y cada columna
    % son los coeficientes de la funcion.
    % proto : matriz de prototipos [p1; p2; p3; ...]
    
    % Calculates de constant for each class -0.5 * (a^2+b^2)
    constant = -0.5 * sum(prototypes.^2,2); 
    
    n = size(prototypes,1);
    m = size(prototypes,2);
    coef = zeros(nchoosek(n,2), m + 1);
    
    % Aumentar la matriz de coeficientes para incluir la constante
    % teniendo una matriz de la forma [ai bi ci di ...]
    prototypes = horzcat(prototypes, constant);
    
    % Obtenemos las diferencias entre cada clase obteniendo los
    % coeficientes de las funciones discriminantes.
    for i=1:n-1
        for j=i+1:n
            coef(i+j-2,:) = prototypes(i,:) - prototypes(j,:);
        end
    end
    
end