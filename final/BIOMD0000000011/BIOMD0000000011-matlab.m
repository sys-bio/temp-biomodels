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
% Model name = Levchenko2000_MAPK_noScaffold
%
% is http://identifiers.org/biomodels.db/MODEL6615234250
% is http://identifiers.org/biomodels.db/BIOMD0000000011
% isDescribedBy http://identifiers.org/pubmed/10823939
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000009
% isDerivedFrom http://identifiers.org/pubmed/6501300
% isDerivedFrom http://identifiers.org/pubmed/6947258
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 0.4;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.3;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.2;
	x0(10) = 0.0;
	x0(11) = 0.2;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.3;
	x0(18) = 0.2;
	x0(19) = 0.0;
	x0(20) = 0.3;
	x0(21) = 0.0;
	x0(22) = 0.0;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;

% Reaction: id = Reaction1, name = binding of RAF and RAFK	% Local Parameter:   id =  a1, name = a1
	reaction_Reaction1_a1=1.0;

	reaction_Reaction1=reaction_Reaction1_a1*x(17)*x(18);

% Reaction: id = Reaction2, name = dissociation of RAF_RAFK	% Local Parameter:   id =  d1, name = d1
	reaction_Reaction2_d1=0.4;

	reaction_Reaction2=reaction_Reaction2_d1*x(22);

% Reaction: id = Reaction3, name = phosphorylation of RAF	% Local Parameter:   id =  k1, name = k1
	reaction_Reaction3_k1=0.1;

	reaction_Reaction3=reaction_Reaction3_k1*x(22);

% Reaction: id = Reaction4, name = binding of RAF-P and RAF phosphatase	% Local Parameter:   id =  a2, name = a2
	reaction_Reaction4_a2=0.5;

	reaction_Reaction4=reaction_Reaction4_a2*x(19)*x(20);

% Reaction: id = Reaction5, name = dissociation of RAF-P_RAFPase	% Local Parameter:   id =  d2, name = d2
	reaction_Reaction5_d2=0.5;

	reaction_Reaction5=reaction_Reaction5_d2*x(21);

% Reaction: id = Reaction6, name = dephosphorylation of RAF-P	% Local Parameter:   id =  k2, name = k2
	reaction_Reaction6_k2=0.1;

	reaction_Reaction6=reaction_Reaction6_k2*x(21);

% Reaction: id = Reaction7, name = binding of MEK and RAF-P	% Local Parameter:   id =  a3, name = a3
	reaction_Reaction7_a3=3.3;

	reaction_Reaction7=reaction_Reaction7_a3*x(9)*x(19);

% Reaction: id = Reaction8, name = dissociation of MEK_RAF-P	% Local Parameter:   id =  d3, name = d3
	reaction_Reaction8_d3=0.42;

	reaction_Reaction8=reaction_Reaction8_d3*x(16);

% Reaction: id = Reaction9, name = phosphorylation of MEK	% Local Parameter:   id =  k3, name = k3
	reaction_Reaction9_k3=0.1;

	reaction_Reaction9=reaction_Reaction9_k3*x(16);

% Reaction: id = Reaction10, name = binding of MEK-P and MEK phosphatase	% Local Parameter:   id =  a4, name = a4
	reaction_Reaction10_a4=10.0;

	reaction_Reaction10=reaction_Reaction10_a4*x(10)*x(11);

% Reaction: id = Reaction11, name = dissociation of MEK-P_MEKPase	% Local Parameter:   id =  d4, name = d4
	reaction_Reaction11_d4=0.8;

	reaction_Reaction11=reaction_Reaction11_d4*x(12);

% Reaction: id = Reaction12, name = dephosphorylation of MEK-P	% Local Parameter:   id =  k4, name = k4
	reaction_Reaction12_k4=0.1;

	reaction_Reaction12=reaction_Reaction12_k4*x(12);

% Reaction: id = Reaction13, name = binding of MEK-P and RAF-P	% Local Parameter:   id =  a5, name = a5
	reaction_Reaction13_a5=3.3;

	reaction_Reaction13=reaction_Reaction13_a5*x(10)*x(19);

