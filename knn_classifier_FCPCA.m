function Acc = knn_classifier_FCPCA(W,x_train,y_train,x_test,y_test)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% knn_classifier: find the nearest neighbor of x_test in x_train
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x_train_prj = W' * x_train;
x_test_prj = W' * x_test;
[IDX,~] = knnsearch(x_train_prj',x_test_prj','K',1);
pre_y_test = y_train(IDX,:);
Acc = sum(pre_y_test == y_test)/numel(y_test);


