% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Leloup1999_CircadianRhythms_Drosophila
%
% is http://identifiers.org/biomodels.db/MODEL0478965170
% is http://identifiers.org/biomodels.db/BIOMD0000000298
% isDescribedBy http://identifiers.org/pubmed/10643740
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000171
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(11) = 0.0614368;
	x0(12) = 0.0169928;
	x0(13) = 0.0141356;
	x0(14) = 0.0614368;
	x0(15) = 0.0860342;
	x0(16) = 0.0217261;
	x0(17) = 0.0213384;
	x0(18) = 0.0145428;
	x0(19) = 0.207614;
	x0(20) = 1.34728;
	x0(1) = 0.0614368;
	x0(2) = 1.34728;
	x0(3) = 0.207614;
	x0(4) = 0.0145428;
	x0(5) = 0.0213384;
	x0(6) = 0.0217261;
	x0(7) = 0.0860342;
	x0(8) = 0.0169928;
	x0(9) = 0.0141356;
	x0(10) = 0.0614368;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  vsP, name = vsP
	global_par_vsP=1.1;
% Parameter:   id =  vmP, name = vmP
	global_par_vmP=1.0;
% Parameter:   id =  KmP, name = KmP
	global_par_KmP=0.2;
% Parameter:   id =  KIP, name = KIP
	global_par_KIP=1.0;
% Parameter:   id =  Pt, name = Pt
% Parameter:   id =  ksP, name = ksP
	global_par_ksP=0.9;
% Parameter:   id =  vdP, name = vdP
	global_par_vdP=2.2;
% Parameter:   id =  KdP, name = KdP
	global_par_KdP=0.2;
% Parameter:   id =  vsT, name = vsT
	global_par_vsT=1.0;
% Parameter:   id =  vmT, name = vmT
	global_par_vmT=0.7;
% Parameter:   id =  KmT, name = KmT
	global_par_KmT=0.2;
% Parameter:   id =  KIT, name = KIT
	global_par_KIT=1.0;
% Parameter:   id =  ksT, name = ksT
	global_par_ksT=0.9;
% Parameter:   id =  vdT, name = vdT
	global_par_vdT=3.0;
% Parameter:   id =  KdT, name = KdT
	global_par_KdT=0.2;
% Parameter:   id =  kdC, name = kdC
	global_par_kdC=0.01;
% Parameter:   id =  kdN, name = kdN
	global_par_kdN=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.8;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.2;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.2;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.6;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.01;
% Parameter:   id =  V1P, name = V1P
	global_par_V1P=8.0;
% Parameter:   id =  V1T, name = V1T
	global_par_V1T=8.0;
% Parameter:   id =  V2P, name = V2P
	global_par_V2P=1.0;
% Parameter:   id =  V2T, name = V2T
	global_par_V2T=1.0;
% Parameter:   id =  V3P, name = V3P
	global_par_V3P=8.0;
% Parameter:   id =  V3T, name = V3T
	global_par_V3T=8.0;
% Parameter:   id =  V4P, name = V4P
	global_par_V4P=1.0;
% Parameter:   id =  V4T, name = V4T
	global_par_V4T=1.0;
% Parameter:   id =  K1P, name = K1P
	global_par_K1P=2.0;
% Parameter:   id =  K1T, name = K1T
	global_par_K1T=2.0;
% Parameter:   id =  K2P, name = K2P
	global_par_K2P=2.0;
% Parameter:   id =  K2T, name = K2T
	global_par_K2T=2.0;
% Parameter:   id =  K3P, name = K3P
	global_par_K3P=2.0;
% Parameter:   id =  K3T, name = K3T
	global_par_K3T=2.0;
% Parameter:   id =  K4P, name = K4P
	global_par_K4P=2.0;
% Parameter:   id =  K4T, name = K4T
	global_par_K4T=2.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% rateRule: variable = MP
x(1) = x(11);
% rateRule: variable = P0
x(8) = x(12);
% rateRule: variable = P1
x(9) = x(13);
% rateRule: variable = P2
x(10) = x(14);
% rateRule: variable = MT
x(7) = x(15);
% rateRule: variable = T0
x(6) = x(16);
% rateRule: variable = T1
x(5) = x(17);
% rateRule: variable = T2
x(4) = x(18);
% rateRule: variable = C
x(3) = x(19);
% rateRule: variable = CN
x(2) = x(20);
% assignmentRule: variable = Pt
	global_par_Pt=x(8)+x(9)+x(10)+x(3)+x(2);

	xdot=zeros(20,1);
	% rateRule: variable = MP
	xdot(11) = global_par_vsP*global_par_KIP^global_par_n/(global_par_KIP^global_par_n+x(2)^global_par_n)-(global_par_vmP*x(1)/(global_par_KmP+x(1))+global_par_kd*x(1));
	% rateRule: variable = P0
	xdot(12) = global_par_ksP*x(1)+global_par_V2P*x(9)/(global_par_K2P+x(9))-(global_par_V1P*x(8)/(global_par_K1P+x(8))+global_par_kd*x(8));
	% rateRule: variable = P1
	xdot(13) = global_par_V1P*x(8)/(global_par_K1P+x(8))+global_par_V4P*x(10)/(global_par_K4P+x(10))-(global_par_V2P*x(9)/(global_par_K2P+x(9))+global_par_V3P*x(9)/(global_par_K3P+x(9))+global_par_kd*x(9));
	% rateRule: variable = P2
	xdot(14) = global_par_V3P*x(9)/(global_par_K3P+x(9))+global_par_k4*x(3)-(global_par_V4P*x(10)/(global_par_K4P+x(10))+global_par_k3*x(10)*x(4)+global_par_vdP*x(10)/(global_par_KdP+x(10))+global_par_kd*x(10));
	% rateRule: variable = MT
	xdot(15) = global_par_vsT*global_par_KIT^global_par_n/(global_par_KIT^global_par_n+x(2)^global_par_n)-(global_par_vmT*x(7)/(global_par_KmT+x(7))+global_par_kd*x(7));
	% rateRule: variable = T0
	xdot(16) = global_par_ksT*x(7)+global_par_V2T*x(5)/(global_par_K2T+x(5))-(global_par_V1T*x(6)/(global_par_K1T+x(6))+global_par_kd*x(6));
	% rateRule: variable = T1
	xdot(17) = global_par_V1T*x(6)/(global_par_K1T+x(6))+global_par_V4T*x(4)/(global_par_K4T+x(4))-(global_par_V2T*x(5)/(global_par_K2T+x(5))+global_par_V3T*x(5)/(global_par_K3T+x(5))+global_par_kd*x(5));
	% rateRule: variable = T2
	xdot(18) = global_par_V3T*x(5)/(global_par_K3T+x(5))+global_par_k4*x(3)-(global_par_V4T*x(4)/(global_par_K4T+x(4))+global_par_k3*x(10)*x(4)+global_par_vdT*x(4)/(global_par_KdT+x(4))+global_par_kd*x(4));
	% rateRule: variable = C
	xdot(19) = global_par_k3*x(10)*x(4)+global_par_k2*x(2)-(global_par_k4*x(3)+global_par_k1*x(3)+global_par_kdC*x(3));
	% rateRule: variable = CN
	xdot(20) = global_par_k1*x(3)-(global_par_k2*x(2)+global_par_kdN*x(2));
	
% Species:   id = MP, name = MP, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = CN, name = CN, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = C, name = C, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = T2, name = T2, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = T1, name = T1, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = T0, name = T0, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = MT, name = MT, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = P0, name = P0, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = P1, name = P1, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = P2, name = P2, defined in a rule 	xdot(10) = x(10);
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


