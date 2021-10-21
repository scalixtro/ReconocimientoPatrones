function [W] = separator_regions_learner(W0, column, model)
    % Dicierne a donde pertenece cada vector y actualiza el valor para W
    % W0: Es Matriz de entrada normalmente [0; 0; 0; 0]
    % column: Vector a analizar
    % model: Da prioridad a que clase pertenece CMAXY -> X:IMPAR Y:PAR
    %        utilizando modular como entrada y dandole un valor para ajuste
    %        de W
    
    val = (W0 * column);
    if val > 0
        val = 1;
    else
        val = 0;
    end
    error = model - val;
    W = W0 + error * column';
end