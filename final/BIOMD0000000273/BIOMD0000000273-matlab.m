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
% Model name = Pokhilko2010_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL1007240000
% is http://identifiers.org/biomodels.db/BIOMD0000000273
% isDescribedBy http://identifiers.org/pubmed/20865009
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000089
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.0238;
	x0(2) = 0.119;
	x0(3) = 0.416;
	x0(4) = 1.0;
	x0(5) = 0.054;
	x0(6) = 0.044;
	x0(7) = 0.0065;
	x0(8) = 0.825;
	x0(9) = 0.019;
	x0(10) = 0.075;
	x0(11) = 0.056;
	x0(12) = 0.35;
	x0(13) = 0.393;
	x0(14) = 0.25;
	x0(15) = 0.24;
	x0(16) = 0.1;
	x0(17) = 0.093;
	x0(18) = 0.0774;
	x0(19) = 0.323;


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

% Compartment: id = def, name = def, constant
	compartment_def=1.0;
% Parameter:   id =  n0, name = n0
	global_par_n0=0.4;
% Parameter:   id =  n1, name = n1
	global_par_n1=1.8;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.7;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.06;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.0;
% Parameter:   id =  n5, name = n5
	global_par_n5=3.4;
% Parameter:   id =  n6, name = n6
	global_par_n6=1.25;
% Parameter:   id =  n7, name = n7
	global_par_n7=0.2;
% Parameter:   id =  n8, name = n8
	global_par_n8=0.42;
% Parameter:   id =  n9, name = n9
	global_par_n9=0.26;
% Parameter:   id =  n10, name = n10
	global_par_n10=0.18;
% Parameter:   id =  n11, name = n11
	global_par_n11=0.71;
% Parameter:   id =  n12, name = n12
	global_par_n12=2.3;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.1;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.28;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.4;
% Parameter:   id =  g4, name = g4
	global_par_g4=0.91;
% Parameter:   id =  g5, name = g5
	global_par_g5=0.3;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.3;
% Parameter:   id =  g7, name = g7
	global_par_g7=0.18;
% Parameter:   id =  g8, name = g8
	global_par_g8=0.14;
% Parameter:   id =  g9, name = g9
	global_par_g9=0.3;
% Parameter:   id =  g10, name = g10
	global_par_g10=0.7;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.7;
% Parameter:   id =  g12, name = g12
	global_par_g12=0.5;
% Parameter:   id =  g13, name = g13
	global_par_g13=0.6;
% Parameter:   id =  g14, name = g14
	global_par_g14=0.17;
% Parameter:   id =  g15, name = g15
	global_par_g15=0.4;
% Parameter:   id =  g16, name = g16
	global_par_g16=0.2;
% Parameter:   id =  m1, name = m1
	global_par_m1=0.54;
% Parameter:   id =  m2, name = m2
	global_par_m2=0.24;
% Parameter:   id =  m3, name = m3
	global_par_m3=0.2;
% Parameter:   id =  m4, name = m4
	global_par_m4=0.2;
% Parameter:   id =  m5, name = m5
	global_par_m5=0.3;
% Parameter:   id =  m6, name = m6
	global_par_m6=0.25;
% Parameter:   id =  m7, name = m7
	global_par_m7=0.5;
% Parameter:   id =  m8, name = m8
	global_par_m8=0.1;
% Parameter:   id =  m9, name = m9
	global_par_m9=1.0;
% Parameter:   id =  m10, name = m10
	global_par_m10=0.3;
% Parameter:   id =  m11, name = m11
	global_par_m11=1.0;
% Parameter:   id =  m12, name = m12
	global_par_m12=1.0;
% Parameter:   id =  m13, name = m13
	global_par_m13=0.32;
% Parameter:   id =  m14, name = m14
	global_par_m14=0.28;
% Parameter:   id =  m15, name = m15
	global_par_m15=0.31;
% Parameter:   id =  m16, name = m16
	global_par_m16=0.5;
% Parameter:   id =  m17, name = m17
	global_par_m17=0.3;
% Parameter:   id =  m18, name = m18
	global_par_m18=1.0;
% Parameter:   id =  m19, name = m19
	global_par_m19=0.2;
% Parameter:   id =  m20, name = m20
	global_par_m20=1.2;
% Parameter:   id =  m21, name = m21
	global_par_m21=0.2;
% Parameter:   id =  m22, name = m22
	global_par_m22=2.0;
