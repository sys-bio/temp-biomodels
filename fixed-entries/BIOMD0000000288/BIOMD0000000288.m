% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Wang2009 - PI3K Ras Crosstalk
%
% is http://identifiers.org/biomodels.db/MODEL0910130003
% is http://identifiers.org/biomodels.db/BIOMD0000000288
% isDescribedBy http://identifiers.org/pubmed/19225459
% isDerivedFrom http://identifiers.org/pubmed/12871957
% isDerivedFrom http://identifiers.org/pubmed/16314431
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 1.0;
	x0(2) = 0;
	x0(3) = 0;
	x0(4) = 0.0;
	x0(5) = 0;
	x0(6) = 0.0;
	x0(7) = 0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 1.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0;
	x0(18) = 0.0;
	x0(19) = 1.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  L, name = L
	global_par_L=1.0;
% Parameter:   id =  KDL, name = KDL
	global_par_KDL=1.5;
% Parameter:   id =  kxR0, name = kxR0
	global_par_kxR0=0.3;
% Parameter:   id =  kminusx, name = kminusx
	global_par_kminusx=0.007;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.2;
% Parameter:   id =  kt, name = kt
	global_par_kt=0.005;
% Parameter:   id =  alphaPI3K, name = alphaPI3K
	global_par_alphaPI3K=80.0;
% Parameter:   id =  kappaPI3K, name = kappaPI3K
	global_par_kappaPI3K=0.3;
% Parameter:   id =  k3PI, name = k3PI
	global_par_k3PI=1.0;
% Parameter:   id =  KGR, name = KGR
	global_par_KGR=495.0;
% Parameter:   id =  KGP, name = KGP
	global_par_KGP=5.09;
% Parameter:   id =  kRas, name = kRas
	global_par_kRas=1.0;
% Parameter:   id =  Gamma, name = Gamma
	global_par_Gamma=0.1;
% Parameter:   id =  kdx1, name = kdx1
	global_par_kdx1=0.745;
% Parameter:   id =  kdx2, name = kdx2
	global_par_kdx2=2.85;
% Parameter:   id =  Kx2, name = Kx2
	global_par_Kx2=6.77;
% Parameter:   id =  VmaxOVERKMx11, name = VmaxOVERKMx11
	global_par_VmaxOVERKMx11=1.18;
% Parameter:   id =  KMx11, name = KMx11
	global_par_KMx11=30.3;
% Parameter:   id =  VmaxOVERKMx21, name = VmaxOVERKMx21
	global_par_VmaxOVERKMx21=0.405;
% Parameter:   id =  KMx21, name = KMx21
	global_par_KMx21=13.7;
% Parameter:   id =  VmaxOVERKMyph1, name = VmaxOVERKMyph1
	global_par_VmaxOVERKMyph1=1.65;
% Parameter:   id =  KMyph1, name = KMyph1
	global_par_KMyph1=23.0;
% Parameter:   id =  VmaxOVERKMx12, name = VmaxOVERKMx12
	global_par_VmaxOVERKMx12=3.45;
% Parameter:   id =  KMx12, name = KMx12
	global_par_KMx12=18.6;
% Parameter:   id =  VmaxOVERKMx22, name = VmaxOVERKMx22
	global_par_VmaxOVERKMx22=1.09;
% Parameter:   id =  KMx22, name = KMx22
	global_par_KMx22=9.59;
% Parameter:   id =  VmaxOVERKMyph2, name = VmaxOVERKMyph2
	global_par_VmaxOVERKMyph2=4.2;
% Parameter:   id =  KMyph2, name = KMyph2
	global_par_KMyph2=7.99;
% Parameter:   id =  VmaxOVERKMy1, name = VmaxOVERKMy1
	global_par_VmaxOVERKMy1=6.57;
% Parameter:   id =  KMy1, name = KMy1
	global_par_KMy1=9.91;
% Parameter:   id =  VmaxOVERKMzph1, name = VmaxOVERKMzph1
	global_par_VmaxOVERKMzph1=0.167;
% Parameter:   id =  KMzph1, name = KMzph1
	global_par_KMzph1=8.27;
% Parameter:   id =  VmaxOVERKMy2, name = VmaxOVERKMy2
	global_par_VmaxOVERKMy2=31.9;
% Parameter:   id =  KMy2, name = KMy2
	global_par_KMy2=8.81;
% Parameter:   id =  VmaxOVERKMzph2, name = VmaxOVERKMzph2
	global_par_VmaxOVERKMzph2=0.228;
% Parameter:   id =  KMzph2, name = KMzph2
	global_par_KMzph2=31.5;
% Parameter:   id =  kFBf, name = kFBf
	global_par_kFBf=0.976;
% Parameter:   id =  Zf, name = Zf
	global_par_Zf=0.272;
% Parameter:   id =  n, name = n
	global_par_n=1.03;
% Parameter:   id =  Kf, name = Kf
	global_par_Kf=3.76;
% Parameter:   id =  kdw, name = kdw
	global_par_kdw=0.0333;
% Parameter:   id =  kFBph, name = kFBph
	global_par_kFBph=2.34;
% Parameter:   id =  Wph, name = Wph
	global_par_Wph=0.385;
% Parameter:   id =  p, name = p
	global_par_p=1.98;
% Parameter:   id =  Kph, name = Kph
	global_par_Kph=4.64;
