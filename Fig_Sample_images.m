%% ORL
clear all; clc; 
load('.\data\ORL_32X32');
X=double(X)/255;
X16 = blocksaltpepperPollute(X,16); 
X23 = blocksaltpepperPollute(X,23); 

figure(1)

total_snample_num = 21;
plot_fig = tight_subplot(3, total_snample_num/3, [0,0],[0.01, 0.01], [0.01, 0.01]);
for i = 1:21
    % Noise0
    if (i >= 1) & (i <= total_snample_num/3)
       axes(plot_fig(i));
       imshow(X(:,:,i));   
    end
    
    % Noise16
    if (i >= total_snample_num/3 + 1) & (i <= total_snample_num/3 * 2)
       axes(plot_fig(i));
       imshow(X16(:,:,i - total_snample_num/3));   
    end
    
    % Noise23
    if (i >= total_snample_num/3 * 2 + 1) & (i <= total_snample_num)
       axes(plot_fig(i));
       imshow(X23(:,:,i - total_snample_num/3 * 2));   
    end
end


% set(gcf, 'unit', 'centimeters', 'position', [15 10 9 4.53]);  % [3,6]
set(gcf, 'unit', 'centimeters', 'position', [15 10 10.5 4.53]);

export_fig D:\C2DPCA\Sample_ORL.eps 

%% Yale
clear all; clc; 
load('.\data\Yale_32X32');
X=double(X)/255;
X16 = blocksaltpepperPollute(X,16); 
X23 = blocksaltpepperPollute(X,23); 

figure(2)

total_snample_num = 21;
plot_fig = tight_subplot(3, total_snample_num/3, [0,0],[0.01, 0.01], [0.01, 0.01]);
for i = 1:21
    % Noise0
    if (i >= 1) & (i <= total_snample_num/3)
       axes(plot_fig(i));
       imshow(X(:,:,i));   
    end
    
    % Noise16
    if (i >= total_snample_num/3 + 1) & (i <= total_snample_num/3 * 2)
       axes(plot_fig(i));
       imshow(X16(:,:,i - total_snample_num/3));   
    end
    
    % Noise23
    if (i >= total_snample_num/3 * 2 + 1) & (i <= total_snample_num)
       axes(plot_fig(i));
       imshow(X23(:,:,i - total_snample_num/3 * 2));   
    end
end


% set(gcf, 'unit', 'centimeters', 'position', [15 10 9 4.53]);  % [3,6]
set(gcf, 'unit', 'centimeters', 'position', [15 10 10.5 4.53]);

export_fig D:\C2DPCA\Sample_Yale.eps 

%% Jaffe
clear all; clc; 
load('.\data\Jaffe_32X32');
X=double(X)/255;
X16 = blocksaltpepperPollute(X,16); 
X23 = blocksaltpepperPollute(X,23); 

figure(3)

total_snample_num = 21;
plot_fig = tight_subplot(3, total_snample_num/3, [0,0],[0.01, 0.01], [0.01, 0.01]);
for i = 1:21
    % Noise0
    if (i >= 1) & (i <= total_snample_num/3)
       axes(plot_fig(i));
       imshow(X(:,:,i));   
    end
    
    % Noise16
    if (i >= total_snample_num/3 + 1) & (i <= total_snample_num/3 * 2)
       axes(plot_fig(i));
       imshow(X16(:,:,i - total_snample_num/3));   
    end
    
    % Noise23
    if (i >= total_snample_num/3 * 2 + 1) & (i <= total_snample_num)
       axes(plot_fig(i));
       imshow(X23(:,:,i - total_snample_num/3 * 2));   
    end
end


% set(gcf, 'unit', 'centimeters', 'position', [15 10 9 4.53]);  % [3,6]
set(gcf, 'unit', 'centimeters', 'position', [15 10 10.5 4.53]);

export_fig D:\C2DPCA\Sample_Jaffe.eps 

%% Coil20
clear all; clc; 
load('.\data\Coil20_32X32');
X=double(X)/255;
X16 = blocksaltpepperPollute(X,16); 
X23 = blocksaltpepperPollute(X,23); 

figure(4)

total_snample_num = 21;
plot_fig = tight_subplot(3, total_snample_num/3, [0,0],[0.01, 0.01], [0.01, 0.01]);
for i = 1:21
    % Noise0
    if (i >= 1) & (i <= total_snample_num/3)
       axes(plot_fig(i));
       imshow(X(:,:,i));   
    end
    
    % Noise16
    if (i >= total_snample_num/3 + 1) & (i <= total_snample_num/3 * 2)
       axes(plot_fig(i));
       imshow(X16(:,:,i - total_snample_num/3));   
    end
    
    % Noise23
    if (i >= total_snample_num/3 * 2 + 1) & (i <= total_snample_num)
       axes(plot_fig(i));
       imshow(X23(:,:,i - total_snample_num/3 * 2));   
    end
end


% set(gcf, 'unit', 'centimeters', 'position', [15 10 9 4.53]);  % [3,6]
set(gcf, 'unit', 'centimeters', 'position', [15 10 10.5 4.53]);

export_fig D:\C2DPCA\Sample_Coil20.eps 