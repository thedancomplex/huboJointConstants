function [mm, dd] = setHuboJoint(m, d, tvar, tmode, T, Ts)

%function [y] = setHuboJoint(m, d)
%	Currently limiting the accelleration only
%	In:
%	m 	=	Motor number array i.e. [RSP, RSR, ... ]
%	d	=	Desired angle in rad array of same dimention of m
%	tvar	=	[vmax, amax, jmax]
%	tmode	=	0 = velow, 1 = accell, 2 = jerk
%	T	=	period in seconds
%	Ts	=	accelleration rise time
%
%	Out:
%	mm	=	Array of motor numbersbeing used
%	dd	= 	Actuial angle to be set in rad


huboJointConst		% load the joint constants
load huboMotorPos	% Saved values of motor from last time step
jmax = 0;
amax = 0;
vmax = 0;

smnum = size(deg);
mnum = smnum(1);

if( tmode == 0 )
	vmax = tvar(1);
elseif( tmode == 1 | tmode == 5 )
	vmax = tvar(1);
	amax = tvar(2);
elseif( tmode == 2 )
	vmax = tvar(1);
	amax = tvar(2);
	jmax = tvar(3);
end

jmin = -jmax;
amin = -amax;
vmin = -vmax;

degSet(m) = d;
dd = degSet;
dan = 1;
if(dan == 1)

	x	=	dd;
	x0	=	deg(:,1);
	x1 	=	deg(:,2);
	x2	=	deg(:,3);
	x3	=	deg(:,4);
	x4	=	deg(:,5);

	v	=	(x0 - x)/T;	% desired velosity
	v0 	= 	(x0 - x1)/T;	% velosity
	v1	=	(x1 - x2)/T;	% previous velosity
	v2	=	(x2 - x3)/T;	% previous Previous velosity
	v3	=	(x3 - x4)/T;	% previous previous Previous velosity

	a	=	(v - v0)/T;		% desired accelelration
	a0	=	(v0 - v1)/T;		%  accelleration
	a1	=	(v1 - v2)/T;		% previous accelleration
	a2	=	(v2 - v3)/T;		% previous previous accelleration

	j	=	(a - a0)/T;		% desired jerk
	j0	= 	(a0 - a1)/T;		% jerk
	j1	= 	(a1 - a2)/T;		% previous jerk

%	jErrPos = j > jmax;
%	jErrNeg = j < jmin;
%	jMask = not(jErrPos) & not(jErrNeg);	% all 1's are the valid points

	aErrPos = a > amax;
	aErrNeg = a < amin;
	aMask = not(aErrPos) & not(aErrNeg);	% all 1's are the valid points

	jErrPos = j > jmax;
	jErrNeg = j < jmin;
	jMask = not(jErrPos) & not(jErrNeg);	% all 1's are the valid points
	%vErrPos = v > vmax;
	%vErrNeg = v < vmin;
	%vMask = not(vErrPos) & not(vErrNeg);	% all 1's are the valid points
	


       

       %dd = not(aMask).*degSet+ not(aErrPos).*dh +not(aErrNeg).*dl;
       %dd = jMask.*degSet + jErrPos.*x0nh + jErrNeg.*x0nl;
	
	xm = zeros(size(x0));
	dd = zeros(size(x0));
	ddd = zeros(size(x0));
	if( tmode == 0 )
		vmax = vmax;
		vErrPos = v > vmax;
		vErrNeg = v < vmin;
		vMask = not(vErrPos) & not(vErrNeg);	% all 1's are the valid points


		xm = vErrPos.*(x0-vmax*T) + vErrNeg.*(x0-vmin*T);
		dd = vMask.*degSet + xm;
	elseif( tmode == 1 )
		vmin1 = amin*T - v0;
		vmax1 = amax*T - v0;
		
