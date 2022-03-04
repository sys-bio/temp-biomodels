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
% Model name = Locke2006_CircClock_LL
%
% is http://identifiers.org/biomodels.db/MODEL4025803561
% is http://identifiers.org/biomodels.db/BIOMD0000000089
% isDescribedBy http://identifiers.org/pubmed/17102804
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000055
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.4625;
	x0(2) = 0.0132;
	x0(3) = 0.0699;
	x0(4) = 0.4303;
	x0(5) = 10.2965;
	x0(6) = 0.5402;
	x0(7) = 0.0957;
	x0(8) = 1.5413;
	x0(9) = 0.4585;
	x0(10) = 0.0303;
	x0(11) = 0.0041;
	x0(12) = 0.0122;
	x0(13) = 0.8476;
	x0(14) = 14.6921;
	x0(15) = 0.7027;
	x0(16) = 0.8648;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  q1, name = q1
	global_par_q1=4.1954;
% Parameter:   id =  n0, name = n0
	global_par_n0=0.05;
% Parameter:   id =  g0, name = g0
	global_par_g0=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=7.8142;
% Parameter:   id =  a, name = a
	global_par_a=1.2479;
% Parameter:   id =  g1, name = g1
	global_par_g1=3.1383;
% Parameter:   id =  m1, name = m1
	global_par_m1=1.999;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.392;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.8295;
% Parameter:   id =  r1, name = r1
	global_par_r1=16.8363;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.1687;
% Parameter:   id =  m2, name = m2
	global_par_m2=20.44;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.5644;
% Parameter:   id =  m3, name = m3
	global_par_m3=3.6888;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.2765;
% Parameter:   id =  n2, name = n2
	global_par_n2=3.0087;
% Parameter:   id =  b, name = b
	global_par_b=1.0258;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.0368;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.2658;
% Parameter:   id =  c, name = c
	global_par_c=1.0258;
% Parameter:   id =  m4, name = m4
	global_par_m4=3.8231;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.5734;
% Parameter:   id =  p2, name = p2
	global_par_p2=4.324;
% Parameter:   id =  r3, name = r3
	global_par_r3=0.3166;
% Parameter:   id =  r4, name = r4
	global_par_r4=2.1509;
% Parameter:   id =  m5, name = m5
	global_par_m5=0.0013;
% Parameter:   id =  m6, name = m6
	global_par_m6=3.1741;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.7454;
% Parameter:   id =  m7, name = m7
	global_par_m7=0.0492;
% Parameter:   id =  m8, name = m8
	global_par_m8=4.0424;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.4033;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.2431;
% Parameter:   id =  d, name = d
	global_par_d=1.4422;
% Parameter:   id =  g4, name = g4
	global_par_g4=0.5388;
% Parameter:   id =  m9, name = m9
	global_par_m9=10.1132;
% Parameter:   id =  k7, name = k7
	global_par_k7=6.5585;
% Parameter:   id =  p3, name = p3
	global_par_p3=2.147;
% Parameter:   id =  r5, name = r5
	global_par_r5=1.0352;
% Parameter:   id =  r6, name = r6
	global_par_r6=3.3017;
% Parameter:   id =  m10, name = m10
	global_par_m10=0.2179;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.6632;
% Parameter:   id =  m11, name = m11
	global_par_m11=3.3442;
% Parameter:   id =  k9, name = k9
	global_par_k9=17.1111;
% Parameter:   id =  q2, name = q2
	global_par_q2=2.4017;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.0857;
% Parameter:   id =  n5, name = n5
	global_par_n5=0.1649;
% Parameter:   id =  g5, name = g5
	global_par_g5=1.178;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.0645;
% Parameter:   id =  e, name = e
	global_par_e=3.6064;
% Parameter:   id =  f, name = f
	global_par_f=1.0237;
% Parameter:   id =  m12, name = m12
	global_par_m12=4.297;
% Parameter:   id =  k10, name = k10
	global_par_k10=1.7303;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.2485;
% Parameter:   id =  r7, name = r7
	global_par_r7=2.2123;
% Parameter:   id =  r8, name = r8
	global_par_r8=0.2002;
% Parameter:   id =  m13, name = m13
	global_par_m13=0.1347;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.8258;
% Parameter:   id =  m14, name = m14
	global_par_m14=0.6114;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.8066;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.5;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.2;
% Parameter:   id =  m15, name = m15
	global_par_m15=1.2;
