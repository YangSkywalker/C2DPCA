%% ===== ORL_32X32  =====
clear all; clc

load('.\result\ORL_Orignal.mat');     
% load('.\result\ORL_16X16.mat');    
% load('.\result\ORL_23X23.mat');    

names = whos;
leg_str = {};
j = 1;
for i = 1:length(names)
    if contains(names(i).name, 'ACC')
        eval([strcat(names(i).name,'_mean'), '=', 'mean(', names(i).name ,')',';'])
        eval(['plot(space,',strcat(names(i).name,'_mean'), ');']); hold on
        leg_str{j} = erase(names(i).name,'ACC_');
        j = j + 1;
    end
end
legend(leg_str)

%% ===== Yale_32X32  =====
clear all; clc

% load('.\result\Yale_Orignal.mat');     
load('.\result\Yale_16X16.mat');    
% load('.\result\Yale_23X23.mat');    

names = whos;
leg_str = {};
j = 1;
for i = 1:length(names)
    if contains(names(i).name, 'ACC')
        eval([strcat(names(i).name,'_mean'), '=', 'mean(', names(i).name ,')',';'])
        eval(['plot(space,',strcat(names(i).name,'_mean'), ');']); hold on
        leg_str{j} = erase(names(i).name,'ACC_');
        j = j + 1;
    end
end
legend(leg_str)

%% ===== Jaffe_32X32  =====
clear all; clc

% load('.\result\Jaffe_Orignal.mat');     
load('.\result\Jaffe_16X16.mat');    
% load('.\result\Jaffe_23X23.mat');    

names = whos;
leg_str = {};
j = 1;
for i = 1:length(names)
    if contains(names(i).name, 'ACC')
        eval([strcat(names(i).name,'_mean'), '=', 'mean(', names(i).name ,')',';'])
        eval(['plot(space,',strcat(names(i).name,'_mean'), ');']); hold on
        leg_str{j} = erase(names(i).name,'ACC_');
        j = j + 1;
    end
end
legend(leg_str)

%% ===== Coil20_32X32  =====
clear all; clc

% load('.\result\Coil20_Orignal.mat');     
% load('.\result\Coil20_16X16.mat');    
load('.\result\Coil20_23X23.mat');    

names = whos;
leg_str = {};
j = 1;
for i = 1:length(names)
    if contains(names(i).name, 'ACC')
        eval([strcat(names(i).name,'_mean'), '=', 'mean(', names(i).name ,')',';'])
        eval(['plot(space,',strcat(names(i).name,'_mean'), ');']); hold on
        leg_str{j} = erase(names(i).name,'ACC_');
        j = j + 1;
    end
end
legend(leg_str)


