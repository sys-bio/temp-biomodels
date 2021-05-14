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
% Model name = Nagashima2002 - Simulating blood coagulation inhibitory effects
%
% isDescribedBy http://identifiers.org/pubmed/12496240
% is http://identifiers.org/biomodels.db/MODEL1807230003
% is http://identifiers.org/biomodels.db/BIOMD0000000747
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 90.0;
	x0(2) = 0.0;
	x0(3) = 0.005;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 170.0;
	x0(7) = 0.0;
	x0(8) = 0.7;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 20.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 1400.0;
	x0(21) = 0.0;
	x0(22) = 7900.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k01, name = k01
	global_par_k01=0.1;
% Parameter:   id =  k02, name = k02
	global_par_k02=2.2;
% Parameter:   id =  k03, name = k03
	global_par_k03=0.47;
% Parameter:   id =  k04, name = k04
	global_par_k04=0.1;
% Parameter:   id =  k05, name = k05
	global_par_k05=5.5;
% Parameter:   id =  k06, name = k06
	global_par_k06=1.4;
% Parameter:   id =  k07, name = k07
	global_par_k07=0.1;
% Parameter:   id =  k08, name = k08
	global_par_k08=2.1;
% Parameter:   id =  k09, name = k09
	global_par_k09=0.023;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1;
% Parameter:   id =  k11, name = k11
	global_par_k11=15.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.9;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.1;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.17;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.1;
% Parameter:   id =  k16, name = k16
	global_par_k16=19.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=29.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.1;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.043;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.1;
% Parameter:   id =  k22, name = k22
	global_par_k22=7.2;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.26;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.1;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.1;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.1;
% Parameter:   id =  k27, name = k27
	global_par_k27=100.0;
% Parameter:   id =  k28, name = k28
	global_par_k28=35.0;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.1;
% Parameter:   id =  k30, name = k30
	global_par_k30=720.0;
% Parameter:   id =  k31, name = k31
	global_par_k31=84.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.0011;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.0017;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.011;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.024;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.1;
% Parameter:   id =  k37, name = k37
% Parameter:   id =  k38, name = k38
	global_par_k38=0.1;
% Parameter:   id =  k39, name = k39
	global_par_k39=0.1;
% Parameter:   id =  k40, name = k40
	global_par_k40=0.1;
% Parameter:   id =  k41, name = k41
% Parameter:   id =  k42, name = k42
	global_par_k42=0.1;
% Parameter:   id =  k43, name = k43
% Parameter:   id =  Dummy_variable_inhibitor, name = Dummy_variable_inhibitor
	global_par_Dummy_variable_inhibitor=0.0;
% assignmentRule: variable = k37
	global_par_k37=3;
% assignmentRule: variable = k41
	global_par_k41=3;
% assignmentRule: variable = k43
	global_par_k43=3;

% Reaction: id = R01a, name = R01a
	reaction_R01a=compartment_compartment*(global_par_k01*x(3)*x(1)-global_par_k02*x(2));

% Reaction: id = R01b, name = R01b
	reaction_R01b=compartment_compartment*global_par_k03*x(2);

% Reaction: id = R02a, name = R02a
	reaction_R02a=compartment_compartment*(global_par_k04*x(3)*x(6)-global_par_k05*x(5));

% Reaction: id = R02b, name = R02b
	reaction_R02b=compartment_compartment*global_par_k06*x(5);

% Reaction: id = R03a, name = R03a
	reaction_R03a=compartment_compartment*(global_par_k07*x(7)*x(8)-global_par_k08*x(9));

% Reaction: id = R03b, name = R03b
	reaction_R03b=compartment_compartment*global_par_k09*x(9);

% Reaction: id = R04a, name = R04a
	reaction_R04a=compartment_compartment*(global_par_k10*x(11)*x(8)-global_par_k11*x(12));

% Reaction: id = R04b, name = R04b
	reaction_R04b=compartment_compartment*global_par_k12*x(12);

% Reaction: id = R05, name = R05
	reaction_R05=compartment_compartment*(global_par_k13*x(10)*x(4)-global_par_k14*x(13));

% Reaction: id = R06a, name = R06a
	reaction_R06a=compartment_compartment*(global_par_k15*x(13)*x(6)-global_par_k16*x(14));

% Reaction: id = R06b, name = R06b
	reaction_R06b=compartment_compartment*global_par_k17*x(14);

% Reaction: id = R07a, name = R07a
	reaction_R07a=compartment_compartment*(global_par_k18*x(7)*x(15)-global_par_k19*x(16));

% Reaction: id = R07b, name = R07b
	reaction_R07b=compartment_compartment*global_par_k20*x(16);

% Reaction: id = R08a, name = R08a
	reaction_R08a=compartment_compartment*(global_par_k21*x(11)*x(15)-global_par_k22*x(18));

% Reaction: id = R08b, name = R08b
	reaction_R08b=compartment_compartment*global_par_k23*x(18);

% Reaction: id = R09, name = R09
	reaction_R09=compartment_compartment*(global_par_k24*x(7)*x(17)-global_par_k25*x(19));

% Reaction: id = R10a, name = R10a
	reaction_R10a=compartment_compartment*(global_par_k26*x(19)*x(20)-global_par_k27*x(21));

% Reaction: id = R10b, name = R10b
	reaction_R10b=compartment_compartment*global_par_k28*x(21);

% Reaction: id = R11a, name = R11a
	reaction_R11a=compartment_compartment*(global_par_k29*x(22)*x(11)-global_par_k30*x(23));

% Reaction: id = R11b, name = R11b
	reaction_R11b=compartment_compartment*global_par_k31*x(23);

