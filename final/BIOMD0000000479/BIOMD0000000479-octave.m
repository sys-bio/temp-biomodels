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
% Model name = Croft2013 - GPCR-RGS interaction that compartmentalizes RGS activity
%
% is http://identifiers.org/biomodels.db/MODEL1305280000
% is http://identifiers.org/biomodels.db/BIOMD0000000479
% isDescribedBy http://identifiers.org/pubmed/23900842
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000439
% isDerivedFrom http://identifiers.org/pubmed/15313578
%


function main()
%Initial conditions vector
	x0=zeros(28,1);
	x0(1) = 0.0;
	x0(2) = 205.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 205.0;
	x0(13) = 305.0;
	x0(14) = 0.0;
	x0(15) = 60.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 205.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;


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
% Parameter:   id =  ka, name = ka
	global_par_ka=1.5;
% Parameter:   id =  Ligand_conc, name = Ligand_conc
	global_par_Ligand_conc=0.1;

% Reaction: id = R1, name = Receptor-Ligand association	% Local Parameter:   id =  k1, name = k1
	reaction_R1_k1=0.0025;

	reaction_R1=compartment_compartment*x(1)*x(2)*reaction_R1_k1;

% Reaction: id = R2, name = Receptor-Gprotein association	% Local Parameter:   id =  k2, name = k2
	reaction_R2_k2=0.005;

	reaction_R2=compartment_compartment*x(2)*x(4)*reaction_R2_k2;

% Reaction: id = R3, name = LR-Gprotein association	% Local Parameter:   id =  k3, name = k3
	reaction_R3_k3=0.02;

	reaction_R3=compartment_compartment*x(3)*x(4)*reaction_R3_k3;

% Reaction: id = R4, name = Ligand-RGabg association	% Local Parameter:   id =  k4, name = k4
	reaction_R4_k4=0.005;

	reaction_R4=compartment_compartment*x(1)*x(5)*reaction_R4_k4;

% Reaction: id = R5, name = Ligand-RRGSm association	% Local Parameter:   id =  k5, name = k5
	reaction_R5_k5=0.005;

	reaction_R5=compartment_compartment*x(1)*x(7)*reaction_R5_k5;

% Reaction: id = R6, name = RRGSm-Gprotein association	% Local Parameter:   id =  k6, name = k6
	reaction_R6_k6=0.005;

	reaction_R6=compartment_compartment*x(7)*x(4)*reaction_R6_k6;

% Reaction: id = R7, name = LRRGSm-Gprotein association	% Local Parameter:   id =  k7, name = k7
	reaction_R7_k7=0.02;

	reaction_R7=compartment_compartment*x(8)*x(4)*reaction_R7_k7;

% Reaction: id = R8, name = Ligand-RRGSmGabg association	% Local Parameter:   id =  k8, name = k8
	reaction_R8_k8=0.005;

	reaction_R8=compartment_compartment*x(1)*x(9)*reaction_R8_k8;

% Reaction: id = R9, name = Gprotein activation by LR	% Local Parameter:   id =  k9, name = k9
	reaction_R9_k9=50.0;

	reaction_R9=compartment_compartment*x(6)*reaction_R9_k9;

% Reaction: id = R10, name = Gprotein spontaneous activation	% Local Parameter:   id =  k10, name = k10
	reaction_R10_k10=0.2;

	reaction_R10=compartment_compartment*x(4)*reaction_R10_k10;

% Reaction: id = R11, name = Gprotein activation by LRRGSm	% Local Parameter:   id =  k11, name = k11
	reaction_R11_k11=40.0;

	reaction_R11=compartment_compartment*x(10)*reaction_R11_k11;

% Reaction: id = R12, name = Effector-GaGTP association	% Local Parameter:   id =  k12, name = k12
	reaction_R12_k12=10.0;

	reaction_R12=compartment_compartment*x(13)*x(11)*reaction_R12_k12;

% Reaction: id = R13, name = RGS in cytosol moves to membrane	% Local Parameter:   id =  k13, name = k13
	reaction_R13_k13=5.0E-4;

	reaction_R13=compartment_compartment*x(15)*reaction_R13_k13;

% Reaction: id = R14, name = RGS in membrane moves to cytosol	% Local Parameter:   id =  k14, name = k14
	reaction_R14_k14=0.005;

	reaction_R14=compartment_compartment*x(16)*reaction_R14_k14;

% Reaction: id = R15, name = Receptor recruits RGSc to membrane	% Local Parameter:   id =  k15, name = k15
	reaction_R15_k15=0.1;

	reaction_R15=compartment_compartment*x(2)*x(15)*reaction_R15_k15;

% Reaction: id = R16, name = R-RGSm dissociation	% Local Parameter:   id =  k16, name = k16
	reaction_R16_k16=100.0;

	reaction_R16=compartment_compartment*x(7)*reaction_R16_k16;

% Reaction: id = R17, name = LR recruits RGSc to membrane	% Local Parameter:   id =  k17, name = k17
	reaction_R17_k17=0.1;

	reaction_R17=compartment_compartment*x(3)*x(15)*reaction_R17_k17;

