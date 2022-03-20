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
% Model name = Sivakumar2011 - EGF Receptor Signaling Pathway
%
% is http://identifiers.org/biomodels.db/MODEL1101270003
% is http://identifiers.org/biomodels.db/BIOMD0000000394
% isDescribedBy http://identifiers.org/pubmed/21978399
% isDerivedFrom http://identifiers.org/panther.pathway/P00018
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 5.0;
	x0(2) = 0.0;
	x0(3) = 5.0;
	x0(4) = 0.0;
	x0(5) = 5.0;
	x0(6) = 0.0;
	x0(7) = 5.0;
	x0(8) = 0.0;
	x0(9) = 5.0;
	x0(10) = 5.0;
	x0(11) = 1.0;
	x0(12) = 5.0;
	x0(13) = 0.0;
	x0(14) = 5.0;
	x0(15) = 5.0;
	x0(16) = 5.0;
	x0(17) = 0.5;
	x0(18) = 0.0;
	x0(19) = 2.0;
	x0(20) = 0.0;
	x0(21) = 0.5;
	x0(22) = 0.0;
	x0(23) = 5.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c2, name = Cytosol, constant
	compartment_c2=1.0;
% Parameter:   id =  kcatp_r8_s124, name = kcatp_r8_s124
	global_par_kcatp_r8_s124=0.511;
% Parameter:   id =  kM_r8_s124_s23, name = kM_r8_s124_s23
	global_par_kM_r8_s124_s23=0.47;
% Parameter:   id =  kcatn_r8_s124, name = kcatn_r8_s124
	global_par_kcatn_r8_s124=1.083;
% Parameter:   id =  kM_r8_s124_s24, name = kM_r8_s124_s24
	global_par_kM_r8_s124_s24=0.786;
% Parameter:   id =  kcatp_r8_s31, name = kcatp_r8_s31
	global_par_kcatp_r8_s31=0.727;
% Parameter:   id =  kM_r8_s31_s23, name = kM_r8_s31_s23
	global_par_kM_r8_s31_s23=0.614;
% Parameter:   id =  kcatn_r8_s31, name = kcatn_r8_s31
	global_par_kcatn_r8_s31=0.636;
% Parameter:   id =  kM_r8_s31_s24, name = kM_r8_s31_s24
	global_par_kM_r8_s31_s24=1.367;
% Parameter:   id =  kI_r8_s22, name = kI_r8_s22
	global_par_kI_r8_s22=0.583;
% Parameter:   id =  kI_r8_s29, name = kI_r8_s29
	global_par_kI_r8_s29=1.219;
% Parameter:   id =  kI_r8_s33, name = kI_r8_s33
	global_par_kI_r8_s33=0.293;
% Parameter:   id =  kcatp_r9, name = kcatp_r9
	global_par_kcatp_r9=2.0;
% Parameter:   id =  kM_r9_s25, name = kM_r9_s25
	global_par_kM_r9_s25=0.626;
% Parameter:   id =  kcatn_r9, name = kcatn_r9
	global_par_kcatn_r9=0.693;
% Parameter:   id =  kM_r9_s26, name = kM_r9_s26
	global_par_kM_r9_s26=0.463;
% Parameter:   id =  kcatp_r11, name = kcatp_r11
	global_par_kcatp_r11=0.787;
% Parameter:   id =  kM_r11_s29, name = kM_r11_s29
	global_par_kM_r11_s29=1.459;
% Parameter:   id =  kcatn_r11, name = kcatn_r11
	global_par_kcatn_r11=0.566;
% Parameter:   id =  kM_r11_s30, name = kM_r11_s30
	global_par_kM_r11_s30=1.021;
% Parameter:   id =  kcatp_r14, name = kcatp_r14
	global_par_kcatp_r14=0.558;
% Parameter:   id =  kM_r14_s27, name = kM_r14_s27
	global_par_kM_r14_s27=0.038;
% Parameter:   id =  kcatn_r14, name = kcatn_r14
	global_par_kcatn_r14=0.725;
% Parameter:   id =  kM_r14_s28, name = kM_r14_s28
	global_par_kM_r14_s28=1.65;
