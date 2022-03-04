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
% Model name = Amara2013 - PCNA ubiquitylation in the activation of PRR pathway
%
% is http://identifiers.org/biomodels.db/MODEL1211260000
% is http://identifiers.org/biomodels.db/BIOMD0000000475
% isDescribedBy http://identifiers.org/pubmed/23514624
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 1001.0;
	x0(2) = 7480.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 206.0;
	x0(6) = 194.0;
	x0(7) = 0.0;
	x0(8) = 8698.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1520.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 193.0;
	x0(19) = 0.0;
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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = PCNA_sum
% assignmentRule: variable = parameter_1
	global_par_parameter_1=x(12)+x(19)+x(22)+x(11)+x(14)+x(17)+x(21)+x(20)+x(16);

% Reaction: id = reaction_1, name = r01	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1.5E-8;

	reaction_reaction_1=compartment_compartment_1*reaction_reaction_1_k1*x(2)*x(1);

% Reaction: id = reaction_2, name = r02	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.01;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(5)^2;

% Reaction: id = reaction_3, name = r03	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=1000.0;

	reaction_reaction_3=compartment_compartment_1*reaction_reaction_3_k1*x(4);

% Reaction: id = reaction_4, name = r04	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=2.5E-7;

	reaction_reaction_4=compartment_compartment_1*reaction_reaction_4_k1*x(6)*x(8);

% Reaction: id = reaction_5, name = r05	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=100000.0;

	reaction_reaction_5=compartment_compartment_1*reaction_reaction_5_k1*x(3)*x(4);

% Reaction: id = reaction_6, name = r06	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=1000.0;

	reaction_reaction_6=compartment_compartment_1*reaction_reaction_6_k1*x(9);

% Reaction: id = reaction_7, name = r07	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=0.0351;

	reaction_reaction_7=compartment_compartment_1*reaction_reaction_7_k1*x(7)*x(9);

% Reaction: id = reaction_8, name = r08	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=0.01;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(10);

% Reaction: id = reaction_9, name = r09	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=0.01;

	reaction_reaction_9=compartment_compartment_1*reaction_reaction_9_k1*x(10);

% Reaction: id = reaction_10, name = r10	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=1.0;

	reaction_reaction_10=compartment_compartment_1*reaction_reaction_10_k1*x(11);

% Reaction: id = reaction_11, name = r11	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=100000.0;

	reaction_reaction_11=compartment_compartment_1*reaction_reaction_11_k1*x(8)*x(18);

% Reaction: id = reaction_12, name = r12	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=5.0E-6;

	reaction_reaction_12=compartment_compartment_1*reaction_reaction_12_k1*x(12)*x(13);

% Reaction: id = reaction_13, name = r13	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=0.005;

	reaction_reaction_13=compartment_compartment_1*reaction_reaction_13_k1*x(14);

% Reaction: id = reaction_14, name = r14	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=0.078;

	reaction_reaction_14=compartment_compartment_1*reaction_reaction_14_k1*x(14)*x(15);

% Reaction: id = reaction_15, name = r15	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=1.0E-10;

	reaction_reaction_15=compartment_compartment_1*reaction_reaction_15_k1*x(16);

% Reaction: id = reaction_16, name = r16	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=0.05;

	reaction_reaction_16=compartment_compartment_1*reaction_reaction_16_k1*x(16);

% Reaction: id = reaction_17, name = r17	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=7.5E-6;

	reaction_reaction_17=compartment_compartment_1*reaction_reaction_17_k1*x(17);

% Reaction: id = reaction_18, name = r18	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_18_k1=5.0E-6;

	reaction_reaction_18=compartment_compartment_1*reaction_reaction_18_k1*x(13)*x(19);

% Reaction: id = reaction_19, name = r19	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=0.078;

	reaction_reaction_19=compartment_compartment_1*reaction_reaction_19_k1*x(15)*x(17);

% Reaction: id = reaction_20, name = r20	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=1.0E-10;

	reaction_reaction_20=compartment_compartment_1*reaction_reaction_20_k1*x(20);

% Reaction: id = reaction_21, name = r21	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_21_k1=0.005;

	reaction_reaction_21=compartment_compartment_1*reaction_reaction_21_k1*x(20);

% Reaction: id = reaction_22, name = r22	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_22_k1=0.005;

	reaction_reaction_22=compartment_compartment_1*reaction_reaction_22_k1*x(21);

% Reaction: id = reaction_23, name = r23	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=3.0E-8;

	reaction_reaction_23=compartment_compartment_1*reaction_reaction_23_k1*x(12);

% Reaction: id = reaction_24, name = r24	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_24_k1=8.0E-4;

	reaction_reaction_24=compartment_compartment_1*reaction_reaction_24_k1*x(19);

% Reaction: id = reaction_25, name = r25	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_25_k1=0.005;

	reaction_reaction_25=compartment_compartment_1*reaction_reaction_25_k1*x(22);

	xdot=zeros(23,1);
	
% Species:   id = species_1, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1));
	
% Species:   id = species_2, name = PCNA, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1));
	
% Species:   id = species_3, name = PCNAon, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_4, name = Rad18:Rad18, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_5, name = Rad18, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-2.0 * reaction_reaction_2) + ( 2.0 * reaction_reaction_3));
	
% Species:   id = species_6, name = Rad6, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = species_7, name = Rad6U, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = species_8, name = U, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_23) + ( 2.0 * reaction_reaction_24) + ( 3.0 * reaction_reaction_25));
	
% Species:   id = species_9, name = Rad18:Rad18:PCNAon, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = species_10, name = Rad18:Rad18:PCNAon:Rad6U, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_11, name = Rad18:Rad18:PCNAonU, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_12, name = PCNAonU, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_13, name = Rad5, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_22));
	
% Species:   id = species_14, name = Rad5:PCNAonU, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = species_15, name = Ubc13U:Mms2, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_16, name = Ubc13U:Mms2:Rad5:PCNAonU, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = species_17, name = Rad5:PCNAonU:U, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_18, name = Ubc13:Mms2, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_21));
	
% Species:   id = species_19, name = PCNAonU:U, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_24));
	
% Species:   id = species_20, name = Ubc13U:Mms2:Rad5:PCNAonU:U, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_21, name = Rad5:PCNAonU:U:U, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_22, name = PCNAonU:U:U, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_23, name = PCNAoff, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25));
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