% Parameter:   id =  m23, name = m23
	global_par_m23=1.0;
% Parameter:   id =  m24, name = m24
	global_par_m24=0.405;
% Parameter:   id =  m25, name = m25
	global_par_m25=0.28;
% Parameter:   id =  m26, name = m26
	global_par_m26=0.14;
% Parameter:   id =  a, name = a
	global_par_a=2.0;
% Parameter:   id =  b, name = b
	global_par_b=3.0;
% Parameter:   id =  c, name = c
	global_par_c=3.0;
% Parameter:   id =  d, name = d
	global_par_d=2.5;
% Parameter:   id =  e, name = e
	global_par_e=2.0;
% Parameter:   id =  f, name = f
	global_par_f=3.0;
% Parameter:   id =  h, name = h
	global_par_h=2.0;
% Parameter:   id =  g, name = g
	global_par_g=2.0;
% Parameter:   id =  i, name = i
	global_par_i=3.0;
% Parameter:   id =  j, name = j
	global_par_j=3.0;
% Parameter:   id =  k, name = k
	global_par_k=3.0;
% Parameter:   id =  l, name = l
	global_par_l=2.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  n, name = n
	global_par_n=1.0;
% Parameter:   id =  o, name = o
	global_par_o=2.0;
% Parameter:   id =  s, name = s
	global_par_s=3.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.4;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.27;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.1;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.268;
% Parameter:   id =  p5, name = p5
	global_par_p5=1.0;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.44;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.3;
% Parameter:   id =  p8, name = p8
	global_par_p8=0.7;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.4;
% Parameter:   id =  p10, name = p10
	global_par_p10=0.36;
% Parameter:   id =  p11, name = p11
	global_par_p11=0.23;
% Parameter:   id =  p12, name = p12
	global_par_p12=30.0;
% Parameter:   id =  p13, name = p13
	global_par_p13=0.4;
% Parameter:   id =  p14, name = p14
	global_par_p14=0.45;
% Parameter:   id =  p15, name = p15
	global_par_p15=0.05;
% Parameter:   id =  q1, name = q1
	global_par_q1=0.8;
% Parameter:   id =  q2, name = q2
	global_par_q2=0.5;
% Parameter:   id =  q3, name = q3
	global_par_q3=2.9;
% Parameter:   id =  q4, name = q4
	global_par_q4=0.6;
% Parameter:   id =  dawn, name = dawn
	global_par_dawn=0.0;
% Parameter:   id =  dusk, name = dusk
	global_par_dusk=12.0;
% Parameter:   id =  dawn1, name = dawn1
	global_par_dawn1=0.0;
% Parameter:   id =  dusk1, name = dusk1
	global_par_dusk1=3.0;
% Parameter:   id =  dawn2, name = dawn2
	global_par_dawn2=9.0;
% Parameter:   id =  dusk2, name = dusk2
	global_par_dusk2=12.0;
% Parameter:   id =  L, name = L
% Parameter:   id =  D, name = D
% Parameter:   id =  parameter_1, name = quantity
% Warning parameter parameter_1 is not constant, it should be controlled by a Rule and/or events
	global_par_parameter_1=0.5;
% assignmentRule: variable = L
	global_par_L=0.5*(1+tanh((t-24*floor(t/24))/0.5)-(1+tanh((t-24*floor(t/24)-12)/0.5))+1+tanh((t-24*floor(t/24)-24)/0.5));
% assignmentRule: variable = D
	global_par_D=1-global_par_L;

% Reaction: id = cL_m_trscr, name = cL_m_trscr
	reaction_cL_m_trscr=compartment_def*function_4_cL_m_trscr(global_par_L, global_par_a, global_par_b, x(6), x(8), x(9), x(11), x(15), compartment_def, global_par_g1, global_par_g2, global_par_n0, global_par_n1, global_par_q1);

% Reaction: id = cL_m_degr, name = cL_m_degr
	reaction_cL_m_degr=compartment_def*function_4_cL_m_degr(global_par_D, global_par_L, x(4), compartment_def, global_par_m1, global_par_m2);

% Reaction: id = cL_trsl, name = cL_trsl
	reaction_cL_trsl=compartment_def*function_4_cL_trsl(global_par_D, global_par_L, x(4), compartment_def, global_par_p1, global_par_p2);

