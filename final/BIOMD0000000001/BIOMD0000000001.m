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
% Model name = Edelstein1996 - EPSP ACh event
%
% is http://identifiers.org/biomodels.db/MODEL6613849442
% is http://identifiers.org/biomodels.db/BIOMD0000000001
% isDescribedBy http://identifiers.org/pubmed/8983160
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1.66057788110262E-21;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;


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

% Compartment: id = comp1, name = compartment1, constant
	compartment_comp1=1.0E-16;
% Parameter:   id =  kf_0, name = kf_0
	global_par_kf_0=3000.0;
% Parameter:   id =  kr_0, name = kr_0
	global_par_kr_0=8000.0;
% Parameter:   id =  kf_1, name = kf_1
	global_par_kf_1=1500.0;
% Parameter:   id =  kr_1, name = kr_1
	global_par_kr_1=16000.0;
% Parameter:   id =  kf_2, name = kf_2
	global_par_kf_2=30000.0;
% Parameter:   id =  kr_2, name = kr_2
	global_par_kr_2=700.0;
% Parameter:   id =  kf_3, name = kf_3
	global_par_kf_3=3000.0;
% Parameter:   id =  kr_3, name = kr_3
	global_par_kr_3=8.64;
% Parameter:   id =  kf_4, name = kf_4
	global_par_kf_4=1500.0;
% Parameter:   id =  kr_4, name = kr_4
	global_par_kr_4=17.28;
% Parameter:   id =  kf_5, name = kf_5
	global_par_kf_5=0.54;
% Parameter:   id =  kr_5, name = kr_5
	global_par_kr_5=10800.0;
% Parameter:   id =  kf_6, name = kf_6
	global_par_kf_6=130.0;
% Parameter:   id =  kr_6, name = kr_6
	global_par_kr_6=2740.0;
% Parameter:   id =  kf_7, name = kf_7
	global_par_kf_7=3000.0;
% Parameter:   id =  kr_7, name = kr_7
	global_par_kr_7=4.0;
% Parameter:   id =  kf_8, name = kf_8
	global_par_kf_8=1500.0;
% Parameter:   id =  kr_8, name = kr_8
	global_par_kr_8=8.0;
% Parameter:   id =  kf_9, name = kf_9
	global_par_kf_9=19.7;
% Parameter:   id =  kr_9, name = kr_9
	global_par_kr_9=3.74;
% Parameter:   id =  kf_10, name = kf_10
	global_par_kf_10=19.85;
% Parameter:   id =  kr_10, name = kr_10
	global_par_kr_10=1.74;
% Parameter:   id =  kf_11, name = kf_11
	global_par_kf_11=20.0;
% Parameter:   id =  kr_11, name = kr_11
	global_par_kr_11=0.81;
% Parameter:   id =  kf_12, name = kf_12
	global_par_kf_12=3000.0;
% Parameter:   id =  kr_12, name = kr_12
	global_par_kr_12=4.0;
% Parameter:   id =  kf_13, name = kf_13
	global_par_kf_13=1500.0;
% Parameter:   id =  kr_13, name = kr_13
	global_par_kr_13=8.0;
% Parameter:   id =  kf_14, name = kf_14
	global_par_kf_14=0.05;
% Parameter:   id =  kr_14, name = kr_14
	global_par_kr_14=0.0012;
% Parameter:   id =  kf_15, name = kf_15
	global_par_kf_15=0.05;
% Parameter:   id =  kr_15, name = kr_15
	global_par_kr_15=0.0012;
% Parameter:   id =  kf_16, name = kf_16
	global_par_kf_16=0.05;
% Parameter:   id =  kr_16, name = kr_16
	global_par_kr_16=0.0012;
% Parameter:   id =  t2, name = t2
	global_par_t2=20.0;

% Reaction: id = React0, name = React0
	reaction_React0=compartment_comp1*(global_par_kf_0*x(6)-global_par_kr_0*x(5));

% Reaction: id = React1, name = React1
	reaction_React1=compartment_comp1*(global_par_kf_1*x(5)-global_par_kr_1*x(1));

% Reaction: id = React2, name = React2
	reaction_React2=compartment_comp1*(global_par_kf_2*x(1)-global_par_kr_2*x(12));

% Reaction: id = React3, name = React3
	reaction_React3=compartment_comp1*(global_par_kf_3*x(4)-global_par_kr_3*x(3));

% Reaction: id = React4, name = React4
	reaction_React4=compartment_comp1*(global_par_kf_4*x(3)-global_par_kr_4*x(12));

% Reaction: id = React5, name = React5
	reaction_React5=compartment_comp1*(global_par_kf_5*x(6)-global_par_kr_5*x(4));

% Reaction: id = React6, name = React6
	reaction_React6=compartment_comp1*(global_par_kf_6*x(5)-global_par_kr_6*x(3));

