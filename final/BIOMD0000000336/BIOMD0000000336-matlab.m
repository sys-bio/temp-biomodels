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
% Model name = Jones1994_BloodCoagulation
%
% is http://identifiers.org/biomodels.db/MODEL1106060000
% is http://identifiers.org/biomodels.db/BIOMD0000000336
% isDescribedBy http://identifiers.org/pubmed/8083242
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(19) = 0.0;
	x0(1) = 9.0E-8;
	x0(2) = 0.0;
	x0(3) = 5.0E-9;
	x0(4) = 0.0;
	x0(5) = 1.7E-7;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 2.0E-8;
	x0(11) = 0.0;
	x0(12) = 7.0E-10;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 1.4E-6;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.0E7;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.0E7;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E7;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.0E7;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0E7;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0E8;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0E7;
% Parameter:   id =  k8, name = k8
	global_par_k8=4.0E8;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.005;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.4;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.3;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.15;
% Parameter:   id =  k13, name = k13
	global_par_k13=8.2;
% Parameter:   id =  k14, name = k14
	global_par_k14=32.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=100000.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=24.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=44.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.001;
% Parameter:   id =  k19, name = k19
	global_par_k19=70.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.02;
% Parameter:   id =  I, name = I
% Parameter:   id =  IIa_plus_1_2mIIa, name = IIa+1.2mIIa
% assignmentRule: variable = IIa_plus_1_2mIIa
	global_par_IIa_plus_1_2mIIa=x(14)+1.2*x(18);
% rateRule: variable = I
global_par_I = x(19);

% Reaction: id = R1, name = R1
	reaction_R1=compartment_compartment_1*(global_par_k6*x(1)*x(3)-global_par_k16*x(2));

% Reaction: id = R1b, name = R1b
	reaction_R1b=compartment_compartment_1*global_par_k11*x(2);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_compartment_1*(global_par_k6*x(5)*x(3)-global_par_k17*x(6));

% Reaction: id = R2b, name = R2b
	reaction_R2b=compartment_compartment_1*global_par_k12*x(6);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_compartment_1*(global_par_k6*x(5)*x(8)-global_par_k18*x(9));

% Reaction: id = R3b, name = R3b
	reaction_R3b=compartment_compartment_1*global_par_k13*x(9);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_compartment_1*global_par_k15*x(1)*x(7);

% Reaction: id = R5, name = R5
	reaction_R5=compartment_compartment_1*global_par_k1*x(10)*x(7);

% Reaction: id = R6, name = R6
	reaction_R6=compartment_compartment_1*global_par_k3*x(12)*x(7);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_compartment_1*global_par_k2*x(10)*x(14);

% Reaction: id = R8, name = R8
	reaction_R8=compartment_compartment_1*global_par_k4*x(12)*x(14);

% Reaction: id = R9, name = R9
	reaction_R9=compartment_compartment_1*(global_par_k6*x(15)*x(17)-global_par_k19*x(16));

% Reaction: id = R9b, name = R9b
	reaction_R9b=compartment_compartment_1*global_par_k14*x(16);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_compartment_1*global_par_k5*x(18)*x(17);

% Reaction: id = R11, name = R11
	reaction_R11=compartment_compartment_1*(global_par_k7*x(13)*x(4)-global_par_k9*x(8));

% Reaction: id = R12, name = R12
	reaction_R12=compartment_compartment_1*(global_par_k6*x(11)*x(7)-global_par_k10*x(17));

% Reaction: id = R7_atn, name = R7_atn
	reaction_R7_atn=compartment_compartment_1*global_par_k2*x(10)*x(18);

% Reaction: id = R8_atn, name = R8_atn
	reaction_R8_atn=compartment_compartment_1*global_par_k4*x(12)*x(18);

% Reaction: id = R4_atn, name = R4_atn
	reaction_R4_atn=compartment_compartment_1*global_par_k15*x(1)*x(17);

% Reaction: id = VIIIa_IXa_degradation, name = VIIIa_IXa_degradation
	reaction_VIIIa_IXa_degradation=compartment_compartment_1*function_4_VIIIa_IXa_degradation_2(global_par_I, x(8), compartment_compartment_1);

	xdot=zeros(19,1);
	% rateRule: variable = I
	xdot(19) = (-abs(global_par_I-x(8))+(global_par_I-x(8)))*global_par_k20;
	
% Species:   id = IX, name = IX, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_R1) + (-1.0 * reaction_R4) + (-1.0 * reaction_R4_atn));
	
% Species:   id = IX_TF_VIIa, name = IX_TF_VIIa, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R1b));
	
% Species:   id = TF_VIIa, name = TF_VIIa, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R1b) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R2b));
	
% Species:   id = IXa, name = IXa, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R1b) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R4_atn));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = X_TF_VIIa, name = X_TF_VIIa, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R2b));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R2b) + ( 1.0 * reaction_R3b) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R12));
	
% Species:   id = VIIIa_IXa, name = VIIIa_IXa, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_R3) + ( 1.0 * reaction_R3b) + ( 1.0 * reaction_R11) + (-1.0 * reaction_VIIIa_IXa_degradation));
	
% Species:   id = X_VIIIa_IXa, name = X_VIIIa_IXa, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R3b));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_R5) + (-1.0 * reaction_R7) + (-1.0 * reaction_R7_atn));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R7_atn));
	
% Species:   id = VIII, name = VIII, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*((-1.0 * reaction_R6) + (-1.0 * reaction_R8) + (-1.0 * reaction_R8_atn));
	
% Species:   id = VIIIa, name = VIIIa, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R6) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R8_atn));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R8) + ( 1.0 * reaction_R10));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*((-1.0 * reaction_R9));
	
% Species:   id = II_Va_Xa, name = II_Va_Xa, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R9b));
	
% Species:   id = Va_Xa, name = Va_Xa, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*((-1.0 * reaction_R9) + ( 1.0 * reaction_R9b) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R4_atn) + ( 1.0 * reaction_R4_atn));
	
% Species:   id = mIIa, name = mIIa, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R9b) + (-1.0 * reaction_R10) + (-1.0 * reaction_R7_atn) + ( 1.0 * reaction_R7_atn) + (-1.0 * reaction_R8_atn) + ( 1.0 * reaction_R8_atn));
end

function z=function_4_VIIIa_IXa_degradation_2(I,VIIIa_IXa,compartment_1), z=((compartment_1*abs(I-VIIIa_IXa)+(I-VIIIa_IXa))/compartment_1);end

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


