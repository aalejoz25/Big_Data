clc, close all, clear

%DATOS DEL PROBLEMA

load fisheriris
X = meas(:,1:4);
Xs = meas(:,1:2);
Xp = meas(:,3:4);

figure;
plot(Xp(1:40,1),Xp(1:40,2),'r.','MarkerSize',7);
hold on
plot(Xp(51:90,1),Xp(51:90,2),'b.','MarkerSize',7);
plot(Xp(101:140,1),Xp(101:140,2),'g.','MarkerSize',7);
xlabel 'Long. Petal (cm)'; 
ylabel 'Ancho Petal (cm)';


%ENTRENAMIENTO 

% Parámetros de entrada: Matriz de datos (Nxd) y número de grupos.
% Salidas:  índice de clusters, localizaciones y distancia entre ellos
[idx,loc,dist_clts,sum_dist] = kmeans(Xp,15);

hold on
plot(loc(:,1),loc(:,2),'kx','MarkerSize',7,'LineWidth',2)

%EVALUACION
%Asignacion de datos nuevos a clusters

Xev = [Xp(41:50,:);Xp(91:100,:);Xp(141:150,:)];
[dist,idx_clt] = pdist2(loc,Xev,'euclidean','Smallest',1);
figure
gscatter(Xev(:,1),Xev(:,2),idx_clt,'rbgmck','******')


%Grafico de Silhouette
figure
silhouette(Xp,idx)