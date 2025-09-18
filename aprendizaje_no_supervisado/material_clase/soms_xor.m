clc; close all; clear

%GENERACION DE DATOS DE ENTRENAMIENTO

% Numero de muestras por grupo
n = 50;

% Ubicacion de la media de los conjuntos
c = 1;

% Generación conjunto de entrenamiento
x = [rand(1,n)-c rand(1,n)+c rand(1,n)+c rand(1,n)-c;
     rand(1,n)+c rand(1,n)+c rand(1,n)-c rand(1,n)-c];
% plot clusters
plot(x(1,:),x(2,:),'k.')
hold on
grid on

%DEFINICION Y ENTRENAMIENTO DEL MAPA

%Parametros del SOM
% dimensions = [100];
% coverSteps = 100;
% initNeighbor = 10;
% topologyFcn = 'gridtop'; [hextop, randtop]
% distanceFcn = 'linkdist'; [dist, boxdist, linkdist, mandist]

%Definicion de topologia

% Caso Unidimensional de capa de salida
net = selforgmap ([10 10]);

%Caso Bidimensional de capa de salida
%    topologyFcn = 'hextop'; 
%    net = selforgmap ([6 6]);


view(net)

%Entrenamiento
[net,tr] = train(net,x);

%Resultados
figure, plotsomtop(net)         %Estructura del mapa
figure, plotsompos(net,x)       %Ubicacion de entradas y SOM
figure, plotsomhits(net,x)      %Número de entradas enlazadas a cada neurona
figure, plotsomnd(net)
