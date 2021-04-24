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
% Model name = Leloup2003_CircClock_LD_REV-ERBalpha
%
% isDerivedFrom http://identifiers.org/kegg.pathway/hsa04710
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000083
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL4710748444
% isDerivedFrom http://identifiers.org/go/GO:0042752
% isDerivedFrom http://identifiers.org/taxonomy/40674
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000021
% is http://identifiers.org/biomodels.db/MODEL4710748444
% is http://identifiers.org/biomodels.db/BIOMD0000000083
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;


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
% Parameter:   id =  parameter_0000096, name = LD
% Parameter:   id =  parameter_0000097, name = vsp
% Parameter:   id =  vmP, name = vmP
	global_par_vmP=2.2;
% Parameter:   id =  kdmp, name = kdmp
	global_par_kdmp=0.02;
% Parameter:   id =  vsC, name = vsC
	global_par_vsC=2.2;
% Parameter:   id =  vmC, name = vmC
	global_par_vmC=2.0;
% Parameter:   id =  kdmc, name = kdmc
	global_par_kdmc=0.02;
% Parameter:   id =  vsB, name = vsB
	global_par_vsB=1.8;
% Parameter:   id =  vmB, name = vmB
	global_par_vmB=1.3;
% Parameter:   id =  kdmb, name = kdmb
	global_par_kdmb=0.02;
% Parameter:   id =  ksP, name = ksP
	global_par_ksP=1.2;
% Parameter:   id =  V1P, name = V1P
	global_par_V1P=9.6;
% Parameter:   id =  V2P, name = V2P
	global_par_V2P=0.6;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.8;
% Parameter:   id =  kdn, name = kdn
	global_par_kdn=0.02;
% Parameter:   id =  ksC, name = ksC
	global_par_ksC=3.2;
% Parameter:   id =  V1C, name = V1C
	global_par_V1C=1.2;
% Parameter:   id =  V2C, name = V2C
	global_par_V2C=0.2;
% Parameter:   id =  kdnC, name = kdnC
	global_par_kdnC=0.02;
% Parameter:   id =  KmB, name = KmB
	global_par_KmB=0.4;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=1.006;
% Parameter:   id =  Kdp, name = Kdp
	global_par_Kdp=0.1;
% Parameter:   id =  VdPC, name = VdPC
	global_par_VdPC=3.4;
% Parameter:   id =  vdCC, name = vdCC
	global_par_vdCC=1.4;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.3;
% Parameter:   id =  V1PC, name = V1PC
	global_par_V1PC=2.4;
% Parameter:   id =  V2PC, name = V2PC
	global_par_V2PC=0.2;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.4;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.8;
% Parameter:   id =  V3PC, name = V3PC
	global_par_V3PC=2.4;
% Parameter:   id =  V4PC, name = V4PC
	global_par_V4PC=0.2;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.2;
% Parameter:   id =  vdPCC, name = vdPCC
	global_par_vdPCC=1.4;
% Parameter:   id =  vdPCN, name = vdPCN
	global_par_vdPCN=1.4;
% Parameter:   id =  ksB, name = ksB
	global_par_ksB=0.32;
% Parameter:   id =  V1B, name = V1B
	global_par_V1B=1.4;
% Parameter:   id =  V2B, name = V2B
	global_par_V2B=0.2;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.8;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.4;
% Parameter:   id =  vdBC, name = vdBC
	global_par_vdBC=3.0;
% Parameter:   id =  V3B, name = V3B
	global_par_V3B=1.4;
% Parameter:   id =  V4B, name = V4B
	global_par_V4B=0.4;
% Parameter:   id =  vdBN, name = vdBN
	global_par_vdBN=3.0;
% Parameter:   id =  vdIN, name = vdIN
	global_par_vdIN=1.6;
% Parameter:   id =  vsR, name = vsR
	global_par_vsR=1.6;
% Parameter:   id =  KAR, name = KAR
	global_par_KAR=0.6;
% Parameter:   id =  vmR, name = vmR
	global_par_vmR=1.6;
