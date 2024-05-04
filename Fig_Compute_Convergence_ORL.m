%% ORL
figure(1)
% ORL_Noise0 --------------------------------------------------------------
clear all; clc

load('.\data\ORL_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[0.5412,0.1686,0.8863],'LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% ORL_Noise16 -------------------------------------------------------------

clear all; clc

load('.\data\ORL_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,16);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color','c','LineWidth',2.5,'Marker','v','MarkerSize',2); hold on
% plot(space,ACC_C2DPCA_mean,'r->','LineWidth',2.5,'MarkerSize',2); hold on

% ORL_Noise23 -------------------------------------------------------------

clear all; clc

load('.\data\ORL_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,23);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[1, 0.72, 0.06],'LineWidth',2.5,'Marker','<','MarkerSize',2); hold on

xlabel('Iterative Number'); ylabel('Objective Value \times10^3');
set(gcf,'color','white');
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 7 6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
yticklabels({'1','2','3','4','5','6'});
legend({'No Noise','16\times16 Noise','23\times23 Noise'},'Location','southeast','Box','off')
% export_fig D:\C2DPCA\Convergence_ORL.eps 

%% Yale
figure(2)
% Yale_Noise0 --------------------------------------------------------------
clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[0.5412,0.1686,0.8863],'LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Yale_Noise16 -------------------------------------------------------------

clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,16);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color','c','LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Yale_Noise23 -------------------------------------------------------------

clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,23);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[1, 0.72, 0.06],'LineWidth',2.5,'Marker','<','MarkerSize',2); hold on

xlabel('Iterative Number'); ylabel('Objective Value \times10^3');
set(gcf,'color','white');
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 7 6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
yticklabels({'0','1','2','3'});
% legend({'No Noise','16\times16 Noise','23\times23 Noise'},'Location','southeast','Box','off')
export_fig D:\C2DPCA\Convergence_Yale.eps 

%% Jaffe
figure(3)
% Jaffe_Noise0 --------------------------------------------------------------
clear all; clc

load('.\data\Jaffe_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[0.5412,0.1686,0.8863],'LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Jaffe_Noise16 -------------------------------------------------------------

clear all; clc

load('.\data\Jaffe_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,16);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color','c','LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Jaffe_Noise23 -------------------------------------------------------------

clear all; clc

load('.\data\Jaffe_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,23);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[1, 0.72, 0.06],'LineWidth',2.5,'Marker','<','MarkerSize',2); hold on

xlabel('Iterative Number'); ylabel('Objective Value \times10^3');
set(gcf,'color','white');
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 7 6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
yticklabels({'0.5','1','1.5','2','2.5','3'});
% legend({'No Noise','16\times16 Noise','23\times23 Noise'},'Location','southeast','Box','off')
export_fig D:\C2DPCA\Convergence_Jaffe.eps 

%% Coil20
figure(4)
% Coil20_Noise0 --------------------------------------------------------------
clear all; clc

load('.\data\Coil20_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[0.5412,0.1686,0.8863],'LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Coil20_Noise16 -------------------------------------------------------------

clear all; clc

load('.\data\Coil20_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,16);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color','c','LineWidth',2.5,'Marker','>','MarkerSize',2); hold on

% Coil20_Noise23 -------------------------------------------------------------

clear all; clc

load('.\data\Coil20_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
X = blocksaltpepperPollute(X,23);
ObjVal = [];

d = 20; p = 1; c = 0.5;

max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[m, n, N] = size(X);    % m - the row of image data, n - the column of image data
                        % N - the number of samples

mean_x = mean(X, 3);    % sample mean
% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
W0 = orth(rand(m,d)); % initial W
fprintf('the objectibe value: %f  \n',CL2pfun(X, W0, p, c));
ObjVal(1) = CL2pfun(X, W0, p, c);

for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    S = zeros(m, m);
    for k = 1:N
        X_temp = X(:,:,k) - W0 * W0' * X(:,:,k);
        % compute the diagonal matrix of X(:,:,k)
        S_k = zeros(n, n);
        for j = 1:n
            if norm(X_temp(:,j))^p <= c
                S_k(j, j) = 1 / (norm(X_temp(:,j))^(2-p) + eps);
            else
                S_k(j, j) = 0;
            end
        end
        % compute S
        S = S + X(:,:,k) * S_k * X(:,:,k)';
    end
    
    %%% compute the projection matrix
    [W, V] = eig(S);
    W = W(:,1:d);
    fprintf('the objectibe value: %f  \n',CL2pfun(X, W, p, c));
    ObjVal(iter + 1) = CL2pfun(X, W, p, c);

    %%% stop criterion
    if abs(CL2pfun(X, W0, p, c) - CL2pfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

plot(1:length(ObjVal), ObjVal,'color',[1, 0.72, 0.06],'LineWidth',2.5,'Marker','<','MarkerSize',2); hold on

xlabel('Iterative Number'); ylabel('Objective Value \times10^4');
set(gcf,'color','white');
set(gca,'looseInset',[0 0 0 0]);
set(gca,'ticklength',[0 0]);
set(gca,'FontSize',12);
set(gcf, 'unit', 'centimeters', 'position', [15 10 7 6]);
grid on;
ax = gca;
ax.GridColor = [0.7529    0.7529    0.7529];
ax.LineWidth = 1;
yticklabels({'0.5','1','1.5','2','2.5'});
% legend({'No Noise','16\times16 Noise','23\times23 Noise'},'Location','southeast','Box','off')
export_fig D:\C2DPCA\Convergence_Coil20.eps 

