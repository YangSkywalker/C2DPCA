function [W] = D2PCATL1(x,d,a)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D2PCATL1: The TL1-norm PCA for two-dimensional data.
%
% Useage: [W] = D2PCATL1(x,d,a)
% 
% Input: x - matrix data
%        d - number of projection vectors
%        a - a positive parameter(a>0)
%
% Output: W - transfer matrix
%
% Author: Skywalker Yang; Date: 2020/06/23
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[m,n,N] = size(x);  
W=[];
maxIter = 500;
tol = 1e-6;

% centralization 
mean_x = mean(x,3);
for i = 1:N
    x(:,:,i) = x(:,:,i) - mean_x;
end

for l = 1:d
    w0 = rand(n,1); w0 = w0/norm(w0);
    theta0 = rand(1)*pi/2;
%     fprintf('----%d-th------\n',l);
%     fprintf('%d\t%10.8f\n',0,TL1fun(x,w0,a));
    for k = 1:maxIter
        % compute gradient
        gradf = zeros(n,1);
        for i = 1:N
            for j = 1:m
                gradf = gradf+a*(a+1)*sign(x(j,:,i)*w0)*x(j,:,i)'/(a+abs(x(j,:,i)*w0))^2;
            end
        end
        
        g = gradf-(gradf'*w0)*w0;  g0=g/norm(g);
        while 1
            w1 = w0*cos(theta0) + g0*sin(theta0);
            if(TL1fun(x,w1,a)>=TL1fun(x,w0,a))
                break;
            end
            theta0=theta0/2;
        end
%         fprintf('%d\t%10.8f\n',k,TL1fun(x,w1,a));
        %  update theta1
        theta1 = min(theta0*2,pi/2);
        if(TL1fun(x,w1,a) - TL1fun(x,w0,a) < tol)
            break;
        end
        theta0 = theta1;
        w0 = w1;
    end
    W(:,l) = w1;
    for i = 1:N
        x(:,:,i) = x(:,:,i) - x(:,:,i)*w1*w1';
    end
end  
% disp('2DPCATL1 finished');
end
