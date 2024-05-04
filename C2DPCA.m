function [W]=C2DPCA(X,dim, p, c)

% C2DPCA: Capped L2,p-norm 2DPCA
% 
% Usage: [W]=C2DPCA(X,dim)
%
% Input: X - matrix data
%        dim - the number of projection vectors
%
% Output: W - projection matrix
%
% Date: 2021/09/03

W =[];
[m, n, N] = size(X);   % m - the row of image data, n - the column of image data
                       % N - the number of samples
max_iter = 200;
mean_x = mean(X, 3);
tol = 1e-6

% data centralization
for i = 1:N
    X(:,:,i) = X(:,:,i) - mean_x;
end

% loop iteration
% initialize W  
[W0,~,~] = svd(randn(m,m)); W0 = W0(:,1:dim);
for k = 1:max_iter
    % compute the diagonal matrix V
    
    % compute the matrix XVX'
    
    % solve the next W1
    
    % stop criterion
    if fobj1 - fobj2 <tol
        break
    end
    W0 = W1
end
W = W1






