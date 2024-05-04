%% ===== ORL_32X32 =====
clear all; clc

load('.\data\ORL_32X32.mat');            % load data
X=double(X)/255;                         % preprocess data 
data_path = '.\data\ORL_32X32.mat';      % data path

%%% set parameter
ratio = 6/10;                            % the ratio of train and test
iterations = 10;                         % repeat 10 times
pcomp = 30;                              % the number of principal component
maxDim = 30;                             % maximal dimension 
space = linspace(1,maxDim,pcomp); 
interval = 1;


% store classification accuracy of C2DPCA (p = 1.2, c = 10)
ACC_C2DPCA = zeros(iterations,pcomp);
% store classification accuracy of 2DPCA
ACC_D2PCA = zeros(iterations,pcomp);
% store classification accuracy of Capped 2DPCA-OM (epsilon = 0.5)
ACC_Capped2DPCAOM = zeros(iterations,pcomp);
% store classification accuracy of Lp-2-DPCA (p = 1.6)
ACC_Lp2DPCA = zeros(iterations,pcomp);
% store classification accuracy of G2DPCA (s = 1.2, p = 1.5)
ACC_G2DPCA = zeros(iterations,pcomp);
% store classification accuracy of 2DPCA-2-Lp (s = 2.5, p = 1.8)
ACC_D2PCA2Lp = zeros(iterations,pcomp);
% store classification accuracy of FCPCA (p = 1.2, s = 10)
ACC_FCPCA = zeros(iterations,pcomp);

for i = 1:iterations
    fprintf('The %d-th iteration is processing...... \n', i);
    % prepare the dataset of train and test
    [trainIdx, testIdx] = train_test_split(data_path, ratio);   
    x_train = X(:, :, trainIdx);               x_test = X(:, :, testIdx);
    y_train = Y(trainIdx);                     y_test = Y(testIdx);
      
    % compute principal components of C2DPCA (p=1, c=0.5)
    start_time = clock;
    W_CL2p = C2DPCA(x_train, maxDim, 1, 0.5);
    % acc
    for j = space
        acc = knn_classifier(W_CL2p(:,1:j),x_train,y_train,x_test,y_test);
        ACC_C2DPCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of C2DPCA (p=1, c=0.5) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of 2DPCA
    start_time = clock;
    W_2DPCA = D2PCA(x_train, maxDim);
    % acc
    for j = space
        acc = knn_classifier(W_2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_D2PCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of 2DPCA on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of Capped 2DPCA-OM (k1 = 30, k2= 30, epislon = 0.5)
    start_time = clock;
    W_Capped2DPCAOM = Capped2DPCAOM(x_train, maxDim, maxDim, 0.5);
    % acc
    for j = space
        acc = knn_classifier(W_Capped2DPCAOM(:,1:j),x_train,y_train,x_test,y_test);
        ACC_Capped2DPCAOM(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of Capped 2DPCA-OM (epsilon = 0.5) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of Lp-2-DPCA (p = 1.2)
    start_time = clock;
    W_Lp2DPCA = Lp2DPCA(x_train, maxDim, 1.2); 
    % acc
    for j = space
        acc = knn_classifier(W_Lp2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_Lp2DPCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of Lp-2-DPCA (p = 1.2) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of G2DPCA (s = 1.2, p = 0.5)
    start_time = clock;
    W_G2DPCA = G2DPCA(x_train, 1.2, 0.5, maxDim);
    % acc
    for j = space
        acc = knn_classifier(W_G2DPCA(:,1:j),x_train,y_train,x_test,y_test);
        ACC_G2DPCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of G2DPCA (s = 1.2, p = 0.5) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of 2DPCA-2-Lp (s = 1.6, p = 2.2)
    start_time = clock;
    W_D2PCA2Lp = D2PCA2Lp(x_train, maxDim, 1.6, 2.2);
    % acc
    for j = space
        acc = knn_classifier(W_D2PCA2Lp(:,1:j),x_train,y_train,x_test,y_test);
        ACC_D2PCA2Lp(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of 2DPCA-2-Lp (s = 1.2, p = 0.5) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));

    % compute principal components of FCPCA (p = 1, c = 0.5)
    start_time = clock;
    %%% transmit 3D data into 2D
    % train set
    x_train_vec = [];     
    for k = 1:size(x_train, 3)
        x_train_vec(:, k) = reshape(x_train(:,:,k), prod(size(x_train(:,:,k))), 1);
    end
    % test set
    x_test_vec = [];     
    for k = 1:size(x_test, 3)
        x_test_vec(:, k) = reshape(x_test(:,:,k), prod(size(x_test(:,:,k))), 1);
    end
    %%% FCPCA
    W_FCPCA = FCPCA(x_train_vec, maxDim, 1, 0.5);
    % acc
    for j = space
        acc = knn_classifier_FCPCA(W_FCPCA(:,1:j),x_train_vec,y_train,x_test_vec,y_test);
        ACC_FCPCA(i,j/interval) = acc;
    end
    end_time = clock;
    fprintf('This is the %d-th iteration of FCPCA (p = 1, c = 0.5) on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
end