% Parameter:   id =  q3, name = q3
	global_par_q3=1.0;
% Parameter:   id =  q4, name = q4
	global_par_q4=2.4514;
% Parameter:   id =  g, name = g
	global_par_g=1.0258;
% Parameter:   id =  n6, name = n6
	global_par_n6=8.0706;
% Parameter:   id =  g7, name = g7
	global_par_g7=4.0E-4;
% Parameter:   id =  m16, name = m16
	global_par_m16=12.2398;
% Parameter:   id =  k14, name = k14
	global_par_k14=10.3617;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.2907;
% Parameter:   id =  r9, name = r9
	global_par_r9=0.2528;
% Parameter:   id =  r10, name = r10
	global_par_r10=0.2212;
% Parameter:   id =  m17, name = m17
	global_par_m17=4.4505;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.0703;
% Parameter:   id =  m18, name = m18
	global_par_m18=0.0156;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.6104;
% Parameter:   id =  light, name = light
	global_par_light=1.0;

% Reaction: id = reaction_1, name = cLm transcription
	reaction_reaction_1=compartment_compartment*global_par_g0^global_par_alpha/(global_par_g0^global_par_alpha+x(16)^global_par_alpha)*(global_par_light*(global_par_q1*x(13)+global_par_n0)+global_par_n1*x(9)^global_par_a/(global_par_g1^global_par_a+x(9)^global_par_a));

% Reaction: id = reaction_0, name = cLm degradation
	reaction_reaction_0=compartment_compartment*function_1(global_par_m1, x(1), global_par_k1);

% Reaction: id = reaction_2, name = cLc translation
	reaction_reaction_2=compartment_compartment*global_par_p1*x(1);

% Reaction: id = reaction_3, name = LHY protein translocation
	reaction_reaction_3=compartment_compartment*(global_par_r1*x(2)-global_par_r2*x(3));

% Reaction: id = reaction_4, name = cLc degradation
	reaction_reaction_4=compartment_compartment*function_1(global_par_m2, x(2), global_par_k2);

% Reaction: id = reaction_5, name = cLn degradation
	reaction_reaction_5=compartment_compartment*function_1(global_par_m3, x(3), global_par_k3);

% Reaction: id = reaction_6, name = cTm  transcription
	reaction_reaction_6=compartment_compartment*global_par_n2*x(12)^global_par_b/(global_par_g2^global_par_b+x(12)^global_par_b)*global_par_g3^global_par_c/(global_par_g3^global_par_c+x(3)^global_par_c);

% Reaction: id = reaction_7, name = cTm degradation
	reaction_reaction_7=compartment_compartment*function_1(global_par_m4, x(4), global_par_k4);

% Reaction: id = reaction_9, name = Y protein translocation
	reaction_reaction_9=compartment_compartment*(global_par_r7*x(11)-global_par_r8*x(12));

% Reaction: id = reaction_10, name = cYn degradation
	reaction_reaction_10=compartment_compartment*function_1(global_par_m14, x(12), global_par_k12);

% Reaction: id = reaction_11, name = cYc translation
	reaction_reaction_11=compartment_compartment*global_par_p4*x(10);

% Reaction: id = reaction_12, name = cYc degradation
	reaction_reaction_12=compartment_compartment*function_1(global_par_m13, x(11), global_par_k11);

% Reaction: id = reaction_13, name = X protein translocation
	reaction_reaction_13=compartment_compartment*(global_par_r5*x(8)-global_par_r6*x(9));

% Reaction: id = reaction_14, name = cXc degradation
	reaction_reaction_14=compartment_compartment*function_1(global_par_m10, x(8), global_par_k8);

% Reaction: id = reaction_15, name = cXc translation
	reaction_reaction_15=compartment_compartment*global_par_p3*x(7);

% Reaction: id = reaction_16, name = cXn degradation
	reaction_reaction_16=compartment_compartment*function_1(global_par_m11, x(9), global_par_k9);

% Reaction: id = reaction_17, name = cAc translation
	reaction_reaction_17=compartment_compartment*global_par_p6*x(14);

% Reaction: id = reaction_18, name = PPR7/9 protein translocation
	reaction_reaction_18=compartment_compartment*(global_par_r9*x(15)-global_par_r10*x(16));

% Reaction: id = reaction_19, name = cAc degradation
	reaction_reaction_19=compartment_compartment*function_1(global_par_m17, x(15), global_par_k15);

