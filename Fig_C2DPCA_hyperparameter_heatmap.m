% =========================================================================
%% ORL_Noise0
clear all; clc;
load('.\result\ORL_Orignal_hyperparameter.mat');

figure(1)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_ORL_Noise0.eps 
%% ORL_Noise16
clear all; clc;
load('.\result\ORL_16X16_hyperparameter.mat');

figure(2)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_ORL_Noise16.eps 
%% ORL_Noise23
clear all; clc;
load('.\result\ORL_23X23_hyperparameter.mat');

figure(3)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_ORL_Noise23.eps 

% =========================================================================
%% Yale_Noise0
clear all; clc;
load('.\result\Yale_Orignal_hyperparameter.mat');

figure(4)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Yale_Noise0.eps 

%% Yale_Noise16
clear all; clc;
load('.\result\Yale_16X16_hyperparameter.mat');

figure(5)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Yale_Noise16.eps 

%% Yale_Noise23
clear all; clc;
load('.\result\Yale_23X23_hyperparameter.mat');

figure(6)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Yale_Noise23.eps 

% =========================================================================
%% Jaffe_Noise0
clear all; clc;
load('.\result\Jaffe_Orignal_hyperparameter.mat');

figure(7)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Jaffe_Noise0.eps 

%% Jaffe_Noise16
clear all; clc;
load('.\result\Jaffe_16X16_hyperparameter.mat');

figure(8)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Jaffe_Noise16.eps 

%% Jaffe_Noise23
clear all; clc;
load('.\result\Jaffe_23X23_hyperparameter.mat');

figure(9)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Jaffe_Noise23.eps 

% =========================================================================
%% Coil20_Noise0
clear all; clc;
load('.\result\Coil20_Orignal_hyperparameter.mat');

figure(10)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Coil20_Noise0.eps 

%% Coil20_Noise16
clear all; clc;
load('.\result\Coil20_16X16_hyperparameter.mat');

figure(11)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Coil20_Noise16.eps 

%% Coil20_Noise23
clear all; clc;
load('.\result\Coil20_23X23_hyperparameter.mat');

figure(12)
%%% collect the highest Acc of eachh pair (p, c) 
% hyperparameter
p = linspace(0.2, 2, 10);
c = [10:-0.5:0.5, 0.1];
% collect the highest Acc and store it into cdata
cdata = zeros(21, 10);
for ci = c
    for pi = p
        temp = getfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')));
        ACC_C2DPCA_mean = mean(temp);
        cdata(find(c==ci), find(p==pi)) = max(ACC_C2DPCA_mean) * 100;
    end
end

%%% plot heatmap
% set xticklabels and yticklabels
pvalues = {'0.2', '0.4', '0.6', '0.8', '1', '1.2', '1.4', '1.6', '1.8', '2'};
cvalues = {'10', '9.5', '9', '8.5', '8', '7.5', '7', '6.5', '6', '5.5', '5', '4.5', '4', '3.5', '3', '2.5', '2', '1.5', '1', '0.5', '0.1'};
% heatmap(pvalues, cvalues, cdata)
heatmap(pvalues, cvalues, cdata);
set(gcf,'color','white');
set(gca, 'XLabel', 'parameter p');
set(gca, 'YLabel', 'parameter c');
grid off;
colormap('parula');
set(gcf, 'unit', 'centimeters', 'position', [15 10 9.6 10]);
set(gca,'FontSize',12);

export_fig D:\C2DPCA\Heatmap_Coil20_Noise23.eps 
