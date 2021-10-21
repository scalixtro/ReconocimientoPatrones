function [class] = get_pair_classes(classA, classB)
    % Obtiene el prototipo matriz CMA para realizar analisis
    % Reordenando e intercalando vectores de clases ABAB consecutivamente
    % Anade 1  del tamano resultante del intercalamiento de clases
    class = reshape([classA;classB], size(classA,1), []);
    class(4,:,1) = ones(1);
end