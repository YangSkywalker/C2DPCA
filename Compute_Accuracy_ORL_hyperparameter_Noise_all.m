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
noise_size = 10;

fprintf('...... ');

%%% store classification accuracy of C2DPCA (0< p <=2 , c > 0)
ACC_C2DPCA = struct();
% set hyperparameter
p = linspace(0.2, 2, 10);
c = [0.1, 0.5, 1, 5, 10];
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of C2DPCA (0< p <=2 , c > 0)............ \n');
for pi = p
    for ci = c
        fprintf('The iteration of C2DPCA (p = %f, c = %f) is processing...... \n', pi, ci);
        ACC_temp = zeros(iterations,pcomp);
        for i = 1:iterations
            % prepare the dataset of train and test
            [trainIdx, testIdx] = train_test_split(data_path, ratio);   
            x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
            y_train = Y(trainIdx);                                             y_test = Y(testIdx);
 
            % compute principal components of C2DPCA
            start_time = clock;
            W_CL2p = C2DPCA(x_train, maxDim, pi, ci);
            % acc
            for j = space
                acc = knn_classifier(W_CL2p(:,1:j),x_train,y_train,x_test,y_test);
                ACC_temp(i,j/interval) = acc;
            end
            end_time = clock;
            fprintf('This is the %d-th iteration of C2DPCA on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
        end
        ACC_C2DPCA = setfield(ACC_C2DPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')),ACC_temp);
    end
end

%%% store classification accuracy of 2DPCA-TL1 (a > 0)
ACC_2DPCATL1 = struct();
% set hyperparameter
a = [0.001, 0.01, 0.05, 0.1, 0.5, 1, 10, 50, 100];
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of 2DPCA-TL1 (a > 0)............ \n');
for ai = a
    fprintf('The iteration of 2DPCA-TL1 (a = %f) is processing...... \n', ai);
    ACC_temp = zeros(iterations,pcomp);
    for i = 1:iterations
        % prepare the dataset of train and test
        [trainIdx, testIdx] = train_test_split(data_path, ratio);   
        x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
        y_train = Y(trainIdx);                                             y_test = Y(testIdx);

        % compute principal components of 2DPCA-TL1
        start_time = clock;
        W_2DPCATL1 = D2PCATL1(x_train, maxDim, ai);
        % acc
        for j = space
            acc = knn_classifier(W_2DPCATL1(:,1:j),x_train,y_train,x_test,y_test);
            ACC_temp(i,j/interval) = acc;
        end
        end_time = clock;
        fprintf('This is the %d-th iteration of 2DPCA-TL1 on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
    end
    ACC_2DPCATL1 = setfield(ACC_2DPCATL1, strcat('a',erase(num2str(ai),'.')),ACC_temp);
end

%%% store classification accuracy of Lp-2-DPCA (0 < p <2)
ACC_Lp2DPCA = struct();
% set hyperparameter
p = linspace(0.2, 2, 10);
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of Lp-2-DPCA (0 < p <2)............ \n');
for pi = p
    fprintf('The iteration of Lp-2-DPCA (p = %f) is processing...... \n', pi);
    ACC_temp = zeros(iterations,pcomp);
    for i = 1:iterations
        % prepare the dataset of train and test
        [trainIdx, testIdx] = train_test_split(data_path, ratio);   
        x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
        y_train = Y(trainIdx);                                             y_test = Y(testIdx);

        % compute principal components of Lp-2-DPCA
        start_time = clock;
        W_Lp2DPCA = Lp2DPCA(x_train, maxDim, pi);
        % acc
        for j = space
            acc = knn_classifier(W_Lp2DPCA(:,1:j),x_train,y_train,x_test,y_test);
            ACC_temp(i,j/interval) = acc;
        end
        end_time = clock;
        fprintf('This is the %d-th iteration of Lp-2-DPCA on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
    end
    ACC_Lp2DPCA = setfield(ACC_Lp2DPCA, strcat('p',erase(num2str(pi),'.')),ACC_temp);
end

%%% store classification accuracy of G2DPCA (s >= 1, p > 0)
ACC_G2DPCA = struct();
% set hyperparameter
s = linspace(1, 3, 11); 
p = linspace(0.9, 3, 8);
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of G2DPCA (s >= 1, p > 0)............ \n');
for si = s
    for pi = p
        fprintf('The iteration of G2DPCA (s = %f, p = %f) is processing...... \n', si, pi);
        ACC_temp = zeros(iterations,pcomp);
        for i = 1:iterations
            % prepare the dataset of train and test
            [trainIdx, testIdx] = train_test_split(data_path, ratio);   
            x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
            y_train = Y(trainIdx);                                             y_test = Y(testIdx);

            % compute principal components of Lp-2-DPCA
            start_time = clock;
            W_G2DPCA = G2DPCA(x_train, si, pi, maxDim);
            % acc
            for j = space
                acc = knn_classifier(W_G2DPCA(:,1:j),x_train,y_train,x_test,y_test);
                ACC_temp(i,j/interval) = acc;
            end
            end_time = clock;
            fprintf('This is the %d-th iteration of G2DPCA on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
        end
        ACC_G2DPCA = setfield(ACC_G2DPCA, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')),ACC_temp);
    end
end

%%% store classification accuracy of Capped 2DPCA-OM (k1 = 30, k2= 30, epislon)
ACC_Capped2DPCAOM = struct();
% set hyperparameter
epislon = [1.5, 2, 3, 5, 7, 10];
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of Capped 2DPCA-OM ............ \n');
for episloni = epislon
    fprintf('The iteration of Capped 2DPCA-OM (epislon = %f) is processing...... \n', episloni);
    ACC_temp = zeros(iterations,pcomp);
    for i = 1:iterations
        % prepare the dataset of train and test
        [trainIdx, testIdx] = train_test_split(data_path, ratio);   
        x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
        y_train = Y(trainIdx);                                             y_test = Y(testIdx);

        % compute principal components of Capped 2DPCA-OM
        start_time = clock;
        W_Capped2DPCAOM = Capped2DPCAOM(x_train, maxDim, maxDim, episloni);
        % acc
        for j = space
            acc = knn_classifier(W_Capped2DPCAOM(:,1:j),x_train,y_train,x_test,y_test);
            ACC_temp(i,j/interval) = acc;
        end
        end_time = clock;
        fprintf('This is the %d-th iteration of Capped 2DPCA-OM  on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
    end
    ACC_Capped2DPCAOM  = setfield(ACC_Capped2DPCAOM, strcat('epislon',erase(num2str(episloni),'.')),ACC_temp);
end

% %%% store classification accuracy of 2DPCA-2-Lp (s >= 1, p > 0)
% ACC_D2PCA2Lp = struct();
% % set hyperparameter
% s = linspace(1, 2.5, 6); 
% p = linspace(1.4, 2.4, 6);
% % loop hyperparameter
% fprintf('\nComputing the hyperparametrs of 2DPCA-2-Lp (s >= 1, p > 0)............ \n');
% for si = s
%     for pi = p
%         fprintf('The iteration of 2DPCA-2-Lp (s = %f, p = %f) is processing...... \n', si, pi);
%         ACC_temp = zeros(iterations,pcomp);
%         for i = 1:iterations
%             % prepare the dataset of train and test
%             [trainIdx, testIdx] = train_test_split(data_path, ratio);   
%             x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
%             y_train = Y(trainIdx);                                             y_test = Y(testIdx);
% 
%             % compute principal components of Lp-2-DPCA
%             start_time = clock;
%             W_D2PCA2Lp = D2PCA2Lp(x_train, maxDim, pi, si);
%             % acc
%             for j = space
%                 acc = knn_classifier(W_D2PCA2Lp(:,1:j),x_train,y_train,x_test,y_test);
%                 ACC_temp(i,j/interval) = acc;
%             end
%             end_time = clock;
%             fprintf('This is the %d-th iteration of 2DPCA-2-LP on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
%         end
%         ACC_D2PCA2Lp = setfield(ACC_D2PCA2Lp, strcat('s',erase(num2str(si),'.'),'_','p',erase(num2str(pi),'.')),ACC_temp);
%     end
% end

%%% store classification accuracy of FCPCA (0< p <=2 , c > 0)
ACC_FCPCA = struct();
% set hyperparameter
p = linspace(0.2, 2, 10);
c = [0.1, 0.5, 1, 5, 10];
% loop hyperparameter
fprintf('\nComputing the hyperparametrs of FCPCA (0< p <=2 , c > 0)............ \n');
for pi = p
    for ci = c
        fprintf('The iteration of FCPCA (p = %f, c = %f) is processing...... \n', pi, ci);
        ACC_temp = zeros(iterations, pcomp);
        for i = 1:iterations
            % prepare the dataset of train and test
            [trainIdx, testIdx] = train_test_split(data_path, ratio);   
            x_train = blocksaltpepperPollute(X(:, :, trainIdx), noise_size);   x_test = X(:, :, testIdx);
            y_train = Y(trainIdx);                                             y_test = Y(testIdx);

            % compute principal components of FCPCA
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
            W_FCPCA = FCPCA(x_train_vec, maxDim, pi, ci);
            % acc
            for j = space
                acc = knn_classifier_FCPCA(W_FCPCA(:,1:j),x_train_vec,y_train,x_test_vec,y_test);
                ACC_temp(i,j/interval) = acc;
            end
            end_time = clock;
            fprintf('This is the %d-th iteration of FCPCA on ORL_32X32, the elapsed time is %f s \n',i,etime(end_time,start_time));
        end
        ACC_FCPCA = setfield(ACC_FCPCA, strcat('p',erase(num2str(pi),'.'),'_','c',erase(num2str(ci),'.')),ACC_temp);
    end
end

save('.\result\ORL_10X10_hyperparameter','ACC_C2DPCA','ACC_2DPCATL1','ACC_Lp2DPCA','ACC_Capped2DPCAOM,'ACC_G2DPCA','ACC_D2PCA2Lp','ACC_FCPCA','space');


