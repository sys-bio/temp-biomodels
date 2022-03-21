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
% Model name = Sivakumar2011 - Notch Signaling Pathway
%
% is http://identifiers.org/biomodels.db/MODEL1101270000
% is http://identifiers.org/biomodels.db/BIOMD0000000396
% isDescribedBy http://identifiers.org/pubmed/21978399
% isDerivedFrom http://identifiers.org/panther.pathway/P00045
%


function main()
%Initial conditions vector
	x0=zeros(36,1);
	x0(1) = 5.0;
	x0(2) = 5.0;
	x0(3) = 5.0;
	x0(4) = 5.0;
	x0(5) = 0.0;
	x0(6) = 0.5;
	x0(7) = 0.0;
	x0(8) = 0.5;
	x0(9) = 0.64;
	x0(10) = 0.5;
	x0(11) = 5.0;
	x0(12) = 5.0;
	x0(13) = 0.0;
	x0(14) = 0.5;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.6;
	x0(19) = 0.5;
	x0(20) = 0.0;
	x0(21) = 5.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 5.0;
	x0(25) = 5.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.33;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 5.0;
	x0(34) = 5.0;
	x0(35) = 0.0;
	x0(36) = 0.0;


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
% Compartment: id = c1, name = cytosol, constant
	compartment_c1=1.0;
% Compartment: id = c5, name = nucleus, constant
	compartment_c5=1.0;
% Parameter:   id =  kcatp_r8, name = kcatp_r8
	global_par_kcatp_r8=0.5;
% Parameter:   id =  kM_r8_s15, name = kM_r8_s15
	global_par_kM_r8_s15=1.0;
% Parameter:   id =  kcatn_r8, name = kcatn_r8
	global_par_kcatn_r8=1.5;
% Parameter:   id =  kM_r8_s19, name = kM_r8_s19
	global_par_kM_r8_s19=2.0;
% Parameter:   id =  kM_r8_s63, name = kM_r8_s63
	global_par_kM_r8_s63=1.5;
% Parameter:   id =  kcatp_r9, name = kcatp_r9
	global_par_kcatp_r9=1.5;
% Parameter:   id =  kM_r9_s7, name = kM_r9_s7
	global_par_kM_r9_s7=1.0;
% Parameter:   id =  kcatn_r9, name = kcatn_r9
	global_par_kcatn_r9=0.04;
% Parameter:   id =  kM_r9_s22, name = kM_r9_s22
	global_par_kM_r9_s22=0.05;
% Parameter:   id =  kass_r10, name = kass_r10
	global_par_kass_r10=2.0;
% Parameter:   id =  kdiss_r10, name = kdiss_r10
	global_par_kdiss_r10=0.01;
% Parameter:   id =  kI_r10_s25, name = kI_r10_s25
	global_par_kI_r10_s25=1.0;
% Parameter:   id =  kcatp_r11, name = kcatp_r11
	global_par_kcatp_r11=0.5;
% Parameter:   id =  kM_r11_s32, name = kM_r11_s32
	global_par_kM_r11_s32=1.0;
% Parameter:   id =  kcatn_r11, name = kcatn_r11
	global_par_kcatn_r11=0.5;
% Parameter:   id =  kM_r11_s26, name = kM_r11_s26
	global_par_kM_r11_s26=1.5;
% Parameter:   id =  kM_r11_s28, name = kM_r11_s28
	global_par_kM_r11_s28=1.0;
% Parameter:   id =  kass_r13, name = kass_r13
	global_par_kass_r13=0.5;
% Parameter:   id =  kdiss_r13, name = kdiss_r13
	global_par_kdiss_r13=2.0;
% Parameter:   id =  kcatp_r16, name = kcatp_r16
	global_par_kcatp_r16=1.0;
% Parameter:   id =  kcatn_r16, name = kcatn_r16
	global_par_kcatn_r16=1.0;
% Parameter:   id =  kM_r16_s39, name = kM_r16_s39
	global_par_kM_r16_s39=1.0;
% Parameter:   id =  ki_r16_s39, name = ki_r16_s39
	global_par_ki_r16_s39=1.0;
% Parameter:   id =  kass_r17, name = kass_r17
	global_par_kass_r17=1.5;
% Parameter:   id =  kdiss_r17, name = kdiss_r17
	global_par_kdiss_r17=1.5;
% Parameter:   id =  kcatp_r18, name = kcatp_r18
	global_par_kcatp_r18=1.0;
