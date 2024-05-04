function [V] = A2DPCA(A,k)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A2PCA: The angle F-norm PCA for two-dimensional data.
%
% useage: [V] = A2DPCA(A,k)
%
% Input:  A - matrix data
%         k - number of projection vectors
%
% Output: V - transfer matrix
%
% Reference: Quanxue Gao, Lan Ma, Yang Liu, Xinbo Gao and Feiping Nie,"Angle
%            2DPCA: A New Formulation for 2DPCA", TC.
%
% Author: Xiangfei Yang; Date: 2020/06/27
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[m,n,N] = size(A);
V0 = orth(rand(n,k));
maxiter = 200;

% centralization 
mean_A = mean(A,3);
for i = 1:N
    A(:,:,i) = A(:,:,i) - mean_A;
end

for loop = 1:maxiter
    % calculate d(i)
    d = [];
    for i = 1:N
        d(i) = 1/(norm(A(:,:,i)*V0,'fro')*norm(A(:,:,i)-A(:,:,i)*V0*V0','fro'));
    end
    
    % calculate H
    Gv = zeros(n,n);
    for i = 1:N
        Gv = Gv + A(:,:,i)'*A(:,:,i)*d(i);
    end
    H = Gv*V0;
    [U,sigma,W] = svd(H,'econ');
    V1 = U*W';
    
%     fprintf('%d\t%10.8f\n',loop,Afun(A,V1));
    if(abs(Afun(A,V0)-Afun(A,V1))<1e-6)
        break;
    end
    
    V0 = V1;
end
V = V1;


