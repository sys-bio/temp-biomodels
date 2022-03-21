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
% Model name = Dunster2016 - Nondimensional Coagulation Model
%
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(17) = 5.0;
	x0(18) = 0.0;
	x0(19) = 92.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 3.0;
	x0(27) = 17.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(1) = 5.0;
	x0(2) = 0.0;
	x0(3) = 92.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 3.0;
	x0(11) = 17.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k_tilde_1a, name = k_tilde_1a
	global_par_k_tilde_1a=150.0;
% Parameter:   id =  k_tilde_1b, name = k_tilde_1b
	global_par_k_tilde_1b=0.19;
% Parameter:   id =  k_tilde_2a, name = k_tilde_2a
	global_par_k_tilde_2a=2.0;
% Parameter:   id =  k_tilde_2am, name = k_tilde_2am
	global_par_k_tilde_2am=7.2;
% Parameter:   id =  k_tilde_2b, name = k_tilde_2b
	global_par_k_tilde_2b=0.013;
% Parameter:   id =  k_tilde_3a, name = k_tilde_3a
	global_par_k_tilde_3a=150.0;
% Parameter:   id =  q_tilde_3a, name = q_tilde_3a
	global_par_q_tilde_3a=1.0;
% Parameter:   id =  k_tilde_3b, name = k_tilde_3b
	global_par_k_tilde_3b=0.038;
% Parameter:   id =  k_tilde_3c, name = k_tilde_3c
	global_par_k_tilde_3c=1.0;
% Parameter:   id =  k_tilde_4a, name = k_tilde_4a
	global_par_k_tilde_4a=0.12;
% Parameter:   id =  q_tilde_4a, name = q_tilde_4a
	global_par_q_tilde_4a=0.004;
% Parameter:   id =  k_tilde_4b, name = k_tilde_4b
	global_par_k_tilde_4b=530.0;
% Parameter:   id =  k_tilde_4bm, name = k_tilde_4bm
	global_par_k_tilde_4bm=3.6;
% Parameter:   id =  k_tilde_5a, name = k_tilde_5a
	global_par_k_tilde_5a=0.0011;
% Parameter:   id =  k_tilde_5b, name = k_tilde_5b
	global_par_k_tilde_5b=0.27;
% Parameter:   id =  k_tilde_6, name = k_tilde_6
	global_par_k_tilde_6=1500.0;
% Parameter:   id =  k_tilde_x, name = k_tilde_x
	global_par_k_tilde_x=385.0;
% Parameter:   id =  k_tilde_b, name = k_tilde_b
	global_par_k_tilde_b=5.0E-4;
% Parameter:   id =  l_tilde_x, name = l_tilde_x
	global_par_l_tilde_x=7.69;
% Parameter:   id =  l_tilde_b, name = l_tilde_b
	global_par_l_tilde_b=0.05;
% Parameter:   id =  gamma_tilde_1a, name = gamma_tilde_1a
	global_par_gamma_tilde_1a=0.77;
% Parameter:   id =  log_time, name = log_time
% assignmentRule: variable = Xa_L
	x(12)=0.5*(global_par_k_tilde_x+global_par_l_tilde_x+x(6)-((global_par_k_tilde_x+global_par_l_tilde_x+x(6))^2-4*global_par_l_tilde_x*x(6))^(0.5));
% assignmentRule: variable = Va_Xa_L
	x(13)=0.5*(global_par_k_tilde_b+global_par_l_tilde_b+x(8)-((global_par_k_tilde_b+global_par_l_tilde_b+x(8))^2-4*global_par_l_tilde_b*x(8))^(0.5));
% assignmentRule: variable = log_time
	global_par_log_time=log(10, time);
