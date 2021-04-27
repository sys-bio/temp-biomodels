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
% Model name = Leloup2003_CircClock_DD
%
% is http://identifiers.org/biomodels.db/MODEL1109528188
% is http://identifiers.org/biomodels.db/BIOMD0000000073
% isDescribedBy http://identifiers.org/pubmed/12775757
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000021
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 9.0;
	x0(2) = 2.0;
	x0(3) = 0.0;
	x0(4) = 1.9;
	x0(5) = 0.0;
	x0(6) = 1.4;
	x0(7) = 0.0;
	x0(8) = 1.6;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = reaction_0, name = Mb synthesized	% Local Parameter:   id =  vsb, name = vsb
	reaction_reaction_0_vsb=1.0;
	% Local Parameter:   id =  K, name = Kib
	reaction_reaction_0_K=2.2;
	% Local Parameter:   id =  m, name = m
	reaction_reaction_0_m=2.0;

	reaction_reaction_0=compartment_cell*function_0(reaction_reaction_0_vsb, reaction_reaction_0_K, reaction_reaction_0_m, x(4));

% Reaction: id = reaction_1, name = Mb translated into protein	% Local Parameter:   id =  k, name = ksb
	reaction_reaction_1_k=0.12;

	reaction_reaction_1=compartment_cell*function_1(reaction_reaction_1_k, x(1));

% Reaction: id = reaction_2, name = Mb nonspecific degradation	% Local Parameter:   id =  k1, name = kdmb
	reaction_reaction_2_k1=0.01;

	reaction_reaction_2=compartment_cell*reaction_reaction_2_k1*x(1);

% Reaction: id = reaction_3, name = Bc phosphorylation	% Local Parameter:   id =  V, name = V1b
	reaction_reaction_3_V=0.5;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_3_Km=0.1;

	reaction_reaction_3=compartment_cell*function_2(reaction_reaction_3_V, x(2), reaction_reaction_3_Km);

% Reaction: id = reaction_4, name = Bc transfered from cytosolic to nuclear	% Local Parameter:   id =  k1, name = k5
	reaction_reaction_4_k1=0.4;
	% Local Parameter:   id =  k2, name = k6
	reaction_reaction_4_k2=0.2;

	reaction_reaction_4=compartment_cell*(reaction_reaction_4_k1*x(2)-reaction_reaction_4_k2*x(4));

% Reaction: id = reaction_5, name = Mc translated into protein	% Local Parameter:   id =  k, name = ksc
	reaction_reaction_5_k=1.6;

	reaction_reaction_5=compartment_cell*function_1(reaction_reaction_5_k, x(6));

% Reaction: id = reaction_6, name = Mc nonspecific degradation	% Local Parameter:   id =  k1, name = kdmc
	reaction_reaction_6_k1=0.01;

	reaction_reaction_6=compartment_cell*reaction_reaction_6_k1*x(6);

% Reaction: id = reaction_7, name = Cc phosphorylation	% Local Parameter:   id =  V, name = V1c
	reaction_reaction_7_V=0.6;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_7_Km=0.1;

	reaction_reaction_7=compartment_cell*function_2(reaction_reaction_7_V, x(5), reaction_reaction_7_Km);

% Reaction: id = reaction_8, name = Ccp specific degradation	% Local Parameter:   id =  V, name = vdcc
	reaction_reaction_8_V=0.7;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_8_Km=0.3;

	reaction_reaction_8=compartment_cell*function_2(reaction_reaction_8_V, x(7), reaction_reaction_8_Km);

% Reaction: id = reaction_9, name = Mp synthesis	% Local Parameter:   id =  Vs, name = vsp
	reaction_reaction_9_Vs=1.5;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_9_n=4.0;
	% Local Parameter:   id =  K, name = Kap
	reaction_reaction_9_K=0.7;

	reaction_reaction_9=compartment_cell*function_3(reaction_reaction_9_Vs, x(4), reaction_reaction_9_n, reaction_reaction_9_K);

