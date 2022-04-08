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
% Model name = Locke2005 - Circadian Clock
%
% is http://identifiers.org/biomodels.db/MODEL0737170531
% is http://identifiers.org/biomodels.db/BIOMD0000000055
% isDescribedBy http://identifiers.org/pubmed/16729048
% isDerivedFrom http://identifiers.org/pubmed/15784272
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.539;
	x0(2) = 0.015;
	x0(3) = 0.0855;
	x0(4) = 0.456;
	x0(5) = 8.7;
	x0(6) = 0.4;
	x0(7) = 0.08;
	x0(8) = 1.34;
	x0(9) = 0.4;
	x0(10) = 0.037;
	x0(11) = 0.004;
	x0(12) = 0.013;
	x0(13) = 0.835;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  q1, name = q1
	global_par_q1=2.4514;
% Parameter:   id =  n1, name = n1
	global_par_n1=5.1694;
% Parameter:   id =  a, name = a
	global_par_a=3.3064;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.876738488;
% Parameter:   id =  m1, name = m1
	global_par_m1=1.5283;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.817;
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
	global_par_g2=0.036805783;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.26593318;
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
	global_par_g4=0.538811228;
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
	global_par_q2=2.40178;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.0857;
% Parameter:   id =  n5, name = n5
	global_par_n5=0.1649;
% Parameter:   id =  g5, name = g5
	global_par_g5=1.17803247;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.064455137;
% Parameter:   id =  f, name = f
	global_par_f=1.0237;
% Parameter:   id =  e, name = e
	global_par_e=3.6064;
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
% Parameter:   id =  q3, name = q3
	global_par_q3=1.0;
% Parameter:   id =  m15, name = m15
	global_par_m15=1.2;
% Parameter:   id =  Lmax, name = Lmax
	global_par_Lmax=1.0;
% Parameter:   id =  Lmin, name = Lmin
	global_par_Lmin=0.0;
% Parameter:   id =  CP, name = CP
	global_par_CP=24.0;
% Parameter:   id =  dayLength, name = dayLength
	global_par_dayLength=12.0;

% Reaction: id = one11, name = LHY transcription by light activation
	reaction_one11=compartment_compartment*LD(t, global_par_dayLength)*global_par_q1*x(13);

% Reaction: id = two11, name = Light independent LHY transcription	% Local Parameter:   id =  Fch_0, name = Fch_0
	reaction_two11_Fch_0=8.0;

	reaction_two11=compartment_compartment*global_par_n1*x(9)^global_par_a/(global_par_g1^global_par_a+x(9)^global_par_a);

% Reaction: id = three11, name = LHY mRNA degradation
	reaction_three11=compartment_compartment*global_par_m1*x(1)/(global_par_k1+x(1));

% Reaction: id = one12, name = LHY translation
	reaction_one12=compartment_compartment*global_par_p1*x(1);

% Reaction: id = three12, name = LHY transport out of nucleus
	reaction_three12=compartment_compartment*global_par_r2*x(3);

% Reaction: id = four12, name = Cytoplasmic LHY degradation	% Local Parameter:   id =  Fch_0, name = Fch_0
	reaction_four12_Fch_0=8.0;

	reaction_four12=compartment_compartment*global_par_m2*x(2)/(global_par_k2+x(2));

% Reaction: id = one13, name = LHY transport into nucleus
	reaction_one13=compartment_compartment*global_par_r1*x(2);

% Reaction: id = three13, name = Nuclear LHY degradation
	reaction_three13=compartment_compartment*global_par_m3*x(3)/(global_par_k3+x(3));

% Reaction: id = one14, name = TOC1 transcription
	reaction_one14=compartment_compartment*global_par_n2*x(12)^global_par_b/(global_par_g2^global_par_b+x(12)^global_par_b)*global_par_g3^global_par_c/(global_par_g3^global_par_c+x(3)^global_par_c);

% Reaction: id = two14, name = TOC mRNA degradation
	reaction_two14=compartment_compartment*global_par_m4*x(4)/(global_par_k4+x(4));

% Reaction: id = one15, name = TOC1 translation
	reaction_one15=compartment_compartment*global_par_p2*x(4);

% Reaction: id = three15, name = TOC1 transport out of nucleus
	reaction_three15=compartment_compartment*global_par_r4*x(6);

% Reaction: id = four15, name = Cytoplasmic TOC1 degradation
	reaction_four15=compartment_compartment*((1-LD(t, global_par_dayLength))*global_par_m5+global_par_m6)*x(5)/(global_par_k5+x(5));

% Reaction: id = one16, name = TOC1 movement into nucleus
	reaction_one16=compartment_compartment*global_par_r3*x(5);

% Reaction: id = three16, name = Nuclear TOC1 degradation
	reaction_three16=compartment_compartment*((1-LD(t, global_par_dayLength))*global_par_m7+global_par_m8)*x(6)/(global_par_k6+x(6));

% Reaction: id = one17, name = Protein X transcription
	reaction_one17=compartment_compartment*global_par_n3*x(6)^global_par_d/(global_par_g4^global_par_d+x(6)^global_par_d);

