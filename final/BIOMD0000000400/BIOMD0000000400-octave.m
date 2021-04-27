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
% Model name = Cooling2007_IP3transients_CardiacMyocyte
%
% is http://identifiers.org/biomodels.db/MODEL0913194523
% is http://identifiers.org/biomodels.db/BIOMD0000000400
% isDescribedBy http://identifiers.org/pubmed/17693463
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(14) = 90.9;
	x0(15) = 0.0;
	x0(16) = 9.09;
	x0(17) = 0.0;
	x0(18) = 0.015;
	x0(19) = 10000.0;
	x0(20) = 0.0;
	x0(21) = 0.1;
	x0(22) = 13.9;
	x0(23) = 0.0;
	x0(24) = 5.06;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(1) = 10000.0;
	x0(2) = 0.0;
	x0(3) = 13.9;
	x0(4) = 0.0;
	x0(5) = 5.06;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.015;
	x0(9) = 9.09;
	x0(10) = 0.0;
	x0(11) = 90.9;
	x0(12) = 0.0;
	x0(13) = 0.1;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  L, name = L
% Parameter:   id =  Ls, name = Ls
	global_par_Ls=0.1;
% Parameter:   id =  ts, name = ts
	global_par_ts=30.0;
% Parameter:   id =  PIP2, name = PIP2
	global_par_PIP2=4000.0;
% Parameter:   id =  J1, name = J1
% Parameter:   id =  kf1, name = kf1
	global_par_kf1=3.0E-4;
% Parameter:   id =  kr1, name = kr1
% Parameter:   id =  Kd1, name = Kd1
	global_par_Kd1=3.0E-5;
% Parameter:   id =  J2, name = J2
% Parameter:   id =  kf2, name = kf2
	global_par_kf2=2.75E-4;
% Parameter:   id =  kr2, name = kr2
% Parameter:   id =  Kd2, name = Kd2
	global_par_Kd2=27500.0;
% Parameter:   id =  J3, name = J3
% Parameter:   id =  kf3, name = kf3
	global_par_kf3=1.0;
% Parameter:   id =  kr3, name = kr3
	global_par_kr3=0.001;
% Parameter:   id =  J4, name = J4
% Parameter:   id =  kf4, name = kf4
	global_par_kf4=0.3;
% Parameter:   id =  kr4, name = kr4
% Parameter:   id =  Kd4, name = Kd4
	global_par_Kd4=3.0E-5;
% Parameter:   id =  J5, name = J5
% Parameter:   id =  kf5, name = kf5
	global_par_kf5=4.0E-4;
% Parameter:   id =  J6, name = J6
% Parameter:   id =  kf6, name = kf6
	global_par_kf6=1.0;
% Parameter:   id =  J7, name = J7
% Parameter:   id =  kf7, name = kf7
	global_par_kf7=0.15;
% Parameter:   id =  J8, name = J8
% Parameter:   id =  kf8, name = kf8
	global_par_kf8=0.0167;
% Parameter:   id =  kr8, name = kr8
	global_par_kr8=0.0167;
% Parameter:   id =  J9, name = J9
% Parameter:   id =  kf9, name = kf9
	global_par_kf9=0.0042;
% Parameter:   id =  kr9, name = kr9
	global_par_kr9=1.0;
% Parameter:   id =  J10, name = J10
% Parameter:   id =  kf10, name = kf10
	global_par_kf10=0.042;
% Parameter:   id =  kr10, name = kr10
	global_par_kr10=1.0;
% Parameter:   id =  J11, name = J11
% Parameter:   id =  kf11, name = kf11
	global_par_kf11=0.0334;
% Parameter:   id =  kr11, name = kr11
% Parameter:   id =  Kd11, name = Kd11
	global_par_Kd11=0.1;
% Parameter:   id =  J12, name = J12
% Parameter:   id =  kf12, name = kf12
	global_par_kf12=6.0;
% Parameter:   id =  J13, name = J13
% Parameter:   id =  kf13, name = kf13
	global_par_kf13=6.0;
% Parameter:   id =  J14, name = J14
% Parameter:   id =  kf14, name = kf14
	global_par_kf14=0.444;
% Parameter:   id =  Km14, name = Km14
	global_par_Km14=19.8;
% Parameter:   id =  J15, name = J15
% Parameter:   id =  kf15, name = kf15
	global_par_kf15=3.8;
% Parameter:   id =  Km15, name = Km15
	global_par_Km15=5.0;
% Parameter:   id =  J16, name = J16
% Parameter:   id =  kf16, name = kf16
	global_par_kf16=1.25;
% Parameter:   id =  Cpc, name = Cpc
% Parameter:   id =  Cc, name = Cc
% Parameter:   id =  Cp, name = Cp
% Parameter:   id =  Vc, name = Vc
	global_par_Vc=2550.0;
% Parameter:   id =  Rpc, name = Rpc
	global_par_Rpc=4.61;
