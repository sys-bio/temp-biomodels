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
% Model name = Sivakumar2011_WntSignalingPathway
%
% is http://identifiers.org/biomodels.db/MODEL1101270002
% is http://identifiers.org/biomodels.db/BIOMD0000000397
% isDescribedBy http://identifiers.org/pubmed/21978399
% isDerivedFrom http://identifiers.org/panther.pathway/P00057
%


function main()
%Initial conditions vector
	x0=zeros(50,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 3.0;
	x0(4) = 0.0;
	x0(5) = 3.0;
	x0(6) = 1.0;
	x0(7) = 3.0;
	x0(8) = 1.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 3.0;
	x0(13) = 0.0;
	x0(14) = 3.0;
	x0(15) = 3.0;
	x0(16) = 4.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 2.0;
	x0(20) = 2.0;
	x0(21) = 2.0;
	x0(22) = 2.0;
	x0(23) = 0.0;
	x0(24) = 4.0;
	x0(25) = 5.0;
	x0(26) = 5.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 5.0;
	x0(37) = 1.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 2.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.5;
	x0(50) = 0.0;


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
% Compartment: id = c1, name = Plasma Membrane, constant
	compartment_c1=1.0;
% Compartment: id = c3, name = Nucleus, constant
	compartment_c3=1.0;
% Compartment: id = c4, name = Cell Membrane, constant
	compartment_c4=1.0;
% Parameter:   id =  kass_r1, name = kass_r1
	global_par_kass_r1=0.784;
% Parameter:   id =  kdiss_r1, name = kdiss_r1
	global_par_kdiss_r1=0.82;
% Parameter:   id =  kass_r5, name = kass_r5
	global_par_kass_r5=1.15;
% Parameter:   id =  kdiss_r5, name = kdiss_r5
	global_par_kdiss_r5=0.92;
% Parameter:   id =  kass_r47, name = kass_r47
	global_par_kass_r47=1.31;
% Parameter:   id =  kdiss_r47, name = kdiss_r47
	global_par_kdiss_r47=0.81;
% Parameter:   id =  kass_r48, name = kass_r48
	global_par_kass_r48=0.85;
% Parameter:   id =  kdiss_r48, name = kdiss_r48
	global_par_kdiss_r48=1.36;
% Parameter:   id =  kass_r54, name = kass_r54
	global_par_kass_r54=0.8;
% Parameter:   id =  kdiss_r54, name = kdiss_r54
	global_par_kdiss_r54=1.7;
% Parameter:   id =  kass_r58, name = kass_r58
	global_par_kass_r58=1.74;
% Parameter:   id =  kdiss_r58, name = kdiss_r58
	global_par_kdiss_r58=0.25;
% Parameter:   id =  kass_r63, name = kass_r63
	global_par_kass_r63=1.77;
% Parameter:   id =  kdiss_r63, name = kdiss_r63
	global_par_kdiss_r63=0.61;
% Parameter:   id =  kass_r64, name = kass_r64
	global_par_kass_r64=1.29;
% Parameter:   id =  kdiss_r64, name = kdiss_r64
	global_par_kdiss_r64=0.72;
% Parameter:   id =  kass_r65, name = kass_r65
	global_par_kass_r65=1.8;
% Parameter:   id =  kdiss_r65, name = kdiss_r65
	global_par_kdiss_r65=0.004;
% Parameter:   id =  kass_r66, name = kass_r66
	global_par_kass_r66=1.99;
% Parameter:   id =  kdiss_r66, name = kdiss_r66
	global_par_kdiss_r66=0.036;
% Parameter:   id =  kass_r68, name = kass_r68
	global_par_kass_r68=2.0;
% Parameter:   id =  kass_r88, name = kass_r88
	global_par_kass_r88=0.2;
% Parameter:   id =  kdiss_r88, name = kdiss_r88
	global_par_kdiss_r88=1.09;
% Parameter:   id =  kass_r90, name = kass_r90
	global_par_kass_r90=0.27;
% Parameter:   id =  kdiss_r90, name = kdiss_r90
	global_par_kdiss_r90=1.028;
% Parameter:   id =  kass_r91, name = kass_r91
	global_par_kass_r91=0.36;
% Parameter:   id =  kdiss_r91, name = kdiss_r91
	global_par_kdiss_r91=1.16;
% Parameter:   id =  kass_r92, name = kass_r92
	global_par_kass_r92=0.58;
% Parameter:   id =  kdiss_r92, name = kdiss_r92
	global_par_kdiss_r92=0.92;
% Parameter:   id =  kass_r96, name = kass_r96
	global_par_kass_r96=1.45;
% Parameter:   id =  kdiss_r96, name = kdiss_r96
	global_par_kdiss_r96=0.183;
% Parameter:   id =  kass_r98, name = kass_r98
	global_par_kass_r98=1.97;
% Parameter:   id =  kdiss_r98, name = kdiss_r98
	global_par_kdiss_r98=1.09;
% Parameter:   id =  kass_r99, name = kass_r99
	global_par_kass_r99=0.51;
% Parameter:   id =  kdiss_r99, name = kdiss_r99
	global_par_kdiss_r99=0.854;
% Parameter:   id =  kass_r102, name = kass_r102
	global_par_kass_r102=0.163;
% Parameter:   id =  kdiss_r102, name = kdiss_r102
	global_par_kdiss_r102=1.65;
% Parameter:   id =  kass_r103, name = kass_r103
	global_par_kass_r103=0.45;
% Parameter:   id =  kdiss_r103, name = kdiss_r103
	global_par_kdiss_r103=1.277;
% Parameter:   id =  kass_r105, name = kass_r105
	global_par_kass_r105=0.48;
% Parameter:   id =  kdiss_r105, name = kdiss_r105
	global_par_kdiss_r105=1.62;
% Parameter:   id =  kass_r106, name = kass_r106
	global_par_kass_r106=0.05;
% Parameter:   id =  kdiss_r106, name = kdiss_r106
	global_par_kdiss_r106=1.13;
% Parameter:   id =  kass_r107, name = kass_r107
	global_par_kass_r107=0.91;
% Parameter:   id =  kdiss_r107, name = kdiss_r107
	global_par_kdiss_r107=1.056;
% Parameter:   id =  kass_r104_s30, name = kass_r104_s30
	global_par_kass_r104_s30=0.39;
% Parameter:   id =  kdiss_r104_s30, name = kdiss_r104_s30
	global_par_kdiss_r104_s30=1.278;
% Parameter:   id =  kass_r85_s30, name = kass_r85_s30
	global_par_kass_r85_s30=0.7;
% Parameter:   id =  kdiss_r85_s30, name = kdiss_r85_s30
	global_par_kdiss_r85_s30=0.649;
% Parameter:   id =  kass_re65, name = kass_re65
	global_par_kass_re65=1.68;
% Parameter:   id =  kass_re64, name = kass_re64
	global_par_kass_re64=0.83;
% Parameter:   id =  kass_r86_s37, name = kass_r86_s37
	global_par_kass_r86_s37=0.87;
% Parameter:   id =  kdiss_r86_s37, name = kdiss_r86_s37
	global_par_kdiss_r86_s37=1.32;
% Parameter:   id =  kass_r67, name = kass_r67
	global_par_kass_r67=0.86;
% Parameter:   id =  kdiss_r67, name = kdiss_r67
	global_par_kdiss_r67=0.7;
% Parameter:   id =  kI_r86_s304, name = kI_r86_s304
	global_par_kI_r86_s304=1.43;

% Reaction: id = r68
	reaction_r68=global_par_kass_r68*x(50);

% Reaction: id = r1
	reaction_r1=global_par_kass_r1*x(1)*x(3)-global_par_kdiss_r1*x(2);

% Reaction: id = r5
	reaction_r5=global_par_kass_r5*x(5)*x(2)-global_par_kdiss_r5*x(4);

% Reaction: id = r47
	reaction_r47=global_par_kass_r47*x(16)*x(26)-global_par_kdiss_r47*x(27);

% Reaction: id = r48
	reaction_r48=global_par_kass_r48*x(27)*x(11)-global_par_kdiss_r48*x(28);

% Reaction: id = r54
	reaction_r54=global_par_kass_r54*x(27)*x(12)-global_par_kdiss_r54*x(29);

% Reaction: id = r58
	reaction_r58=global_par_kass_r58*x(26)-global_par_kdiss_r58*x(30);

% Reaction: id = r63
	reaction_r63=global_par_kass_r63*x(24)*x(30)-global_par_kdiss_r63*x(31);

% Reaction: id = r66
	reaction_r66=global_par_kass_r66*x(33)*x(21)-global_par_kdiss_r66*x(34);

% Reaction: id = r88
	reaction_r88=global_par_kass_r88*x(36)*x(45)-global_par_kdiss_r88*x(46);

% Reaction: id = r90
	reaction_r90=global_par_kass_r90*x(46)*x(37)-global_par_kdiss_r90*x(47);

% Reaction: id = r91
	reaction_r91=global_par_kass_r91*x(47)-global_par_kdiss_r91*x(17)*x(48);

% Reaction: id = r92
	reaction_r92=global_par_kass_r92*x(48)-global_par_kdiss_r92*x(45)*x(38);

% Reaction: id = r96
	reaction_r96=global_par_kass_r96*x(29)*x(37)-global_par_kdiss_r96*x(40);

% Reaction: id = r98
	reaction_r98=global_par_kass_r98*x(40)-global_par_kdiss_r98*x(13)*x(41);

% Reaction: id = r99
	reaction_r99=global_par_kass_r99*x(41)-global_par_kdiss_r99*x(18)*x(39);

% Reaction: id = r102
	reaction_r102=global_par_kass_r102*x(42)*x(7)-global_par_kdiss_r102*x(43);

% Reaction: id = r103
	reaction_r103=global_par_kass_r103*x(43)*x(14)-global_par_kdiss_r103*x(44);

% Reaction: id = r105
	reaction_r105=global_par_kass_r105*x(44)-global_par_kdiss_r105*x(10);

% Reaction: id = r106
	reaction_r106=global_par_kass_r106*x(42)-global_par_kdiss_r106*x(6);

% Reaction: id = r107
	reaction_r107=global_par_kass_r107*x(25)-global_par_kdiss_r107*x(1);

% Reaction: id = r104
	reaction_r104=x(6)*(global_par_kass_r104_s30*x(15)*x(8)-global_par_kdiss_r104_s30*x(42)*x(9));

% Reaction: id = r85
	reaction_r85=x(6)*(global_par_kass_r85_s30*x(28)*x(8)-global_par_kdiss_r85_s30*x(35)*x(9));

% Reaction: id = r65
	reaction_r65=global_par_kass_r65*x(32)*x(19)-global_par_kdiss_r65*x(33);

% Reaction: id = r64
	reaction_r64=global_par_kass_r64*x(31)*x(22)-global_par_kdiss_r64*x(32);

% Reaction: id = re65
	reaction_re65=global_par_kass_re65*x(38);

% Reaction: id = re64
	reaction_re64=global_par_kass_re64*x(39);

% Reaction: id = r67
	reaction_r67=global_par_kass_r67*x(34)*x(20)-global_par_kdiss_r67*x(50);

% Reaction: id = r86
	reaction_r86=global_par_kI_r86_s304/(global_par_kI_r86_s304+x(49))*x(10)*(global_par_kass_r86_s37*x(35)*x(8)*x(8)*x(8)-global_par_kdiss_r86_s37*x(36)*x(9)*x(9)*x(9));

	xdot=zeros(50,1);
	
% Species:   id = s5, name = Wnt, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r107));
	
