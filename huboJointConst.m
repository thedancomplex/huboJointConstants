WST = 0;
NKY = 1;
NKP = 2;
NK1 = NKP;
NK2 = NKP;
LSP = 3;
LSR = 4;
LSY = 5;
LEB = 6;
LWY = 7;
LWR = 8;
LWP = 9;
LW1 = LWP;
LW2 = LWR;

RSP = 11;
RSR = 12;
RSY = 13;
REB = 14;
RWY = 15;
RWR = 16;
RWP = 17;
RW1 = RWP;
RW2 = RWR;

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

RHN = 70;

%% Joint index values for matlab
WSTi = 0 + 1;
NKYi = 1 + 1;
NKPi = 2 + 1;
NK1i = NK1+1;
NK2i = NK2+1;
LSPi = 3 + 1;
LSRi = 4 + 1;
LSYi = 5 + 1;
LEBi = 6 + 1;
LWYi = 7 + 1;
LWRi = 8 + 1;
LWPi = 9 + 1;
LW1i = LWRi;
LW2i = LWPi;

RSPi = 11 + 1;
RSRi = 12 + 1;
RSYi = 13 + 1;
REBi = 14 + 1;
RWYi = 15 + 1;
RWRi = 16 + 1;
RWPi = 17 + 1;
RW1i = RWRi;
RW2i = RWPi;



LHYi = 19 + 1;
LHRi = 20 + 1;
LHPi = 21 + 1;
LKNi = 22 + 1;
LAPi = 23 + 1;
LARi = 24 + 1;

RHYi = 26 + 1;
RHRi = 27 + 1;
RHPi = 28 + 1;
RKNi = RKN + 1;
RAPi = 30 + 1;
RARi = 31 + 1;
RHNi = RHN + 1;

%% sign for joints
sn = [];
sn(RSPi) = -1;
sn(REBi) = -1;





%% Joint motor controller numbers
jmcM = [];
jmcM(RHYi) 	=	0;
jmcM(RHRi)	=	0;
jmcM(RHPi)	=	1;
jmcM(RKNi)	=	2;
jmcM(RAPi)	=	3;
jmcM(RARi)	=	3;
jmcM(LHYi)	=	4;
jmcM(LHRi)	=	4;
jmcM(LHPi)	=	5;
jmcM(LKNi)	=	6;
jmcM(LAPi)	=	7;
jmcM(LARi)	=	7;
jmcM(RSPi)	=	8;
jmcM(RSRi)	=	8;
jmcM(RSYi)	=	9;
jmcM(REBi)	=	9;
jmcM(LSPi)	=	hex2dec('A');
jmcM(LSRi)	=	hex2dec('A');
jmcM(LSYi)	=	hex2dec('B');
jmcM(LEBi)	=	hex2dec('B');
jmcM(WSTi)	=	hex2dec('23');
jmcM(RWYi)	=	hex2dec('20');
jmcM(RW1i)	=	hex2dec('20');
jmcM(RW2i)	=	hex2dec('20');
jmcM(LWYi)	=	hex2dec('21');
jmcM(LW1i)	=	hex2dec('21');
jmcM(LW2i)	=	hex2dec('21');
jmcM(NKYi)	=	hex2dec('22');
jmcM(NK1i)	=	hex2dec('22');
jmcM(NK2i)	=	hex2dec('22');




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
jn{RHNi} = 'RHN';

jointMax = 100;
jn{jointMax} 	=	'FRM';


%% Motor controller and paired with their joints
jmc = [,];
jmcN = [];
jmc(1,:) 		= 	[ RHY, RHR ];
jmcN(1)			=	2;
jmc(2,:) 		= 	[ RHP ];
jmcN(2)			=	1;
jmc(3,:)		=	[ RKN ];
jmcN(3)			=	1;
jmc(4,:)		=	[ RAP, RAR ];
jmcN(4)			=	2;
jmc(5,:)		=	[ LHY, LHR ];
jmcN(5)			=	2;
jmc(6,:)		=	[ LHP ];
jmcN(6)			=	1;
jmc(7,:)		=	[ LKN ];
jmcN(7) 		= 	1;
jmc(8,:)		=	[ LAP, LAR ];
jmcN(8)			=	2;
jmc(9,:)		=	[ RSP, RSR ];
jmcN(9)			=	2;
jmc(10,:)		=	[ RSY, REB ];
jmcN(10)		=	2;
jmc(11,:)		=	[ LSP, LSR ];
jmcN(11)		=	2;
jmc(12,:)		=	[ LSY, LEB ];
jmcN(12)		=	2;