% rateRule: variable = P
x(11) = x(14);
% rateRule: variable = Pg
x(12) = x(15);
% rateRule: variable = Pc
x(9) = x(16);
% rateRule: variable = Pcg
x(10) = x(17);
% rateRule: variable = IP3
x(8) = x(18);
% rateRule: variable = Gd
x(1) = x(19);
% rateRule: variable = Gt
x(2) = x(20);
% rateRule: variable = Ca
x(13) = x(21);
% rateRule: variable = R
x(3) = x(22);
% rateRule: variable = Rl
x(4) = x(23);
% rateRule: variable = Rg
x(5) = x(24);
% rateRule: variable = Rlgp
x(7) = x(25);
% rateRule: variable = Rlg
x(6) = x(26);
% assignmentRule: variable = Cc
	global_par_Cc=1/(global_par_Vc*602.2);
% assignmentRule: variable = Cp
	global_par_Cp=1/(global_par_Vc*global_par_Rpc);
% assignmentRule: variable = Cpc
	global_par_Cpc=global_par_Cc/global_par_Cp;
% assignmentRule: variable = J13
	global_par_J13=global_par_kf13*x(12);
% assignmentRule: variable = J12
	global_par_J12=global_par_kf12*x(10);
% assignmentRule: variable = kr11
	global_par_kr11=global_par_kf11*global_par_Kd11;
% assignmentRule: variable = J11
	global_par_J11=global_par_kf11*x(12)*x(13)-global_par_kr11*x(10);
% assignmentRule: variable = J10
	global_par_J10=global_par_kf10*x(9)*x(2)-global_par_kr10*x(10);
% assignmentRule: variable = J8
	global_par_J8=global_par_kf8*x(11)*x(13)-global_par_kr8*x(9);
% assignmentRule: variable = J9
	global_par_J9=global_par_kf9*x(11)*x(2)-global_par_kr9*x(12);
% assignmentRule: variable = J16
	global_par_J16=global_par_kf16*x(8);
% assignmentRule: variable = J14
	global_par_J14=global_par_kf14*x(9)*global_par_PIP2/(global_par_Km14/global_par_Cpc+global_par_PIP2);
% assignmentRule: variable = J15
	global_par_J15=global_par_kf15*x(10)*global_par_PIP2/(global_par_Km15/global_par_Cpc+global_par_PIP2);
% assignmentRule: variable = J7
	global_par_J7=global_par_kf7*x(2);
% assignmentRule: variable = L
	global_par_L=piecewise(global_par_Ls/(1+exp((-80)*(time-global_par_ts-0.05))), (time < (global_par_ts+0.15)) && (time >= global_par_ts), global_par_Ls, time >= (global_par_ts+0.15), 0);
% assignmentRule: variable = kr1
	global_par_kr1=global_par_kf1*global_par_Kd1;
% assignmentRule: variable = J1
	global_par_J1=global_par_kf1*x(3)*global_par_L-global_par_kr1*x(4);
% assignmentRule: variable = kr2
	global_par_kr2=global_par_kf2*global_par_Kd2;
% assignmentRule: variable = J2
	global_par_J2=global_par_kf2*x(3)*x(1)-global_par_kr2*x(5);
% assignmentRule: variable = J3
	global_par_J3=global_par_kf3*x(4)*x(1)-global_par_kr3*x(6);
% assignmentRule: variable = kr4
	global_par_kr4=global_par_kf4*global_par_Kd4;
% assignmentRule: variable = J4
	global_par_J4=global_par_kf4*global_par_L*x(5)-global_par_kr4*x(6);
% assignmentRule: variable = J5
	global_par_J5=global_par_kf5*x(6);
% assignmentRule: variable = J6
	global_par_J6=global_par_kf6*x(6);

	xdot=zeros(26,1);
	% rateRule: variable = P
	xdot(14) = global_par_J13-(global_par_J9+global_par_J8);
	% rateRule: variable = Pg
	xdot(15) = global_par_J9-(global_par_J11+global_par_J13);
	% rateRule: variable = Pc
	xdot(16) = global_par_J8+global_par_J12-global_par_J10;
	% rateRule: variable = Pcg
	xdot(17) = global_par_J10+global_par_J11-global_par_J12;
	% rateRule: variable = IP3
	xdot(18) = global_par_Cpc*(global_par_J14+global_par_J15)-global_par_J16;
	% rateRule: variable = Gd
	xdot(19) = global_par_J7+global_par_J13+global_par_J12-(global_par_J2+global_par_J3);
	% rateRule: variable = Gt
	xdot(20) = global_par_J6-(global_par_J7+global_par_J9+global_par_J10);
	% rateRule: variable = Ca
	xdot(21) = global_par_Cpc*(-1)*(global_par_J8+global_par_J11);
	% rateRule: variable = R
	xdot(22) = (-1)*(global_par_J1+global_par_J2);
	% rateRule: variable = Rl
	xdot(23) = global_par_J1+global_par_J6-global_par_J3;
	% rateRule: variable = Rg
	xdot(24) = global_par_J2-global_par_J4;
	% rateRule: variable = Rlgp
	xdot(25) = global_par_J5;
	% rateRule: variable = Rlg
	xdot(26) = global_par_J3-global_par_J5+global_par_J4-global_par_J6;
	
% Species:   id = Gd, name = Gd, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = Gt, name = Gt, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = R, name = R, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Rl, name = Rl, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Rg, name = Rg, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Rlg, name = Rlg, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = Rlgp, name = Rlgp, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = IP3, name = IP3, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = Pc, name = Pc, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = Pcg, name = Pcg, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = P, name = P, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = Pg, name = Pg, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = Ca, name = Ca, defined in a rule 	xdot(13) = x(13);
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


