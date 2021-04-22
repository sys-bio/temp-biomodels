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
% Model name = Steckmann2012 - Amyloid beta-protein fibrillogenesis (kinetics of secondary structure conversion)
%
% is http://identifiers.org/biomodels.db/MODEL1407300001
% is http://identifiers.org/biomodels.db/BIOMD0000000533
% isDescribedBy http://identifiers.org/pubmed/22586726
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(12) = 88.1;
	x0(13) = 0.0;
	x0(14) = 11.9;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(1) = 88.1;
	x0(2) = 0.0;
	x0(3) = 11.9;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 88.1;
	x0(11) = 11.9;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=0.59;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.672;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.678;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0392;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.554;
% Parameter:   id =  q, name = q
	global_par_q=2.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.0;
% assignmentRule: variable = RC
	x(10)=x(1)+x(9);
% assignmentRule: variable = beta
	x(11)=x(8)+x(3)+x(4)+x(5)+x(6)+x(7);
% rateRule: variable = RCT0
x(1) = x(12);
% rateRule: variable = alpha
x(2) = x(13);
% rateRule: variable = BN1
x(3) = x(14);
% rateRule: variable = BN2
x(4) = x(15);
% rateRule: variable = BN3
x(5) = x(16);
% rateRule: variable = BN4
x(6) = x(17);
% rateRule: variable = BTX
x(7) = x(18);
% rateRule: variable = BM
x(8) = x(19);
% rateRule: variable = RCT1
x(9) = x(20);

	xdot=zeros(20,1);
	% rateRule: variable = RCT0
	xdot(12) = (-global_par_k0)*(global_par_epsilon+x(8))*x(1)-global_par_k1*x(7)*x(1);
	% rateRule: variable = alpha
	xdot(13) = global_par_k1*x(7)*x(1)-global_par_k2*x(7)^global_par_q*x(2);
	% rateRule: variable = BN1
	xdot(14) = global_par_k2*x(7)^global_par_q*x(2)-4*global_par_k3*x(3);
	% rateRule: variable = BN2
	xdot(15) = 4*global_par_k3*x(3)-4*global_par_k3*x(4);
	% rateRule: variable = BN3
	xdot(16) = 4*global_par_k3*x(4)-4*global_par_k3*x(5);
	% rateRule: variable = BN4
	xdot(17) = 4*global_par_k3*x(5)-4*global_par_k3*x(6);
	% rateRule: variable = BTX
	xdot(18) = 4*global_par_k3*x(6)-global_par_k4*x(7);
	% rateRule: variable = BM
	xdot(19) = global_par_k4*x(7);
	% rateRule: variable = RCT1
	xdot(20) = global_par_k0*(global_par_epsilon+x(8))*x(1);
	
% Species:   id = RCT0, name = RCT0, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = alpha, name = alpha, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = BN1, name = BN1, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = BN2, name = BN2, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = BN3, name = BN3, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = BN4, name = BN4, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = BTX, name = BTX, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = BM, name = BM, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = RCT1, name = RCT1, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = RC, name = RC, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = beta, name = beta, involved in a rule 	xdot(11) = x(11);
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


