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
% Model name = Neumann2010_CD95Stimulation_NFkB_Apoptosis
%
% is http://identifiers.org/biomodels.db/MODEL1003100001
% is http://identifiers.org/biomodels.db/BIOMD0000000243
% isDescribedBy http://identifiers.org/pubmed/20212524
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 113.22;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.443404;
	x0(8) = 64.47652;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 4.739546;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 91.26592;
	x0(17) = 7.398562;
	x0(18) = 5.083923;
	x0(19) = 5.772825;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.277248E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.6693316;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0E-5;
% Parameter:   id =  k5, name = k5
	global_par_k5=5.946569E-4;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.9999999;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.8875063;
% Parameter:   id =  k8, name = k8
	global_par_k8=8.044378E-4;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.002249759;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1205258;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.02891451;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.1502914;
% Parameter:   id =  k13, name = k13
	global_par_k13=7.204261E-4;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.3588224;
% Parameter:   id =  k15, name = k15
	global_par_k15=3.684162;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.02229912;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.0064182;

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_default*global_par_k1*x(1)*x(16);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_default*global_par_k2*x(2)*x(8);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_default*global_par_k3*x(2)*x(17);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_default*global_par_k4*x(2)*x(18);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_default*global_par_k5*x(3)*x(8);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_default*global_par_k6*x(3)*x(17);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_default*global_par_k7*x(3)*x(18);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_default*global_par_k5*x(4)*x(8);

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_default*global_par_k6*x(4)*x(17);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_default*global_par_k7*x(4)*x(18);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_default*global_par_k5*x(5)*x(8);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_default*global_par_k6*x(5)*x(17);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_default*global_par_k7*x(5)*x(18);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_default*global_par_k8*x(6)*x(6);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_default*global_par_k9*x(7)*x(9);

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_default*global_par_k10*x(8)*x(10);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_default*global_par_k11*x(9);

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_default*global_par_k12*x(10);

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_default*global_par_k13*x(11)*x(19);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_default*global_par_k14*x(12)*x(14);

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_default*global_par_k15*x(13);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_default*global_par_k16*x(14);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_default*global_par_k17*x(15);

	xdot=zeros(23,1);
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_reaction_1));
	
% Species:   id = L_RF, name = L:RF, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = L_RF_C8, name = L:RF:C8, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = L_RF_FL, name = L:RF:FL, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = L_RF_FS, name = L:RF:FS, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = p43_p41, name = p43/p41, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_reaction_15));
	
% Species:   id = C8, name = C8, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_16));
	
% Species:   id = C8_star, name = C8*, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_17));
	
% Species:   id = C3_star, name = C3*, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_18));
	
% Species:   id = p43_FLIP, name = p43-FLIP, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_19));
	
% Species:   id = NF_kB_IkB, name = NF-kB:IkB, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*((-1.0 * reaction_reaction_20));
	
% Species:   id = NF_kB_IkB_P, name = NF-kB:IkB:P, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = p43_FLIP_IKK_star, name = p43-FLIP:IKK*, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_22));
	
% Species:   id = NF_kB_star, name = NF-kB*, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23));
	
% Species:   id = RF, name = RF, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*((-1.0 * reaction_reaction_1));
	
% Species:   id = FL, name = FL, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*((-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_12));
	
% Species:   id = FS, name = FS, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*((-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_13));
	
% Species:   id = IKK, name = IKK, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_reaction_19));
	
% Species:   id = L_RF_C8_FS, name = L:RF:C8:FS, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = L_RF_FL_FL, name = L:RF:FL:FL, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_reaction_9));
	
% Species:   id = L_RF_FL_FS, name = L:RF:FL:FS, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = L_RF_FS_FS, name = L:RF:FS:FS, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_reaction_13));
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