% Reaction: id = Reaction14, name = dissociation of MEK-P_RAF-P	% Local Parameter:   id =  d5, name = d5
	reaction_Reaction14_d5=0.4;

	reaction_Reaction14=reaction_Reaction14_d5*x(15);

% Reaction: id = Reaction15, name = phosphorylation of MEK-P	% Local Parameter:   id =  k5, name = k5
	reaction_Reaction15_k5=0.1;

	reaction_Reaction15=reaction_Reaction15_k5*x(15);

% Reaction: id = Reaction16, name = binding of MEK-PP and MEK phosphatase	% Local Parameter:   id =  a6, name = a6
	reaction_Reaction16_a6=10.0;

	reaction_Reaction16=reaction_Reaction16_a6*x(11)*x(13);

% Reaction: id = Reaction17, name = dissociation of MEK-PP_MEKPase	% Local Parameter:   id =  d6, name = d6
	reaction_Reaction17_d6=0.8;

	reaction_Reaction17=reaction_Reaction17_d6*x(14);

% Reaction: id = Reaction18, name = dephosphorylation of MEK-PP	% Local Parameter:   id =  k6, name = k6
	reaction_Reaction18_k6=0.1;

	reaction_Reaction18=reaction_Reaction18_k6*x(14);

% Reaction: id = Reaction19, name = binding of MAPK and MEK-PP	% Local Parameter:   id =  a7, name = a7
	reaction_Reaction19_a7=20.0;

	reaction_Reaction19=reaction_Reaction19_a7*x(1)*x(13);

% Reaction: id = Reaction20, name = dissociation of MAPK_MEK-PP	% Local Parameter:   id =  d7, name = d7
	reaction_Reaction20_d7=0.6;

	reaction_Reaction20=reaction_Reaction20_d7*x(2);

% Reaction: id = Reaction21, name = phosphorylation of MAPK	% Local Parameter:   id =  k7, name = k7
	reaction_Reaction21_k7=0.1;

	reaction_Reaction21=reaction_Reaction21_k7*x(2);

% Reaction: id = Reaction22, name = binding of MAPK-P and MAPK phosphatase	% Local Parameter:   id =  a8, name = a8
	reaction_Reaction22_a8=5.0;

	reaction_Reaction22=reaction_Reaction22_a8*x(3)*x(4);

% Reaction: id = Reaction23, name = dissociation of MAPK-P_MAPKPase	% Local Parameter:   id =  d8, name = d8
	reaction_Reaction23_d8=0.4;

	reaction_Reaction23=reaction_Reaction23_d8*x(5);

% Reaction: id = Reaction24, name = dephosphorylation of MAPK-P	% Local Parameter:   id =  k8, name = k8
	reaction_Reaction24_k8=0.1;

	reaction_Reaction24=reaction_Reaction24_k8*x(5);

% Reaction: id = Reaction25, name = binding of MAPK-P and MEK-PP	% Local Parameter:   id =  a9, name = a9
	reaction_Reaction25_a9=20.0;

	reaction_Reaction25=reaction_Reaction25_a9*x(3)*x(13);

% Reaction: id = Reaction26, name = dissociation of MAPK-P_MEK-PP	% Local Parameter:   id =  d9, name = d9
	reaction_Reaction26_d9=0.6;

	reaction_Reaction26=reaction_Reaction26_d9*x(6);

% Reaction: id = Reaction27, name = phosphorylation of MAPK-P	% Local Parameter:   id =  k9, name = k9
	reaction_Reaction27_k9=0.1;

	reaction_Reaction27=reaction_Reaction27_k9*x(6);

% Reaction: id = Reaction28, name = binding of MAPK-PP and MAPK phosphatase	% Local Parameter:   id =  a10, name = a10
	reaction_Reaction28_a10=5.0;

	reaction_Reaction28=reaction_Reaction28_a10*x(4)*x(7);

% Reaction: id = Reaction29, name = dissociation of MAPK-PP_MAPKPase	% Local Parameter:   id =  d10, name = d10
	reaction_Reaction29_d10=0.4;

	reaction_Reaction29=reaction_Reaction29_d10*x(8);

