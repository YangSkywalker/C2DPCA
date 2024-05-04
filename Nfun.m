function y = Nfun(A, P)

[m,n,s] = size(A);

y = 0;  X=[];
for i = 1:s
    X(:,:,i) = A(:,:,i) - A(:,:,i)*P*P';
    y = y + norm((X(:,:,i)*X(:,:,i)')^(-1/4)*X(:,:,i),'fro')^2;
end