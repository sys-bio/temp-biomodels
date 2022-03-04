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
% Model name = Kallenberger2014 - CD95L induced apoptosis initiated by caspase-8, wild-type HeLa cells (cis/trans-cis/trans variant)
%
% is http://identifiers.org/biomodels.db/MODEL1403050003
% is http://identifiers.org/biomodels.db/BIOMD0000000526
% isDescribedBy http://identifiers.org/pubmed/24619646
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 12.0;
	x0(2) = 90.0;
	x0(3) = 127.0;
	x0(4) = 224.0;
	x0(5) = 1909.0;
	x0(6) = 3316.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 16.6;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  kon_FADD, name = kon_FADD
	global_par_kon_FADD=0.00108871858684363;
% Parameter:   id =  koff_FADD, name = koff_FADD
	global_par_koff_FADD=0.00130854998177646;
% Parameter:   id =  kDISC, name = kDISC
	global_par_kDISC=3.64965874405544E-4;
% Parameter:   id =  kD216, name = kD216
	global_par_kD216=0.00639775937416746;
% Parameter:   id =  kD216trans_p55, name = kD216trans_p55
	global_par_kD216trans_p55=2.23246421372882E-4;
% Parameter:   id =  kD216trans_p43, name = kD216trans_p43
	global_par_kD216trans_p43=5.29906975294056E-5;
% Parameter:   id =  kD374, name = kD374
	global_par_kD374=6.44612643975149E-4;
% Parameter:   id =  kD374trans_p55, name = kD374trans_p55
	global_par_kD374trans_p55=5.43518631342483E-4;
% Parameter:   id =  kD374trans_p43, name = kD374trans_p43
	global_par_kD374trans_p43=0.00413530054938906;
% Parameter:   id =  kdiss_p18, name = kdiss_p18
	global_par_kdiss_p18=0.064713651554491;
% Parameter:   id =  kBid, name = kBid
	global_par_kBid=5.2134055139547E-4;
% Parameter:   id =  kD374probe, name = kD374probe
	global_par_kD374probe=0.00153710001025539;
% Parameter:   id =  KDR, name = KDR
	global_par_KDR=57.2050013008496;
% Parameter:   id =  KDL, name = KDL
	global_par_KDL=30.0060394758199;
% Parameter:   id =  CD95act, name = CD95act
% assignmentRule: variable = CD95act
	global_par_CD95act=x(1)^3*global_par_KDL^2*x(18)/((x(18)+global_par_KDL)*(x(1)^2*global_par_KDL^2+global_par_KDR*x(18)^2+2*global_par_KDR*global_par_KDL*x(18)+global_par_KDR*global_par_KDL^2));

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_kon_FADD*global_par_CD95act*x(2)*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_koff_FADD*x(7)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_kDISC*x(3)*x(7)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_kD216*x(8)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_kD216trans_p55*x(8)*(x(8)+x(9))*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_kD216trans_p43*x(8)*x(10)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_kD216*x(10)*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_kD216trans_p55*x(10)*(x(8)+x(9))*compartment_cell;

% Reaction: id = reaction_9
	reaction_reaction_9=global_par_kD216trans_p43*x(10)*x(10)*compartment_cell;

% Reaction: id = reaction_10
	reaction_reaction_10=global_par_kD374*x(8)*compartment_cell;

% Reaction: id = reaction_11
	reaction_reaction_11=global_par_kD374trans_p55*x(8)*(x(8)+x(9))*compartment_cell;

% Reaction: id = reaction_12
	reaction_reaction_12=global_par_kD374trans_p43*x(8)*x(10)*compartment_cell;

% Reaction: id = reaction_13
	reaction_reaction_13=global_par_kD374*x(9)*compartment_cell;

% Reaction: id = reaction_14
	reaction_reaction_14=global_par_kD374trans_p55*x(9)*(x(8)+x(9))*compartment_cell;

% Reaction: id = reaction_15
	reaction_reaction_15=global_par_kD374trans_p43*x(9)*x(10)*compartment_cell;

% Reaction: id = reaction_16
	reaction_reaction_16=global_par_kdiss_p18*x(11)*compartment_cell;

% Reaction: id = reaction_17
	reaction_reaction_17=global_par_kBid*x(4)*(x(10)+x(11))*compartment_cell;

% Reaction: id = reaction_18
	reaction_reaction_18=global_par_kD374probe*x(5)*(x(10)+x(11))*compartment_cell;

% Reaction: id = reaction_19
	reaction_reaction_19=global_par_kD374probe*x(6)*x(11)*compartment_cell;

	xdot=zeros(18,1);
	
% Species:   id = CD95, name = CD95
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = FADD, name = FADD, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = p55free, name = p55free, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_reaction_3));
	
% Species:   id = Bid, name = Bid, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_reaction_17));
	
% Species:   id = PrNES_mCherry, name = PrNES_mCherry, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction_18));
	
% Species:   id = PrER_mGFP, name = PrER_mGFP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_19));
	
% Species:   id = DISC, name = DISC, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = DISCp55, name = DISCp55, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = p30, name = p30, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = p43, name = p43, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = p18, name = p18, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = p18inactive, name = p18inactive, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_16));
	
% Species:   id = tBid, name = tBid, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_17));
	
% Species:   id = PrNES, name = PrNES, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_18));
	
% Species:   id = mCherry, name = mCherry, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_18));
	
% Species:   id = PrER, name = PrER, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_19));
	
% Species:   id = mGFP, name = mGFP, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_19));
	
% Species:   id = CD95L, name = CD95L
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
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


