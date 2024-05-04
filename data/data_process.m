%% Coil4_64
clear all; clc
file_path = 'D:\2 Robust MultiViewDA\data\coil-20\16119029coil-20-proc\coil-20-proc';
% file_path = 'D:\0 研究方向探索\4 TL1-2DPCA\2Ddata(no face)\2Ddata(no face)\Coil100';
Coil = dir(file_path);
Coil1 = {Coil.name}; Coil = Coil1(3:end)';
for i=1:size(Coil)
    Coil{i}=strcat('D:\2 Robust MultiViewDA\data\coil-20\16119029coil-20-proc\coil-20-proc\',Coil{i});
end
k=0;
for i=1:size(Coil)
    if(mod(i-1,72)==0)
        k=k+1;
    end
    X(:,:,i)=imresize(imread(Coil{i}),0.25); 
    Y(i)=k;
end
Y=Y';
save('Coil20_32X32.mat','X','Y')



%% YaleB
clear all; clc
load('YaleB_32x32.mat')
Y=gnd;
X=[];
for i=1:2414
    X(:,:,i)=reshape(fea(i,:),32,32);
end
save('YaleB.mat','X','Y')

%% Coil20_32
clear all; clc
file_path = 'D:\2 Robust MultiViewDA\data\coil-20\16119029coil-20-proc\coil-20-proc';
Coil = dir(file_path);
Coil1 = {Coil.name}; Coil = Coil1(3:end)';
for i=1:size(Coil)
    Coil{i}=strcat('D:\0 研究方向探索\4 TL1-2DPCA\2Ddata(no face)\2Ddata(no face)\Coil100\',Coil{i});
end
k=0;
for i=1:1440
    if(mod(i-1,72)==0)
        k=k+1;
    end
    X(:,:,i)=imresize(rgb2gray(imread(Coil{i})),0.5); 
    Y(i)=k;
end
Y=Y';
save('Coil20_32X32.mat','X','Y')

%% Coil20_32X32  处理数据
clear all; clc
file_path = 'D:\2 Robust MultiViewDA\data\coil-20\16119029coil-20-proc\coil-20-proc';
% 文件路径
% 加载图片，包括图片名和路径
image_png = dir(fullfile(file_path,'*.png'));
image_names = {image_png.name}';
% 提取数字
ind = zeros(1440,2);
for i = 1:1440
    qian = strfind(image_names{i},'j');
    zhong = strfind(image_names{i},'_');
    hou = strfind(image_names{i},'.');
    ind(i,1) = str2num(image_names{i}((qian+1):(zhong(1)-1)));
    ind(i,2) = str2num(image_names{i}((zhong(2)+1):(hou-1)));
end
% 排序
for i = 1:20
    for j = 0:71
        index((i-1)*72+j+1) = find(ind(:,1)==i&ind(:,2)==j);
    end
end
% 拼接路径
for i=1:size(image_names)
    Coil{i}=strcat('D:\2 Robust MultiViewDA\data\coil-20\16119029coil-20-proc\coil-20-proc\',image_names{index(i)});
end
% 提取像素点
k=0;
for i=1:1440
    if(mod(i-1,72)==0)
        k=k+1;
    end
%     X(:,:,i) = imread(Coil{i});
%     Y(i)=k;
    X(:,:,i)=imresize(imread(Coil{i}),0.25); 
    Y(i)=k;
   
end
Y=Y';
save('Coil20_32X32','X','Y')
%%
clear all;clc
load('Coil20_32X32.mat')
for i = 1:1440
    imshow(X(:,:,i))
    i
end



%% Coil100
clear all; clc
load('Coil100.mat')
k = 0;
for i = 1:7200
    X(:,:,i)=reshape(data(:,i),128,128);
%     X1(:,:,i)=imresize(reshape(data(:,i),128,128),0.5);
%     X2(:,:,i)=imresize(reshape(data(:,i),128,128),0.25);
    if(mod(i-1,72)==0)
        k=k+1;
    end    
    Y(i)=k;
    i
end
Y = Y';
save('Coil100_128X128','X','Y')
% X=X1; save('Coil100_64X64','X','Y')
% X=X2; save('Coil100_32X32','X','Y')
%%
clear all; clc
load('Coil100_128X128.mat')
for i = 1:7200
    imshow(double(X(:,:,i)/255))
    i
end









