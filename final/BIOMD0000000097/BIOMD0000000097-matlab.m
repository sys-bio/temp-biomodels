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
% Model name = Zeilinger2006_PRR7-PRR9light-Yprime
%
% is http://identifiers.org/biomodels.db/MODEL4025650992
% is http://identifiers.org/biomodels.db/BIOMD0000000097
% isDescribedBy http://identifiers.org/pubmed/17102803
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000055
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.0659;
	x0(2) = 0.1951;
	x0(3) = 0.3952;
	x0(4) = 0.0861;
	x0(5) = 0.0772;
	x0(6) = 2.7182;
	x0(7) = 0.0077;
	x0(8) = 0.0011;
	x0(9) = 0.0073;
	x0(10) = 0.0;
	x0(11) = 0.7852;
	x0(12) = 0.1234;
	x0(13) = 4.5209;
	x0(14) = 2.5615;
	x0(15) = 1.6104;
	x0(16) = 14.5474;
	x0(17) = 7.6795;
	x0(18) = 1.1149;
	x0(19) = 9.7016;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  q1, name = q1
	global_par_q1=13.4334;
% Parameter:   id =  n1, name = n1
	global_par_n1=3.2016;
% Parameter:   id =  g1, name = g1
	global_par_g1=9.041;
% Parameter:   id =  m1, name = m1
	global_par_m1=6.8248;
% Parameter:   id =  k1, name = k1
	global_par_k1=13.0594;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.6926;
% Parameter:   id =  r1, name = r1
	global_par_r1=25.6818;
% Parameter:   id =  r2, name = r2
	global_par_r2=3.9781;
% Parameter:   id =  m2, name = m2
	global_par_m2=9.4099;
% Parameter:   id =  k2, name = k2
	global_par_k2=30.5639;
% Parameter:   id =  m3, name = m3
	global_par_m3=13.7795;
% Parameter:   id =  k3, name = k3
	global_par_k3=33.514;
% Parameter:   id =  n2, name = n2
	global_par_n2=11.6086;
% Parameter:   id =  g2, name = g2
	global_par_g2=16.6598;
% Parameter:   id =  g3, name = g3
	global_par_g3=13.4112;
% Parameter:   id =  m4, name = m4
	global_par_m4=12.1232;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.3722;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.5403;
% Parameter:   id =  p3, name = p3
	global_par_p3=6.9124;
% Parameter:   id =  r5, name = r5
	global_par_r5=29.4607;
% Parameter:   id =  r6, name = r6
	global_par_r6=4.5034;
% Parameter:   id =  m10, name = m10
	global_par_m10=8.5523;
% Parameter:   id =  k8, name = k8
	global_par_k8=12.528;
% Parameter:   id =  m11, name = m11
	global_par_m11=23.5996;
% Parameter:   id =  k9, name = k9
	global_par_k9=15.0626;
% Parameter:   id =  n4, name = n4
	global_par_n4=1.7832;
% Parameter:   id =  n5, name = n5
	global_par_n5=7.4615;
% Parameter:   id =  g5, name = g5
	global_par_g5=1.5987;
% Parameter:   id =  g6, name = g6
	global_par_g6=16.489;
% Parameter:   id =  m12, name = m12
	global_par_m12=5.9504;
% Parameter:   id =  k10, name = k10
	global_par_k10=11.5688;
% Parameter:   id =  r3, name = r3
	global_par_r3=51.1965;
% Parameter:   id =  r4, name = r4
	global_par_r4=8.9147;
% Parameter:   id =  m5, name = m5
	global_par_m5=7.2129;
% Parameter:   id =  m6, name = m6
	global_par_m6=9.5754;
% Parameter:   id =  k5, name = k5
	global_par_k5=34.2078;
% Parameter:   id =  m7, name = m7
	global_par_m7=1.1032;
% Parameter:   id =  m8, name = m8
	global_par_m8=2.2006;
% Parameter:   id =  k6, name = k6
	global_par_k6=56.7596;
% Parameter:   id =  n3, name = n3
	global_par_n3=2.4751;
% Parameter:   id =  g4, name = g4
	global_par_g4=20.5277;
% Parameter:   id =  m9, name = m9
	global_par_m9=4.2193;
% Parameter:   id =  k7, name = k7
	global_par_k7=14.9114;
% Parameter:   id =  p4, name = p4
	global_par_p4=6.0042;
% Parameter:   id =  r7, name = r7
	global_par_r7=35.7842;
% Parameter:   id =  r8, name = r8
	global_par_r8=27.9229;
