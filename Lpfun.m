function f = Lpfun(X, W, B, p)
% =========================================================================
% function: Lpfun
% 
% Usage: y = Lpfun(X, W, B)
%
% Input: X - matrix data
%        W - the projection matrix
%        B - unknown sample mean
% Output: y - the objective value
%
% Reference: Jian-Xun Mi,Ya-Nan Zhang, Yong Li, Yu-Cheng Shu, Generalized 
%            two?dimensional PCA based on ?2,p?norm minimization, International
%            Journal of Machine Learning and Cybernetics(2020)11:2421¨C2438.
%
% Date: 2023/10/14;   
% =========================================================================

[~, ~, N] = size(X);

f = 0;
for k = 1:N
    f = f + norm(X(:,:,k) - B - (X(:,:,k) - B) * W * W', 'fro')^p;
end








