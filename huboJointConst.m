WST = 0;
NKY = 1;
NKP = 2;
LSP = 3;
LSR = 4;
LSY = 5;
LEB = 6;
LWY = 7;
LWR = 8;
LWP = 9;

RSP = 11;
RSR = 12;
RSY = 13;
REB = 14;
RWY = 15;
RWR = 16;
RWP = 17;

LHY = 19;
LHR = 20;
LHP = 21;
LKN = 22;
LAP = 23;
LAR = 24;

RHY = 26;
RHR = 27;
RHP = 28;
RKN = 29;
RAP = 30;
RAR = 31;

%% Joint index values for matlab
WSTi = 0 + 1;
NKYi = 1 + 1;
NKPi = 2 + 1;
LSPi = 3 + 1;
LSRi = 4 + 1;
LSYi = 5 + 1;
LEBi = 6 + 1;
LWYi = 7 + 1;
LWRi = 8 + 1;
LWPi = 9 + 1;

RSPi = 11 + 1;
RSRi = 12 + 1;
RSYi = 13 + 1;
REBi = 14 + 1;
RWYi = 15 + 1;
RWRi = 16 + 1;
RWPi = 17 + 1;

LHYi = 19 + 1;
LHRi = 20 + 1;
LHPi = 21 + 1;
LKNi = 22 + 1;
LAPi = 23 + 1;
LARi = 24 + 1;

RHYi = 26 + 1;
RHRi = 27 + 1;
RHPi = 28 + 1;
RKNi = 29 + 1;
RAPi = 30 + 1;
RARi = 31 + 1;

%% sign for joints
sn = [];
sn(RSPi) = -1;
sn(REBi) = -1;

%% Joint Name
jn = {};		
jn{WSTi} = 'WST';
jn{NKYi} = 'NKY';
jn{NKPi} = 'NKP';
jn{LSPi} = 'LSP';
jn{LSRi} = 'LSR';
jn{LSYi} = 'LSY';
jn{LEBi} = 'LEB';
jn{LWYi} = 'LWY';
jn{LWRi} = 'LWR';
jn{LWPi} = 'LWP';

jn{RSPi} = 'RSP';
jn{RSRi} = 'RSR';
jn{RSYi} = 'RSY';
jn{REBi} = 'REB';
jn{RWYi} = 'RWY';
jn{RWRi} = 'RWR';
jn{RWPi} = 'RWP';

jn{LHYi} = 'LHY';
jn{LHRi} = 'LHR';
jn{LHPi} = 'LHP';
jn{LKNi} = 'LKN';
jn{LAPi} = 'LAP';
jn{LARi} = 'LAR';

jn{RHYi} = 'RHY';
jn{RHRi} = 'RHR';
jn{RHPi} = 'RHP';
jn{RKNi} = 'RKN';
jn{RAPi} = 'RAP';
jn{RARi} = 'RAR';

jointMax = 32;