% rateRule: variable = Fibrinogen
x(1) = x(17);
% rateRule: variable = Fibrin
x(2) = x(18);
% rateRule: variable = PC
x(3) = x(19);
% rateRule: variable = APC
x(4) = x(20);
% rateRule: variable = APC_inactive
x(5) = x(21);
% rateRule: variable = Xa
x(6) = x(22);
% rateRule: variable = Va
x(7) = x(23);
% rateRule: variable = Va_Xa
x(8) = x(24);
% rateRule: variable = IIa
x(9) = x(25);
% rateRule: variable = V
x(10) = x(26);
% rateRule: variable = II
x(11) = x(27);
% rateRule: variable = Xa_ATIII
x(14) = x(28);
% rateRule: variable = Va_inactive
x(15) = x(29);
% rateRule: variable = IIa_ATIII
x(16) = x(30);

	xdot=zeros(30,1);
	% rateRule: variable = Fibrinogen
	xdot(17) = (-global_par_k_tilde_6)*x(1);
	% rateRule: variable = Fibrin
	xdot(18) = global_par_k_tilde_6*x(1);
	% rateRule: variable = PC
	xdot(19) = (-global_par_k_tilde_5a)*x(3);
	% rateRule: variable = APC
	xdot(20) = global_par_k_tilde_5a*x(3)-global_par_k_tilde_5b*x(4);
	% rateRule: variable = APC_inactive
	xdot(21) = global_par_k_tilde_5b*x(4);
	% rateRule: variable = Xa
	xdot(22) = global_par_k_tilde_1a*global_par_gamma_tilde_1a*exp((-global_par_gamma_tilde_1a)*time)+global_par_k_tilde_3c*global_par_k_tilde_3a*x(4)*x(8)/(x(8)+1)-global_par_k_tilde_1b*x(6)-global_par_k_tilde_3a*x(6)*x(7);
	% rateRule: variable = Va
	xdot(23) = x(9)*x(10)/(x(10)+global_par_k_tilde_2am*(1+x(1)))+global_par_k_tilde_2b*x(6)*x(10)/(x(10)+1+x(11))+global_par_k_tilde_3b/global_par_q_tilde_3a*x(8)-x(4)*x(7)/(x(7)+1)-x(6)*x(7);
	% rateRule: variable = Va_Xa
	xdot(24) = global_par_q_tilde_3a*x(6)*x(7)-global_par_k_tilde_3b*x(8)-global_par_k_tilde_3c*global_par_q_tilde_3a*x(4)*x(8)/(x(8)+1);
	% rateRule: variable = IIa
	xdot(25) = global_par_k_tilde_4a*x(12)*x(11)/(x(10)+1+x(11))+global_par_k_tilde_4a*global_par_k_tilde_4b*x(13)*x(11)/(global_par_q_tilde_4a*(x(11)+global_par_k_tilde_4bm))-x(9);
	% rateRule: variable = V
	xdot(26) = (-global_par_k_tilde_2a)*x(9)*x(10)/(x(10)+global_par_k_tilde_2am*(1+x(1)))-global_par_k_tilde_2a*global_par_k_tilde_2b*x(6)*x(10)/(x(10)+1+x(11));
	% rateRule: variable = II
	xdot(27) = (-global_par_q_tilde_4a)*x(12)*x(11)/(x(10)+1+x(11))-global_par_k_tilde_4b*x(13)*x(11)/(x(11)+global_par_k_tilde_4bm);
	% rateRule: variable = Xa_ATIII
	xdot(28) = global_par_k_tilde_1b*x(6)+global_par_k_tilde_3a*global_par_k_tilde_3b/global_par_q_tilde_3a*x(8);
	% rateRule: variable = Va_inactive
	xdot(29) = x(4)*x(7)/(x(7)+1)+global_par_k_tilde_3c*x(4)*x(8)/(x(8)+1);
	% rateRule: variable = IIa_ATIII
	xdot(30) = x(9);
	
% Species:   id = Fibrinogen, name = Fibrinogen, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Fibrin, name = Fibrin, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = PC, name = PC, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = APC, name = APC, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = APC_inactive, name = APC_inactive, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Xa, name = Xa, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Va, name = Va, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = Va_Xa, name = Va:Xa, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = IIa, name = IIa, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = V, name = V, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = II, name = II, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = Xa_L, name = Xa:L, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = Va_Xa_L, name = Va:Xa:L, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = Xa_ATIII, name = Xa:ATIII, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = Va_inactive, name = Va_inactive, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = IIa_ATIII, name = IIa:ATIII, involved in a rule 	xdot(16) = x(16);
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