% Parameter:   id =  kcatn_r18, name = kcatn_r18
	global_par_kcatn_r18=1.5;
% Parameter:   id =  kM_r18_s4, name = kM_r18_s4
	global_par_kM_r18_s4=1.0;
% Parameter:   id =  ki_r18_s4, name = ki_r18_s4
	global_par_ki_r18_s4=1.5;
% Parameter:   id =  kass_r21, name = kass_r21
	global_par_kass_r21=1.5;
% Parameter:   id =  kdiss_r21, name = kdiss_r21
	global_par_kdiss_r21=1.5;
% Parameter:   id =  kI_r21_s2, name = kI_r21_s2
	global_par_kI_r21_s2=1.5;
% Parameter:   id =  kcatp_r25, name = kcatp_r25
	global_par_kcatp_r25=1.0;
% Parameter:   id =  kM_r25_s53, name = kM_r25_s53
	global_par_kM_r25_s53=1.5;
% Parameter:   id =  kcatn_r25, name = kcatn_r25
	global_par_kcatn_r25=1.5;
% Parameter:   id =  kM_r25_s60, name = kM_r25_s60
	global_par_kM_r25_s60=1.25;
% Parameter:   id =  kM_r25_s15, name = kM_r25_s15
	global_par_kM_r25_s15=1.5;
% Parameter:   id =  kcatp_r26, name = kcatp_r26
	global_par_kcatp_r26=0.5;
% Parameter:   id =  kM_r26_s25, name = kM_r26_s25
	global_par_kM_r26_s25=1.7;
% Parameter:   id =  kcatn_r26, name = kcatn_r26
	global_par_kcatn_r26=1.0;
% Parameter:   id =  kM_r26_s64, name = kM_r26_s64
	global_par_kM_r26_s64=1.61;
% Parameter:   id =  kcatp_r28, name = kcatp_r28
	global_par_kcatp_r28=1.71;
% Parameter:   id =  kcatn_r28, name = kcatn_r28
	global_par_kcatn_r28=1.48;
% Parameter:   id =  kM_r28_s41, name = kM_r28_s41
	global_par_kM_r28_s41=1.64;
% Parameter:   id =  ki_r28_s41, name = ki_r28_s41
	global_par_ki_r28_s41=1.28;
% Parameter:   id =  kcatp_r29, name = kcatp_r29
	global_par_kcatp_r29=1.86;
% Parameter:   id =  kM_r29_s67, name = kM_r29_s67
	global_par_kM_r29_s67=1.61;
% Parameter:   id =  kcatn_r29, name = kcatn_r29
	global_par_kcatn_r29=1.78;
% Parameter:   id =  kM_r29_s18, name = kM_r29_s18
	global_par_kM_r29_s18=0.15;
% Parameter:   id =  kM_r29_s15, name = kM_r29_s15
	global_par_kM_r29_s15=1.87;
% Parameter:   id =  kass_r30, name = kass_r30
	global_par_kass_r30=1.95;
% Parameter:   id =  kass_r31, name = kass_r31
	global_par_kass_r31=0.055;
% Parameter:   id =  kdiss_r31, name = kdiss_r31
	global_par_kdiss_r31=2.0;
% Parameter:   id =  kass_re16, name = kass_re16
	global_par_kass_re16=0.004;
% Parameter:   id =  kdiss_re16, name = kdiss_re16
	global_par_kdiss_re16=2.0;
% Parameter:   id =  kI_re16_s81, name = kI_re16_s81
	global_par_kI_re16_s81=0.00594;

% Reaction: id = r30
	reaction_r30=global_par_kass_r30*x(13);

% Reaction: id = r31
	reaction_r31=global_par_kass_r31*x(16)-global_par_kdiss_r31*x(32);

% Reaction: id = r8
	reaction_r8=x(36)*(global_par_kcatp_r8*x(4)/global_par_kM_r8_s15-global_par_kcatn_r8*x(5)/global_par_kM_r8_s19*x(28)/global_par_kM_r8_s63)/(x(4)/global_par_kM_r8_s15+(1+x(5)/global_par_kM_r8_s19)*(1+x(28)/global_par_kM_r8_s63));

% Reaction: id = r9
	reaction_r9=x(8)*(global_par_kcatp_r9/global_par_kM_r9_s7*x(3)-global_par_kcatn_r9/global_par_kM_r9_s22*x(7))/(1+x(3)/global_par_kM_r9_s7+x(7)/global_par_kM_r9_s22);

