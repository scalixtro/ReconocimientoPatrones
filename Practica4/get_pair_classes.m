function [class] = get_pair_classes(classA, classB)
    % Obtiene el prototipo matriz para realizar analisis por regiones
    class = reshape([classA;classB], size(classA,1), []);
    class(4,:,1) = ones(1);
end