% Parameter:   id =  kass_r15, name = kass_r15
	global_par_kass_r15=2.0;
% Parameter:   id =  kdiss_r15, name = kdiss_r15
	global_par_kdiss_r15=0.074;
% Parameter:   id =  kass_r17_s3, name = kass_r17_s3
	global_par_kass_r17_s3=0.73;
% Parameter:   id =  kdiss_r17_s3, name = kdiss_r17_s3
	global_par_kdiss_r17_s3=1.13;
% Parameter:   id =  kI_re11_s142, name = kI_re11_s142
	global_par_kI_re11_s142=1.0;
% Parameter:   id =  kass_r6_s144, name = kass_r6_s144
	global_par_kass_r6_s144=1.0;
% Parameter:   id =  kdiss_r6_s144, name = kdiss_r6_s144
	global_par_kdiss_r6_s144=1.0;
% Parameter:   id =  kass_r7_s144, name = kass_r7_s144
	global_par_kass_r7_s144=1.0;
% Parameter:   id =  kdiss_r7_s144, name = kdiss_r7_s144
	global_par_kdiss_r7_s144=1.0;
% Parameter:   id =  kass_r4_s144, name = kass_r4_s144
	global_par_kass_r4_s144=1.0;
% Parameter:   id =  kdiss_r4_s144, name = kdiss_r4_s144
	global_par_kdiss_r4_s144=1.0;
% Parameter:   id =  Vp_re11, name = Vp_re11
	global_par_Vp_re11=1.0;
% Parameter:   id =  kM_re11_s129, name = kM_re11_s129
	global_par_kM_re11_s129=1.0;
% Parameter:   id =  kM_re11_s147, name = kM_re11_s147
	global_par_kM_re11_s147=1.0;
% Parameter:   id =  ki_re11_s129, name = ki_re11_s129
	global_par_ki_re11_s129=1.0;

% Reaction: id = r8
	reaction_r8=global_par_kI_r8_s22/(global_par_kI_r8_s22+x(2))*global_par_kI_r8_s29/(global_par_kI_r8_s29+x(7))*global_par_kI_r8_s33/(global_par_kI_r8_s33+x(10))*(x(16)*(global_par_kcatp_r8_s124/global_par_kM_r8_s124_s23*x(12)-global_par_kcatn_r8_s124/global_par_kM_r8_s124_s24*x(13))/(1+x(12)/global_par_kM_r8_s124_s23+x(13)/global_par_kM_r8_s124_s24)+x(9)*(global_par_kcatp_r8_s31/global_par_kM_r8_s31_s23*x(12)-global_par_kcatn_r8_s31/global_par_kM_r8_s31_s24*x(13))/(1+x(12)/global_par_kM_r8_s31_s23+x(13)/global_par_kM_r8_s31_s24));

% Reaction: id = r9
	reaction_r9=x(13)*(global_par_kcatp_r9/global_par_kM_r9_s25*x(3)-global_par_kcatn_r9/global_par_kM_r9_s26*x(4))/(1+x(3)/global_par_kM_r9_s25+x(4)/global_par_kM_r9_s26);

% Reaction: id = r11
	reaction_r11=x(19)*(global_par_kcatp_r11/global_par_kM_r11_s29*x(7)-global_par_kcatn_r11/global_par_kM_r11_s30*x(8))/(1+x(7)/global_par_kM_r11_s29+x(8)/global_par_kM_r11_s30);

% Reaction: id = r14
	reaction_r14=x(4)*(global_par_kcatp_r14/global_par_kM_r14_s27*x(5)-global_par_kcatn_r14/global_par_kM_r14_s28*x(6))/(1+x(5)/global_par_kM_r14_s27+x(6)/global_par_kM_r14_s28);

% Reaction: id = r15
	reaction_r15=global_par_kass_r15*x(6)-global_par_kdiss_r15*x(11);

% Reaction: id = r17
	reaction_r17=x(14)*(global_par_kass_r17_s3*x(15)^2-global_par_kdiss_r17_s3*x(20));

% Reaction: id = r6
	reaction_r6=x(22)*(global_par_kass_r6_s144*x(19)-global_par_kdiss_r6_s144*x(19));

