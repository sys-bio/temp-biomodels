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
% Model name = New Model
%
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(14) = 76.0;
	x0(15) = 11.0;
	x0(16) = 13.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(1) = 76.0;
	x0(2) = 11.0;
	x0(3) = 13.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 76.0;
	x0(11) = 13.0;
	x0(12) = 0.0;
	x0(13) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=0.0154;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0318;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0282;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0565;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.52;
% Parameter:   id =  q, name = q
	global_par_q=2.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.0;
% assignmentRule: variable = RC
	x(10)=x(1)+x(9);
% assignmentRule: variable = beta
	x(11)=x(8)+x(3)+x(4)+x(5)+x(6)+x(12)+x(13)+x(7);
% rateRule: variable = RCT0
x(1) = x(14);
% rateRule: variable = alpha
x(2) = x(15);
% rateRule: variable = BN1
x(3) = x(16);
% rateRule: variable = BN2
x(4) = x(17);
% rateRule: variable = BN3
x(5) = x(18);
% rateRule: variable = BN4
x(6) = x(19);
% rateRule: variable = BTX
x(7) = x(20);
% rateRule: variable = BM
x(8) = x(21);
% rateRule: variable = RCT1
x(9) = x(22);
% rateRule: variable = BN5
x(12) = x(23);
% rateRule: variable = BN6
x(13) = x(24);

	xdot=zeros(24,1);
	% rateRule: variable = RCT0
	xdot(14) = (-global_par_k0)*(global_par_epsilon+x(8))*x(1)-global_par_k1*x(7)*x(1);
	% rateRule: variable = alpha
	xdot(15) = global_par_k1*x(7)*x(1)-global_par_k2*x(7)^global_par_q*x(2);
	% rateRule: variable = BN1
	xdot(16) = global_par_k2*x(7)^global_par_q*x(2)-6*global_par_k3*x(3);
	% rateRule: variable = BN2
	xdot(17) = 6*global_par_k3*x(3)-6*global_par_k3*x(4);
	% rateRule: variable = BN3
	xdot(18) = 6*global_par_k3*x(4)-6*global_par_k3*x(5);
	% rateRule: variable = BN4
	xdot(19) = 6*global_par_k3*x(5)-6*global_par_k3*x(6);
	% rateRule: variable = BTX
	xdot(20) = 6*global_par_k3*x(13)-global_par_k4*x(7);
	% rateRule: variable = BM
	xdot(21) = global_par_k4*x(7);
	% rateRule: variable = RCT1
	xdot(22) = global_par_k0*(global_par_epsilon+x(8))*x(1);
	% rateRule: variable = BN5
	xdot(23) = 6*global_par_k3*x(6)-6*global_par_k3*x(12);
	% rateRule: variable = BN6
	xdot(24) = 6*global_par_k3*x(12)-6*global_par_k3*x(13);
	
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
	
% Species:   id = BN5, name = BN5, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = BN6, name = BN6, involved in a rule 	xdot(13) = x(13);
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