% Reaction: id = R12, name = R12
	reaction_R12=compartment_compartment*global_par_k32*x(10);

% Reaction: id = R13, name = R13
	reaction_R13=compartment_compartment*global_par_k33*x(4);

% Reaction: id = R14, name = R14
	reaction_R14=compartment_compartment*global_par_k34*x(7);

% Reaction: id = R15, name = R15
	reaction_R15=compartment_compartment*global_par_k35*x(11);

% Reaction: id = R16, name = R16
	reaction_R16=compartment_compartment*(global_par_k36*x(7)*x(30)-global_par_k37*x(29));

% Reaction: id = R17, name = R17
	reaction_R17=compartment_compartment*(global_par_k38*x(17)*x(29)-global_par_k39*x(31));

% Reaction: id = R18, name = R18
	reaction_R18=compartment_compartment*(global_par_k40*x(19)*x(30)-global_par_k41*x(31));

% Reaction: id = R19, name = R19
	reaction_R19=compartment_compartment*(global_par_k42*x(11)*x(33)-global_par_k43*x(32));

	xdot=zeros(33,1);
	
% Species:   id = IX, name = IX, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R01a));
	
% Species:   id = TF_VIIa_IX, name = TF:VIIa:IX, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R01a) + (-1.0 * reaction_R01b));
	
% Species:   id = TF_VIIa, name = TF:VIIa, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_R01a) + ( 1.0 * reaction_R01b) + (-1.0 * reaction_R02a) + ( 1.0 * reaction_R02b));
	
% Species:   id = IXa, name = IXa, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R01b) + (-1.0 * reaction_R05) + (-1.0 * reaction_R13));
	
% Species:   id = TF_VIIa_X, name = TF:VIIa:X, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R02a) + (-1.0 * reaction_R02b));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_R02a) + (-1.0 * reaction_R06a));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R02b) + (-1.0 * reaction_R03a) + ( 1.0 * reaction_R03b) + ( 1.0 * reaction_R06b) + (-1.0 * reaction_R07a) + ( 1.0 * reaction_R07b) + (-1.0 * reaction_R09) + (-1.0 * reaction_R14) + (-1.0 * reaction_R16));
	
% Species:   id = VIII, name = VIII, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_R03a) + (-1.0 * reaction_R04a));
	
% Species:   id = Xa_VIII, name = Xa:VIII, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_R03a) + (-1.0 * reaction_R03b));
	
% Species:   id = VIIIa, name = VIIIa, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R03b) + ( 1.0 * reaction_R04b) + (-1.0 * reaction_R05) + (-1.0 * reaction_R12));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_R04a) + ( 1.0 * reaction_R04b) + (-1.0 * reaction_R08a) + ( 1.0 * reaction_R08b) + ( 1.0 * reaction_R10b) + (-1.0 * reaction_R11a) + ( 1.0 * reaction_R11b) + (-1.0 * reaction_R15) + (-1.0 * reaction_R19));
	
% Species:   id = IIa_VIII, name = IIa:VIII, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_R04a) + (-1.0 * reaction_R04b));
	
% Species:   id = VIIIa_IXa, name = VIIIa:IXa, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_R05) + (-1.0 * reaction_R06a) + ( 1.0 * reaction_R06b));
	
% Species:   id = VIIIa_IXa_X, name = VIIIa:IXa:X, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R06a) + (-1.0 * reaction_R06b));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_R07a) + (-1.0 * reaction_R08a));
	
% Species:   id = Xa_V, name = Xa:V, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_R07a) + (-1.0 * reaction_R07b));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_R07b) + ( 1.0 * reaction_R08b) + (-1.0 * reaction_R09) + (-1.0 * reaction_R17));
	
% Species:   id = IIa_V, name = IIa:V, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_R08a) + (-1.0 * reaction_R08b));
	
% Species:   id = Va_Xa, name = Va:Xa, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_R09) + (-1.0 * reaction_R10a) + ( 1.0 * reaction_R10b) + (-1.0 * reaction_R18));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*((-1.0 * reaction_R10a));
	
% Species:   id = Va_Xa_II, name = Va:Xa:II, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_R10a) + (-1.0 * reaction_R10b));
	
% Species:   id = Fibrinogen, name = Fibrinogen, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*((-1.0 * reaction_R11a));
	
% Species:   id = Fibrinogen_IIa, name = Fibrinogen:IIa, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_R11a) + (-1.0 * reaction_R11b));
	
% Species:   id = Fibrin, name = Fibrin, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_R11b));
	
% Species:   id = VIIIa_inact, name = VIIIa_inact, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_R12));
	
% Species:   id = IXa_inact, name = IXa_inact, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_R13));
	
% Species:   id = Xa_inact, name = Xa_inact, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*(( 1.0 * reaction_R14));
	
% Species:   id = IIa_inact, name = IIa_inact, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_R15));
	
% Species:   id = Xa_Xa_Inhibitor, name = Xa:Xa_Inhibitor, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17));
	
% Species:   id = Xa_Inhibitor, name = Xa_Inhibitor, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*((-1.0 * reaction_R16) + (-1.0 * reaction_R18));
	
% Species:   id = Va_Xa_Xa_Inhibitor, name = Va:Xa:Xa_Inhibitor, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*(( 1.0 * reaction_R17) + ( 1.0 * reaction_R18));
	
% Species:   id = IIa_IIa_Inhibitor, name = IIa:IIa_Inhibitor, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_R19));
	
% Species:   id = IIa_Inhibitor, name = IIa_Inhibitor, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*((-1.0 * reaction_R19));
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