% Reaction: id = reaction_20, name = cAn degradation
	reaction_reaction_20=compartment_compartment*function_1(global_par_m18, x(16), global_par_k16);

% Reaction: id = reaction_21, name = light dependent production of protein P
	reaction_reaction_21=(1-global_par_light)*global_par_p5*compartment_compartment;

% Reaction: id = reaction_22, name = light activation protein P degradation
	reaction_reaction_22=global_par_q3*global_par_light*x(13)*compartment_compartment;

% Reaction: id = reaction_23, name = cPn degradation
	reaction_reaction_23=compartment_compartment*global_par_m15*x(13)/(global_par_k13+x(13));

% Reaction: id = reaction_25, name = light activation of cAm transcription
	reaction_reaction_25=global_par_light*global_par_q4*x(13)*compartment_compartment;

% Reaction: id = reaction_26, name = light independent cAm transcription
	reaction_reaction_26=compartment_compartment*global_par_n6*x(3)^global_par_g/(global_par_g7^global_par_g+x(3)^global_par_g);

% Reaction: id = reaction_27, name = cAm degradation
	reaction_reaction_27=compartment_compartment*global_par_m16*x(14)/(global_par_k14+x(14));

% Reaction: id = reaction_28, name = cXm transcription
	reaction_reaction_28=compartment_compartment*global_par_n3*x(6)^global_par_d/(global_par_g4^global_par_d+x(6)^global_par_d);

% Reaction: id = reaction_29, name = cXm degradation
	reaction_reaction_29=compartment_compartment*global_par_m9*x(7)/(global_par_k7+x(7));

% Reaction: id = reaction_30, name = cTc translation
	reaction_reaction_30=global_par_p2*compartment_compartment*x(4);

% Reaction: id = reaction_31, name = TOC1 protein translocation
	reaction_reaction_31=compartment_compartment*((-global_par_r4)*x(6)+global_par_r3*x(5));

% Reaction: id = reaction_32, name = light activation degradation of cTc
	reaction_reaction_32=compartment_compartment*(1-global_par_light)*global_par_m5*x(5)/(global_par_k5+x(5));

% Reaction: id = reaction_33, name = light independent degradation of cTc
	reaction_reaction_33=global_par_m6*compartment_compartment*x(5)/(global_par_k5+x(5));

% Reaction: id = reaction_34, name = light activation degradation of cTn
	reaction_reaction_34=compartment_compartment*(1-global_par_light)*global_par_m7*x(6)/(global_par_k6+x(6));

% Reaction: id = reaction_38, name = light independent degradation cTn
	reaction_reaction_38=global_par_m8*compartment_compartment*x(6)/(global_par_k6+x(6));

% Reaction: id = reaction_39, name = cYm transcription
	reaction_reaction_39=compartment_compartment*(global_par_light*global_par_q2*x(13)+(global_par_light*global_par_n4+global_par_n5)*global_par_g5^global_par_e/(global_par_g5^global_par_e+x(6)^global_par_e))*global_par_g6^global_par_f/(global_par_g6^global_par_f+x(3)^global_par_f);

% Reaction: id = reaction_40, name = cYm degradation
	reaction_reaction_40=compartment_compartment*global_par_m12*x(10)/(global_par_k10+x(10));

	xdot=zeros(16,1);
	
% Species:   id = cLm, name = LHY mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_0));
	
% Species:   id = cLc, name = LHY protein in cytoplasm, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = cLn, name = LHY protein in nucleus, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5));
	
% Species:   id = cTm, name = TOC1 mRNA, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = cTc, name = TOC1 protein  in cytoplasm, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33));
	
% Species:   id = cTn, name = TOC1 protein in nucleus, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_38));
	
% Species:   id = cXm, name = X mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = cXc, name = X protein in cytoplasm, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = cXn, name = X protein in nucleus, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_16));
	
% Species:   id = cYm, name = Y mRNA, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40));
	
% Species:   id = cYc, name = Y protein in the cytoplasm, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = cYn, name = Y protein in nucleus, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = cPn, name = light sensitive protein P, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23));
	
% Species:   id = cAm, name = PPR7/9 mRNA, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = cAc, name = PPR7/9 protein in cytoplasm, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = cAn, name = PPR7/9 protein in nucleus, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_20));
end

function z=function_1(V,substrate,Km), z=(V*substrate/(Km+substrate));end

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


