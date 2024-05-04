function [trainIdx, testIdx] = train_test_split(data_path, ratio)
% =========================================================================
% function: train_test_split
%
% Usage: [trainIdx, testIdx] = train_test_split(data_path, ratio)
%
% Input: data_path - the data path of data
%        ratio - the ratio of train set and test set
%
% Output: trainIndx - the index of train set
%         testIndx - the index of test set
% 
% Date: 2023/10/15;
% =========================================================================


if nargin == 1
    ratio = 0.7;
end

load(data_path)
img_num=length(Y);
imgType=cell(length(unique(Y)),1);
for i=1:img_num
    imgType{Y(i)}(length(imgType{Y(i)})+1)=i;
end

trainIdx=[]; testIdx=[];
for j=1:length(unique(Y))
    train_Idx=randperm(length(imgType{j}),round(length(imgType{j})*ratio));
    Type_scope=[1:length(imgType{j})]; Type_scope(train_Idx)=[];
    test_Idx=Type_scope;
    trainIdx((length(trainIdx)+1): (length(trainIdx)+length(train_Idx)))=imgType{j}(train_Idx);
    testIdx((length(testIdx)+1): (length(testIdx)+length(test_Idx)))=imgType{j}(test_Idx);
end
trainIdx=trainIdx';
testIdx=testIdx';


end