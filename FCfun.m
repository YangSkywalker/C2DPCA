function f = FCfun(X, W, p, c)

% =========================================================================
% function: FCfun
% 
% Usage: f = FCfun(X, W, p, c)
%
% Input: X - matrix vector
%        W - projection matrix
%        p, c - hypermarameter
%
% Output: f - the objective value
%
% Date: 2023/10/13;   
% =========================================================================

[m, n] = size(X);

f = 0;
X_temp = X - W * W' * X;
for i = 1:n
    if norm(X_temp(:,i))^p <= c
        f = f + norm(X_temp(:,i))^p;
    else
        f = f + c;
    end
end

end

