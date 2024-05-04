function f = L1fun(x,w)
% L1fun: compute the objective function value 2DPCA-L1 at w 
% Author: Xiangfei Yang; Date: 2020/06/26

[m,n,N] = size(x);
f = 0;

for i = 1:N
    for j = 1:m
        f = f+abs(x(j,:,i)*w);
    end
end

end