% assignmentRule: variable = r
	x(2)=global_par_KDL*x(1)/(global_par_KDL+global_par_L);
% assignmentRule: variable = c1
	x(3)=global_par_L*x(1)/(global_par_KDL+global_par_L);
% assignmentRule: variable = ePI3K
	x(5)=(1+global_par_kappaPI3K+2*global_par_alphaPI3K*x(4)-((1+global_par_kappaPI3K+2*global_par_alphaPI3K*x(4))^2-8*global_par_alphaPI3K*x(4))^0.5)/2;
% assignmentRule: variable = eGEF
	x(7)=(global_par_KGR*x(4)+global_par_KGP*x(6))/(1+global_par_KGR*x(4)+global_par_KGP*x(6))*x(17);
% assignmentRule: variable = yp
	x(12)=1-x(11)-x(13);
% assignmentRule: variable = zp
	x(15)=1-x(14)-x(16);

% Reaction: id = sumrc1ODE
	reaction_sumrc1ODE=global_par_kt*(1-x(1))+2*(global_par_kminusx*x(4)-global_par_kxR0*x(3)^2);

% Reaction: id = c2ODE
	reaction_c2ODE=global_par_kxR0*x(3)^2-(global_par_kminusx+global_par_ke)*x(4);

% Reaction: id = m3PIODE
	reaction_m3PIODE=global_par_k3PI*(x(5)-x(6));

% Reaction: id = mRasODE
	reaction_mRasODE=global_par_kRas*((1+global_par_Gamma)*x(7)-(1+global_par_Gamma*x(7))*x(8));

% Reaction: id = x1ODE
	reaction_x1ODE=global_par_kdx1*(x(8)-x(9)/(1+x(11)/global_par_KMx11+x(12)/global_par_KMx12));

% Reaction: id = x2ODE
	reaction_x2ODE=global_par_kdx2*((1+global_par_Kx2)*x(6)/(1+global_par_Kx2*x(6))-x(10)/(1+x(11)/global_par_KMx21+x(12)/global_par_KMx22));

% Reaction: id = yODE
	reaction_yODE=global_par_VmaxOVERKMyph1*x(12)/(1+x(12)/global_par_KMyph1+x(13)/global_par_KMyph2)-global_par_VmaxOVERKMx11*x(9)*x(11)/(1+x(11)/global_par_KMx11+x(12)/global_par_KMx12)-global_par_VmaxOVERKMx21*x(10)*x(11)/(1+x(11)/global_par_KMx21+x(12)/global_par_KMx22);

% Reaction: id = yppODE
	reaction_yppODE=global_par_VmaxOVERKMx12*x(9)*x(12)/(1+x(11)/global_par_KMx11+x(12)/global_par_KMx12)+global_par_VmaxOVERKMx22*x(10)*x(12)/(1+x(11)/global_par_KMx21+x(12)/global_par_KMx22)-global_par_VmaxOVERKMyph2*x(13)/((1+x(14)/global_par_KMy1+x(15)/global_par_KMy2)*(1+x(12)/global_par_KMyph1)+x(13)/global_par_KMyph2);

% Reaction: id = zODE
	reaction_zODE=global_par_VmaxOVERKMzph1*x(19)*x(15)/(1+x(15)/global_par_KMzph1+x(16)/global_par_KMzph2)-global_par_VmaxOVERKMy1*x(13)*x(14)/(1+x(14)/global_par_KMy1+x(15)/global_par_KMy2);

% Reaction: id = zppODE
	reaction_zppODE=global_par_VmaxOVERKMy2*x(13)*x(15)/(1+x(14)/global_par_KMy1+x(15)/global_par_KMy2)-global_par_VmaxOVERKMzph2*x(19)*x(16)/(1+x(15)/global_par_KMzph1+x(16)/global_par_KMzph2);

% Reaction: id = fGEFODE
	reaction_fGEFODE=global_par_kFBf*((1-x(17))/global_par_Kf-x(16)^global_par_n/(global_par_Zf^global_par_n+x(16)^global_par_n)*x(17));

% Reaction: id = wODE
	reaction_wODE=global_par_kdw*(x(16)-x(18));

% Reaction: id = ephODE
	reaction_ephODE=global_par_kFBph*(x(18)^global_par_p/(global_par_Wph^global_par_p+x(18)^global_par_p)-(x(19)-1)/global_par_Kph);

	xdot=zeros(19,1);
	
% Species:   id = sumrc1, name = sumrc1, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_sumrc1ODE));
	
% Species:   id = r, name = r, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = c1, name = c1, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = c2, name = c2, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_c2ODE));
	
% Species:   id = ePI3K, name = ePI3K, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = m3PI, name = m3PI, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_m3PIODE));
	
% Species:   id = eGEF, name = eGEF, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = mRas, name = mRas, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_mRasODE));
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_x1ODE));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_x2ODE));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_yODE));
	
% Species:   id = yp, name = yp, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = ypp, name = ypp, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_yppODE));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_zODE));
	
% Species:   id = zp, name = zp, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = zpp, name = zpp, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_zppODE));
	
% Species:   id = fGEF, name = fGEF, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_fGEFODE));
	
% Species:   id = w, name = w, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_wODE));
	
% Species:   id = eph, name = eph, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_ephODE));
end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


