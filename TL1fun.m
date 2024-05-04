function f = TL1fun(x,w,a)
% function£ºcompute the objective function value 2DPCA-TL1 at w 
% Author: Skywalker Yang; Date: 2020/06/24

[m,n,N] = size(x);
f = 0;

for i = 1:N
    for j = 1:m
        f = f+(a+1)*abs(x(j,:,i)*w)/(a+abs(x(j,:,i)*w));
    end
end

end