% Reaction: id = reaction_10, name = Mp translated into protein	% Local Parameter:   id =  k, name = ksp
	reaction_reaction_10_k=0.6;

	reaction_reaction_10=compartment_cell*function_1(reaction_reaction_10_k, x(8));

% Reaction: id = reaction_11, name = Pcp specific degradation	% Local Parameter:   id =  V, name = vdpc
	reaction_reaction_11_V=0.7;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_11_Km=0.3;

	reaction_reaction_11=compartment_cell*function_2(reaction_reaction_11_V, x(10), reaction_reaction_11_Km);

% Reaction: id = reaction_12, name = Pc phosphorylation	% Local Parameter:   id =  V, name = V1p
	reaction_reaction_12_V=0.4;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_12_Km=0.1;

	reaction_reaction_12=compartment_cell*function_2(reaction_reaction_12_V, x(9), reaction_reaction_12_Km);

% Reaction: id = reaction_13, name = Cc and Pc produce complex Per_Cry	% Local Parameter:   id =  k1, name = k3
	reaction_reaction_13_k1=0.4;
	% Local Parameter:   id =  k2, name = k4
	reaction_reaction_13_k2=0.2;

	reaction_reaction_13=compartment_cell*(reaction_reaction_13_k1*x(5)*x(9)-reaction_reaction_13_k2*x(11));

% Reaction: id = reaction_14, name = PCc phosphorylation	% Local Parameter:   id =  V, name = V1pc
	reaction_reaction_14_V=0.4;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_14_Km=0.1;

	reaction_reaction_14=compartment_cell*function_2(reaction_reaction_14_V, x(11), reaction_reaction_14_Km);

% Reaction: id = reaction_15, name = PCcp specific degradation	% Local Parameter:   id =  V, name = vdpcc
	reaction_reaction_15_V=0.7;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_15_Km=0.3;

	reaction_reaction_15=compartment_cell*function_2(reaction_reaction_15_V, x(12), reaction_reaction_15_Km);

% Reaction: id = reaction_16, name = PCc transfered into nuclear	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=0.2;

	reaction_reaction_16=compartment_cell*(reaction_reaction_16_k1*x(11)-reaction_reaction_16_k2*x(13));

% Reaction: id = reaction_17, name = PCnp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_17_k1=0.01;

	reaction_reaction_17=compartment_cell*reaction_reaction_17_k1*x(15);

% Reaction: id = reaction_18, name = Bcp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_18_k1=0.01;

	reaction_reaction_18=compartment_cell*reaction_reaction_18_k1*x(3);

% Reaction: id = reaction_19, name = Bnp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_19_k1=0.01;

	reaction_reaction_19=compartment_cell*reaction_reaction_19_k1*x(14);

% Reaction: id = reaction_20, name = Mc synthesis	% Local Parameter:   id =  Vs, name = vsc
	reaction_reaction_20_Vs=1.1;
	% Local Parameter:   id =  n, name = n
	reaction_reaction_20_n=4.0;
	% Local Parameter:   id =  K, name = Kac
	reaction_reaction_20_K=0.6;

	reaction_reaction_20=compartment_cell*function_3(reaction_reaction_20_Vs, x(4), reaction_reaction_20_n, reaction_reaction_20_K);

% Reaction: id = reaction_21, name = PCn phosphorylation	% Local Parameter:   id =  V, name = V3pc
	reaction_reaction_21_V=0.4;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_21_Km=0.1;

	reaction_reaction_21=compartment_cell*function_2(reaction_reaction_21_V, x(13), reaction_reaction_21_Km);

% Reaction: id = reaction_22, name = Mp nonspecific degradation	% Local Parameter:   id =  k1, name = kdmp
	reaction_reaction_22_k1=0.01;

	reaction_reaction_22=compartment_cell*reaction_reaction_22_k1*x(8);

% Reaction: id = reaction_23, name = Per_Cry and Clock_Bmal form inactive complex	% Local Parameter:   id =  k1, name = k7
	reaction_reaction_23_k1=0.5;
	% Local Parameter:   id =  k2, name = k8
	reaction_reaction_23_k2=0.1;

	reaction_reaction_23=compartment_cell*(reaction_reaction_23_k1*x(13)*x(4)-reaction_reaction_23_k2*x(16));

