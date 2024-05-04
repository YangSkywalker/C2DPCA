function y = Afun(A,V)

y = 0;
[m,n,N] = size(A);
for i =1:N
    y = y + norm(A(:,:,i) - A(:,:,i)*V*V','fro')/norm(A(:,:,i)*V,'fro');
end