% Reaction: id = cL_degr, name = cL_degr
	reaction_cL_degr=compartment_def*function_4_cL_degr(global_par_c, x(3), compartment_def, global_par_g3, global_par_m3, global_par_p3);

% Reaction: id = cL_modif, name = cL_modif
	reaction_cL_modif=compartment_def*function_4_cL_modif(global_par_c, x(3), compartment_def, global_par_g3, global_par_p3);

% Reaction: id = cLm_degr, name = cLm_degr
	reaction_cLm_degr=compartment_def*function_4_cLm_degr(x(5), compartment_def, global_par_m4);

% Reaction: id = cT_m_trscr, name = cT_m_trscr
	reaction_cT_m_trscr=compartment_def*function_4_cT_m_trscr(x(3), x(16), global_par_d, compartment_def, global_par_e, global_par_g4, global_par_g5, global_par_n2, global_par_n3);

% Reaction: id = cT_m_degr, name = cT_m_degr
	reaction_cT_m_degr=compartment_def*function_4_cT_m_degr(x(14), compartment_def, global_par_m5);

% Reaction: id = cT_trsl, name = cT_trsl
	reaction_cT_trsl=compartment_def*function_4_cT_trsl(x(14), compartment_def, global_par_p4);

% Reaction: id = cT_degr, name = cT_degr
	reaction_cT_degr=compartment_def*function_4_cT_degr(global_par_D, global_par_L, x(13), x(18), x(19), compartment_def, global_par_m6, global_par_m7, global_par_m8, global_par_p5);

% Reaction: id = cT_modif, name = cT_modif
	reaction_cT_modif=compartment_def*function_4_cT_modif(x(13), compartment_def, global_par_f, global_par_g6, global_par_p15);

% Reaction: id = cTm_degr, name = cTm_degr
	reaction_cTm_degr=compartment_def*function_4_cTm_degr(global_par_D, global_par_L, x(15), compartment_def, global_par_m25, global_par_m26);

% Reaction: id = cY_m_trscr, name = cY_m_trscr
	reaction_cY_m_trscr=compartment_def*function_4_cY_m_trscr(global_par_D, global_par_L, x(3), x(8), x(13), compartment_def, global_par_g, global_par_g16, global_par_g7, global_par_n5, global_par_n6, global_par_q2, global_par_s);

% Reaction: id = cY_m_degr, name = cY_m_degr
	reaction_cY_m_degr=compartment_def*function_4_cY_m_degr(x(17), compartment_def, global_par_m9);

% Reaction: id = cY_trsl, name = cY_trsl
	reaction_cY_trsl=compartment_def*function_4_cY_trsl(x(17), compartment_def, global_par_p6);

% Reaction: id = cY_degr, name = cY_degr
	reaction_cY_degr=compartment_def*function_4_cY_degr(x(16), compartment_def, global_par_m10);

% Reaction: id = cP_trsl, name = cP_trsl
	reaction_cP_trsl=compartment_def*function_4_cP_trsl(global_par_D, x(8), compartment_def, global_par_p7);

% Reaction: id = cP_degr, name = cP_degr
	reaction_cP_degr=compartment_def*function_4_cP_degr(global_par_L, x(8), compartment_def, global_par_m11);

% Reaction: id = cP9_m_trscr, name = cP9_m_trscr
	reaction_cP9_m_trscr=compartment_def*function_4_cP9_m_trscr(global_par_L, x(3), x(8), x(13), compartment_def, global_par_g8, global_par_g9, global_par_h, global_par_i, global_par_n4, global_par_n7, global_par_q3);

% Reaction: id = cP9_m_degr, name = cP9_m_degr
	reaction_cP9_m_degr=compartment_def*function_4_cP9_m_degr(x(12), compartment_def, global_par_m12);

% Reaction: id = cP9_trsl, name = cP9_trsl
	reaction_cP9_trsl=compartment_def*function_4_cP9_trsl(x(12), compartment_def, global_par_p8);

% Reaction: id = cP9_degr, name = cP9_degr
	reaction_cP9_degr=compartment_def*function_4_cP9_degr(global_par_D, global_par_L, x(11), compartment_def, global_par_m13, global_par_m22);

% Reaction: id = cP7_m_trscr, name = cP7_m_trscr
	reaction_cP7_m_trscr=compartment_def*function_4_cP7_m_trscr(x(3), x(5), x(11), compartment_def, global_par_g10, global_par_g11, global_par_j, global_par_k, global_par_n8, global_par_n9);