tnum 			=  	hex2dec('20')+1;
jmc(tnum,1)		=	RWY;
jmc(tnum,2)		=	RW1;
jmc(tnum,3)		=	RW2;
jmcN(tnum)		=	3;
tnum 			=  	hex2dec('21')+1;
jmc(tnum,:)		=	[ LWY, LW1, LW2 ];
jmcN(tnum)		=	3;
tnum 			=  	hex2dec('22')+1;
jmc(tnum,:)		=	[ NKY, NK1, NK2 ];
jmcN(tnum)		=	3;


tnum			=	hex2dec('23')+1;
jmc(tnum,:)		=	WST;
jmcN(tnum)		=	1;

jmc(jointMax,1)		=	0;
jmcN(jointMax)		=	0;

%% enc2aces Direction
enc2acesDir 		=	[];
enc2acesDir(REBi)	=	-1;
enc2acesDir(RSPi)	=	1;
enc2acesDir(RSYi)	=	-1;
enc2acesDir(RSRi)	=	1;
enc2acesDir(LSRi)	=	1;
enc2acesDir(LSPi)	=	-1;
enc2acesDir(LEBi)	=	1;
enc2acesDir(LSYi)	=	1;
enc2acesDir(RARi)	=	1;
enc2acesDir(RAPi)	=	1;
enc2acesDir(RKNi)	=	1;
enc2acesDir(RHYi)	=	-1;
enc2acesDir(RHRi)	=	1;
enc2acesDir(RHPi)	=	1;
enc2acesDir(LAPi)	=	1;
enc2acesDir(LARi)	=	1;
enc2acesDir(LKNi)	=	-1;
enc2acesDir(LHYi)	=	-1;
enc2acesDir(LHRi)	=	-1;
enc2acesDir(LHPi)	=	-1;
enc2acesDir(WSTi)	=	-1;
enc2acesDir(RWYi)	=	1;
enc2acesDir(LWYi)	=	1;

enc2acesDir(99)		=	0;

%% open rave direction
orDir(jointMax) 	=	0;
orDir(RSPi)		=	-1;
orDir(RSRi)		=	-1;
orDir(RSYi)		=	1;
orDir(REBi)		=	-1;
orDir(RWYi) 		=	1;	% need to check this
orDir(LSPi)		=	-1;
orDir(LSRi)		=	-1;
orDir(LSYi) 		=	-1;
orDir(LEBi)		= 	-1;
orDir(LWYi)		=	1;	% need to check this
orDir(WSTi)		=	-1;
orDir(RHPi)		=	-1;
orDir(RHRi) 		= 	1;
orDir(RHYi) 		=	1;
orDir(RKNi) 		=	1;
orDir(RAPi) 		=	-1;
orDir(RARi) 		=	-1;