% Parameter:   id =  m13, name = m13
	global_par_m13=7.5959;
% Parameter:   id =  k11, name = k11
	global_par_k11=26.9638;
% Parameter:   id =  m14, name = m14
	global_par_m14=8.1796;
% Parameter:   id =  k12, name = k12
	global_par_k12=21.8348;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.5;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.2;
% Parameter:   id =  q3, name = q3
	global_par_q3=1.0;
% Parameter:   id =  m15, name = m15
	global_par_m15=1.2;
% Parameter:   id =  g7, name = g7
	global_par_g7=0.2778;
% Parameter:   id =  g8, name = g8
	global_par_g8=0.9187;
% Parameter:   id =  n6, name = n6
	global_par_n6=11.0924;
% Parameter:   id =  g9, name = g9
	global_par_g9=20.3795;
% Parameter:   id =  m16, name = m16
	global_par_m16=9.3186;
% Parameter:   id =  k14, name = k14
	global_par_k14=51.261;
% Parameter:   id =  p6, name = p6
	global_par_p6=9.8416;
% Parameter:   id =  r9, name = r9
	global_par_r9=24.5689;
% Parameter:   id =  r10, name = r10
	global_par_r10=0.5024;
% Parameter:   id =  m17, name = m17
	global_par_m17=3.6143;
% Parameter:   id =  k15, name = k15
	global_par_k15=32.939;
% Parameter:   id =  m18, name = m18
	global_par_m18=6.7455;
% Parameter:   id =  k16, name = k16
	global_par_k16=24.451;
% Parameter:   id =  n7, name = n7
	global_par_n7=0.1031;
% Parameter:   id =  g10, name = g10
	global_par_g10=5.8418;
% Parameter:   id =  m19, name = m19
	global_par_m19=1.9234;
% Parameter:   id =  k17, name = k17
	global_par_k17=9.8065;
% Parameter:   id =  p7, name = p7
	global_par_p7=1.5323;
% Parameter:   id =  r11, name = r11
	global_par_r11=25.7542;
% Parameter:   id =  r12, name = r12
	global_par_r12=27.2451;
% Parameter:   id =  m20, name = m20
	global_par_m20=3.7484;
% Parameter:   id =  k18, name = k18
	global_par_k18=25.9739;
% Parameter:   id =  m21, name = m21
	global_par_m21=0.0193;
% Parameter:   id =  k19, name = k19
	global_par_k19=21.6441;
% Parameter:   id =  q4, name = q4
	global_par_q4=6.274;
% Parameter:   id =  n8, name = n8
	global_par_n8=3.5262;
% Parameter:   id =  a, name = a
	global_par_a=1.2497;
% Parameter:   id =  b, name = b
	global_par_b=4.2126;
% Parameter:   id =  c, name = c
	global_par_c=1.4509;
% Parameter:   id =  d, name = d
	global_par_d=1.3058;
% Parameter:   id =  e, name = e
	global_par_e=2.4146;
% Parameter:   id =  f, name = f
	global_par_f=2.1349;
% Parameter:   id =  h, name = h
	global_par_h=1.4176;
% Parameter:   id =  i, name = i
	global_par_i=2.0074;
% Parameter:   id =  j, name = j
	global_par_j=1.7615;
% Parameter:   id =  k, name = k
	global_par_k=3.8877;
% Parameter:   id =  ld, name = ld
	global_par_ld=1.0;
% Parameter:   id =  lmax, name = lmax
	global_par_lmax=1.0;
% Parameter:   id =  Day_in_hours, name = Day_in_hours
	global_par_Day_in_hours=24.0;

% Reaction: id = R1, name = Light dependent cLm production
	reaction_R1=compartment_nucleus*global_par_ld*global_par_q1*x(10);

% Reaction: id = R2, name = Light independent cLm production
	reaction_R2=compartment_nucleus*global_par_n1*x(16)^global_par_a/(global_par_g1^global_par_a+x(16)^global_par_a)*global_par_g7^global_par_h/(global_par_g7^global_par_h+x(6)^global_par_h)*global_par_g8^global_par_i/(global_par_g8^global_par_i+x(9)^global_par_i);

% Reaction: id = R3, name = cLm degradation
	reaction_R3=compartment_nucleus*global_par_m1*x(2)/(global_par_k1+x(2));

% Reaction: id = R4, name = cLc synthesis
	reaction_R4=compartment_cytoplasm*global_par_p1*x(2);

% Reaction: id = R5, name = cLc transport to nucleus
	reaction_R5=compartment_cytoplasm*global_par_r1*x(1);

