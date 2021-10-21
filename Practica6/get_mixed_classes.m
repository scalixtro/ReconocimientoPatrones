function [class, toClass] = get_mixed_classes(classA, classB, classC, classD, classE, classF, classG)
    
    % class: Obtiene el prototipo matriz CMA para realizar analisis
    %       reordenando e intercalando vectores de clases ABCD consecutivamente
    %       anade 1  del tamano resultante del intercalamiento de clases
    % toClass: Obtiene el modelo a que pertenece cada clase
    class = reshape([classA;classB;classC;classD;], size(classA,1), []);
    class(4,:,1) = ones(1);

    toClass = repmat([1,2,3,4],1, 10);
    
end