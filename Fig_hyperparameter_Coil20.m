%% ===== Coil20_32X32 Original=====
clear all; clc

load('.\result\Coil20_Orignal_hyperparameter.mat');     % load data


%%% plot the accuracy curve of C2DPCA
% set hyperparameter
figure(1)
p = linspace(0.2, 2, 10);
c = [0.1, 0.5:0.5:10];
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of Lp-2-DPCA (0 < p <2)
% set hyperparameter
figure(2)
p = linspace(0.2, 2, 10);
i = 1;
leg_str = {};
for pi = p
    ACC = getfield(ACC_Lp2DPCA, strcat('p',erase(num2str(pi),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('p',erase(num2str(pi),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)

%%% store classification accuracy of G2DPCA (s >= 1, p > 0)
% set hyperparameter
figure(3)
s = linspace(1, 3, 11); 
p = linspace(0.9, 3, 8);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_G2DPCA, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of FCPCA (0< p <=2 , c > 0)
% set hyperparameter
figure(4)
p = linspace(0.2, 2, 3);
c = linspace(1, 7, 3);
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_FCPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of  Capped 2DPCA-OM (epislon)
% set hyperparameter
figure(5)
epsilon = [0.5:0.5:10]; 
i = 1;
leg_str = {};
for epsiloni = epsilon
    ACC = getfield(ACC_Capped2DPCAOM, strcat('epsilon',erase(num2str(epsiloni),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('epsilon',erase(num2str(epsiloni),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)


%%% store classification accuracy of 2DPCA-2-Lp (s >= 1, p > 0)
% set hyperparameter
figure(6)
s = linspace(1, 2.5, 3); 
p = linspace(1.4, 2.4, 3);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_D2PCA2Lp, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)


%% ===== Coil20_32X32 16X16 nosie=====
clear all; clc

load('.\result\Coil20_16X16_hyperparameter.mat');       % load data

%%% plot the accuracy curve of C2DPCA
% set hyperparameter
figure(1)
p = linspace(0.2, 2, 10);
c = [0.1, 0.5:0.5:10];
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of Lp-2-DPCA (0 < p <2)
% set hyperparameter
figure(2)
p = linspace(0.2, 2, 10);
i = 1;
leg_str = {};
for pi = p
    ACC = getfield(ACC_Lp2DPCA, strcat('p',erase(num2str(pi),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('p',erase(num2str(pi),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)

%%% store classification accuracy of G2DPCA (s >= 1, p > 0)
% set hyperparameter
figure(3)
s = linspace(1, 3, 11); 
p = linspace(0.9, 3, 8);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_G2DPCA, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of FCPCA (0< p <=2 , c > 0)
% set hyperparameter
figure(4)
p = linspace(0.2, 2, 3);
c = linspace(1, 7, 3);
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_FCPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of  Capped 2DPCA-OM (epislon)
% set hyperparameter
figure(5)
epsilon = [6:0.5:10]; 
i = 1;
leg_str = {};
for epsiloni = epsilon
    ACC = getfield(ACC_Capped2DPCAOM, strcat('epsilon',erase(num2str(epsiloni),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('epsilon',erase(num2str(epsiloni),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)


%%% store classification accuracy of 2DPCA-2-Lp (s >= 1, p > 0)
% set hyperparameter
figure(6)
s = linspace(1, 2.5, 3); 
p = linspace(1.4, 2.4, 3);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_D2PCA2Lp, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)


%% ===== Coil20_32X32 Noise23=====
clear all; clc

load('.\result\Coil20_23X23_hyperparameter.mat');       % load data

%%% plot the accuracy curve of C2DPCA
% set hyperparameter
figure(1)
p = linspace(0.2, 2, 10);
c = [0.1, 0.5:0.5:10];
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of Lp-2-DPCA (0 < p <2)
% set hyperparameter
figure(2)
p = linspace(0.2, 2, 10);
i = 1;
leg_str = {};
for pi = p
    ACC = getfield(ACC_Lp2DPCA, strcat('p',erase(num2str(pi),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('p',erase(num2str(pi),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)

%%% store classification accuracy of G2DPCA (s >= 1, p > 0)
% set hyperparameter
figure(3)
s = linspace(1, 3, 11); 
p = linspace(0.9, 3, 8);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_G2DPCA, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of FCPCA (0< p <=2 , c > 0)
% set hyperparameter
figure(4)
p = linspace(0.2, 2, 3);
c = linspace(1, 7, 3);
i = 1;
leg_str = {};
for pi = p
    for ci = c
        ACC = getfield(ACC_FCPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('p',erase(num2str(pi),'.'),'c',erase(num2str(ci),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)

%%% store classification accuracy of  Capped 2DPCA-OM (epislon)
% set hyperparameter
figure(5)
epsilon = [8:0.5:10]; 
i = 1;
leg_str = {};
for epsiloni = epsilon
    ACC = getfield(ACC_Capped2DPCAOM, strcat('epsilon',erase(num2str(epsiloni),'.')));
    ACC_mean = mean(ACC);
    leg_str{i} = strcat('epsilon',erase(num2str(epsiloni),'.'));
    plot(space, ACC_mean); hold on
    i = i + 1;
end
legend(leg_str)


%%% store classification accuracy of 2DPCA-2-Lp (s >= 1, p > 0)
% set hyperparameter
figure(6)
s = linspace(1, 2.5, 3); 
p = linspace(1.4, 2.4, 3);
i = 1;
leg_str = {};
for si = s
    for pi = p
        ACC = getfield(ACC_D2PCA2Lp, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')));
        ACC_mean = mean(ACC);
        leg_str{i} = strcat('s',erase(num2str(si),'.'),'p',erase(num2str(pi),'.'));
        plot(space, ACC_mean); hold on
        i = i + 1;
    end
end
legend(leg_str)







