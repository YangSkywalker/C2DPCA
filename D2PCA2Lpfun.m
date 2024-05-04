function f = D2PCA2Lpfun(X, w, s)
% =========================================================================
% function: D2PCA2Lpfun
% 
% Usage: f = D2PCA2Lpfun(X, W, s)
%
% Input: X - matrix data
%        W - the projection matrix
%        s - hyperparameter
% Output: f - the objective value
%
% Reference: Huanxing Zhang, Hongxu Bi, Xiaofeng Wang, Peng Zhang, A joint- 
%            norm distance metric 2DPCA for robust dimensionality reduction,
%            Information Sciences,Vol.640,2023.
%
% Date: 2023/10/17;   
% =========================================================================

[h, m, n] = size(X);    % h - the row of image data, m - the column of image data
                        % n - the number of samples

f = 0;
for i = 1:n
    for j = 1:h
        f = f + abs(X(j,:,i) * w)^s / norm(X(j,:,i))^s;
    end
end

