load('.\result\ORL_Orginal_1.mat');  
load('.\result\ORL_Orginal_2.mat');  
load('.\result\ORL_Orginal_3.mat');  

save('.\result\ORL_Orginal','ACC_C2DPCA','ACC_2DPCATL1','ACC_Lp2DPCA','ACC_G2DPCA','ACC_D2PCA2Lp','ACC_FCPCA','space');

%%
clear all; clc

load('.\result\ORL_10X10_hyperparameter_1.mat');  
load('.\result\ORL_10X10_hyperparameter_2.mat');  
load('.\result\ORL_10X10_hyperparameter_3.mat');  
load('.\result\ORL_10X10_hyperparameter_4.mat');  

save('.\result\ORL_10X10_hyperparameter','ACC_C2DPCA','ACC_2DPCATL1','ACC_Capped2DPCAOM','ACC_Lp2DPCA','ACC_G2DPCA','ACC_D2PCA2Lp','ACC_FCPCA','space');

%%
A = x_train;k1 = maxDim; k2 = maxDim; epsilon=0.5;
[U, V] = Capped2DPCAOM(A, k1, k2, epsilon)

%%
clear all; clc

load('.\result\ORL_10X10.mat');  

save('.\result\ORL_10X10_1','ACC_C2DPCA','ACC_D2PCA','ACC_FCPCA','ACC_Capped2DPCAOM','ACC_Lp2DPCA','ACC_G2DPCA','space');





