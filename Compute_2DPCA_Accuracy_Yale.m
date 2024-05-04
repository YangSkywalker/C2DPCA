%% ===== Yale_32X32 =====
clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
data_path = '.\data\Yale_32X32.mat';      % data path

%%% set parameter
ratio = 7/11;                            % the ratio of train and test
iterations = 10;                         % repeat 10 times
pcomp = 25;                              % the number of principal component
maxDim = 25;                             % maximal dimension 
space = linspace(1,maxDim,pcomp); 
interval = 1;

% store classification accuracy of 2DPCA
ACC_D2PCA = zeros(iterations,pcomp);

fprintf('...... ');

for i = 1:iterations
    fprintf('The %d-th iteration is processing...... \n', i);
    % prepare the dataset of train and test
    [trainIdx, testIdx] = train_test_split(data_path, ratio);   
    x_train = X(:, :, trainIdx);               x_test = X(:, :, testIdx);
    y_train = Y(trainIdx);                     y_test = Y(testIdx);

    % compute principal components of 2DPCA
    start_time = clock;
    W_2DPCA = D2PCA(x_train, maxDim);
    % acc
    for j = space
        acc = knn_classifier(W_2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_D2PCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of 2DPCA on Yale_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
end
save('.\result\Yale_Orignal','ACC_D2PCA','-append');

%% ===== Yale_32X32 Noise16=====
clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
data_path = '.\data\Yale_32X32.mat';      % data path

%%% set parameter
ratio = 7/11;                            % the ratio of train and test
iterations = 10;                         % repeat 10 times
pcomp = 25;                              % the number of principal component
maxDim = 25;                             % maximal dimension 
space = linspace(1,maxDim,pcomp); 
interval = 1;
noise_size = 16;

% store classification accuracy of 2DPCA
ACC_D2PCA = zeros(iterations,pcomp);

fprintf('...... ');

for i = 1:iterations
    fprintf('The %d-th iteration is processing...... \n', i);
    % prepare the dataset of train and test
    [trainIdx, testIdx] = train_test_split(data_path, ratio);   
    x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);               x_test = X(:, :, testIdx);
    y_train = Y(trainIdx);                     y_test = Y(testIdx);

    % compute principal components of 2DPCA
    start_time = clock;
    W_2DPCA = D2PCA(x_train, maxDim);
    % acc
    for j = space
        acc = knn_classifier(W_2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_D2PCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of 2DPCA on Yale_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
end
save('.\result\Yale_16X16','ACC_D2PCA','-append');

%% ===== Yale_32X32 Noise23=====
clear all; clc

load('.\data\Yale_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
data_path = '.\data\Yale_32X32.mat';      % data path

%%% set parameter
ratio = 7/11;                            % the ratio of train and test
iterations = 10;                         % repeat 10 times
pcomp = 25;                              % the number of principal component
maxDim = 25;                             % maximal dimension 
space = linspace(1,maxDim,pcomp); 
interval = 1;
noise_size = 23;

% store classification accuracy of 2DPCA
ACC_D2PCA = zeros(iterations,pcomp);

fprintf('...... ');

for i = 1:iterations
    fprintf('The %d-th iteration is processing...... \n', i);
    % prepare the dataset of train and test
    [trainIdx, testIdx] = train_test_split(data_path, ratio);   
    x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);               x_test = X(:, :, testIdx);
    y_train = Y(trainIdx);                     y_test = Y(testIdx);

    % compute principal components of 2DPCA
    start_time = clock;
    W_2DPCA = D2PCA(x_train, maxDim);
    % acc
    for j = space
        acc = knn_classifier(W_2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_D2PCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of 2DPCA on Yale_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
end
save('.\result\Yale_23X23','ACC_D2PCA','-append');