% Species:   id = s16, name = Complex_br_(Wnt/Frizzled), affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r5));
	
% Species:   id = s1, name = Frizzled, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*((-1.0 * reaction_r1));
	
% Species:   id = s27, name = Complex_br_(Frizzled/Wnt/_br_LRP5/6), affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*(( 1.0 * reaction_r5));
	
% Species:   id = s28, name = LRP5/6, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*((-1.0 * reaction_r5));
	
% Species:   id = s30, name = Casein Kinase 1, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*(( 1.0 * reaction_r106));
	
% Species:   id = s31, name = Casein Kinase 2, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*((-1.0 * reaction_r102));
	
% Species:   id = s32, name = ATP, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*((-1.0 * reaction_r104) + (-1.0 * reaction_r85) + (-1.0 * reaction_r86) + (-1.0 * reaction_r86) + (-1.0 * reaction_r86));
	
% Species:   id = s33, name = ADP, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_r104) + ( 1.0 * reaction_r85) + ( 1.0 * reaction_r86) + ( 1.0 * reaction_r86) + ( 1.0 * reaction_r86));
	
% Species:   id = s37, name = Glycogen Synthase Kinase-3_Beta_, affected by kineticLaw
	xdot(10) = (1/(compartment_c1))*(( 1.0 * reaction_r105));
	
