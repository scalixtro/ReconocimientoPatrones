function [column] = FindmaxRow(image)
    
    %Get size of image
    [m,n] = size(image);
    %Variables for Row register
    isMaxRow = 0;
    maxRow = 0;
    %Variable for Column register
    isMaxColumn = 0;
    maxColumn = 0;
    
    for i=1:m
       contador = 0;
       for j=1:n
           %Variable with value for Row
           valRow = image(i,j);
           %If value is 1 add to counter one byte
           if valRow == 1
               contador = contador + 1;
           end
       end
       %Save counter in isMaxRow
       isMaxRow = contador;
       %Check if isMaxRow is greater than maxRow if it is update column 
       if isMaxRow >= maxRow
            maxRow = isMaxRow;
            column = maxRow;
       end
    end
end

