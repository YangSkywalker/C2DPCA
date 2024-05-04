function [W] = D2PCA(X,dim)  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D2PCA: The L2-norm PCA for two-dimensional data.
%
% useage: [W] = D2PCA(X,dim) 
%
% Input: X - matrix data
%        dim - number of projection vectors
%
% Output: W - transfer matrix
%
% Reference: Jian Yang, David Zhang, A.F. Frangi and Jing-Yu Yang, "Two-
%            Dimensional PCA: A New Approach to Appearance-Based Face 
%            Representation and Recognition", TPAMI.
%
% Author: Xiangfei Yang; Date: 2020/06/26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

d = size(X,2);
N = size(X,3);
meanX=mean(X,3);%mean of matrices
%compute covariance matrix Cx
Sn=zeros(d,d);
for i=1:N
    ntemp=X(:,:,i)-meanX;
    Sn=Sn+ntemp'*ntemp;
end
Sn=Sn/N;

[W,D]=eig(Sn); 
D=diag(D);
eigIdx1 = find(D < 1e-4);
eigIdx2 = find(D == Inf);
eigIdx = [eigIdx1;eigIdx2];
D(eigIdx2) = [];
W(:,eigIdx2) = [];
[~, index] = sort(-D);
W = W(:,index);
D= D(index);
W = W(:,1:dim); 



