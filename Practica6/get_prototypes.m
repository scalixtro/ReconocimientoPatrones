function [prototypes] = get_prototypes(classes)
    % Obtiene los prototipos de las clases calculando su media
    % classes : un arreglo {} con los diferentes patrones. {C1, C2, ...}
    
    n = length(classes);
    n_c = size(classes{1},1);   % Numero de caracteristicas
    prototypes = zeros(n,n_c);
    for i=1:n
        prototypes(i,:) = mean(classes{i},2)';
    end
    
end