% Parameter:   id =  kmR, name = kmR
	global_par_kmR=0.4;
% Parameter:   id =  kdmr, name = kdmr
	global_par_kdmr=0.02;
% Parameter:   id =  ksR, name = ksR
	global_par_ksR=1.7;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.8;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.4;
% Parameter:   id =  vdRC, name = vdRC
	global_par_vdRC=4.4;
% Parameter:   id =  vdRN, name = vdRN
	global_par_vdRN=0.8;
% Parameter:   id =  KAP, name = KAP
	global_par_KAP=0.6;
% Parameter:   id =  KAC, name = KAC
	global_par_KAC=0.6;
% Parameter:   id =  KmP, name = KmP
	global_par_KmP=0.3;
% Parameter:   id =  KmC, name = KmC
	global_par_KmC=0.4;
% Parameter:   id =  h, name = h
	global_par_h=2.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% assignmentRule: variable = parameter_0000096
	global_par_parameter_0000096=ceil(sin(pi*time/12+0.001)/2);
% assignmentRule: variable = parameter_0000097
	global_par_parameter_0000097=2.4+(3-2.4)*global_par_parameter_0000096;

% Reaction: id = reaction_0, name = Mb synthesized	% Local Parameter:   id =  K, name = K
	reaction_reaction_0_K=1.0;

	reaction_reaction_0=compartment_cell*global_par_vsB*reaction_reaction_0_K^global_par_m/(reaction_reaction_0_K^global_par_m+x(19)^global_par_m);

% Reaction: id = reaction_1, name = Mb translated into protein
	reaction_reaction_1=compartment_cell*global_par_ksB*x(1);

% Reaction: id = reaction_2, name = Mb nonspecific degradation
	reaction_reaction_2=compartment_cell*global_par_kdmb*x(1);

% Reaction: id = reaction_3, name = Bc phosphorylation
	reaction_reaction_3=compartment_cell*global_par_V1B*x(2)/(global_par_Kp+x(2));

% Reaction: id = reaction_4, name = Bc transfered from cytosolic to nuclear
	reaction_reaction_4=compartment_cell*(global_par_k5*x(2)-global_par_k6*x(4));

% Reaction: id = reaction_5, name = Mc translated into protein
	reaction_reaction_5=compartment_cell*global_par_ksC*x(6);

% Reaction: id = reaction_6, name = Mc nonspecific degradation
	reaction_reaction_6=compartment_cell*global_par_kdmc*x(6);

% Reaction: id = reaction_7, name = Cc phosphorylation
	reaction_reaction_7=compartment_cell*global_par_V1C*x(5)/(global_par_Kp+x(5));

% Reaction: id = reaction_8, name = Ccp specific degradation
	reaction_reaction_8=compartment_cell*global_par_vdCC*x(7)/(global_par_Kd+x(7));

% Reaction: id = reaction_9, name = Mp synthesis
	reaction_reaction_9=compartment_cell*global_par_parameter_0000097*x(4)^global_par_n/(global_par_KAP^global_par_n+x(4)^global_par_n);

% Reaction: id = reaction_10, name = Mp translated into protein
	reaction_reaction_10=compartment_cell*global_par_ksP*x(8);

% Reaction: id = reaction_11, name = Pcp specific degradation
	reaction_reaction_11=compartment_cell*global_par_VdPC*x(10)/(global_par_Kd+x(10));

% Reaction: id = reaction_12, name = Pc phospholation
	reaction_reaction_12=compartment_cell*global_par_V1P*x(9)/(global_par_Kp+x(9));

% Reaction: id = reaction_13, name = Cc and Pc produce PCc
	reaction_reaction_13=compartment_cell*(global_par_k3*x(5)*x(9)-global_par_k4*x(11));

% Reaction: id = reaction_14, name = PCc phospholation
	reaction_reaction_14=compartment_cell*global_par_V1PC*x(11)/(global_par_Kp+x(11));

% Reaction: id = reaction_15, name = PCcp specific degradation
	reaction_reaction_15=compartment_cell*global_par_vdPCC*x(12)/(global_par_Kd+x(12));