% Reaction: id = reaction_24, name = Mb specific degradation	% Local Parameter:   id =  V, name = vmb
	reaction_reaction_24_V=0.8;
	% Local Parameter:   id =  Km, name = Kmb
	reaction_reaction_24_Km=0.4;

	reaction_reaction_24=compartment_cell*function_2(reaction_reaction_24_V, x(1), reaction_reaction_24_Km);

% Reaction: id = reaction_25, name = Mc specific degradation	% Local Parameter:   id =  V, name = vmc
	reaction_reaction_25_V=1.0;
	% Local Parameter:   id =  Km, name = Kmc
	reaction_reaction_25_Km=0.4;

	reaction_reaction_25=compartment_cell*function_2(reaction_reaction_25_V, x(6), reaction_reaction_25_Km);

% Reaction: id = reaction_26, name = Mp specific degradation	% Local Parameter:   id =  V, name = vmp
	reaction_reaction_26_V=1.1;
	% Local Parameter:   id =  Km, name = Kmp
	reaction_reaction_26_Km=0.31;

	reaction_reaction_26=compartment_cell*function_2(reaction_reaction_26_V, x(8), reaction_reaction_26_Km);

% Reaction: id = reaction_27, name = Pc nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_27_k1=0.01;

	reaction_reaction_27=compartment_cell*reaction_reaction_27_k1*x(9);

% Reaction: id = reaction_28, name = Cc nonspecific degradation	% Local Parameter:   id =  k1, name = kdnc
	reaction_reaction_28_k1=0.12;

	reaction_reaction_28=compartment_cell*reaction_reaction_28_k1*x(5);

% Reaction: id = reaction_29, name = Pcp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_29_k1=0.01;

	reaction_reaction_29=compartment_cell*reaction_reaction_29_k1*x(10);

% Reaction: id = reaction_30, name = Ccp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_30_k1=0.01;

	reaction_reaction_30=compartment_cell*reaction_reaction_30_k1*x(7);

% Reaction: id = reaction_31, name = PCcp nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_31_k1=0.01;

	reaction_reaction_31=compartment_cell*reaction_reaction_31_k1*x(12);

% Reaction: id = reaction_32, name = PCc nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_32_k1=0.01;

	reaction_reaction_32=compartment_cell*reaction_reaction_32_k1*x(11);

% Reaction: id = reaction_33, name = PCnp specific degradation	% Local Parameter:   id =  V, name = vdpcn
	reaction_reaction_33_V=0.7;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_33_Km=0.3;

	reaction_reaction_33=compartment_cell*function_2(reaction_reaction_33_V, x(15), reaction_reaction_33_Km);

% Reaction: id = reaction_34, name = Bc nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_34_k1=0.01;

	reaction_reaction_34=compartment_cell*reaction_reaction_34_k1*x(2);

% Reaction: id = reaction_35, name = Bcp specific degradation	% Local Parameter:   id =  V, name = vdbc
	reaction_reaction_35_V=0.5;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_35_Km=0.3;

	reaction_reaction_35=compartment_cell*function_2(reaction_reaction_35_V, x(3), reaction_reaction_35_Km);

% Reaction: id = reaction_36, name = Bn phosphorylation	% Local Parameter:   id =  V, name = V3b
	reaction_reaction_36_V=0.5;
	% Local Parameter:   id =  Km, name = Kp
	reaction_reaction_36_Km=0.1;

	reaction_reaction_36=compartment_cell*function_2(reaction_reaction_36_V, x(4), reaction_reaction_36_Km);

% Reaction: id = reaction_37, name = Bnp specific degradation	% Local Parameter:   id =  V, name = vdbn
	reaction_reaction_37_V=0.6;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_37_Km=0.3;

	reaction_reaction_37=compartment_cell*function_2(reaction_reaction_37_V, x(14), reaction_reaction_37_Km);

% Reaction: id = reaction_38, name = In nonspecific degration	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_38_k1=0.01;

	reaction_reaction_38=compartment_cell*reaction_reaction_38_k1*x(16);

