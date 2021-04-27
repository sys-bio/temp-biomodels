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
% Model name = Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_PSEQ)
%
% is http://identifiers.org/biomodels.db/MODEL1204280024
% is http://identifiers.org/biomodels.db/BIOMD0000000431
% isDescribedBy http://identifiers.org/pubmed/22748295
% isDerivedFrom http://identifiers.org/pubmed/19897477
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 1200.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1200.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 200.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 300.0;
	x0(17) = 0.0;
	x0(18) = 10.0;
	x0(19) = 0.0;
	x0(20) = 100.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = quantity_1
	global_par_parameter_1=0.0;

% Reaction: id = reaction_1, name = 15	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.02;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=1.0;

	reaction_reaction_1=compartment_compartment_1*(reaction_reaction_1_k1*x(1)*x(2)-reaction_reaction_1_k2*x(3));

% Reaction: id = reaction_2, name = 16	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.01;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(3);

% Reaction: id = reaction_3, name = 17	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.032;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=1.0;

	reaction_reaction_3=compartment_compartment_1*(reaction_reaction_3_k1*x(4)*x(2)-reaction_reaction_3_k2*x(5));

% Reaction: id = reaction_4, name = 18	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=15.0;

	reaction_reaction_4=compartment_compartment_1*reaction_reaction_4_k1*x(5);

% Reaction: id = reaction_5, name = 19	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.045;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=1.0;

	reaction_reaction_5=compartment_compartment_1*(reaction_reaction_5_k1*x(6)*x(13)-reaction_reaction_5_k2*x(21));

% Reaction: id = reaction_6, name = 20	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.092;

	reaction_reaction_6=compartment_compartment_1*reaction_reaction_6_k1*x(21);

% Reaction: id = reaction_7, name = 21	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.01;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_7_k2=1.0;

	reaction_reaction_7=compartment_compartment_1*(reaction_reaction_7_k1*x(4)*x(13)-reaction_reaction_7_k2*x(22));

% Reaction: id = reaction_8, name = 22	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.5;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(22);

% Reaction: id = reaction_9, name = 23	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.086;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_9_k2=0.005;

	reaction_reaction_9=compartment_compartment_1*(reaction_reaction_9_k1*x(23)-reaction_reaction_9_k2*x(1)*x(13));

% Reaction: id = reaction_10, name = 6	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.02;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_10_k2=1.0;

	reaction_reaction_10=compartment_compartment_1*(reaction_reaction_10_k1*x(7)*x(8)-reaction_reaction_10_k2*x(9));

% Reaction: id = reaction_11, name = 7	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.01;

	reaction_reaction_11=compartment_compartment_1*reaction_reaction_11_k1*x(9);

% Reaction: id = reaction_12, name = 8	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.032;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_12_k2=1.0;

	reaction_reaction_12=compartment_compartment_1*(reaction_reaction_12_k1*x(10)*x(8)-reaction_reaction_12_k2*x(11));

% Reaction: id = reaction_13, name = 9	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=15.0;

	reaction_reaction_13=compartment_compartment_1*reaction_reaction_13_k1*x(11);

% Reaction: id = reaction_14, name = 10_P2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=0.045;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_14_k2=1.0;

	reaction_reaction_14=compartment_compartment_1*(reaction_reaction_14_k1*x(2)*x(13)-reaction_reaction_14_k2*x(12));

% Reaction: id = reaction_15, name = 11_P2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=0.092;

	reaction_reaction_15=compartment_compartment_1*reaction_reaction_15_k1*x(12);

% Reaction: id = reaction_16, name = 12_P2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.01;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=1.0;

	reaction_reaction_16=compartment_compartment_1*(reaction_reaction_16_k1*x(10)*x(13)-reaction_reaction_16_k2*x(14));

% Reaction: id = reaction_17, name = 13_P2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=0.5;

	reaction_reaction_17=compartment_compartment_1*reaction_reaction_17_k1*x(14);

% Reaction: id = reaction_18, name = 14_P2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=0.086;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_18_k2=0.005;

	reaction_reaction_18=compartment_compartment_1*(reaction_reaction_18_k1*x(15)-reaction_reaction_18_k2*x(7)*x(13));

% Reaction: id = reaction_19, name = 1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=0.02;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=1.0;

	reaction_reaction_19=compartment_compartment_1*(reaction_reaction_19_k1*x(16)*x(18)-reaction_reaction_19_k2*x(17));

% Reaction: id = reaction_20, name = 2	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=1.0;

	reaction_reaction_20=compartment_compartment_1*reaction_reaction_20_k1*x(17);

% Reaction: id = reaction_21, name = 3	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=0.02;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_21_k2=1.0;

	reaction_reaction_21=compartment_compartment_1*(reaction_reaction_21_k1*x(8)*x(20)-reaction_reaction_21_k2*x(19));

% Reaction: id = reaction_22, name = 4	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=0.5;

	reaction_reaction_22=compartment_compartment_1*reaction_reaction_22_k1*x(19);

% Reaction: id = reaction_23, name = 10_P1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=0.045;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_23_k2=1.0;

	reaction_reaction_23=compartment_compartment_1*(reaction_reaction_23_k1*x(2)*x(20)-reaction_reaction_23_k2*x(24));

% Reaction: id = reaction_25, name = 11_P1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=0.092;

	reaction_reaction_25=compartment_compartment_1*reaction_reaction_25_k1*x(24);

% Reaction: id = reaction_26, name = 12_P1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_26_k1=0.01;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_26_k2=1.0;

	reaction_reaction_26=compartment_compartment_1*(reaction_reaction_26_k1*x(10)*x(20)-reaction_reaction_26_k2*x(25));

% Reaction: id = reaction_27, name = 13_P1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_27_k1=0.5;

	reaction_reaction_27=compartment_compartment_1*reaction_reaction_27_k1*x(25);

% Reaction: id = reaction_28, name = 14_P1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_28_k1=0.086;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_28_k2=0.005;

	reaction_reaction_28=compartment_compartment_1*(reaction_reaction_28_k1*x(26)-reaction_reaction_28_k2*x(7)*x(20));

% Reaction: id = reaction_24, name = 5	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_24_k1=0.086;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_24_k2=0.005;

	reaction_reaction_24=compartment_compartment_1*(reaction_reaction_24_k1*x(27)-reaction_reaction_24_k2*x(16)*x(20));

	xdot=zeros(27,1);
	
% Species:   id = species_1, name = MK, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_2, name = MKK-PP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_3, name = MK_MKK-PP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_4, name = MK-P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_5, name = MK-P_MKK-PP, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_6, name = MK-PP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_7, name = MKK, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_28));
	
% Species:   id = species_8, name = MKKK-P, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_9, name = MKK_MKKK-P, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_10, name = MKK-P, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_11, name = MKK-P_MKKK-P, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_12, name = MKK-PP_P2, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_13, name = P2, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = species_14, name = MKK-P_P2, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_15, name = MKK_P2, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_16, name = MKKK, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = species_17, name = MKKK_Sig, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_18, name = Sig, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_19, name = MKKK-P_P1, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_20, name = P1, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = species_21, name = MK-PP_P2, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_22, name = MK-P_P2, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_23, name = MK_P2, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_24, name = MKK-PP_P1, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_25, name = MKK-P_P1, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_26, name = MKK_P1, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28));
	
% Species:   id = species_27, name = MKKK_P1, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_24));
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