% Reaction: id = cP7_m_degr, name = cP7_m_degr
	reaction_cP7_m_degr=compartment_def*function_4_cP7_m_degr(x(10), compartment_def, global_par_m14);

% Reaction: id = cP7_trsl, name = cP7_trsl
	reaction_cP7_trsl=compartment_def*function_4_cP7_trsl(x(10), compartment_def, global_par_p9);

% Reaction: id = cP7_degr, name = cP7_degr
	reaction_cP7_degr=compartment_def*function_4_cP7_degr(global_par_D, global_par_L, x(9), compartment_def, global_par_m15, global_par_m23);

% Reaction: id = cNI_m_trscr, name = cNI_m_trscr
	reaction_cNI_m_trscr=compartment_def*function_4_cNI_m_trscr(x(5), x(9), compartment_def, global_par_g12, global_par_g13, global_par_l, global_par_m, global_par_n10, global_par_n11);

% Reaction: id = cNI_m_degr, name = cNI_m_degr
	reaction_cNI_m_degr=compartment_def*function_4_cNI_m_degr(x(7), compartment_def, global_par_m16);

% Reaction: id = cNI_trsl, name = cNI_trsl
	reaction_cNI_trsl=compartment_def*function_4_cNI_trsl(x(7), compartment_def, global_par_p10);

% Reaction: id = cNI_degr, name = cNI_degr
	reaction_cNI_degr=compartment_def*function_4_cNI_degr(global_par_D, global_par_L, x(6), compartment_def, global_par_m17, global_par_m24);

% Reaction: id = cG_m_trscr, name = cG_m_trscr
	reaction_cG_m_trscr=compartment_def*function_4_cG_m_trscr(global_par_L, x(3), x(8), x(13), compartment_def, global_par_g14, global_par_g15, global_par_n, global_par_n12, global_par_o, global_par_q4);

% Reaction: id = cG_m_degr, name = cG_m_degr
	reaction_cG_m_degr=compartment_def*function_4_cG_m_degr(x(2), compartment_def, global_par_m18);

% Reaction: id = cG_trsl, name = cG_trsl
	reaction_cG_trsl=compartment_def*function_4_cG_trsl(x(2), compartment_def, global_par_p11);

% Reaction: id = cG_degr, name = cG_degr
	reaction_cG_degr=compartment_def*function_4_cG_degr(x(1), compartment_def, global_par_m19);

% Reaction: id = cG_cZTL_assoc, name = cG_cZTL_assoc
	reaction_cG_cZTL_assoc=compartment_def*function_4_cG_cZTL_assoc(global_par_D, global_par_L, x(1), x(18), x(19), compartment_def, global_par_p12, global_par_p13);

% Reaction: id = cZTL_trsl, name = cZTL_trsl
	reaction_cZTL_trsl=compartment_def*function_4_cZTL_trsl(compartment_def, global_par_p14);

% Reaction: id = cZTL_degr, name = cZTL_degr
	reaction_cZTL_degr=compartment_def*function_4_cZTL_degr(x(19), compartment_def, global_par_m20);

% Reaction: id = cZG_degr, name = cZG_degr
	reaction_cZG_degr=compartment_def*function_4_cZG_degr(x(18), compartment_def, global_par_m21);

	xdot=zeros(19,1);
	
% Species:   id = cG, name = cG, affected by kineticLaw
	xdot(1) = (1/(compartment_def))*(( 1.0 * reaction_cG_trsl) + (-1.0 * reaction_cG_degr) + (-1.0 * reaction_cG_cZTL_assoc));
	
% Species:   id = cG_m, name = cG_m, affected by kineticLaw
	xdot(2) = (1/(compartment_def))*(( 1.0 * reaction_cG_m_trscr) + (-1.0 * reaction_cG_m_degr));
	
% Species:   id = cL, name = cL, affected by kineticLaw
	xdot(3) = (1/(compartment_def))*(( 1.0 * reaction_cL_trsl) + (-1.0 * reaction_cL_degr));
	
% Species:   id = cL_m, name = cL_m, affected by kineticLaw
	xdot(4) = (1/(compartment_def))*(( 1.0 * reaction_cL_m_trscr) + (-1.0 * reaction_cL_m_degr));
	
% Species:   id = cLm, name = cLm, affected by kineticLaw
	xdot(5) = (1/(compartment_def))*(( 1.0 * reaction_cL_modif) + (-1.0 * reaction_cLm_degr));
	