% Reaction: id = two17, name = Protein X degradation
	reaction_two17=compartment_compartment*global_par_m9*x(7)/(global_par_k7+x(7));

% Reaction: id = one18, name = Protein X translation
	reaction_one18=compartment_compartment*global_par_p3*x(7);

% Reaction: id = three18, name = ProteinX movement out of nucleus
	reaction_three18=compartment_compartment*global_par_r6*x(9);

% Reaction: id = four18, name = Cytoplasmic Protein X degradation
	reaction_four18=compartment_compartment*global_par_m10*x(8)/(global_par_k8+x(8));

% Reaction: id = one19, name = Protein X movement into nucleus
	reaction_one19=compartment_compartment*global_par_r5*x(8);

% Reaction: id = three19, name = Nuclear Protein X degradation
	reaction_three19=compartment_compartment*global_par_m11*x(9)/(global_par_k9+x(9));

% Reaction: id = one20, name = Protein Y transcription
	reaction_one20=compartment_compartment*(LD(t, global_par_dayLength)*global_par_q2*x(13)+(LD(t, global_par_dayLength)*global_par_n4+global_par_n5)*global_par_g5^global_par_e/(global_par_g5^global_par_e+x(6)^global_par_e))*global_par_g6^global_par_f/(global_par_g6^global_par_f+x(3)^global_par_f);

% Reaction: id = two20, name = Protein Y mRNA degradation
	reaction_two20=compartment_compartment*global_par_m12*x(10)/(global_par_k10+x(10));

% Reaction: id = one21, name = Protein Y translation
	reaction_one21=compartment_compartment*global_par_p4*x(10);

% Reaction: id = three21, name = Protein Y out of nucleus
	reaction_three21=compartment_compartment*global_par_r8*x(12);

% Reaction: id = four21, name = Cytoplasmic Protein Y degradation
	reaction_four21=compartment_compartment*global_par_m13*x(11)/(global_par_k11+x(11));

% Reaction: id = one22, name = Protein Y into nucleus
	reaction_one22=compartment_compartment*global_par_r7*x(11);

% Reaction: id = three22, name = Nuclear Protein Y degradation
	reaction_three22=compartment_compartment*global_par_m14*x(12)/(global_par_k12+x(12));

% Reaction: id = one23, name = Light dependent production of Protein P
	reaction_one23=compartment_compartment*(1-LD(t, global_par_dayLength))*global_par_p5;

% Reaction: id = two23, name = Protein P degradation
	reaction_two23=compartment_compartment*global_par_m15*x(13)/(global_par_k13+x(13));

% Reaction: id = three23, name = Light activated Protein P degradation
	reaction_three23=compartment_compartment*global_par_q3*LD(t, global_par_dayLength)*x(13);

	xdot=zeros(13,1);
	
% Species:   id = cLm, name = LHY mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_one11) + ( 1.0 * reaction_two11) + (-1.0 * reaction_three11));
	
% Species:   id = cLc, name = LHY protein in cytoplasm, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_one12) + ( 1.0 * reaction_three12) + (-1.0 * reaction_four12) + (-1.0 * reaction_one13));
	
% Species:   id = cLn, name = LHY protein in nucleus, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_three12) + ( 1.0 * reaction_one13) + (-1.0 * reaction_three13));
	
% Species:   id = cTm, name = TOC1 mRNA, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_one14) + (-1.0 * reaction_two14));
	
% Species:   id = cTc, name = TOC1 protein in cytoplasm, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_one15) + ( 1.0 * reaction_three15) + (-1.0 * reaction_four15) + (-1.0 * reaction_one16));
	
% Species:   id = cTn, name = TOC1 protein in nucleus, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_three15) + ( 1.0 * reaction_one16) + (-1.0 * reaction_three16));
	
% Species:   id = cXm, name = X mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_one17) + (-1.0 * reaction_two17));
	
% Species:   id = cXc, name = X protein in cytoplasm, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_one18) + ( 1.0 * reaction_three18) + (-1.0 * reaction_four18) + (-1.0 * reaction_one19));
	
% Species:   id = cXn, name = X protein in nucleus, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_three18) + ( 1.0 * reaction_one19) + (-1.0 * reaction_three19));
	
% Species:   id = cYm, name = Y mRNA, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_one20) + (-1.0 * reaction_two20));
	
% Species:   id = cYc, name = Y protein in cytoplasm, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_one21) + ( 1.0 * reaction_three21) + (-1.0 * reaction_four21) + (-1.0 * reaction_one22));
	
% Species:   id = cYn, name = Y protein in nucleus, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_three21) + ( 1.0 * reaction_one22) + (-1.0 * reaction_three22));
	
% Species:   id = cPn, name = light sensitive protein P, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_one23) + (-1.0 * reaction_two23) + (-1.0 * reaction_three23));
end

function z=LD(tod,length), z=(ceil(sin(pi*tod/length+0.001)/2));end

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