% Reaction: id = r10
	reaction_r10=global_par_kI_r10_s25/(global_par_kI_r10_s25+x(9))*(global_par_kass_r10*x(28)-global_par_kdiss_r10*x(15));

% Reaction: id = r11
	reaction_r11=x(15)*(global_par_kcatp_r11*x(13)/global_par_kM_r11_s32-global_par_kcatn_r11*x(11)/global_par_kM_r11_s26*x(12)/global_par_kM_r11_s28)/(x(13)/global_par_kM_r11_s32+(1+x(11)/global_par_kM_r11_s26)*(1+x(12)/global_par_kM_r11_s28));

% Reaction: id = r13
	reaction_r13=global_par_kass_r13*x(15)*x(11)*x(10)*x(14)-global_par_kdiss_r13*x(16);

% Reaction: id = r16
	reaction_r16=(global_par_kcatp_r16/(global_par_ki_r16_s39*global_par_kM_r16_s39)*x(18)*x(15)*x(19)-global_par_kcatn_r16/global_par_kM_r16_s39*x(18)*x(17))/(1+x(15)/global_par_ki_r16_s39+x(19)/global_par_ki_r16_s39+x(15)*x(19)/(global_par_ki_r16_s39*global_par_kM_r16_s39)+x(17)/global_par_kM_r16_s39);

% Reaction: id = r17
	reaction_r17=global_par_kass_r17*x(17)-global_par_kdiss_r17*x(20);

% Reaction: id = r18
	reaction_r18=(global_par_kcatp_r18/(global_par_ki_r18_s4*global_par_kM_r18_s4)*x(24)*x(21)*x(2)-global_par_kcatn_r18/global_par_kM_r18_s4*x(24)*x(23))/(1+x(21)/global_par_ki_r18_s4+x(2)/global_par_ki_r18_s4+x(21)*x(2)/(global_par_ki_r18_s4*global_par_kM_r18_s4)+x(23)/global_par_kM_r18_s4);

% Reaction: id = r21
	reaction_r21=global_par_kI_r21_s2/(global_par_kI_r21_s2+x(1))*(global_par_kass_r21*x(23)*x(25)-global_par_kdiss_r21*x(26));

% Reaction: id = r25
	reaction_r25=x(6)*(global_par_kcatp_r25*x(26)/global_par_kM_r25_s53-global_par_kcatn_r25*x(27)/global_par_kM_r25_s60*x(4)/global_par_kM_r25_s15)/(x(26)/global_par_kM_r25_s53+(1+x(27)/global_par_kM_r25_s60)*(1+x(4)/global_par_kM_r25_s15));

% Reaction: id = r26
	reaction_r26=x(30)*(global_par_kcatp_r26/global_par_kM_r26_s25*x(9)-global_par_kcatn_r26/global_par_kM_r26_s64*x(29))/(1+x(9)/global_par_kM_r26_s25+x(29)/global_par_kM_r26_s64);

% Reaction: id = r28
	reaction_r28=(global_par_kcatp_r28/(global_par_ki_r28_s41*global_par_kM_r28_s41)*x(1)*x(3)*x(23)-global_par_kcatn_r28/global_par_kM_r28_s41*x(1)*x(31))/(1+x(3)/global_par_ki_r28_s41+x(23)/global_par_ki_r28_s41+x(3)*x(23)/(global_par_ki_r28_s41*global_par_kM_r28_s41)+x(31)/global_par_kM_r28_s41);

% Reaction: id = r29
	reaction_r29=x(6)*(global_par_kcatp_r29*x(31)/global_par_kM_r29_s67-global_par_kcatn_r29*x(22)/global_par_kM_r29_s18*x(4)/global_par_kM_r29_s15)/(x(31)/global_par_kM_r29_s67+(1+x(22)/global_par_kM_r29_s18)*(1+x(4)/global_par_kM_r29_s15));

% Reaction: id = re16
	reaction_re16=global_par_kI_re16_s81/(global_par_kI_re16_s81+x(35))*(global_par_kass_re16*x(33)*x(34)-global_par_kdiss_re16*x(36));

	xdot=zeros(36,1);
	
% Species:   id = s2, name = Fringe
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s4, name = fucose, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_r18));
	
% Species:   id = s7, name = Delta, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_r9) + (-1.0 * reaction_r28));
	
% Species:   id = s15, name = NI_sub_c_sub_t, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*((-1.0 * reaction_r8) + ( 1.0 * reaction_r25) + ( 1.0 * reaction_r29));
	