% Reaction: id = R6, name = cLn transport to cytoplasm
	reaction_R6=compartment_nucleus*global_par_r2*x(3);

% Reaction: id = R7, name = cLc degradation
	reaction_R7=compartment_cytoplasm*global_par_m2*x(1)/(global_par_k2+x(1));

% Reaction: id = R8, name = cLn degradation
	reaction_R8=compartment_nucleus*global_par_m3*x(3)/(global_par_k3+x(3));

% Reaction: id = R9, name = cTm transcription
	reaction_R9=compartment_nucleus*global_par_n2*x(19)^global_par_b/(global_par_g2^global_par_b+x(19)^global_par_b)*global_par_g3^global_par_c/(global_par_g3^global_par_c+x(3)^global_par_c);

% Reaction: id = R10, name = cTm degradation
	reaction_R10=compartment_nucleus*global_par_m4*x(12)/(global_par_k4+x(12));

% Reaction: id = R11, name = cTc synthesis
	reaction_R11=compartment_cytoplasm*global_par_p2*x(12);

% Reaction: id = R12, name = cTc transport to nucleus
	reaction_R12=compartment_cytoplasm*global_par_r3*x(11);

% Reaction: id = R13, name = cTn transport to cytoplasm
	reaction_R13=compartment_nucleus*global_par_r4*x(13);

% Reaction: id = R14, name = cTc degradation
	reaction_R14=compartment_cytoplasm*((global_par_lmax-global_par_ld)*global_par_m5+global_par_m6)*x(11)/(global_par_k5+x(11));

% Reaction: id = R15, name = cTn degradation
	reaction_R15=compartment_nucleus*((global_par_lmax-global_par_ld)*global_par_m7+global_par_m8)*x(13)/(global_par_k6+x(13));

% Reaction: id = R16, name = Species X transcription
	reaction_R16=compartment_nucleus*global_par_n3*x(13)^global_par_d/(global_par_g4^global_par_d+x(13)^global_par_d);

% Reaction: id = R17, name = Species X degradation
	reaction_R17=compartment_nucleus*global_par_m9*x(15)/(global_par_k7+x(15));

% Reaction: id = R18, name = cXc synthesis
	reaction_R18=compartment_cytoplasm*global_par_p3*x(15);

% Reaction: id = R19, name = cXc transport to nucleus
	reaction_R19=compartment_cytoplasm*global_par_r5*x(14);

% Reaction: id = R20, name = cXn transport to cytoplasm
	reaction_R20=compartment_nucleus*global_par_r6*x(16);

% Reaction: id = R21, name = cXc degradation
	reaction_R21=compartment_cytoplasm*global_par_m10*x(14)/(global_par_k8+x(14));

% Reaction: id = R22, name = cXn degradation
	reaction_R22=compartment_nucleus*global_par_m11*x(16)/(global_par_k9+x(16));

% Reaction: id = R23, name = Species Y transcription
	reaction_R23=compartment_nucleus*(global_par_ld*global_par_n4+global_par_n5)*global_par_g5^global_par_e/(global_par_g5^global_par_e+x(13)^global_par_e)*global_par_g6^global_par_f/(global_par_g6^global_par_f+x(3)^global_par_f);

% Reaction: id = R24, name = cYm degradation
	reaction_R24=compartment_nucleus*global_par_m12*x(18)/(global_par_k10+x(18));

% Reaction: id = R25, name = cYc synthesis
	reaction_R25=compartment_cytoplasm*global_par_p4*x(18);

% Reaction: id = R26, name = cYc transport to nucleus
	reaction_R26=compartment_cytoplasm*global_par_r7*x(17);

% Reaction: id = R27, name = cYn transport to cytoplasm
	reaction_R27=compartment_nucleus*global_par_r8*x(19);

% Reaction: id = R28, name = cYc degradation
	reaction_R28=compartment_cytoplasm*global_par_m13*x(17)/(global_par_k11+x(17));

% Reaction: id = R29, name = cYn degradation
	reaction_R29=compartment_nucleus*global_par_m14*x(19)/(global_par_k12+x(19));

% Reaction: id = R30, name = cPn synthesis
	reaction_R30=compartment_nucleus*(global_par_lmax-global_par_ld)*global_par_p5;

% Reaction: id = R31a, name = cPn degradation
	reaction_R31a=compartment_nucleus*global_par_m15*x(10)/(global_par_k13+x(10));

% Reaction: id = R31b, name = cPn light dependent degradation
	reaction_R31b=compartment_nucleus*global_par_q3*global_par_ld*x(10);