% Species:   id = s46, name = Diversin, affected by kineticLaw
	xdot(11) = (1/(compartment_c1))*((-1.0 * reaction_r48));
	
% Species:   id = s75, name = Complex_br_(Ebi/Siah-1), affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*((-1.0 * reaction_r54));
	
% Species:   id = s101, name = Complex_br_(Siah-1/Ebi), affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*(( 1.0 * reaction_r98));
	
% Species:   id = s102, name = FRAT, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*((-1.0 * reaction_r103));
	
% Species:   id = s107, name = Complex_br_(Dishevelled/Beta-Arrestin/_br_Frodo), affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*((-1.0 * reaction_r104));
	
% Species:   id = s121, name = Complex_br_(Axin/PP2A/_br_Adenomatous Polyposis Coli), affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*((-1.0 * reaction_r47));
	
% Species:   id = s155, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_Diversin/Casein Kinase 1/_br_Glycogen Synthase Kinase-3_Beta_/PP2A), affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*(( 1.0 * reaction_r91));
	
% Species:   id = s164, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_PP2A), affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*(( 1.0 * reaction_r99));
	
% Species:   id = s171, name = Pygo, affected by kineticLaw
	xdot(19) = (1/(compartment_c3))*((-1.0 * reaction_r65));
	
