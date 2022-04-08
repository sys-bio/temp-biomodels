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
% Model name = Murphy2016 - Differences in predictions of ODE models of tumor growth
%
% is http://identifiers.org/biomodels.db/MODEL1708250001
% is http://identifiers.org/biomodels.db/BIOMD0000000671
% isDescribedBy http://identifiers.org/pubmed/26921070
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(8) = 220.0;
	x0(9) = 220.0;
	x0(10) = 220.0;
	x0(11) = 220.0;
	x0(12) = 220.0;
	x0(13) = 220.0;
	x0(14) = 220.0;
	x0(1) = 220.0;
	x0(2) = 220.0;
	x0(3) = 220.0;
	x0(4) = 220.0;
	x0(5) = 220.0;
	x0(6) = 220.0;
	x0(7) = 220.0;


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

% Compartment: id = tumour, name = compartment, constant
	compartment_tumour=1.0;
% Parameter:   id =  a_exp, name = a_exp
	global_par_a_exp=0.0246;
% Parameter:   id =  a_mend, name = a_mend
	global_par_a_mend=0.105;
% Parameter:   id =  a_log, name = a_log
	global_par_a_log=0.0295;
% Parameter:   id =  a_lin, name = a_lin
	global_par_a_lin=132.0;
% Parameter:   id =  a_surf, name = a_surf
	global_par_a_surf=0.291;
% Parameter:   id =  a_gomp, name = a_gomp
	global_par_a_gomp=0.0919;
% Parameter:   id =  a_bert, name = a_bert
	global_par_a_bert=0.2344;
% Parameter:   id =  b_mend, name = b_mend
	global_par_b_mend=0.785;
% Parameter:   id =  b_log, name = b_log
	global_par_b_log=6920.0;
% Parameter:   id =  b_lin, name = b_lin
	global_par_b_lin=4300.0;
% Parameter:   id =  b_surf, name = b_surf
	global_par_b_surf=708.0;
% Parameter:   id =  b_gomp, name = b_gomp
	global_par_b_gomp=15500.0;
% Parameter:   id =  b_bert, name = b_bert
	global_par_b_bert=3.46E-19;
% Parameter:   id =  c_gomp, name = c_gomp
	global_par_c_gomp=10700.0;
% rateRule: variable = V_exp
x(1) = x(8);
% rateRule: variable = V_mend
x(2) = x(9);
% rateRule: variable = V_log
x(3) = x(10);
% rateRule: variable = V_lin
x(4) = x(11);
% rateRule: variable = V_surf
x(5) = x(12);
% rateRule: variable = V_gomp
x(6) = x(13);
% rateRule: variable = V_bert
x(7) = x(14);

	xdot=zeros(14,1);
	% rateRule: variable = V_exp
	xdot(8) = global_par_a_exp*x(1);
	% rateRule: variable = V_mend
	xdot(9) = global_par_a_mend*x(2)^global_par_b_mend;
	% rateRule: variable = V_log
	xdot(10) = global_par_a_log*x(3)*(1-x(3)/global_par_b_log);
	% rateRule: variable = V_lin
	xdot(11) = global_par_a_lin*x(4)/(x(4)+global_par_b_lin);
	% rateRule: variable = V_surf
	xdot(12) = global_par_a_surf*x(5)/(x(5)+global_par_b_surf)^(1/3);
	% rateRule: variable = V_gomp
	xdot(13) = global_par_a_gomp*x(6)*log(global_par_b_gomp/(x(6)+global_par_c_gomp));
	% rateRule: variable = V_bert
	xdot(14) = global_par_a_bert*x(7)^(2/3)-global_par_b_bert*x(7);
	
% Species:   id = V_exp, name = V_exp, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = V_mend, name = V_mend, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = V_log, name = V_log, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = V_lin, name = V_lin, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = V_surf, name = V_surf, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = V_gomp, name = V_gomp, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = V_bert, name = V_bert, involved in a rule 	xdot(7) = x(7);
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