% Reaction: id = React7, name = React7
	reaction_React7=compartment_comp1*(global_par_kf_7*x(11)-global_par_kr_7*x(2));

% Reaction: id = React8, name = React8
	reaction_React8=compartment_comp1*(global_par_kf_8*x(2)-global_par_kr_8*x(9));

% Reaction: id = React9, name = React9
	reaction_React9=compartment_comp1*(global_par_kf_9*x(4)-global_par_kr_9*x(11));

% Reaction: id = React10, name = React10
	reaction_React10=compartment_comp1*(global_par_kf_10*x(3)-global_par_kr_10*x(2));

% Reaction: id = React11, name = React11
	reaction_React11=compartment_comp1*(global_par_kf_11*x(12)-global_par_kr_11*x(9));

% Reaction: id = React12, name = React12
	reaction_React12=compartment_comp1*(global_par_kf_12*x(8)-global_par_kr_12*x(10));

% Reaction: id = React13, name = React13
	reaction_React13=compartment_comp1*(global_par_kf_13*x(10)-global_par_kr_13*x(7));

% Reaction: id = React14, name = React14
	reaction_React14=compartment_comp1*(global_par_kf_14*x(11)-global_par_kr_14*x(8));

% Reaction: id = React15, name = React15
	reaction_React15=compartment_comp1*(global_par_kf_15*x(2)-global_par_kr_15*x(10));

% Reaction: id = React16, name = React16
	reaction_React16=compartment_comp1*(global_par_kf_16*x(9)-global_par_kr_16*x(7));

%Event: id=RemovalACh
	event_RemovalACh=time > global_par_t2;

	if(event_RemovalACh) 
		global_par_kf_0=0;
		global_par_kf_3=0;
		global_par_kf_7=0;
		global_par_kf_12=0;
		global_par_kf_1=0;
		global_par_kf_4=0;
		global_par_kf_8=0;
		global_par_kf_13=0;
	end

	xdot=zeros(12,1);
	
% Species:   id = BLL, name = BasalACh2, affected by kineticLaw
	xdot(1) = (1/(compartment_comp1))*(( 1.0 * reaction_React1) + (-1.0 * reaction_React2));
	
% Species:   id = IL, name = IntermediateACh, affected by kineticLaw
	xdot(2) = (1/(compartment_comp1))*(( 1.0 * reaction_React7) + (-1.0 * reaction_React8) + ( 1.0 * reaction_React10) + (-1.0 * reaction_React15));
	
% Species:   id = AL, name = ActiveACh, affected by kineticLaw
	xdot(3) = (1/(compartment_comp1))*(( 1.0 * reaction_React3) + (-1.0 * reaction_React4) + ( 1.0 * reaction_React6) + (-1.0 * reaction_React10));
	
% Species:   id = A, name = Active, affected by kineticLaw
	xdot(4) = (1/(compartment_comp1))*((-1.0 * reaction_React3) + ( 1.0 * reaction_React5) + (-1.0 * reaction_React9));
	
% Species:   id = BL, name = BasalACh, affected by kineticLaw
	xdot(5) = (1/(compartment_comp1))*(( 1.0 * reaction_React0) + (-1.0 * reaction_React1) + (-1.0 * reaction_React6));
	
% Species:   id = B, name = Basal, affected by kineticLaw
	xdot(6) = (1/(compartment_comp1))*((-1.0 * reaction_React0) + (-1.0 * reaction_React5));
	
% Species:   id = DLL, name = DesensitisedACh2, affected by kineticLaw
	xdot(7) = (1/(compartment_comp1))*(( 1.0 * reaction_React13) + ( 1.0 * reaction_React16));
	
% Species:   id = D, name = Desensitised, affected by kineticLaw
	xdot(8) = (1/(compartment_comp1))*((-1.0 * reaction_React12) + ( 1.0 * reaction_React14));
	
% Species:   id = ILL, name = IntermediateACh2, affected by kineticLaw
	xdot(9) = (1/(compartment_comp1))*(( 1.0 * reaction_React8) + ( 1.0 * reaction_React11) + (-1.0 * reaction_React16));
	
% Species:   id = DL, name = DesensitisedACh, affected by kineticLaw
	xdot(10) = (1/(compartment_comp1))*(( 1.0 * reaction_React12) + (-1.0 * reaction_React13) + ( 1.0 * reaction_React15));
	
% Species:   id = I, name = Intermediate, affected by kineticLaw
	xdot(11) = (1/(compartment_comp1))*((-1.0 * reaction_React7) + ( 1.0 * reaction_React9) + (-1.0 * reaction_React14));
	
% Species:   id = ALL, name = ActiveACh2, affected by kineticLaw
	xdot(12) = (1/(compartment_comp1))*(( 1.0 * reaction_React2) + ( 1.0 * reaction_React4) + (-1.0 * reaction_React11));
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