% Reaction: id = R18, name = LR-RGSm dissociation	% Local Parameter:   id =  k18, name = k18
	reaction_R18_k18=100.0;

	reaction_R18=compartment_compartment*x(8)*reaction_R18_k18;

% Reaction: id = R19, name = RGabg recruits RGSc to membrane	% Local Parameter:   id =  k19, name = k19
	reaction_R19_k19=0.1;

	reaction_R19=compartment_compartment*x(5)*x(15)*reaction_R19_k19;

% Reaction: id = R20, name = RRGSmGabg dissociation	% Local Parameter:   id =  k20, name = k20
	reaction_R20_k20=0.1;

	reaction_R20=compartment_compartment*x(9)*reaction_R20_k20;

% Reaction: id = R21, name = LRGabg recruits RGSc to membrane	% Local Parameter:   id =  k21, name = k21
	reaction_R21_k21=0.1;

	reaction_R21=compartment_compartment*x(6)*x(15)*reaction_R21_k21;

% Reaction: id = R22, name = GaGTP recruits RGSc to membrane	% Local Parameter:   id =  k22, name = k22
	reaction_R22_k22=60.0;

	reaction_R22=compartment_compartment*x(11)*x(15)*reaction_R22_k22;

% Reaction: id = R23, name = RGSmGaGTP dissociation	% Local Parameter:   id =  k23, name = k23
	reaction_R23_k23=0.05;

	reaction_R23=compartment_compartment*x(17)*reaction_R23_k23;

% Reaction: id = R24, name = GaGTPEffectorOFF recruits RGS from cytosol	% Local Parameter:   id =  k24, name = k24
	reaction_R24_k24=1.0E-4;

	reaction_R24=compartment_compartment*x(18)*x(15)*reaction_R24_k24;

% Reaction: id = R25, name = Effector turns off	% Local Parameter:   id =  k25, name = k25
	reaction_R25_k25=1.0;

	reaction_R25=compartment_compartment*x(14)*reaction_R25_k25;

% Reaction: id = R26, name = GaGTP hydrolyzes GTP	% Local Parameter:   id =  k26, name = k26
	reaction_R26_k26=0.005;

	reaction_R26=compartment_compartment*x(11)*reaction_R26_k26;

% Reaction: id = R27, name = GaGTP-RGSm association	% Local Parameter:   id =  k27, name = k27
	reaction_R27_k27=500.0;

	reaction_R27=compartment_compartment*x(11)*x(16)*reaction_R27_k27;

% Reaction: id = R28, name = RGSmGaGTP hydrolyzes GTP	% Local Parameter:   id =  k28, name = k28
	reaction_R28_k28=2.5;

	reaction_R28=compartment_compartment*x(17)*reaction_R28_k28;

% Reaction: id = R29, name = GaGTP-LRRGSm association	% Local Parameter:   id =  k29, name = k29
	reaction_R29_k29=100.0;

	reaction_R29=compartment_compartment*x(11)*x(8)*reaction_R29_k29;

% Reaction: id = R30, name = LRRGSmGaGTP hydrolyzes GTP	% Local Parameter:   id =  k30, name = k30
	reaction_R30_k30=2.5;

	reaction_R30=compartment_compartment*x(21)*reaction_R30_k30;

% Reaction: id = R31, name = GaGTP-RRGSm association	% Local Parameter:   id =  k31, name = k31
	reaction_R31_k31=0.5;

	reaction_R31=compartment_compartment*x(11)*x(7)*reaction_R31_k31;

% Reaction: id = R32, name = RRGSmGaGTP hydrolyzes GTP	% Local Parameter:   id =  k32, name = k32
	reaction_R32_k32=0.5;

	reaction_R32=compartment_compartment*x(22)*reaction_R32_k32;

% Reaction: id = R33, name = GaGTPEffectorOFF hydrolyzes GTP	% Local Parameter:   id =  k33, name = k33
	reaction_R33_k33=0.005;

	reaction_R33=compartment_compartment*x(18)*reaction_R33_k33;

% Reaction: id = R34, name = GaGTPEffectorOFF-RGSm association	% Local Parameter:   id =  k34, name = k34
	reaction_R34_k34=50.0;

	reaction_R34=compartment_compartment*x(18)*x(16)*reaction_R34_k34;

% Reaction: id = R35, name = RGSmGaGTPEffectorOFF hydrolyzes GTP	% Local Parameter:   id =  k35, name = k35
	reaction_R35_k35=0.3;

	reaction_R35=compartment_compartment*x(19)*reaction_R35_k35;

% Reaction: id = R36, name = GaGTPEffectorOFF-LRRGSm association	% Local Parameter:   id =  k36, name = k36
	reaction_R36_k36=50.0;

	reaction_R36=compartment_compartment*x(18)*x(8)*reaction_R36_k36;

% Reaction: id = R37, name = LRRGSmGaGTPEffectorOFF hydrolyzes GTP	% Local Parameter:   id =  k37, name = k37
	reaction_R37_k37=0.3;

	reaction_R37=compartment_compartment*x(23)*reaction_R37_k37;

