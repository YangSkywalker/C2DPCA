function f = CappedOMfun(A, U, V, M)
% =========================================================================
% function: Capped2DPCAOM
% 
% Usage: [U, V] = Capped2DPCAOM(A, k1, k2)
%
% Input: A - data
%        k1 - the number of column of U
%        k2 - the number of column of V
% Output: U, V - projection matrix
%
% Reference: Rui Zhang, Feiping Nie, and Xuelong Li, Auto-weighted
%            two-dimensional principal component analysis with robust outliers, 
%            2017 IEEE International Conference on Acoustics, Speech and Signal 
%            Processing (ICASSP)
%
% Date: 2023/10/14;   
% =========================================================================


[m, n, L] = size(A);
f = 0;
for i = 1:L
    f = f + norm(A(:,:,i) - M - U * U' * (A(:,:,i) - M) * V * V', 'fro');
end