% Reaction: id = R32, name = cP7m transcription
	reaction_R32=compartment_nucleus*global_par_n6*x(3)^global_par_j/(global_par_g9^global_par_j+x(3)^global_par_j);

% Reaction: id = R33, name = cP7m degradation
	reaction_R33=compartment_nucleus*global_par_m16*x(5)/(global_par_k14+x(5));

% Reaction: id = R34, name = cP7c synthesis
	reaction_R34=compartment_cytoplasm*global_par_p6*x(5);

% Reaction: id = R35, name = cP7c transport to nucleus
	reaction_R35=compartment_cytoplasm*global_par_r9*x(4);

% Reaction: id = R36, name = cP7n transport to cytoplasm
	reaction_R36=compartment_nucleus*global_par_r10*x(6);

% Reaction: id = R37, name = cP7c degradation
	reaction_R37=compartment_cytoplasm*global_par_m17*x(4)/(global_par_k15+x(4));

% Reaction: id = R38, name = cP7n degradation
	reaction_R38=compartment_nucleus*global_par_m18*x(6)/(global_par_k16+x(6));

% Reaction: id = R39, name = cP9m transcription
	reaction_R39=compartment_nucleus*(global_par_ld*global_par_q4*x(10)+global_par_n7*global_par_ld+global_par_n8)*x(3)^global_par_k/(global_par_g10^global_par_k+x(3)^global_par_k);

% Reaction: id = R40, name = cP9m degradation
	reaction_R40=compartment_nucleus*global_par_m19*x(8)/(global_par_k17+x(8));

% Reaction: id = R41, name = cP9c synthesis
	reaction_R41=compartment_cytoplasm*global_par_p7*x(8);

% Reaction: id = R42, name = cP9c transport to nucleus
	reaction_R42=compartment_cytoplasm*global_par_r11*x(7);

% Reaction: id = R43, name = cP9n transport to cytoplasm
	reaction_R43=compartment_nucleus*global_par_r12*x(9);

% Reaction: id = R44, name = cP9c degradation
	reaction_R44=compartment_cytoplasm*global_par_m20*x(7)/(global_par_k18+x(7));

% Reaction: id = R45, name = cP9n degradation
	reaction_R45=compartment_nucleus*global_par_m21*x(9)/(global_par_k19+x(9));

%Event: id=event_0000001
	event_event_0000001=(global_par_Day_in_hours-t) <= 0;

	if(event_event_0000001) 
		global_par_Day_in_hours=global_par_Day_in_hours+24;
		global_par_ld=1;
	end

%Event: id=event_0000002
	event_event_0000002=((global_par_Day_in_hours-t) <= 16) && ((global_par_Day_in_hours-t) > 0);

	if(event_event_0000002) 
		global_par_ld=0;
	end

	xdot=zeros(19,1);
	
% Species:   id = cLc, name = cLc, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
	
% Species:   id = cLm, name = cLm, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = cLn, name = cLn, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R8));
	
% Species:   id = cP7c, name = cP7c, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R34) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R36) + (-1.0 * reaction_R37));
	
% Species:   id = cP7m, name = cP7m, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_R32) + (-1.0 * reaction_R33));
	
% Species:   id = cP7n, name = cP7n, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_R35) + (-1.0 * reaction_R36) + (-1.0 * reaction_R38));
	
% Species:   id = cP9c, name = cP9c, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R41) + (-1.0 * reaction_R42) + ( 1.0 * reaction_R43) + (-1.0 * reaction_R44));
	
% Species:   id = cP9m, name = cP9m, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_R39) + (-1.0 * reaction_R40));
	
% Species:   id = cP9n, name = cP9n, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_R42) + (-1.0 * reaction_R43) + (-1.0 * reaction_R45));
	
% Species:   id = cPn, name = cPn, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_R30) + (-1.0 * reaction_R31a) + (-1.0 * reaction_R31b));
	
% Species:   id = cTc, name = cTc, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13) + (-1.0 * reaction_R14));
	
% Species:   id = cTm, name = cTm, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = cTn, name = cTn, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R15));
	
% Species:   id = cXc, name = cXc, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R20) + (-1.0 * reaction_R21));
	
% Species:   id = cXm, name = cXm, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17));
	
% Species:   id = cXn, name = cXn, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20) + (-1.0 * reaction_R22));
	
% Species:   id = cYc, name = cYc, affected by kineticLaw
	xdot(17) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R27) + (-1.0 * reaction_R28));
	
% Species:   id = cYm, name = cYm, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R24));
	
% Species:   id = cYn, name = cYn, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R27) + (-1.0 * reaction_R29));
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


