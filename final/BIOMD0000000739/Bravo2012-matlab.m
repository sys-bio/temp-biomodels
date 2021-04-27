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
% Model name = Bravo2012 - Modelling blood coagulation factor Va inactivation by APC
%
% isDescribedBy http://identifiers.org/pubmed/22607732
% is http://identifiers.org/biomodels.db/MODEL1807020001
% is http://identifiers.org/biomodels.db/BIOMD0000000739
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 2.0E-9;
	x0(2) = 0.0;
	x0(3) = 2.0E-8;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
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
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  R01_koff, name = R01_koff
	global_par_R01_koff=0.7;
% Parameter:   id =  R01_kon, name = R01_kon
	global_par_R01_kon=1.0E8;
% Parameter:   id =  R02_kcat, name = R02_kcat
	global_par_R02_kcat=1.0;
% Parameter:   id =  R03_kcat, name = R03_kcat
	global_par_R03_kcat=0.192;
% Parameter:   id =  R04_koff, name = R04_koff
	global_par_R04_koff=0.7;
% Parameter:   id =  R04_kon, name = R04_kon
	global_par_R04_kon=1.0E8;
% Parameter:   id =  R05_koff, name = R05_koff
	global_par_R05_koff=0.7;
% Parameter:   id =  R05_kon, name = R05_kon
	global_par_R05_kon=1.0E8;
% Parameter:   id =  R06_kcat, name = R06_kcat
	global_par_R06_kcat=0.192;
% Parameter:   id =  R07_kcat, name = R07_kcat
	global_par_R07_kcat=1.0;
% Parameter:   id =  R08_kdis, name = R08_kdis
	global_par_R08_kdis=0.028;
% Parameter:   id =  R09_kdis, name = R09_kdis
	global_par_R09_kdis=0.028;
% Parameter:   id =  R10_koff, name = R10_koff
	global_par_R10_koff=0.7;
% Parameter:   id =  R10_kon, name = R10_kon
	global_par_R10_kon=1.0E8;
% Parameter:   id =  R11_koff, name = R11_koff
	global_par_R11_koff=0.075;
% Parameter:   id =  R11_kon, name = R11_kon
	global_par_R11_kon=1.5E8;
% Parameter:   id =  R12_koff, name = R12_koff
	global_par_R12_koff=0.15;
% Parameter:   id =  R12_kon, name = R12_kon
	global_par_R12_kon=1.5E8;
% Parameter:   id =  R13_koff, name = R13_koff
	global_par_R13_koff=0.15;
% Parameter:   id =  R13_kon, name = R13_kon
	global_par_R13_kon=1.5E8;
% Parameter:   id =  R14_koff, name = R14_koff
	global_par_R14_koff=0.15;
% Parameter:   id =  R14_kon, name = R14_kon
	global_par_R14_kon=1.5E8;
% Parameter:   id =  R15_kdis, name = R15_kdis
	global_par_R15_kdis=0.0035;
% Parameter:   id =  R16_kdis, name = R16_kdis
	global_par_R16_kdis=0.0035;
% Parameter:   id =  R17_koff, name = R17_koff
	global_par_R17_koff=70.0;
% Parameter:   id =  R17_kon, name = R17_kon
	global_par_R17_kon=1.0E8;
% Parameter:   id =  R19_koff, name = R19_koff
	global_par_R19_koff=103.0;
% Parameter:   id =  R19_kon, name = R19_kon
	global_par_R19_kon=1.0E8;
% Parameter:   id =  R20_koff, name = R20_koff
	global_par_R20_koff=103.0;
% Parameter:   id =  R20_kon, name = R20_kon
	global_par_R20_kon=1.0E8;
% Parameter:   id =  R21_koff, name = R21_koff
	global_par_R21_koff=103.0;
% Parameter:   id =  R21_kon, name = R21_kon
	global_par_R21_kon=1.0E8;
% Parameter:   id =  R22_koff, name = R22_koff
	global_par_R22_koff=103.0;
% Parameter:   id =  R22_kon, name = R22_kon
	global_par_R22_kon=1.0E8;
