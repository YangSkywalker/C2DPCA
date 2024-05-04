function W = Lp2DPCA(X, dim, p)
% =========================================================================
% function: Lp2DPCA
% 
% Usage: W = Lp2DPCA(X, d, p)
%
% Input: X - matrix data
%        dim - the number of projection vectors
%        p - hyperparameter
% Output: W - projection matrix
%
% Reference: Jian-Xun Mi,Ya-Nan Zhang, Yong Li, Yu-Cheng Shu, Generalized 
%            two-dimensional PCA based on L2,p-norm minimization, International
%            Journal of Machine Learning and Cybernetics(2020)11:2421¨C2438.
%
% Date: 2023/10/14;   
% =========================================================================


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
W0 = orth(rand(m,dim));   % initial W
B0 = rand(m, n);        % initial B
for iter = 1:max_iter
    %%% compute d 
    d = zeros(N, 1);
    for i = 1:N
        d(i) = 1 / (norm(X(:,:,i) - B0 - (X(:,:,i) - B0) * W0 * W0', 'fro')^(2-p) + eps);
    end
    
    %%% update B
    B = zeros(m, n);
    B_numerator = 0;
    for i = 1:N
        B = B + d(i) * X(:,:,i);
        B_numerator = B_numerator + d(i);
    end
    B = B / B_numerator;
    
    %%% compute L
    L = zeros(n, n);
    for i = 1:N
        L = L + d(i) * (X(:,:,i) - B)' * (X(:,:,i) - B);
    end
    
    %%% compute W
    [W, V] = eig(L);
    W = W(:,1:dim);
    
    %%% stop criterion
    if abs(Lpfun(X,W0,B0,p) - Lpfun(X,W,B,p)) < tol
        break
    end
    
    %%% update W and B
    W0 = W;
    B0 = B;
end

end













