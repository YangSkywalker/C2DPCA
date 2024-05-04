function  [W] = L12DPCA(x,dim)  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% L12DPCA: The L1-norm PCA for two-dimensional data.
% 
% Useage: [W] = L12DPCA(X,dim)
% 
% Input :   x - matrix data
%         dim - number of projection vectors
%
% Output: W - transfer matrix
% 
% Reference: Xuelong Li, Yanwei Pang, and Yuan Yuan, "L1-norm-Based 2DPCA",
%            IEEE Transactions on Systems, Man, and Cybernetics.
%
% Author: Xiangfei Yang; Date: 2020/06/26.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

W = [];
[m,n,N] = size(x); 
tol = 1e-6;
maxiter = 200; 
mean_x = mean(x,3);

% centralization
for i = 1:N
    x(:,:,i) = x(:,:,i) - mean_x;   
end

for loop = 1:dim 
%     fprintf('----%d-th------\n',loop);
    
    % initlize w
    w0 = rand(n,1); w0 = w0/norm(w0);
    
%     fprintf('%d\t%10.8f\n',0,L1fun(x,w0));
    for k = 1:maxiter
        % compute poliarity function p
        p = [];
        for i = 1:N
            p(i,:) = sign(x(:,:,i)*w0);
            p(i,find(p(i,:)<=0)) = -1;
        end
        
        % compute w1
        px = zeros(n,1); % temp variable
        for i = 1:N
            for j = 1:m
                px = px + p(i,j)*x(j,:,i)';
            end
        end
        w1 = px./norm(px);
%         fprintf('%d\t%10.8f\n',k,L1fun(x,w1));
        
        if(L1fun(x,w1) - L1fun(x,w0)<1e-6)
            break;
        end
        
        w0 = w1;
    end
    W = [W,w1];
    
    % Makesure the projections are orthogonal to each other
    for i = 1:N
        x(:,:,i) = x(:,:,i)-x(:,:,i)*w1*w1';  
    end
end