% Species:   id = cNI, name = cNI, affected by kineticLaw
	xdot(6) = (1/(compartment_def))*(( 1.0 * reaction_cNI_trsl) + (-1.0 * reaction_cNI_degr));
	
% Species:   id = cNI_m, name = cNI_m, affected by kineticLaw
	xdot(7) = (1/(compartment_def))*(( 1.0 * reaction_cNI_m_trscr) + (-1.0 * reaction_cNI_m_degr));
	
% Species:   id = cP, name = cP, affected by kineticLaw
	xdot(8) = (1/(compartment_def))*(( 1.0 * reaction_cP_trsl) + (-1.0 * reaction_cP_degr));
	
% Species:   id = cP7, name = cP7, affected by kineticLaw
	xdot(9) = (1/(compartment_def))*(( 1.0 * reaction_cP7_trsl) + (-1.0 * reaction_cP7_degr));
	
% Species:   id = cP7_m, name = cP7_m, affected by kineticLaw
	xdot(10) = (1/(compartment_def))*(( 1.0 * reaction_cP7_m_trscr) + (-1.0 * reaction_cP7_m_degr));
	
% Species:   id = cP9, name = cP9, affected by kineticLaw
	xdot(11) = (1/(compartment_def))*(( 1.0 * reaction_cP9_trsl) + (-1.0 * reaction_cP9_degr));
	
% Species:   id = cP9_m, name = cP9_m, affected by kineticLaw
	xdot(12) = (1/(compartment_def))*(( 1.0 * reaction_cP9_m_trscr) + (-1.0 * reaction_cP9_m_degr));
	
% Species:   id = cT, name = cT, affected by kineticLaw
	xdot(13) = (1/(compartment_def))*(( 1.0 * reaction_cT_trsl) + (-1.0 * reaction_cT_degr));
	
% Species:   id = cT_m, name = cT_m, affected by kineticLaw
	xdot(14) = (1/(compartment_def))*(( 1.0 * reaction_cT_m_trscr) + (-1.0 * reaction_cT_m_degr));
	
% Species:   id = cTm, name = cTm, affected by kineticLaw
	xdot(15) = (1/(compartment_def))*(( 1.0 * reaction_cT_modif) + (-1.0 * reaction_cTm_degr));
	
% Species:   id = cY, name = cY, affected by kineticLaw
	xdot(16) = (1/(compartment_def))*(( 1.0 * reaction_cY_trsl) + (-1.0 * reaction_cY_degr));
	
% Species:   id = cY_m, name = cY_m, affected by kineticLaw
	xdot(17) = (1/(compartment_def))*(( 1.0 * reaction_cY_m_trscr) + (-1.0 * reaction_cY_m_degr));
	
% Species:   id = cZG, name = cZG, affected by kineticLaw
	xdot(18) = (1/(compartment_def))*(( 1.0 * reaction_cG_cZTL_assoc) + (-1.0 * reaction_cZG_degr));
	
% Species:   id = cZTL, name = cZTL, affected by kineticLaw
	xdot(19) = (1/(compartment_def))*((-1.0 * reaction_cG_cZTL_assoc) + ( 1.0 * reaction_cZTL_trsl) + (-1.0 * reaction_cZTL_degr));
end

function z=function_4_cT_degr(D,L,cT,cZG,cZTL,def,m6,m7,m8,p5), z=(((m6*L+m7*D)*cT*(p5*cZTL+cZG)+m8*cT)/def);end

function z=function_4_cNI_m_degr(cNI_m,def,m16), z=(m16*cNI_m/def);end

function z=function_4_cNI_m_trscr(cLm,cP7,def,g12,g13,l,m,n10,n11), z=((n10*cLm^l/(cLm^l+g12^l)+n11*cP7^m/(cP7^m+g13^m))/def);end

function z=function_4_cY_trsl(cY_m,def,p6), z=(p6*cY_m/def);end

function z=function_4_cP7_degr(D,L,cP7,def,m15,m23), z=((m15*L+m23*D)*cP7/def);end

function z=function_4_cT_trsl(cT_m,def,p4), z=(p4*cT_m/def);end

function z=function_4_cY_m_trscr(D,L,cL,cP,cT,def,g,g16,g7,n5,n6,q2,s), z=((L*q2*cP+(n5*L+n6*D)*g7^s/(cT^s+g7^s)*g16^g/(cL^g+g16^g))/def);end

