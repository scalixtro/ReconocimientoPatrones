% Grafica los datos de las características de color y forma de la manzana y naranja

% Datos de las manzanas rojas
x1 = [0.3883 0.4637 0.4046 0.4376 0.4270]; % Forma
y1 = [0.5417 0.4500 0.5139 0.3625 0.3867]; % Color

% Datos de las naranjas 
x2 = [0.5065 0.5237 0.4601 0.4235 0.5135]; % Forma
y2 = [0.8696 0.8333 0.8672 0.8904 0.8906]; % Color

% Recta
x = 0.34:0.01:0.54;
y = -2.748*x+1.92;

% Grafica
plot(x1,y1,'r*',x2,y2,'bo',x,y,'g-','LineWidth',2)

% Elementos de la gráfica 
title('Clasificación de frutas')
xlabel('Forma')
ylabel('Color')
legend('Manzanas rojas','Naranjas', 'Recta fd')
axis([0.38 0.54 0.3 1])