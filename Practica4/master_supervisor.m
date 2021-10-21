function [W] = master_supervisor(CMA, W0, counter_max)
    % Repite indefinidamente ciclo hasta encontrar W y pasar limitante 
    % dada por entrada counter_max.
    % CMA: CMA a analizar
    % W0: W0 de partida
    % counter_max: Valor a testear como max una vez encontrada W para todo
    %           CMA
    flag = true;
    counter = 0;
    [m, n] = size(CMA);
    
    while flag
        for i=1:n
            [W] = separator_regions_learner(W0, CMA(:,i), mod(i,2));
            if W0 == W
                counter = counter + 1;
                if counter > counter_max
                    flag = false;
                    break
                end
            end
            W0 = W;
        end
    end
end