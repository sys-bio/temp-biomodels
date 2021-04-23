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
% Model name = Maree2006_DuCa_Type1DiabetesModel
%
% is http://identifiers.org/biomodels.db/MODEL1110070000
% is http://identifiers.org/biomodels.db/BIOMD0000000381
% isDescribedBy http://identifiers.org/pubmed/16608707
% isDerivedFrom http://identifiers.org/pubmed/10480594
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 477000.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 477000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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

% Compartment: id = compartment1, name = compartment1, constant
	compartment_compartment1=1.0;
% Parameter:   id =  J, name = J
	global_par_J=50000.0;
% Parameter:   id =  c, name = c
	global_par_c=0.1;
% Parameter:   id =  b, name = b
	global_par_b=0.09;
% Parameter:   id =  d, name = d
	global_par_d=0.5;
% Parameter:   id =  k, name = k
	global_par_k=0.4;
% Parameter:   id =  e1, name = e1
	global_par_e1=1.0E-8;
% Parameter:   id =  e2, name = e2
	global_par_e2=1.0E-8;
% Parameter:   id =  Amax, name = Amax
	global_par_Amax=2.0E7;
% Parameter:   id =  kc, name = kc
	global_par_kc=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=5.0E-9;
% Parameter:   id =  delta, name = delta
	global_par_delta=25.0;
% Parameter:   id =  g, name = g
	global_par_g=1.0E-5;
% Parameter:   id =  f1, name = f1
	global_par_f1=1.0E-5;
% Parameter:   id =  f2, name = f2
	global_par_f2=1.0E-5;
% Parameter:   id =  Wmax, name = Wmax
	global_par_Wmax=4.0E7;
% Parameter:   id =  W, name = W
% Parameter:   id =  parameter_1, name = x
% assignmentRule: variable = parameter_1
	global_par_parameter_1=((time-9)/3)^2;
% assignmentRule: variable = W
	global_par_W=global_par_Wmax*exp(-global_par_parameter_1);
% rateRule: variable = M
x(1) = x(6);
% rateRule: variable = Ma
x(2) = x(7);
% rateRule: variable = Bn
x(3) = x(8);
% rateRule: variable = Ba
x(4) = x(9);
% rateRule: variable = Cy
x(5) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = M
	xdot(6) = global_par_J+(global_par_k+global_par_b)*x(2)-global_par_c*x(1)-global_par_f1*x(1)*x(4)-global_par_e1*x(1)*(x(1)+x(2));
	% rateRule: variable = Ma
	xdot(7) = global_par_f1*x(1)*x(4)-global_par_k*x(2)-global_par_e2*x(2)*(x(1)+x(2));
	% rateRule: variable = Bn
	xdot(8) = global_par_d*x(4)-(global_par_f1*x(1)+global_par_f2*x(2))*x(3);
	% rateRule: variable = Ba
	xdot(9) = global_par_W+global_par_Amax*x(5)/(global_par_kc+x(5))-(global_par_f1*x(1)+global_par_f2*x(2)+global_par_d)*x(4);
	% rateRule: variable = Cy
	xdot(10) = global_par_alpha*x(3)*x(2)-global_par_delta*x(5);
	
% Species:   id = M, name = M, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Ma, name = Ma, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Bn, name = Bn, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Ba, name = Ba, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Cy, name = Cy, involved in a rule 	xdot(5) = x(5);
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


