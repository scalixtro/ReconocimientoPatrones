function [W1, W2, W3, W4, W] = master_trainer(CMA, W1, W2, W3, W4, model)
    % Entradas:
    % Clasifica y ajusta peso para obtener centroide de W1, W2, W3, W4
    % CMA: CMA vector analizar
    % W1: W1 de partida
    % W2: W2 de partida
    % W3: W3 de partida
    % W4: W4 de partida
    % counter_max: Valor a testear como max una vez encontrada W para todo
    %           CMA
    % model: Numero con valor respecto a cada clase

    % Salidas:
    % CMA: CMA a analizar
    % W1: W1 ajustado
    % W2: W2 ajustado
    % W3: W3 ajustado
    % W4: W4 ajustado
    % W: Valor resultante que nos ayuda con contador para saber si se ha
    %       modificado peso, 0=>no hubo cambio otro=>hubo cambio

    W = [(W1 * CMA), (W2 * CMA), (W3 * CMA), (W4 * CMA)];
    prevW = W(model);
    d = sum(prevW==W);
    
    if prevW == max(W) && d == 1
        W(:)=0;
    else 
        for j=1:4
            if W(j) >= prevW
                W(j) = -1;
            elseif W(j) < prevW
                W(j)=0;
            end
        end
        W(model)=1;
    end
  
    W1 = W1  + W(1)*CMA';
    W2 = W2  + W(2)*CMA';
    W3 = W3  + W(3)*CMA';
    W4 = W4  + W(4)*CMA';
    
end


