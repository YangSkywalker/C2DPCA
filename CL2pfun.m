function f = CL2pfun(X,W, p, c)
% =========================================================================
% function: CL2pfun
% 
% Usage: f = CL2pfun(X,W)
%
% Input: X - data
%        W - the projection matrix
%        p, c - hypermarameter
%
% Output: f - the objective function value of C2DPCA
%
% Date: 2023/10/12;  
% =========================================================================

[m,n,N] = size(X);

f = 0;
for k = 1:N
    X_temp = X(:,:,k) - W * W' * X(:,:,k);
    for j = 1:n
        if norm(X_temp(:,j))^p <= c
            f = f + norm(X_temp(:,j))^p;
        else
            f = f + c;
        end
    end
end

end