% Reaction: id = reaction_16, name = PCc transfered into nuclear
	reaction_reaction_16=compartment_cell*(global_par_k1*x(11)-global_par_k2*x(13));

% Reaction: id = reaction_17, name = PCnp nonspecific degradation
	reaction_reaction_17=compartment_cell*global_par_kdn*x(15);

% Reaction: id = reaction_18, name = Bcp nonspecific degradation
	reaction_reaction_18=compartment_cell*global_par_kdn*x(3);

% Reaction: id = reaction_19, name = Bnp nonspecific degradation
	reaction_reaction_19=compartment_cell*global_par_kdn*x(14);

% Reaction: id = reaction_20, name = Mc synthesis
	reaction_reaction_20=compartment_cell*global_par_vsC*x(4)^global_par_n/(global_par_KAC^global_par_n+x(4)^global_par_n);

% Reaction: id = reaction_21, name = PCn phospholation
	reaction_reaction_21=compartment_cell*global_par_V3PC*x(13)/(global_par_Kp+x(13));

% Reaction: id = reaction_22, name = Mp nonspecific degradation
	reaction_reaction_22=compartment_cell*global_par_kdmp*x(8);

% Reaction: id = reaction_23, name = Per_Cry and Clock_Bmal form inactive complex
	reaction_reaction_23=compartment_cell*(global_par_k7*x(13)*x(4)-global_par_k8*x(16));

% Reaction: id = reaction_24, name = Mb specific degradation
	reaction_reaction_24=compartment_cell*global_par_vmB*x(1)/(global_par_KmB+x(1));

% Reaction: id = reaction_25, name = Mc specific degradation
	reaction_reaction_25=compartment_cell*global_par_vmC*x(6)/(global_par_KmC+x(6));

% Reaction: id = reaction_26, name = Mp specific degradation
	reaction_reaction_26=compartment_cell*global_par_vmP*x(8)/(global_par_KmP+x(8));

% Reaction: id = reaction_27, name = Pc nonspecific degradation
	reaction_reaction_27=compartment_cell*global_par_kdn*x(9);

% Reaction: id = reaction_28, name = Cc nonspecific degradation
	reaction_reaction_28=compartment_cell*global_par_kdnC*x(5);

% Reaction: id = reaction_29, name = Pcp nonspecific degradation
	reaction_reaction_29=compartment_cell*global_par_kdn*x(10);

% Reaction: id = reaction_30, name = Ccp nonspecific degradation
	reaction_reaction_30=compartment_cell*global_par_kdn*x(7);

% Reaction: id = reaction_31, name = PCcp nonspecific degradation
	reaction_reaction_31=compartment_cell*global_par_kdn*x(12);

% Reaction: id = reaction_32, name = PCc nonspecific degradation
	reaction_reaction_32=compartment_cell*global_par_kdn*x(11);

% Reaction: id = reaction_33, name = PCnp specific degradation
	reaction_reaction_33=compartment_cell*global_par_vdPCN*x(15)/(global_par_Kd+x(15));

% Reaction: id = reaction_34, name = Bc nonspecific degradation
	reaction_reaction_34=compartment_cell*global_par_kdn*x(2);

% Reaction: id = reaction_35, name = Bcp specific degradation
	reaction_reaction_35=compartment_cell*global_par_vdBC*x(3)/(global_par_Kd+x(3));

% Reaction: id = reaction_36, name = Bn phospholation
	reaction_reaction_36=compartment_cell*global_par_V3B*x(4)/(global_par_Kp+x(4));

% Reaction: id = reaction_37, name = Bnp specific degradation
	reaction_reaction_37=compartment_cell*global_par_vdBN*x(14)/(global_par_Kd+x(14));

% Reaction: id = reaction_38, name = In nonspecific degration
	reaction_reaction_38=compartment_cell*global_par_kdn*x(16);

% Reaction: id = reaction_39, name = In specific degradation
	reaction_reaction_39=compartment_cell*global_par_vdIN*x(16)/(global_par_Kd+x(16));

