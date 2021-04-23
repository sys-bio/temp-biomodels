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
% Model name = Nikolaev2005_AlbuminBilirubinAdsorption
%
% is http://identifiers.org/biomodels.db/MODEL1101060000
% is http://identifiers.org/biomodels.db/BIOMD0000000291
% isDescribedBy http://identifiers.org/pubmed/16307060
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.4615385;
	x0(6) = 0.1754386;
	x0(7) = 1.174;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=0.484;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.07958;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.095E-6;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.656E-5;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.005489;
% Parameter:   id =  k6, name = k6
	global_par_k6=3.226E-7;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.00301;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.011E-7;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.01685;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1325;
% Parameter:   id =  K_AlB, name = K_AlB
	global_par_K_AlB=95000.0;
% Parameter:   id =  K_AlB2, name = K_AlB2
	global_par_K_AlB2=3000.0;
% Parameter:   id =  n, name = n
	global_par_n=1.0;
% assignmentRule: variable = x5
	x(5)=const_species_A0-x(1)-x(3)-x(4);
% assignmentRule: variable = x6
	x(6)=const_species_B0-x(1)-x(2)-2*x(4);
% assignmentRule: variable = x7
	x(7)=const_species_C0-x(2)-global_par_n*x(3);
% rateRule: variable = x1
x(1) = x(8);
% rateRule: variable = x2
x(2) = x(9);
% rateRule: variable = x3
x(3) = x(10);
% rateRule: variable = x4
x(4) = x(11);

% Species:   id = A0, name = A0, constant	const_species_A0=0.4615385;

% Species:   id = B0, name = B0, constant	const_species_B0=0.1754386;

% Species:   id = C0, name = C0, constant	const_species_C0=1.174;

	xdot=zeros(11,1);
	% rateRule: variable = x1
	xdot(8) = global_par_K_AlB*global_par_k3*x(5)*x(6)-global_par_K_AlB2*global_par_k4*x(1)*x(6)-global_par_k3*x(1)-global_par_k9*x(1)*x(7)^(global_par_n+1)+global_par_k4*x(4)+global_par_k10*x(4)*x(7);
	% rateRule: variable = x2
	xdot(9) = global_par_k6*x(7)*x(6)-global_par_k8*x(2)+global_par_k9*x(1)*x(7)^(global_par_n+1)+global_par_k10*x(4)*x(7);
	% rateRule: variable = x3
	xdot(10) = global_par_k5*x(7)^global_par_n*x(5)-global_par_k7*x(3)+global_par_k9*x(1)*x(7)^(global_par_n+1);
	% rateRule: variable = x4
	xdot(11) = global_par_K_AlB2*global_par_k4*x(1)*x(6)-global_par_k4*x(4)-global_par_k10*x(4)*x(7);
	
% Species:   id = x1, name = AlB, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = x2, name = BC, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = x3, name = AlCn, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = x4, name = AlB2, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = x5, name = Al, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = x6, name = B, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = x7, name = C, defined in a rule 	xdot(7) = x(7);
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


