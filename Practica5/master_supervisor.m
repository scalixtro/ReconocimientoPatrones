function [W1, W2, W3, W4] = master_supervisor(CMA, W0, counter_max, model)
    % Repite indefinidamente ciclo hasta encontrar W y pasar limitante 
    % dada por entrada counter_max.
    % CMA: CMA a analizar
    % W0: W0 de partida
    % counter_max: Valor a testear como max una vez encontrada W para todo
    %           CMA
    % model: Vector con valor respecto a cada clase
    flag = true;
    counter = 0;
    W1 = W0;
    W2 = W0;
    W3 = W0;
    W4 = W0;
    [m, n] = size(CMA);
    
    while flag
        for i=1:n
            [W1, W2, W3, W4, result] = master_trainer(CMA(:,i), W1, W2, W3, W4, model(i));
            
            flag_result = max(abs(result));
            if flag_result == 0
                counter = counter + 1;
                if counter > counter_max
                   flag = false;
                   break
                end
            else
                counter = 0;
            end
        end
    end
end