orDir(LHPi)		=	-1;
orDir(LHRi) 		= 	-1;
orDir(LHYi) 		=	1;
orDir(LKNi) 		=	1;
orDir(LAPi) 		=	-1;
orDir(LARi) 		=	-1;
orDir(NKYi)		=	1;	% needs to be checked


   % LEFT GEAR RATIO

            ratio(5, LHYi) = 10;
            ratio(1, LHYi) = 25;
            ratio(2, LHYi) = 100;
            ratio(3, LHYi) = 1000;
            ratio(4, LHYi) = 4;


            ratio(5, LHRi) = 324;
            ratio(1, LHRi) = 1024;
            ratio(2, LHRi) = 160;
            ratio(3, LHRi) = 1000;
            ratio(4, LHRi) = 4;

            %ratio(0, LHP) = 10;
            %ratio(1, LHP) = 16;

            ratio(5, LHPi) = 16;
            ratio(1, LHPi) = 20;
            ratio(2, LHPi) = 160;
            ratio(3, LHPi) = 1000;
            ratio(4, LHPi) = 4;


            ratio(5, LKNi) = 16;
            ratio(1, LKNi) = 16;
            ratio(2, LKNi) = 160;
            ratio(3, LKNi) = 1000;
            ratio(4, LKNi) = 4;

            ratio(5, LAPi) = 10;
            ratio(1, LAPi) = 25;
            ratio(2, LAPi) = 100;
            ratio(3, LAPi) = 1000;
            ratio(4, LAPi) = 4;

            ratio(5, LARi) = 324;
            ratio(1, LARi) = 1024;
            ratio(2, LARi) = 100;
            ratio(3, LARi) = 1000;
            ratio(4, LARi) = 4;


            % right GEAR RATIO
            ratio(5, RHYi) = 10;
            ratio(1, RHYi) = 25;
            ratio(2, RHYi) = 100;
            ratio(3, RHYi) = 1000;
            ratio(4, RHYi) = 4;

            ratio(5, RHRi) = 324;
            ratio(1, RHRi) = 1024;
            %ratio(0, RHiR) = 10;
            %ratio(1, RHiR) = 25;
            ratio(2, RHRi) = 160;
            ratio(3, RHRi) = 1000;
            ratio(4, RHRi) = 4;


            %ratio(0, RHP) = 10;
            %ratio(1, RHP) = 16;

            ratio(5, RHPi) = 16;
            ratio(1, RHPi) = 20;
            ratio(2, RHPi) = 160;
            ratio(3, RHPi) = 1000;
            ratio(4, RHPi) = 4;

            ratio(5, RKNi) = 16;
            ratio(1, RKNi) = 16;
            ratio(2, RKNi) = 160;
            ratio(3, RKNi) = 1000;
            ratio(4, RKNi) = 4;


            ratio(5, RAPi) = 10;
            ratio(1, RAPi) = 25;
            ratio(2, RAPi) = 100;
            ratio(3, RAPi) = 1000;
            ratio(4, RAPi) = 4;

            ratio(5, RARi) = 324;
            ratio(1, RARi) = 1024;
            ratio(2, RARi) = 100;
            ratio(3, RARi) = 1000;
            ratio(4, RARi) = 4;

            % WASTE
            ratio(5, WSTi) = 10;
            ratio(1, WSTi) = 25;
            ratio(2, WSTi) = 100;
            ratio(3, WSTi) = 1000;
            ratio(4, WSTi) = 4;

            % RIGHT TOP
            ratio(5, RSPi) = 11;
            ratio(1, RSPi) = 16;
            ratio(2, RSPi) = 100;
            ratio(3, RSPi) = 1000;
            ratio(4, RSPi) = 4;

            ratio(5, RSRi) = 1;
            ratio(1, RSRi) = 1;
            ratio(2, RSRi) = 100;
            ratio(3, RSRi) = 1000;
            ratio(4, RSRi) = 4;

            ratio(5, RSYi) = 1;
            ratio(1, RSYi) = 1;
            ratio(2, RSYi) = 100;
            ratio(3, RSYi) = 1000;
            ratio(4, RSYi) = 4;

            ratio(5, REBi) = 20;
            ratio(1, REBi) = 24;
            ratio(2, REBi) = 100;
            ratio(3, REBi) = 1000;
            ratio(4, REBi) = 4;

            ratio(5, RWYi) = 1;
            ratio(1, RWYi) = 1;
            ratio(2, RWYi) = 100;
            ratio(3, RWYi) = 32;
            ratio(4, RWYi) = 4;

            ratio(5, RW1i) = 1;
            ratio(1, RW1i) = 1;
            ratio(2, RW1i) = 1;
            ratio(3, RW1i) = 32;
            ratio(4, RW1i) = 4;

            ratio(5, RW2i) = 1;
            ratio(1, RW2i) = 1;
            ratio(2, RW2i) = 1;
            ratio(3, RW2i) = 32;
            ratio(4, RW2i) = 4;


            % LEFT TOP
            ratio(5, LSPi) = 11;
            ratio(1, LSPi) = 16;
            ratio(2, LSPi) = 100;
            ratio(3, LSPi) = 1000;
            ratio(4, LSPi) = 4;

            ratio(5, LSRi) = 1;
            ratio(1, LSRi) = 1;
            ratio(2, LSRi) = 100;
            ratio(3, LSRi) = 1000;
            ratio(4, LSRi) = 4;

            ratio(5, LSYi) = 1;
            ratio(1, LSYi) = 1;
            ratio(2, LSYi) = 100;
            ratio(3, LSYi) = 1000;
            ratio(4, LSYi) = 4;

            ratio(5, LEBi) = 20;
            ratio(1, LEBi) = 24;
            ratio(2, LEBi) = 100;
            ratio(3, LEBi) = 1000;
            ratio(4, LEBi) = 4;

            ratio(5, LWYi) = 1;
            ratio(1, LWYi) = 1;
            ratio(2, LWYi) = 100;
            ratio(3, LWYi) = 32;
            ratio(4, LWYi) = 4;

            ratio(5, LW1i) = 1;
            ratio(1, LW1i) = 1;
            ratio(2, LW1i) = 1;
            ratio(3, LW1i) = 32;
            ratio(4, LW1i) = 4;

            ratio(5, LW2i) = 1;
            ratio(1, LW2i) = 1;
            ratio(2, LW2i) = 1;
            ratio(3, LW2i) = 32;
            ratio(4, LW2i) = 4;
