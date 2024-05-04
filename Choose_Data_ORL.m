%  ========================================================================
%% Choose the data of ORL
% C2DPCA: p2c85  Lp-2-DPCA: p1;  G2DPCA: s16p15; FCPCA: p11c4; Capped 2DPCA-OM: epsilon05; 2DPCA-2-Lp: s1p19
clear all; clc

load('./result/ORL_Orignal_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p2_c85');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon05');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c4');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's16_p15');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p1');                  ACC_Lp2DPCA = temp;

save('./result/ORL_Orignal','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')


%% Choose the data of ORL_Noise16
% C2DPCA:p06c05  Lp-2-DPCA: p1  G2DPCA: s3p21   FCPCA: p11c1    Capped 2DPCA-OM: epsilon75   2DPCA-2-Lp: s1p19
clear all; clc

load('./result/ORL_16X16_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p06_c05');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon75');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c1');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's3_p21');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p1');                  ACC_Lp2DPCA = temp;

save('./result/ORL_16X16','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%% Choose the data of ORL_Noise23
% C2DPCA: p02c01  Lp-2-DPCA:p06  G2DPCA: s3p18  FCPCA: p11c4   Capped 2DPCA-OM: epsilon10   2DPCA-2-Lp: s175p19
clear all; clc

load('./result/ORL_23X23_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p02_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon10');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c4');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's175_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's3_p18');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p06');                  ACC_Lp2DPCA = temp;

save('./result/ORL_23X23','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')


%  ========================================================================
%% Choose the data of Yale
% C2DPCA: p16c01   Lp-2-DPCA: p08  G2DPCA: s1p12    FCPCA: p11c7    Capped 2DPCA-OM: epsilon75    2DPCA-2-Lp:s175p14 
clear all; clc

load('./result/Yale_Orignal_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p16_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon75');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's175_p14');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's1_p12');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p08');                  ACC_Lp2DPCA = temp;

save('./result/Yale_Orignal','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')


%% Choose the data of Yale_Noise16
% C2DPCA: p16c6   Lp-2-DPCA: p02  G2DPCA: s24p12    FCPCA: p02c1   Capped 2DPCA-OM: epsilon7  2DPCA-2-Lp: s1p14   
clear all; clc

load('./result/Yale_16X16_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p16_c6');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon7');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p02_c1');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p14');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's24_p12');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p02');                  ACC_Lp2DPCA = temp;

save('./result/Yale_16X16','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%% Choose the data of Yale_Noise23
% C2DPCA: p04c01   Lp-2-DPCA: p02  G2DPCA: s18p18    FCPCA: p2c1   Capped 2DPCA-OM: epsilon9    2DPCA-2-Lp:s25p19 
clear all; clc

load('./result/Yale_23X23_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p04_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon9');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p2_c1');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's25_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's18_p18');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p02');                  ACC_Lp2DPCA = temp;

save('./result/Yale_23X23','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%  ========================================================================
%% Choose the data of Jaffe
% C2DPCA: p06c6   Lp-2-DPCA: p1  G2DPCA: s12p09    FCPCA: p11c7   Capped 2DPCA-OM: epsilon55   2DPCA-2-Lp: s175p24 
clear all; clc

load('./result/Jaffe_Orignal_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p06_c6');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon55');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's175_p24');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's12_p09');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p1');                  ACC_Lp2DPCA = temp;

save('./result/Jaffe_Orignal','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')


%% Choose the data of Jaffe_Noise16
% C2DPCA:p04c01    Lp-2-DPCA: p08  G2DPCA: s18p21    FCPCA: p11c7   Capped 2DPCA-OM: epsilon95   2DPCA-2-Lp: s1p19
clear all; clc

load('./result/Jaffe_16X16_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p04_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon95');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's18_p21');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p08');                  ACC_Lp2DPCA = temp;

save('./result/Jaffe_16X16','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%% Choose the data of Jaffe_Noise23
% C2DPCA: p04c01   Lp-2-DPCA: p06  G2DPCA:  s24p09   FCPCA: p11c4    Capped 2DPCA-OM: epsilon9   2DPCA-2-Lp: s175p19
clear all; clc

load('./result/Jaffe_23X23_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p04_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon9');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c4');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's175_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's24_p09');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p06');                  ACC_Lp2DPCA = temp;

save('./result/Jaffe_23X23','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%  ========================================================================
%% Choose the data of Coil20
% C2DPCA:p04c8    Lp-2-DPCA: p06   G2DPCA: s28p24    FCPCA: p11c7   Capped 2DPCA-OM: epsilon8   2DPCA-2-Lp: s1p14
clear all; clc

load('./result/Coil20_Orignal_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p04_c8');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon8');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p11_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p14');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's28_p24');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p06');                  ACC_Lp2DPCA = temp;

save('./result/Coil20_Orignal','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')


%% Choose the data of Coil20_Noise16
% C2DPCA: p16c8   Lp-2-DPCA: p18  G2DPCA: s28p18    FCPCA: p02c7   Capped 2DPCA-OM: epsilon75   2DPCA-2-Lp: s25p19
clear all; clc

load('./result/Coil20_16X16_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p16_c8');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon75');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p02_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's25_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's28_p18');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p18');                  ACC_Lp2DPCA = temp;

save('./result/Coil20_16X16','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')

%% Choose the data of Coil20_Noise23
% C2DPCA: p02c01   Lp-2-DPCA: p18  G2DPCA: s3p18    FCPCA: p02c7   Capped 2DPCA-OM: epsilon9   2DPCA-2-Lp: s1p19
clear all; clc

load('./result/Coil20_23X23_hyperparameter.mat')

% take the data corresponding to the best parameter
temp = getfield(ACC_C2DPCA, 'p02_c01');               ACC_C2DPCA = temp;
temp = getfield(ACC_Capped2DPCAOM, 'epsilon9');     ACC_Capped2DPCAOM = temp;
temp = getfield(ACC_FCPCA, 'p02_c7');                ACC_FCPCA = temp;
temp = getfield(ACC_D2PCA2Lp, 's1_p19');             ACC_D2PCA2Lp = temp;
temp = getfield(ACC_G2DPCA, 's3_p18');              ACC_G2DPCA  = temp;
temp = getfield(ACC_Lp2DPCA, 'p18');                  ACC_Lp2DPCA = temp;

save('./result/Coil20_23X23','ACC_C2DPCA', 'ACC_Capped2DPCAOM', 'ACC_FCPCA', 'ACC_D2PCA2Lp', 'ACC_G2DPCA', 'ACC_Lp2DPCA', 'space')