% Parameter:   id =  R23_dis, name = R23_dis
	global_par_R23_dis=0.0035;
% Parameter:   id =  R24_dis, name = R24_dis
	global_par_R24_dis=0.0035;
% Parameter:   id =  time_minutes, name = time_minutes
% Parameter:   id =  Curve_Va_Xa, name = Curve_Va:Xa
% Parameter:   id =  Curve_Va, name = Curve_Va
% Parameter:   id =  Curve_va_i_506, name = Curve_va_i_506
% Parameter:   id =  param_for_curve_va_i_506_normalise, name = param_for_curve_va_i_506_normalise
% Parameter:   id =  Metabolite_19, name = Initial for Va:PT
	global_par_Metabolite_19=0.0;
% Parameter:   id =  Metabolite_2, name = Initial for Va
	global_par_Metabolite_2=2.0E-8;
% Parameter:   id =  Metabolite_13, name = Initial for Xa:Va
	global_par_Metabolite_13=0.0;
% assignmentRule: variable = time_minutes
	global_par_time_minutes=time/60;
% assignmentRule: variable = Curve_Va_Xa
	global_par_Curve_Va_Xa=x(14)/global_par_Metabolite_13;
% assignmentRule: variable = Curve_Va
	global_par_Curve_Va=x(3)/global_par_Metabolite_2;
% assignmentRule: variable = param_for_curve_va_i_506_normalise
	global_par_param_for_curve_va_i_506_normalise=piecewise(5.9E-9, global_par_Metabolite_19 < 3E-7, piecewise(1.08E-7, global_par_Metabolite_19 < 6E-7, 2.01E-7));
% assignmentRule: variable = Curve_va_i_506
	global_par_Curve_va_i_506=x(4)/global_par_param_for_curve_va_i_506_normalise;

% Reaction: id = R01, name = R01
	reaction_R01=compartment_compartment*(global_par_R01_kon*x(1)*x(3)-global_par_R01_koff*x(2));

% Reaction: id = R02, name = R02
	reaction_R02=compartment_compartment*global_par_R02_kcat*x(2);

% Reaction: id = R03, name = R03
	reaction_R03=compartment_compartment*global_par_R03_kcat*x(2);

% Reaction: id = R04, name = R04
	reaction_R04=compartment_compartment*(global_par_R04_kon*x(1)*x(4)-global_par_R04_koff*x(6));

% Reaction: id = R05, name = R05
	reaction_R05=compartment_compartment*(global_par_R05_kon*x(1)*x(5)-global_par_R05_koff*x(7));

% Reaction: id = R06, name = R06
	reaction_R06=compartment_compartment*global_par_R06_kcat*x(6);

% Reaction: id = R07, name = R07
	reaction_R07=compartment_compartment*global_par_R07_kcat*x(7);

% Reaction: id = R08, name = R08
	reaction_R08=compartment_compartment*global_par_R08_kdis*x(5);

% Reaction: id = R09, name = R09
	reaction_R09=compartment_compartment*global_par_R09_kdis*x(8);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_compartment*(global_par_R10_kon*x(1)*x(9)-global_par_R10_koff*x(12));

% Reaction: id = R11, name = R11
	reaction_R11=compartment_compartment*(global_par_R11_kon*x(13)*x(3)-global_par_R11_koff*x(14));

% Reaction: id = R12, name = R12
	reaction_R12=compartment_compartment*(global_par_R12_kon*x(13)*x(4)-global_par_R12_koff*x(15));

% Reaction: id = R13, name = R13
	reaction_R13=compartment_compartment*(global_par_R13_kon*x(13)*x(5)-global_par_R13_koff*x(17));

% Reaction: id = R14, name = R14
	reaction_R14=compartment_compartment*(global_par_R14_kon*x(13)*x(8)-global_par_R14_koff*x(16));

% Reaction: id = R15, name = R15
	reaction_R15=compartment_compartment*global_par_R15_kdis*x(17);

% Reaction: id = R16, name = R16
	reaction_R16=compartment_compartment*global_par_R16_kdis*x(16);