% Reaction: id = R38, name = Phosphate release	% Local Parameter:   id =  k38, name = k38
	reaction_R38_k38=1000.0;

	reaction_R38=compartment_compartment*x(20)*reaction_R38_k38;

% Reaction: id = R39, name = Gprotein subunits association	% Local Parameter:   id =  k39, name = k39
	reaction_R39_k39=1000.0;

	reaction_R39=compartment_compartment*x(24)*x(12)*reaction_R39_k39;

% Reaction: id = R40, name = Phosphate degradation	% Local Parameter:   id =  k40, name = k40
	reaction_R40_k40=10.0;

	reaction_R40=compartment_compartment*x(25)*reaction_R40_k40;

% Reaction: id = R41, name = Delay 1
	reaction_R41=compartment_compartment*x(14)*global_par_ka;

% Reaction: id = R42, name = Delay 2
	reaction_R42=compartment_compartment*x(26)*global_par_ka;

% Reaction: id = R43, name = Delay 3
	reaction_R43=compartment_compartment*x(27)*global_par_ka;

% Reaction: id = R44, name = Final output
	reaction_R44=compartment_compartment*x(28)*global_par_ka;

%Event: id=Ligand_addition
	event_Ligand_addition=time >= 14;

	if(event_Ligand_addition) 
		x(1)=x(1)+global_par_Ligand_conc;
	end

	xdot=zeros(28,1);
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R8));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R16));
	
% Species:   id = LR, name = LR, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R18));
	
% Species:   id = Gabg, name = Gabg, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R39));
	
% Species:   id = RGabg, name = RGabg, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R4) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R20));
	
% Species:   id = LRGabg, name = LRGabg, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R9) + (-1.0 * reaction_R21));
	
% Species:   id = RRGSm, name = RRGSm, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R15) + (-1.0 * reaction_R16) + (-1.0 * reaction_R31) + ( 1.0 * reaction_R32));
	
% Species:   id = LRRGSm, name = LRRGSm, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R7) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R17) + (-1.0 * reaction_R18) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R30) + (-1.0 * reaction_R36) + ( 1.0 * reaction_R37));
	
% Species:   id = RRGSmGabg, name = RRGSmGabg, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = LRRGSmGabg, name = LRRGSmGabg, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R21));
	
% Species:   id = GaGTP, name = GaGTP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R23) + (-1.0 * reaction_R26) + (-1.0 * reaction_R27) + (-1.0 * reaction_R29) + (-1.0 * reaction_R31));
	
% Species:   id = Gbg, name = Gbg, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R39));
	
% Species:   id = Effector, name = Effector, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_R12) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R37));
	
% Species:   id = GaGTPEffector, name = GaGTPEffector, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R25));
	
% Species:   id = RGSc, name = RGSc, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R15) + (-1.0 * reaction_R17) + (-1.0 * reaction_R19) + (-1.0 * reaction_R21) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R23) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R28) + ( 1.0 * reaction_R35));
	
% Species:   id = RGSm, name = RGSm, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R18) + ( 1.0 * reaction_R20) + (-1.0 * reaction_R27) + (-1.0 * reaction_R34));
	
% Species:   id = RGSmGaGTP, name = RGSmGaGTP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R23) + ( 1.0 * reaction_R27) + (-1.0 * reaction_R28));
	
% Species:   id = GaGTPEffectorOFF, name = GaGTPEffectorOFF, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*((-1.0 * reaction_R24) + ( 1.0 * reaction_R25) + (-1.0 * reaction_R33) + (-1.0 * reaction_R34) + (-1.0 * reaction_R36));
	
% Species:   id = RGSmGaGTPEffectorOFF, name = RGSmGaGTPEffectorOFF, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_R24) + ( 1.0 * reaction_R34) + (-1.0 * reaction_R35));
	
% Species:   id = GaGDPP, name = GaGDPP, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_R26) + ( 1.0 * reaction_R28) + ( 1.0 * reaction_R30) + ( 1.0 * reaction_R32) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R37) + (-1.0 * reaction_R38));
	
% Species:   id = LRRGSmGaGTP, name = LRRGSmGaGTP, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_R29) + (-1.0 * reaction_R30));
	
% Species:   id = RRGSmGaGTP, name = RRGSmGaGTP, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_R31) + (-1.0 * reaction_R32));
	
% Species:   id = LRRGSmGaGTPEffectorOFF, name = LRRGSmGaGTPEffectorOFF, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_R36) + (-1.0 * reaction_R37));
	
% Species:   id = GaGDP, name = GaGDP, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_R38) + (-1.0 * reaction_R39));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_R38) + (-1.0 * reaction_R40));
	
% Species:   id = z1, name = z1, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_R41) + (-1.0 * reaction_R42));
	
% Species:   id = z2, name = z2, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*(( 1.0 * reaction_R42) + (-1.0 * reaction_R43));
	
% Species:   id = z3, name = z3, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_R43) + (-1.0 * reaction_R44));
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