%		vv = aMask*vmax + aErrPos.*vmax1 + aErrNeg.*vmin1;
		vmax = aMask*vmax + aErrPos.*vmax1 + aErrNeg.*vmin1;
		vmin = aMask*vmin + aErrPos.*vmax1 + aErrNeg.*vmin1;
%		if( vmin1 > vmin )
		vErrPos = v > vmax;
		vErrNeg = v < vmin;
		vMask = not(vErrPos) & not(vErrNeg);	% all 1's are the valid points


		xm = vErrPos.*(x0 - vmax*T) + vErrNeg.*(x0 - vmin*T);
		dd = vMask.*degSet + xm;
%			vmin = vmin1;
%		end
%		if( vmax1 < vmax )
%			vmax = vmax1;
%		end
	elseif( tmode == 2 )
		jErrPos = j > jmax;
		jErrNeg = j < jmin;
		jMask = not(jErrPos) & not(jErrNeg);	% all 1's are the valid points
	
		amin1 = a0-jmin*T;
		amax1 = a0-jmax*T;
			
		amax = jMask*amax + jErrPos.*amax1 + jErrNeg.*amin1;
		amin = jMask*amin + jErrPos.*amax1 + jErrNeg.*amin1;
		
		aErrPos = a > amax;
		aErrNeg = a < amin;
		aMask = not(aErrPos) & not(aErrNeg);	% all 1's are the valid points
	
		vmin1 = v0-amin*T;
		vmax1 = v0-amax*T;
		
		vmax = aMask*vmax + aErrPos.*vmax1 + aErrNeg.*vmin1;
		vmin = aMask*vmin + aErrPos.*vmax1 + aErrNeg.*vmin1;
		
		vErrPos = v > vmax;
		vErrNeg = v < vmin;
		vMask = not(vErrPos) & not(vErrNeg);	% all 1's are the valid points
		
		xm = vErrPos.*(x0-vmax*T) + vErrNeg.*(x0-vmin*T);
		dd = vMask.*degSet + xm;
		
	elseif( tmode == 3 )
		ddd = (sum(deg')' + degSet)/(min(size(deg))+1);
	
		dd = ddd; 
	elseif( tmode == 4 )
		vEp = v > v0;
		vEn = v < v0;
		vEe = v == v0;
		aEp = a > amax;
		aEn = a < amin;
		aEo = (aEp|aEn);
		aE = not(aEo);	
		%v = vEe.*aEo.*v + vEp.*aEo.*(v0+amax) + vEn.*aEo.*(v0-amax);	
		
		vv1 = (vEp&aEo).*(v0+amax/Ts);
		vv2 = (vEn&aEo).*(v0-amax/Ts);
		vv3 = vEe.*v;
		vv4 = ((vEp|vEn)&aE).*v;

		vt = (vEp.*(v0+amax/Ts*T) + vEn.*(v0-amax/Ts*T) + vEe.*v).*aEo;
		vv = aE.*v + vt;
		vv = aE.*v;
		vv = vv1+vv2+vv3+vv4;
		xx = x0 - vv*T;
		
		%xx = x0*0 + aE;
		%xx = x0 +0.2
		ddd = xx; 
		
		dd = ddd; 
	elseif( tmode == 5 )
		dd = degSet;
		for (i = 1:mnum)
			xGoal = degSet(i);
			x0 = deg(i,1);
			v0 = (deg(i,1) - deg(i,2))/T;
			vLimit = abs(vmax);
			aLimit = abs(amax);
			dt = T;
			[vvv, dddx] = trapezoidalMotion2(x0,xGoal,v0,vLimit,aLimit,dt);
			dd(i) = dddx;
		end
	end


	deg(:,5) = deg(:,4);
	deg(:,4) = deg(:,3);
	deg(:,3) = deg(:,2);
	deg(:,2) = deg(:,1);
	deg(:,1) = dd;
end
save huboMotorPos.mat degSet deg 
mm = 1:jointMax;

end