% Reaction: id = reaction_39, name = In specific degradation	% Local Parameter:   id =  V, name = vdin
	reaction_reaction_39_V=0.8;
	% Local Parameter:   id =  Km, name = Kd
	reaction_reaction_39_Km=0.3;

	reaction_reaction_39=compartment_cell*function_2(reaction_reaction_39_V, x(16), reaction_reaction_39_Km);

% Reaction: id = reaction_40, name = Bn nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_40_k1=0.01;

	reaction_reaction_40=compartment_cell*reaction_reaction_40_k1*x(4);

% Reaction: id = reaction_41, name = Bcp dephosphorylation	% Local Parameter:   id =  V, name = V2b
	reaction_reaction_41_V=0.1;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_41_Km=0.1;

	reaction_reaction_41=compartment_cell*function_2(reaction_reaction_41_V, x(3), reaction_reaction_41_Km);

% Reaction: id = reaction_42, name = Bnp dephosphorylation	% Local Parameter:   id =  V, name = V4b
	reaction_reaction_42_V=0.2;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_42_Km=0.1;

	reaction_reaction_42=compartment_cell*function_2(reaction_reaction_42_V, x(14), reaction_reaction_42_Km);

% Reaction: id = reaction_43, name = Ccp dephosphorylation	% Local Parameter:   id =  V, name = V2c
	reaction_reaction_43_V=0.1;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_43_Km=0.1;

	reaction_reaction_43=compartment_cell*function_2(reaction_reaction_43_V, x(7), reaction_reaction_43_Km);

% Reaction: id = reaction_44, name = Pcp dephosphorylation	% Local Parameter:   id =  V, name = V2p
	reaction_reaction_44_V=0.3;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_44_Km=0.1;

	reaction_reaction_44=compartment_cell*function_2(reaction_reaction_44_V, x(10), reaction_reaction_44_Km);

% Reaction: id = reaction_45, name = PCnp dephosphorylation	% Local Parameter:   id =  V, name = V4pc
	reaction_reaction_45_V=0.1;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_45_Km=0.1;

	reaction_reaction_45=compartment_cell*function_2(reaction_reaction_45_V, x(15), reaction_reaction_45_Km);

% Reaction: id = reaction_46, name = PCn nonspecific degradation	% Local Parameter:   id =  k1, name = kdn
	reaction_reaction_46_k1=0.01;

	reaction_reaction_46=compartment_cell*reaction_reaction_46_k1*x(13);

% Reaction: id = reaction_47, name = PCcp dephosphorylation	% Local Parameter:   id =  V, name = V2pc
	reaction_reaction_47_V=0.1;
	% Local Parameter:   id =  Km, name = Kdp
	reaction_reaction_47_Km=0.1;

	reaction_reaction_47=compartment_cell*function_2(reaction_reaction_47_V, x(12), reaction_reaction_47_Km);

	xdot=zeros(16,1);
	
% Species:   id = species_0, name = Mb, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_1, name = Bc, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = species_2, name = Bcp, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_41));
	
% Species:   id = species_3, name = Bn, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_42));
	
% Species:   id = species_4, name = Cc, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = species_5, name = Mc, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_6, name = Ccp, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_7, name = Mp, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_8, name = Pc, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_44));
	
% Species:   id = species_9, name = Pcp, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_44));
	
% Species:   id = species_10, name = PCc, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_47));
	
% Species:   id = species_11, name = PCcp, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_47));
	
% Species:   id = species_12, name = PCn, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46));
	
% Species:   id = species_13, name = Bnp, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_42));
	
% Species:   id = species_14, name = PCnp, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_15, name = In, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39));
end

function z=function_3(Vs,B,n,K), z=(Vs*B^n/(K^n+B^n));end

function z=function_2(V,substrate,Km), z=(V*substrate/(Km+substrate));end

function z=function_1(k,mRNA), z=(k*mRNA);end

function z=function_0(vsb,K,m,Bn), z=(vsb*K^m/(K^m+Bn^m));end

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