% Reaction: id = Reaction30, name = dephosphorylation of MAPK-PP	% Local Parameter:   id =  k10, name = k10
	reaction_Reaction30_k10=0.1;

	reaction_Reaction30=reaction_Reaction30_k10*x(8);

	xdot=zeros(22,1);
	
% Species:   id = MAPK, name = MAPK, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_Reaction19) + ( 1.0 * reaction_Reaction20) + ( 1.0 * reaction_Reaction24);
	
% Species:   id = MAPKMEKpp, name = MAPK_MEK-PP, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Reaction19) + (-1.0 * reaction_Reaction20) + (-1.0 * reaction_Reaction21);
	
% Species:   id = MAPKp, name = MAPK-P, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Reaction21) + (-1.0 * reaction_Reaction22) + ( 1.0 * reaction_Reaction23) + (-1.0 * reaction_Reaction25) + ( 1.0 * reaction_Reaction26) + ( 1.0 * reaction_Reaction30);
	
% Species:   id = MAPKPH, name = MAPK phosphatase, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Reaction22) + ( 1.0 * reaction_Reaction23) + ( 1.0 * reaction_Reaction24) + (-1.0 * reaction_Reaction28) + ( 1.0 * reaction_Reaction29) + ( 1.0 * reaction_Reaction30);
	
% Species:   id = MAPKpMAPKPH, name = MAPK-P_MAPKPase, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Reaction22) + (-1.0 * reaction_Reaction23) + (-1.0 * reaction_Reaction24);
	
% Species:   id = MAPKpMEKpp, name = MAPK-P_MEK-PP, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Reaction25) + (-1.0 * reaction_Reaction26) + (-1.0 * reaction_Reaction27);
	
% Species:   id = MAPKpp, name = MAPK-PP, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Reaction27) + (-1.0 * reaction_Reaction28) + ( 1.0 * reaction_Reaction29);
	
% Species:   id = MAPKppMAPKPH, name = MAPK-PP_MAPKPase, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_Reaction28) + (-1.0 * reaction_Reaction29) + (-1.0 * reaction_Reaction30);
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction12);
	
% Species:   id = MEKp, name = MEK-P, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction14) + ( 1.0 * reaction_Reaction18);
	
% Species:   id = MEKPH, name = MEK phosphatase, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction11) + ( 1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction16) + ( 1.0 * reaction_Reaction17) + ( 1.0 * reaction_Reaction18);
	
% Species:   id = MEKpMEKPH, name = MEK-P_MEKPase, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_Reaction10) + (-1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction12);
	
% Species:   id = MEKpp, name = MEK-PP, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Reaction15) + (-1.0 * reaction_Reaction16) + ( 1.0 * reaction_Reaction17) + (-1.0 * reaction_Reaction19) + ( 1.0 * reaction_Reaction20) + ( 1.0 * reaction_Reaction21) + (-1.0 * reaction_Reaction25) + ( 1.0 * reaction_Reaction26) + ( 1.0 * reaction_Reaction27);
	
% Species:   id = MEKppMEKPH, name = MEK-PP_MEKPase, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Reaction16) + (-1.0 * reaction_Reaction17) + (-1.0 * reaction_Reaction18);
	
% Species:   id = MEKpRAFp, name = MEK-P_RAF-P, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Reaction13) + (-1.0 * reaction_Reaction14) + (-1.0 * reaction_Reaction15);
	
% Species:   id = MEKRAFp, name = MEK_RAF-P, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_Reaction7) + (-1.0 * reaction_Reaction8) + (-1.0 * reaction_Reaction9);
	
% Species:   id = RAF, name = RAF, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction6);
	
% Species:   id = RAFK, name = RAFK, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction3);
	
% Species:   id = RAFp, name = RAF-P, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction4) + ( 1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction14) + ( 1.0 * reaction_Reaction15);
	
% Species:   id = RAFPH, name = RAF phosphatase, affected by kineticLaw
	xdot(20) = (-1.0 * reaction_Reaction4) + ( 1.0 * reaction_Reaction5) + ( 1.0 * reaction_Reaction6);
	
% Species:   id = RAFpRAFPH, name = RAF-P_RAFPase, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_Reaction4) + (-1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction6);
	
% Species:   id = RAFRAFK, name = RAF_RAFK, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction3);
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