% Species:   id = s19, name = N_sub_tm, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_r8));
	
% Species:   id = s21, name = TACE
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = s22, name = a7_degraded, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_r9));
	
% Species:   id = s23, name = Neuralized
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = s25, name = Numb, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*((-1.0 * reaction_r26));
	
% Species:   id = s27, name = Mastermind, affected by kineticLaw
	xdot(10) = (1/(compartment_c5))*((-1.0 * reaction_r13));
	
% Species:   id = s26, name = Su(H), affected by kineticLaw
	xdot(11) = (1/(compartment_c5))*(( 1.0 * reaction_r11) + (-1.0 * reaction_r13));
	
% Species:   id = s28, name = CoR, affected by kineticLaw
	xdot(12) = (1/(compartment_c5))*(( 1.0 * reaction_r11));
	
% Species:   id = s32, name = Complex_br_(Su(H)/CoR), affected by kineticLaw
	xdot(13) = (1/(compartment_c5))*((-1.0 * reaction_r30) + (-1.0 * reaction_r11));
	
% Species:   id = s29, name = CoA, affected by kineticLaw
	xdot(14) = (1/(compartment_c5))*((-1.0 * reaction_r13));
	
% Species:   id = s24, name = NI_sub_c_sub_s, affected by kineticLaw
	xdot(15) = (1/(compartment_c5))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r13) + (-1.0 * reaction_r16));
	
% Species:   id = s35, name = Complex_br_(Mastermind/Su(H)/_br_CoA/NI_sub_c_sub_s), affected by kineticLaw
	xdot(16) = (1/(compartment_c5))*((-1.0 * reaction_r31) + ( 1.0 * reaction_r13));
	
% Species:   id = s37, name = NI_sub_c_sub_s, affected by kineticLaw
	xdot(17) = (1/(compartment_c5))*(( 1.0 * reaction_r16) + (-1.0 * reaction_r17));
	
% Species:   id = s38, name = Sel 10
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = s39, name = Ub, affected by kineticLaw
	xdot(19) = (1/(compartment_c5))*((-1.0 * reaction_r16));
	
% Species:   id = s40, name = a46_degraded, affected by kineticLaw
	xdot(20) = (1/(compartment_c5))*(( 1.0 * reaction_r17));
	
% Species:   id = s1, name = Notch, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*((-1.0 * reaction_r18));
	
% Species:   id = s18, name = Complex_br_(Delta/N_sub_ext), affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_r29));
	
% Species:   id = s41, name = Notch, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*(( 1.0 * reaction_r18) + (-1.0 * reaction_r21) + (-1.0 * reaction_r28));
	
% Species:   id = s42, name = Neurotic
% Warning species is not changed by either rules or reactions
	xdot(24) = ;
	
% Species:   id = s48, name = Serrate, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*((-1.0 * reaction_r21));
	
% Species:   id = s53, name = Complex_br_(Serrate/Notch), affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*(( 1.0 * reaction_r21) + (-1.0 * reaction_r25));
	
% Species:   id = s60, name = Complex_br_(Serrate/N_sub_ext), affected by kineticLaw
	xdot(27) = (1/(compartment_default))*(( 1.0 * reaction_r25));
	
% Species:   id = s63, name = NI_sub_c_sub_s, affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*(( 1.0 * reaction_r8) + (-1.0 * reaction_r10));
	
% Species:   id = s64, name = a25_degraded, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_r26));
	
% Species:   id = s65, name = LNXp80
% Warning species is not changed by either rules or reactions
	xdot(30) = ;
	
% Species:   id = s67, name = Complex_br_(Notch/Delta), affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*(( 1.0 * reaction_r28) + (-1.0 * reaction_r29));
	
% Species:   id = s75, name = E(spl)-C genes, affected by kineticLaw
	xdot(32) = (1/(compartment_c5))*(( 1.0 * reaction_r30) + ( 1.0 * reaction_r31));
	
% Species:   id = s76, name = s76, affected by kineticLaw
	xdot(33) = (1/(compartment_default))*((-1.0 * reaction_re16));
	
% Species:   id = s77, name = s77, affected by kineticLaw
	xdot(34) = (1/(compartment_default))*((-1.0 * reaction_re16));
	
% Species:   id = s81, name = dapt
% Warning species is not changed by either rules or reactions
	xdot(35) = ;
	
% Species:   id = s82, name = gama secretase, affected by kineticLaw
	xdot(36) = (1/(compartment_default))*(( 1.0 * reaction_re16));
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