% Species:   id = s172, name = CBP, affected by kineticLaw
	xdot(20) = (1/(compartment_c3))*((-1.0 * reaction_r67));
	
% Species:   id = s173, name = SWI/SNF, affected by kineticLaw
	xdot(21) = (1/(compartment_c3))*((-1.0 * reaction_r66));
	
% Species:   id = s170, name = Bcl9, affected by kineticLaw
	xdot(22) = (1/(compartment_c3))*((-1.0 * reaction_r64));
	
% Species:   id = s195, name = Wnt Target Genes, affected by kineticLaw
	xdot(23) = (1/(compartment_c3))*(( 1.0 * reaction_r68));
	
% Species:   id = s174, name = Complex_br_(TCF/Smad4), affected by kineticLaw
	xdot(24) = (1/(compartment_c3))*((-1.0 * reaction_r63));
	
% Species:   id = s239, name = Wnt, affected by kineticLaw
	xdot(25) = (1/(compartment_c4))*((-1.0 * reaction_r107));
	
% Species:   id = s36, name = _Beta_-Catenin, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*((-1.0 * reaction_r47) + (-1.0 * reaction_r58));
	
% Species:   id = s123, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br__Beta_-Catenin/PP2A), affected by kineticLaw
	xdot(27) = (1/(compartment_c1))*(( 1.0 * reaction_r47) + (-1.0 * reaction_r48) + (-1.0 * reaction_r54));
	
% Species:   id = s129, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_Diversin/_Beta_-Catenin/_br_PP2A), affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*(( 1.0 * reaction_r48) + (-1.0 * reaction_r85));
	
% Species:   id = s159, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_PP2A/_Beta_-Catenin/_br_Siah-1/Ebi), affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_r54) + (-1.0 * reaction_r96));
	
% Species:   id = s232, name = _Beta_-Catenin, affected by kineticLaw
	xdot(30) = (1/(compartment_c3))*(( 1.0 * reaction_r58) + (-1.0 * reaction_r63) + ( 1.0 * reaction_re65) + ( 1.0 * reaction_re64));
	
% Species:   id = s176, name = Complex_br_(TCF/Smad4/_br__Beta_-Catenin), affected by kineticLaw
	xdot(31) = (1/(compartment_c3))*(( 1.0 * reaction_r63) + (-1.0 * reaction_r64));
	
% Species:   id = s179, name = Complex_br_(TCF/_Beta_-Catenin/_br_Smad4/Bcl9), affected by kineticLaw
	xdot(32) = (1/(compartment_c3))*((-1.0 * reaction_r65) + ( 1.0 * reaction_r64));
	
% Species:   id = s183, name = Complex_br_(Bcl9/_Beta_-Catenin/_br_TCF/Smad4/_br_Pygo), affected by kineticLaw
	xdot(33) = (1/(compartment_c3))*((-1.0 * reaction_r66) + ( 1.0 * reaction_r65));
	
