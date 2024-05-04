function [U, V] = Capped2DPCAOM(A, k1, k2, epsilon)
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
max_iter = 200;         % the number of maximum iteration 
tol = 1e-6;              % tolerance 

f_obj = [];             % the objective value
w0 = ones(1, L);        % initial w
V0 = orth(rand(m,k2));  % initial V
% loop iteration
for iter = 1:max_iter
    %%% compute M
    M = zeros(m, n);
    M_numerator = 0;
    for i = 1:L
        M = M + w0(i) * A(:,:,i);
        M_numerator = M_numerator + w0(i);
    end
    M = M / M_numerator;
    
    %%% compute P1
    P1 = zeros(m, m);
    for i = 1:L
        P1 = P1 + w0(i) * (A(:,:,i) - M) * V0 * V0' * (A(:,:,i) - M)';
    end
    
    %%% compute U
    [U, ~] = eig(P1);
    U = U(:, 1:k1);
    
    %%% compute P2
    P2 = zeros(n,n);
    for i = 1:L
        P2 = P2 + w0(i) * (A(:,:,i) - M)' * U * U' * (A(:,:,i) - M);
    end
    
    %%% compute V
    [V, ~] = eig(P2);
    V = V(:, 1:k2);
    
    %%% update w
    for i = 1:L
        if norm(A(:,:,i) - M - U * U' * (A(:,:,i) - M) * V * V', 'fro') <= epsilon
            w(i) = 1 / (2 * norm(A(:,:,i) - M - U * U' * (A(:,:,i) - M) * V * V', 'fro') + eps);
        else
            w(i) = 0;
        end
    end
    
    %%% stop criterion 
    f_obj(iter) = CappedOMfun(A, U, V, M);
    if iter > 1
        % criterion
        if abs(f_obj(iter) - f_obj(iter - 1)) < tol
            break
        end
    end
    
    %%% update V and w
    w0 = w; 
    V0 = V;  
end

end







