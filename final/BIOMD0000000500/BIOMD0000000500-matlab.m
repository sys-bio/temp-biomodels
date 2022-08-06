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
% Model name = Begitt2014 - STAT1 cooperative DNA binding - single GAS polymer model
%
% is http://identifiers.org/biomodels.db/MODEL1311130001
% is http://identifiers.org/biomodels.db/BIOMD0000000500
% isDescribedBy http://identifiers.org/pubmed/24413774
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 1.0E-10;
	x0(2) = 1.0E-10;
	x0(3) = 0.0;
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
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  Kon_P1, name = Kon_P1
	global_par_Kon_P1=60000.0;
% Parameter:   id =  Koff_P1, name = Koff_P1
	global_par_Koff_P1=100.0;
% Parameter:   id =  Kon_G1, name = Kon_G1
	global_par_Kon_G1=2.0E10;
% Parameter:   id =  Koff_G1, name = Koff_G1
	global_par_Koff_G1=100.0;
% Parameter:   id =  Kon_NG1, name = Kon_NG1
	global_par_Kon_NG1=2.0E10;
% Parameter:   id =  Koff_NG1, name = Koff_NG1
	global_par_Koff_NG1=20000.0;
% Parameter:   id =  parameter_1, name = GAS_siteOccupancy
% assignmentRule: variable = parameter_1
	global_par_parameter_1=x(4)+x(8)+x(6)+x(9)+x(11)+x(10)+x(12)+x(13)+x(14);

% Reaction: id = DNA1, name = DNA1
	reaction_DNA1=compartment_nucleus*function_4_DNA1(x(2), x(3), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA2, name = DNA2
	reaction_DNA2=compartment_nucleus*function_4_DNA2(x(2), x(4), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA3, name = DNA3
	reaction_DNA3=compartment_nucleus*function_4_DNA3(x(2), x(5), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA4, name = DNA4
	reaction_DNA4=compartment_nucleus*function_4_DNA4(x(3), x(6), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA5, name = DNA5
	reaction_DNA5=compartment_nucleus*function_4_DNA5(x(3), x(7), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA6, name = DNA6
	reaction_DNA6=compartment_nucleus*function_4_DNA6(x(4), x(6), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA7, name = DNA7
	reaction_DNA7=compartment_nucleus*function_4_DNA7(x(4), x(8), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA8, name = DNA8
	reaction_DNA8=compartment_nucleus*function_4_DNA8(x(5), x(7), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA9, name = DNA9
	reaction_DNA9=compartment_nucleus*function_4_DNA9(x(5), x(8), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA10, name = DNA10
	reaction_DNA10=compartment_nucleus*function_4_DNA10(x(6), x(9), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA11, name = DNA11
	reaction_DNA11=compartment_nucleus*function_4_DNA11(x(7), x(9), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA12, name = DNA12
	reaction_DNA12=compartment_nucleus*function_4_DNA12(x(8), x(9), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA49, name = DNA49
	reaction_DNA49=compartment_nucleus*function_4_DNA49(x(6), x(10), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA50, name = DNA50
	reaction_DNA50=compartment_nucleus*function_4_DNA50(x(8), x(11), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA51, name = DNA51
	reaction_DNA51=compartment_nucleus*function_4_DNA51(x(9), x(13), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA52, name = DNA52
	reaction_DNA52=compartment_nucleus*function_4_DNA52(x(9), x(12), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA53, name = DNA53
	reaction_DNA53=compartment_nucleus*function_4_DNA53(x(13), x(14), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA54, name = DNA54
	reaction_DNA54=compartment_nucleus*function_4_DNA54(x(12), x(14), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

	xdot=zeros(14,1);
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*((-1.0 * reaction_DNA1) + (-1.0 * reaction_DNA2) + (-1.0 * reaction_DNA3) + (-1.0 * reaction_DNA4) + (-1.0 * reaction_DNA5) + (-1.0 * reaction_DNA6) + (-1.0 * reaction_DNA7) + (-1.0 * reaction_DNA8) + (-1.0 * reaction_DNA9) + (-1.0 * reaction_DNA10) + (-1.0 * reaction_DNA11) + (-1.0 * reaction_DNA12));
	
% Species:   id = DNA_000, name = DNA_000, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*((-1.0 * reaction_DNA1) + (-1.0 * reaction_DNA2) + (-1.0 * reaction_DNA3));
	
% Species:   id = DNA_100, name = DNA_100, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA1) + (-1.0 * reaction_DNA4) + (-1.0 * reaction_DNA5));
	
% Species:   id = DNA_010, name = DNA_010, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA2) + (-1.0 * reaction_DNA6) + (-1.0 * reaction_DNA7));
	
% Species:   id = DNA_001, name = DNA_001, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA3) + (-1.0 * reaction_DNA8) + (-1.0 * reaction_DNA9));
	
% Species:   id = DNA_110, name = DNA_110, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA4) + ( 1.0 * reaction_DNA6) + (-1.0 * reaction_DNA10) + (-1.0 * reaction_DNA49));
	
% Species:   id = DNA_101, name = DNA_101, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA5) + ( 1.0 * reaction_DNA8) + (-1.0 * reaction_DNA11));
	
% Species:   id = DNA_011, name = DNA_011, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA7) + ( 1.0 * reaction_DNA9) + (-1.0 * reaction_DNA12) + (-1.0 * reaction_DNA50));
	
% Species:   id = DNA_111, name = DNA_111, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA10) + ( 1.0 * reaction_DNA11) + ( 1.0 * reaction_DNA12) + (-1.0 * reaction_DNA51) + (-1.0 * reaction_DNA52));
	
% Species:   id = DNA_1B10, name = DNA_1B10, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA49));
	
% Species:   id = DNA_01B1, name = DNA_01B1, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA50));
	
