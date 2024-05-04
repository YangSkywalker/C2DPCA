function W = D2PCA2Lp(X, k, p, s)
% =========================================================================
% function: D2PCA2Lp
% 
% Usage: W = D2PCA2Lp(X, k, p, s)
%
% Input: X - matrix data
%        k - the number of projection vectors
%        p, s - hyperparameter
% Output: W - projection matrix
%
% Reference: Huanxing Zhang, Hongxu Bi, Xiaofeng Wang, Peng Zhang, A joint- 
%            norm distance metric 2DPCA for robust dimensionality reduction,
%            Information Sciences,Vol.640,2023.
%
% Date: 2023/10/14;   
% =========================================================================


max_iter = 50;         % the number of maximum iteration 
tol = 1e-6;             % tolerance 
[h, m, n] = size(X);    % h - the row of image data, m - the column of image data
                        % n - the number of samples
                     
W = [];
for d = 1:k
    wd0 = randn(m, 1); wd0 = wd0 / norm(wd0, p);   % initial w
    for iter = 1:max_iter
        %%% update v
        v = zeros(m, 1);
        for i = 1:n
            for j = 1:h
                v = v + X(j,:,i)' * abs(X(j,:,i) * wd0)^(s-1) * sign(X(j,:,i) * wd0) / (norm(X(j,:,i))^s + eps);
            end
        end
        %%% update wd
        if p > 1
            q = p / (p - 1);
            wd = abs(v).^(q-1) .* sign(v) / (norm(v) + eps);
        else
            wd = abs(wd0).^(2-p) .* v / (norm(abs(wd0).^(2-p) .* v, p) + eps);
        end
        wd = wd / (norm(wd, p) + eps);
        %%% stop criterion
        if abs(D2PCA2Lpfun(X, wd, s) - D2PCA2Lpfun(X, wd0, s)) < tol
            break;
        end
    end
    
    %%% Update W
    W = [W, wd];
    
    %%% update data X
    for i = 1:n
        X(:,:,i) = X(:,:,i) * (eye(m) - wd * wd');
    end
end









