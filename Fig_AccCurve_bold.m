% ============================ ORL =============================================
%% ------ ORL_32X32 Orignal------
clear all; clc

load('.\result\ORL_Orignal.mat');       

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(1)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_C2DPCA_mean,'color', [0.8500 0.3250 0.0980], 'marker','>','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_FCPCA_mean,'color', [0.3010 0.7450 0.9330],'marker','v','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_Capped2DPCAOM_mean,'color', [0 0.4470 0.7410],'marker','<','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_D2PCA2Lp_mean,'color',[0.6350 0.0780 0.1840], 'marker','^','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_Lp2DPCA_mean,'color',[0.4660 0.6740 0.1880], 'marker','x','LineWidth',2.5,'MarkerSize',4); hold on
% plot(space,ACC_G2DPCA_mean,'color',[0.9290 0.6940 0.1250], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
% plot(space,ACC_D2PCA_mean,'color',[0.4940 0.1840 0.5560],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
% plot(space,ACC_C2DPCA_mean,'color', [0.8500 0.3250 0.0980], 'marker','>','LineWidth',2.5,'MarkerSize',2); hold on

xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast','Box','off')

% export_fig D:\C2DPCA\ORL_Orignal.eps 
%% ------ ORL_32X32 Noise16------
clear all; clc
   
load('.\result\ORL_16X16.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(2)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

% export_fig D:\C2DPCA\ORL_Noise16.eps 
%% ------ ORL_32X32 Noise23------
clear all; clc
  
load('.\result\ORL_23X23.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(3)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\ORL_Noise23.eps 

% ============================ Yale =============================================
%% ------ Yale_32X32 Orignal------
clear all; clc

load('.\result\Yale_Orignal.mat');       

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(4)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast','Box', 'off')

% export_fig D:\C2DPCA\Yale_Orignal.eps 
%% ------ Yale_32X32 Noise16------
clear all; clc
   
load('.\result\Yale_16X16.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(5)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Yale_Noise16.eps 
%% ------ Yale_32X32 Noise23------
clear all; clc
  
load('.\result\Yale_23X23.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(6)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Yale_Noise23.eps 

% ============================ Jaffe =============================================
%% ------ Jaffe_32X32 Orignal------
clear all; clc

load('.\result\Jaffe_Orignal.mat');       

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(7)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast','Box', 'off')

% export_fig D:\C2DPCA\Jaffe_Orignal.eps 
%% ------ Jaffe_32X32 Noise16------
clear all; clc
   
load('.\result\Jaffe_16X16.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(8)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Jaffe_Noise16.eps 
%% ------ Jaffe_32X32 Noise23------
clear all; clc
  
load('.\result\Jaffe_23X23.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(9)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Jaffe_Noise23.eps 

% ============================ Coil20 =============================================
%% ------ Coil20_32X32 Orignal------
clear all; clc

load('.\result\Coil20_Orignal.mat');       

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(10)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast','Box', 'off')

% export_fig D:\C2DPCA\Coil20_Orignal.eps 
%% ------ Coil20_32X32 Noise16------
clear all; clc
   
load('.\result\Coil20_16X16.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(11)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Coil20_Noise16.eps 
%% ------ Coil20_32X32 Noise23------
clear all; clc
  
load('.\result\Coil20_23X23.mat');    

ACC_C2DPCA_mean = mean(ACC_C2DPCA);
ACC_Lp2DPCA_mean = mean(ACC_Lp2DPCA);
ACC_G2DPCA_mean = mean(ACC_G2DPCA);
ACC_FCPCA_mean = mean(ACC_FCPCA);
ACC_Capped2DPCAOM_mean = mean(ACC_Capped2DPCAOM);
ACC_D2PCA2Lp_mean = mean(ACC_D2PCA2Lp);
ACC_D2PCA_mean = mean(ACC_D2PCA);

figure(12)
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_FCPCA_mean,'c-v','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Capped2DPCAOM_mean,'b-<','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_D2PCA2Lp_mean,'m-^','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_Lp2DPCA_mean,'g-x','LineWidth',2.5,'MarkerSize',4); hold on
plot(space,ACC_G2DPCA_mean,'color',[1, 0.72, 0.06], 'marker','s','LineWidth',2.5,'MarkerSize',3); hold on
plot(space,ACC_D2PCA_mean,'color',[0.5412,0.1686,0.8863],'marker','d','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on
xlabel('Reduced Dimension'); ylabel('Accuracy(%)');
% ylim([0,100]);
set(gcf,'color','white');
% backColor = [0.9843, 1.0000,0.9490];
% set(gca, 'color', backColor); 
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 8.6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
% legend({'C2DPCA','FCPCA','Capped R2DPCA-OM','2DPCA-2-Lp','L_{2,p}-2DPCA','G2DPCA','2DPCA'},'Location','southeast')

export_fig D:\C2DPCA\Coil20_Noise23.eps 