% Species:   id = DNA_1B11, name = DNA_1B11, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA52) + (-1.0 * reaction_DNA54));
	
% Species:   id = DNA_11B1, name = DNA_11B1, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA51) + (-1.0 * reaction_DNA53));
	
% Species:   id = DNA_1B1B1, name = DNA_1B1B1, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA53) + ( 1.0 * reaction_DNA54));
end

function z=function_4_DNA1(DNA_000,DNA_100,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_000*S1-Koff_NG1*DNA_100)/nucleus);end

function z=function_4_DNA50(DNA_011,DNA_01B1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_011-Koff_P1*DNA_01B1)/nucleus);end

function z=function_4_DNA3(DNA_000,DNA_001,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_000*S1-Koff_NG1*DNA_001)/nucleus);end

function z=function_4_DNA53(DNA_11B1,DNA_1B1B1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_11B1-Koff_P1*DNA_1B1B1)/nucleus);end

function z=function_4_DNA54(DNA_1B11,DNA_1B1B1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_1B11-Koff_P1*DNA_1B1B1)/nucleus);end

function z=function_4_DNA2(DNA_000,DNA_010,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA_000*S1-Koff_G1*DNA_010)/nucleus);end

function z=function_4_DNA4(DNA_100,DNA_110,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA_100*S1-Koff_G1*DNA_110)/nucleus);end

function z=function_4_DNA51(DNA_111,DNA_11B1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_111-Koff_P1*DNA_11B1)/nucleus);end

function z=function_4_DNA12(DNA_011,DNA_111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_011*S1-Koff_NG1*DNA_111)/nucleus);end

function z=function_4_DNA9(DNA_001,DNA_011,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA_001*S1-Koff_G1*DNA_011)/nucleus);end

function z=function_4_DNA52(DNA_111,DNA_1B11,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_111-Koff_P1*DNA_1B11)/nucleus);end

function z=function_4_DNA6(DNA_010,DNA_110,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_010*S1-Koff_NG1*DNA_110)/nucleus);end

function z=function_4_DNA49(DNA_110,DNA_1B10,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA_110-Koff_P1*DNA_1B10)/nucleus);end

function z=function_4_DNA8(DNA_001,DNA_101,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_001*S1-Koff_NG1*DNA_101)/nucleus);end

function z=function_4_DNA7(DNA_010,DNA_011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_010*S1-Koff_NG1*DNA_011)/nucleus);end

function z=function_4_DNA10(DNA_110,DNA_111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_110*S1-Koff_NG1*DNA_111)/nucleus);end

function z=function_4_DNA11(DNA_101,DNA_111,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA_101*S1-Koff_G1*DNA_111)/nucleus);end

function z=function_4_DNA5(DNA_100,DNA_101,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA_100*S1-Koff_NG1*DNA_101)/nucleus);end

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