% Reaction: id = reaction_40, name = Bn nonspecific degradation
	reaction_reaction_40=compartment_cell*global_par_kdn*x(4);

% Reaction: id = reaction_41, name = Bcp dephospholation
	reaction_reaction_41=compartment_cell*global_par_V2B*x(3)/(global_par_Kdp+x(3));

% Reaction: id = reaction_42, name = Bnp dephospholation
	reaction_reaction_42=compartment_cell*global_par_V4B*x(14)/(global_par_Kdp+x(14));

% Reaction: id = reaction_43, name = Ccp dephospholation
	reaction_reaction_43=compartment_cell*global_par_V2C*x(7)/(global_par_Kdp+x(7));

% Reaction: id = reaction_44, name = Pcp dephospholation
	reaction_reaction_44=compartment_cell*global_par_V2P*x(10)/(global_par_Kdp+x(10));

% Reaction: id = reaction_45, name = PCnp dephospholation
	reaction_reaction_45=compartment_cell*global_par_V4PC*x(15)/(global_par_Kdp+x(15));

% Reaction: id = reaction_46, name = PCn nonspecific degradation
	reaction_reaction_46=compartment_cell*global_par_kdn*x(13);

% Reaction: id = reaction_47, name = PCcp dephospholation
	reaction_reaction_47=compartment_cell*global_par_V2PC*x(12)/(global_par_Kdp+x(12));

% Reaction: id = reaction_48, name = Mr synthesized
	reaction_reaction_48=compartment_cell*global_par_vsR*x(4)^global_par_h/(global_par_KAR^global_par_h+x(4)^global_par_h);

% Reaction: id = reaction_49, name = Mr nonspecific degradation
	reaction_reaction_49=compartment_cell*global_par_kdmr*x(17);

% Reaction: id = reaction_50, name = Mr specific degradation
	reaction_reaction_50=compartment_cell*global_par_vmR*x(17)/(global_par_kmR+x(17));

% Reaction: id = reaction_51, name = Mr translated into protein
	reaction_reaction_51=compartment_cell*global_par_ksR*x(17);

% Reaction: id = reaction_52, name = Rc transfered into nuclear
	reaction_reaction_52=compartment_cell*(global_par_k9*x(18)-global_par_k10*x(19));

% Reaction: id = reaction_53, name = Rc specific degradation
	reaction_reaction_53=compartment_cell*global_par_vdRC*x(18)/(global_par_Kd+x(18));

% Reaction: id = reaction_54, name = Rc nonspecific degradation
	reaction_reaction_54=compartment_cell*global_par_kdn*x(18);

% Reaction: id = reaction_55, name = Rn specific degradation
	reaction_reaction_55=compartment_cell*global_par_vdRN*x(19)/(global_par_Kd+x(19));

% Reaction: id = reaction_56, name = Rn nonspecific degradation
	reaction_reaction_56=compartment_cell*global_par_kdn*x(19);

	xdot=zeros(19,1);
	
% Species:   id = Mb, name = Mb, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_24));
	
% Species:   id = Bc, name = Bc, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = Bcp, name = Bcp, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_41));
	
% Species:   id = Bn, name = Bn, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_42));
	
% Species:   id = Cc, name = Cc, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = Mc, name = Mc, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_25));
	
% Species:   id = Ccp, name = Ccp, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_43));
	
% Species:   id = Mp, name = Mp, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_26));
	
% Species:   id = Pc, name = Pc, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_44));
	
% Species:   id = Pcp, name = Pcp, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_44));
	
% Species:   id = PCc, name = PCc, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_47));
	
% Species:   id = PCcp, name = PCcp, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_47));
	
% Species:   id = PCn, name = PCn, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46));
	
% Species:   id = Bnp, name = Bnp, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_42));
	
% Species:   id = PCnp, name = PCnp, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_45));
	
% Species:   id = In, name = In, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39));
	
% Species:   id = Mr, name = Mr, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_50));
	
% Species:   id = Rc, name = Rc, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54));
	
% Species:   id = Rn, name = Rn, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56));
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