% Reaction: id = R17, name = R17
	reaction_R17=compartment_compartment*(global_par_R17_kon*x(3)*x(19)-global_par_R17_koff*x(20));

% Reaction: id = R19, name = R19
	reaction_R19=compartment_compartment*(global_par_R19_kon*x(14)*x(19)-global_par_R19_koff*x(21));

% Reaction: id = R20, name = R20
	reaction_R20=compartment_compartment*(global_par_R20_kon*x(15)*x(19)-global_par_R20_koff*x(22));

% Reaction: id = R21, name = R21
	reaction_R21=compartment_compartment*(global_par_R21_kon*x(17)*x(19)-global_par_R21_koff*x(23));

% Reaction: id = R22, name = R22
	reaction_R22=compartment_compartment*(global_par_R22_kon*x(16)*x(19)-global_par_R22_kon*x(24));

% Reaction: id = R23, name = R23
	reaction_R23=compartment_compartment*global_par_R23_dis*x(23);

% Reaction: id = R24, name = R24
	reaction_R24=compartment_compartment*global_par_R24_dis*x(24);

	xdot=zeros(24,1);
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R01) + ( 1.0 * reaction_R02) + ( 1.0 * reaction_R03) + (-1.0 * reaction_R04) + (-1.0 * reaction_R05) + ( 1.0 * reaction_R06) + ( 1.0 * reaction_R07) + (-1.0 * reaction_R10));
	
% Species:   id = APC_Va, name = APC:Va, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R01) + (-1.0 * reaction_R02) + (-1.0 * reaction_R03));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_R01) + (-1.0 * reaction_R11) + (-1.0 * reaction_R17));
	
% Species:   id = Va_i_506, name = Va_i_506, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R02) + (-1.0 * reaction_R04) + (-1.0 * reaction_R12));
	
% Species:   id = Va_i_306, name = Va_i_306, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R03) + (-1.0 * reaction_R05) + (-1.0 * reaction_R08) + (-1.0 * reaction_R13));
	
% Species:   id = APC_Va_i_506, name = APC:Va_i_506, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R04) + (-1.0 * reaction_R06));
	
% Species:   id = APC_Va_i_306, name = APC:Va_i_306, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R05) + (-1.0 * reaction_R07));
	
% Species:   id = Va_i_306_506, name = Va_i_306/506, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R06) + ( 1.0 * reaction_R07) + (-1.0 * reaction_R09) + (-1.0 * reaction_R14));
	
% Species:   id = Va_1_306_Va_LC, name = Va_1-306:Va_LC, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_R08) + ( 1.0 * reaction_R09) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R24));
	
% Species:   id = Va_307_506, name = Va_307-506, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R09) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R24));
	
% Species:   id = Va_507_679_709, name = Va_507-679/709, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_R09) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R24));
	
% Species:   id = APC_Va_1_306_Va_LC, name = APC:Va_1-306:Va_LC, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_R10));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R24));
	
% Species:   id = Xa_Va, name = Xa:Va, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R19));
	
% Species:   id = Xa_Va_i_506, name = Xa:Va_i_506, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R20));
	
% Species:   id = Xa_Va_i_306_506, name = Xa:Va_i_306/506, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R16) + (-1.0 * reaction_R22));
	
% Species:   id = Xa_Va_i_306, name = Xa:Va_i_306, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R15) + (-1.0 * reaction_R21));
	
% Species:   id = Va_307_679_709, name = Va_307-679/709, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_R08) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R23));
	
% Species:   id = PT, name = PT, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_R17) + (-1.0 * reaction_R19) + (-1.0 * reaction_R20) + (-1.0 * reaction_R21) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R24));
	
% Species:   id = Va_PT, name = Va:PT, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_R17));
	
% Species:   id = Xa_Va_PT, name = Xa:Va:PT, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_R19));
	
% Species:   id = Xa_Va_i_506_PT, name = Xa:Va_i_506:PT, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_R20));
	
% Species:   id = Xa_Va_i_306_PT, name = Xa:Va_i_306:PT, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R23));
	
% Species:   id = Xa_Va_i_306_506_PT, name = Xa:Va_i_306/506:PT, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R24));
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


