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
% Model name = Leloup1999_CircadianRhythms_Neurospora
%
% is http://identifiers.org/biomodels.db/MODEL1101140000
% is http://identifiers.org/biomodels.db/BIOMD0000000299
% isDescribedBy http://identifiers.org/pubmed/10643740
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 0.1;
	x0(5) = 0.1;
	x0(6) = 0.1;
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;


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
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Parameter:   id =  vs, name = vs
	global_par_vs=1.6;
% Parameter:   id =  vm, name = vm
	global_par_vm=0.505;
% Parameter:   id =  Km, name = Km
	global_par_Km=0.5;
% Parameter:   id =  KI, name = KI
	global_par_KI=1.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  Ft, name = Ft
% Parameter:   id =  ks, name = ks
	global_par_ks=0.5;
% Parameter:   id =  vd, name = vd
	global_par_vd=1.4;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.13;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.6;
% rateRule: variable = M
x(1) = x(4);
% rateRule: variable = FC
x(2) = x(5);
% rateRule: variable = FN
x(3) = x(6);
% assignmentRule: variable = Ft
	global_par_Ft=x(2)+x(3);

	xdot=zeros(6,1);
	% rateRule: variable = M
	xdot(4) = global_par_vs*global_par_KI^global_par_n/(global_par_KI^global_par_n+x(3)^global_par_n)-global_par_vm*x(1)/(global_par_Km+x(1));
	% rateRule: variable = FC
	xdot(5) = global_par_ks*x(1)+global_par_k2*x(3)-(global_par_vd*x(2)/(global_par_Kd+x(2))+global_par_k1*x(2));
	% rateRule: variable = FN
	xdot(6) = global_par_k1*x(2)-global_par_k2*x(3);
	
% Species:   id = M, name = M, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = FC, name = FC, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = FN, name = FN, defined in a rule 	xdot(3) = x(3);
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