% Species:   id = s188, name = Complex_br_(_Beta_-Catenin/TCF/_br_Smad4/Bcl9/_br_Pygo/SWI/_br_SNF), affected by kineticLaw
	xdot(34) = (1/(compartment_c3))*(( 1.0 * reaction_r66) + (-1.0 * reaction_r67));
	
% Species:   id = s245, name = Complex_br_(Adenomatous Polyposis Coli/_Beta_-Catenin/_br_Axin/PP2A/_br_Diversin/Casein Kinase 1), affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*(( 1.0 * reaction_r85) + (-1.0 * reaction_r86));
	
% Species:   id = s252, name = Complex_br_(Adenomatous Polyposis Coli/_Beta_-Catenin/_br_Glycogen Synthase Kinase-3_Beta_/Axin/_br_PP2A/Diversin/_br_Casein Kinase 1), affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*((-1.0 * reaction_r88) + ( 1.0 * reaction_r86));
	
% Species:   id = s268, name = Ubiquitin, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*((-1.0 * reaction_r90) + (-1.0 * reaction_r96));
	
% Species:   id = s260, name = _Beta_-Catenin, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*(( 1.0 * reaction_r92) + (-1.0 * reaction_re65));
	
% Species:   id = s270, name = _Beta_-Catenin, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*(( 1.0 * reaction_r99) + (-1.0 * reaction_re64));
	
% Species:   id = s275, name = Complex_br_(Adenomatous Polyposis Coli/_Beta_-Catenin/_br_Siah-1/Ebi/_br_Axin/PP2A), affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*(( 1.0 * reaction_r96) + (-1.0 * reaction_r98));
	
% Species:   id = s278, name = Complex_br_(Adenomatous Polyposis Coli/_Beta_-Catenin/_br_Axin/PP2A), affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*(( 1.0 * reaction_r98) + (-1.0 * reaction_r99));
	
% Species:   id = s286, name = Complex_br_(Dishevelled/Beta-Arrestin/_br_Frodo), affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*((-1.0 * reaction_r102) + (-1.0 * reaction_r106) + ( 1.0 * reaction_r104));
	
% Species:   id = s288, name = Complex_br_(Dishevelled/Beta-Arrestin/_br_Frodo/Casein Kinase 2), affected by kineticLaw
	xdot(43) = (1/(compartment_c1))*(( 1.0 * reaction_r102) + (-1.0 * reaction_r103));
	
% Species:   id = s292, name = Complex_br_(Dishevelled/Casein Kinase 2/_br_Beta-Arrestin/Frodo/_br_FRAT), affected by kineticLaw
	xdot(44) = (1/(compartment_c1))*(( 1.0 * reaction_r103) + (-1.0 * reaction_r105));
	
% Species:   id = s61, name = _beta_TrCP, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*((-1.0 * reaction_r88) + ( 1.0 * reaction_r92));
	
% Species:   id = s259, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_PP2A/Diversin/_br_Casein Kinase 1/_Beta_-Catenin/_br__beta_TrCP/Glycogen Synthase Kinase-3_Beta_), affected by kineticLaw
	xdot(46) = (1/(compartment_c1))*(( 1.0 * reaction_r88) + (-1.0 * reaction_r90));
	
% Species:   id = s266, name = Complex_br_(Adenomatous Polyposis Coli/Axin/_br_PP2A/Diversin/_br_Casein Kinase 1/_Beta_-Catenin/_br__beta_TrCP/Glycogen Synthase Kinase-3_Beta_), affected by kineticLaw
	xdot(47) = (1/(compartment_c1))*(( 1.0 * reaction_r90) + (-1.0 * reaction_r91));
	
% Species:   id = s267, name = Complex_br_(_beta_TrCP/_Beta_-Catenin), affected by kineticLaw
	xdot(48) = (1/(compartment_c1))*(( 1.0 * reaction_r91) + (-1.0 * reaction_r92));
	
% Species:   id = s304, name = 6 bromoindirubin 3'oxime
% Warning species is not changed by either rules or reactions
	xdot(49) = ;
	
% Species:   id = s305, name = Complex_br_(Bcl9/Pygo/../Smad4), affected by kineticLaw
	xdot(50) = (1/(compartment_c3))*((-1.0 * reaction_r68) + ( 1.0 * reaction_r67));
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


