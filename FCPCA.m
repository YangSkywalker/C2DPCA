function [W]=FCPCA(X, d, p, c)
% =========================================================================
% function: FCPCA
% 
% Usage: [W]=FCPCA(X, d, p, c)
%
% Input: X - matrix vector
%        dim - the number of projection vectors
%
% Output: W - projection matrix
%
% Date: 2023/10/13;   
% =========================================================================

max_iter = 200;          % the number of maximum iteration 
tol = 1e-6;              % tolerance 
[m, n] = size(X);        % M - the row of vector
                         % N - the number of samples

mean_x = mean(X, 2);    % sample mean
% data centralization
X = X - mean_x * ones(1,n);

% loop iteration
W0 = orth(rand(m,d)); 
for iter = 1:max_iter
    %%% compute the diagonal matrix of X
    X_temp = X - W0 * W0' * X;
    V = zeros(n, n);
    for j = 1:n
        if norm(X_temp(:,j))^p <= c
            V(j, j) = (p / 2) * (1 / (norm(X_temp(:,j))^(2-p) + eps));
        else
            V(j, j) = 0;
        end
    end
    
    
    %%% compute the projection matrix
    [W, V] = eig(X * V * X');
    W = real(W); W = W(:,1:d);
    
    %%% stop criterion
    if abs(FCfun(X, W0, p, c) - FCfun(X, W, p, c)) <tol
        break
    end

    %%% update W
    W0 = W;
end

end