function z=function_4_cT_m_trscr(cL,cY,d,def,e,g4,g5,n2,n3), z=((n2*cY^d/(cY^d+g4^d)+n3)*g5^e/(cL^e+g5^e)/def);end

function z=function_4_cT_m_degr(cT_m,def,m5), z=(m5*cT_m/def);end

function z=function_4_cNI_trsl(cNI_m,def,p10), z=(p10*cNI_m/def);end

function z=function_4_cZTL_trsl(def,p14), z=(p14/def);end

function z=function_4_cP7_m_degr(cP7_m,def,m14), z=(m14*cP7_m/def);end

function z=function_4_cY_m_degr(cY_m,def,m9), z=(m9*cY_m/def);end

function z=function_4_cLm_degr(cLm,def,m4), z=(m4*cLm/def);end

function z=function_4_cL_modif(c,cL,def,g3,p3), z=(p3*cL^c/(cL^c+g3^c)/def);end

function z=function_4_cL_degr(c,cL,def,g3,m3,p3), z=((m3*cL+p3*cL^c/(cL^c+g3^c))/def);end

function z=function_4_cL_trsl(D,L,cL_m,def,p1,p2), z=(cL_m*(p1*L+p2*D)/def);end

function z=function_4_cP9_m_degr(cP9_m,def,m12), z=(m12*cP9_m/def);end

function z=function_4_cY_degr(cY,def,m10), z=(m10*cY/def);end

function z=function_4_cP_degr(L,cP,def,m11), z=(m11*cP*L/def);end

function z=function_4_cTm_degr(D,L,cTm,def,m25,m26), z=((m25*L+m26*D)*cTm/def);end

function z=function_4_cP_trsl(D,cP,def,p7), z=(p7*D*(1-cP)/def);end

function z=function_4_cG_cZTL_assoc(D,L,cG,cZG,cZTL,def,p12,p13), z=((p12*L*cZTL*cG-p13*D*cZG)/def);end

function z=function_4_cG_m_trscr(L,cL,cP,cT,def,g14,g15,n,n12,o,q4), z=((L*q4*cP+n12*L*g15^o/(cL^o+g15^o)*g14^n/(cT^n+g14^n))/def);end

function z=function_4_cG_degr(cG,def,m19), z=(m19*cG/def);end

function z=function_4_cZG_degr(cZG,def,m21), z=(m21*cZG/def);end

function z=function_4_cL_m_trscr(L,a,b,cNI,cP,cP7,cP9,cTm,def,g1,g2,n0,n1,q1), z=((n0*L+L*q1*cP+n1*cTm^b/(cTm^b+g2^b))*g1^a/((cP9+cP7+cNI)^a+g1^a)/def);end

function z=function_4_cL_m_degr(D,L,cL_m,def,m1,m2), z=((m1*L+m2*D)*cL_m/def);end

function z=function_4_cG_trsl(cG_m,def,p11), z=(p11*cG_m/def);end

function z=function_4_cP9_m_trscr(L,cL,cP,cT,def,g8,g9,h,i,n4,n7,q3), z=((L*q3*cP+(n4*L+n7*cL^i/(cL^i+g9^i))*g8^h/(cT^h+g8^h))/def);end

function z=function_4_cP9_degr(D,L,cP9,def,m13,m22), z=((m13*L+m22*D)*cP9/def);end

function z=function_4_cP7_trsl(cP7_m,def,p9), z=(p9*cP7_m/def);end

function z=function_4_cP7_m_trscr(cL,cLm,cP9,def,g10,g11,j,k,n8,n9), z=((n8*(cLm+cL)^j/((cLm+cL)^j+g10^j)+n9*cP9^k/(cP9^k+g11^k))/def);end

function z=function_4_cNI_degr(D,L,cNI,def,m17,m24), z=((m17*L+m24*D)*cNI/def);end

function z=function_4_cG_m_degr(cG_m,def,m18), z=(m18*cG_m/def);end

function z=function_4_cP9_trsl(cP9_m,def,p8), z=(p8*cP9_m/def);end

function z=function_4_cZTL_degr(cZTL,def,m20), z=(m20*cZTL/def);end

function z=function_4_cT_modif(cT,def,f,g6,p15), z=(p15*cT^f/(cT^f+g6^f)/def);end

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