% Reaction: id = r7
	reaction_r7=x(22)*(global_par_kass_r7_s144*x(1)-global_par_kdiss_r7_s144*x(2));

% Reaction: id = r4
	reaction_r4=x(22)*(global_par_kass_r4_s144*x(16)*x(17)-global_par_kdiss_r4_s144*x(16)*x(18));

% Reaction: id = re11
	reaction_re11=global_par_kI_re11_s142/(global_par_kI_re11_s142+x(21))*global_par_Vp_re11*x(20)*x(23)/(global_par_ki_re11_s129*global_par_kM_re11_s147+global_par_kM_re11_s147*x(20)+global_par_kM_re11_s129*x(23)+x(20)*x(23));

	xdot=zeros(23,1);
	
% Species:   id = s21, name = Akt, affected by kineticLaw
	xdot(1) = (1/(compartment_c2))*((-1.0 * reaction_r7));
	
% Species:   id = s22, name = Akt, affected by kineticLaw
	xdot(2) = (1/(compartment_c2))*(( 1.0 * reaction_r7));
	
% Species:   id = s25, name = MEK1_minus_2, affected by kineticLaw
	xdot(3) = (1/(compartment_c2))*((-1.0 * reaction_r9));
	
% Species:   id = s26, name = MEK1_minus_2, affected by kineticLaw
	xdot(4) = (1/(compartment_c2))*(( 1.0 * reaction_r9));
	
% Species:   id = s27, name = ERK1_minus_2, affected by kineticLaw
	xdot(5) = (1/(compartment_c2))*((-1.0 * reaction_r14));
	
% Species:   id = s28, name = ERK1_minus_2, affected by kineticLaw
	xdot(6) = (1/(compartment_c2))*(( 1.0 * reaction_r14) + (-1.0 * reaction_r15));
	
% Species:   id = s29, name = RKIP, affected by kineticLaw
	xdot(7) = (1/(compartment_c2))*((-1.0 * reaction_r11));
	
% Species:   id = s30, name = RKIP, affected by kineticLaw
	xdot(8) = (1/(compartment_c2))*(( 1.0 * reaction_r11));
	
% Species:   id = s31, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = s33, name = 14_minus_3_minus_3
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = s34, name = Mitogenesis_br_Differentiation, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*(( 1.0 * reaction_r15));
	
% Species:   id = s23, name = Raf_minus_1, affected by kineticLaw
	xdot(12) = (1/(compartment_c2))*((-1.0 * reaction_r8));
	
% Species:   id = s24, name = Raf_minus_1, affected by kineticLaw
	xdot(13) = (1/(compartment_c2))*(( 1.0 * reaction_r8));
	
% Species:   id = s3, name = EGF
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = s123, name = EGFR, affected by kineticLaw
	xdot(15) = (1/(compartment_c2))*((-2.0 * reaction_r17));
	
% Species:   id = s124, name = Ras, affected by kineticLaw
	xdot(16) = (1/(compartment_c2))*((-1.0 * reaction_r4) + ( 1.0 * reaction_r4));
	
% Species:   id = s125, name = GDP, affected by kineticLaw
	xdot(17) = (1/(compartment_c2))*((-1.0 * reaction_r4));
	
% Species:   id = s126, name = GTP, affected by kineticLaw
	xdot(18) = (1/(compartment_c2))*(( 1.0 * reaction_r4));
	
% Species:   id = s127, name = PKC, affected by kineticLaw
	xdot(19) = (1/(compartment_c2))*((-1.0 * reaction_r6) + ( 1.0 * reaction_r6));
	
% Species:   id = s129, name = EGFR, affected by kineticLaw
	xdot(20) = (1/(compartment_c2))*(( 1.0 * reaction_r17) + (-1.0 * reaction_re11));
	
% Species:   id = s142, name = erlotinib
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = s144, name = Complex_br_(EGFR/../_br_GAP), affected by kineticLaw
	xdot(22) = (1/(compartment_c2))*(( 1.0 * reaction_re11));
	
% Species:   id = s147, name = Complex(Grb2/../PLC), affected by kineticLaw
	xdot(23) = (1/(compartment_c2))*((-1.0 * reaction_re11));
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


