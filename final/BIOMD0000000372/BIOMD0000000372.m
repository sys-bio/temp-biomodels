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
% Model name = Tolic2000_InsulinGlucoseFeedback
%
% is http://identifiers.org/biomodels.db/MODEL1006230109
% is http://identifiers.org/biomodels.db/BIOMD0000000372
% isDescribedBy http://identifiers.org/pubmed/11082306
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000382
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(7) = 93.36441699;
	x0(8) = 243.2865183;
	x0(9) = 12342.61665;
	x0(10) = 104.5878705;
	x0(11) = 110.420253;
	x0(12) = 112.7601171;
	x0(1) = 110.420253;
	x0(2) = 112.7601171;
	x0(3) = 104.5878705;
	x0(4) = 12342.61665;
	x0(5) = 243.2865183;
	x0(6) = 93.36441699;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  Vp, name = Vp
	global_par_Vp=3.0;
% Parameter:   id =  Vi, name = Vi
	global_par_Vi=11.0;
% Parameter:   id =  Vg, name = Vg
	global_par_Vg=10.0;
% Parameter:   id =  E, name = E
	global_par_E=0.2;
% Parameter:   id =  Ip_conc, name = Ip_conc
% Parameter:   id =  tp, name = tp
	global_par_tp=6.0;
% Parameter:   id =  td, name = td
	global_par_td=36.0;
% Parameter:   id =  f1_G, name = f1_G
% Parameter:   id =  Rm, name = Rm
	global_par_Rm=210.0;
% Parameter:   id =  C1, name = C1
	global_par_C1=2000.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=300.0;
% Parameter:   id =  Ii_conc, name = Ii_conc
% Parameter:   id =  ti, name = ti
	global_par_ti=100.0;
% Parameter:   id =  G_conc, name = G_conc
% Parameter:   id =  Gin, name = Gin
	global_par_Gin=216.0;
% Parameter:   id =  f2_G, name = f2_G
% Parameter:   id =  f3_G, name = f3_G
% Parameter:   id =  f4_Ii, name = f4_Ii
% Parameter:   id =  f5_x3, name = f5_x3
% Parameter:   id =  C2, name = C2
	global_par_C2=144.0;
% Parameter:   id =  C3, name = C3
	global_par_C3=1000.0;
% Parameter:   id =  C4, name = C4
	global_par_C4=80.0;
% Parameter:   id =  C5, name = C5
	global_par_C5=26.0;
% Parameter:   id =  U0, name = U0
	global_par_U0=40.0;
% Parameter:   id =  Um, name = Um
	global_par_Um=940.0;
% Parameter:   id =  Ub, name = Ub
	global_par_Ub=72.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.77;
% Parameter:   id =  Rg, name = Rg
	global_par_Rg=180.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.29;
% assignmentRule: variable = f1_G
	global_par_f1_G=global_par_Rm/(1+exp((global_par_C1-x(4)/global_par_Vg)/global_par_a1));
% assignmentRule: variable = Ip_conc
	global_par_Ip_conc=x(6)/global_par_Vp;
% assignmentRule: variable = Ii_conc
	global_par_Ii_conc=x(5)/global_par_Vi;
% assignmentRule: variable = G_conc
	global_par_G_conc=x(4)/(global_par_Vg*10);
% assignmentRule: variable = f2_G
	global_par_f2_G=global_par_Ub*(1-exp((-x(4))/(global_par_C2*global_par_Vg)));
% assignmentRule: variable = f3_G
	global_par_f3_G=x(4)/(global_par_C3*global_par_Vg);
% assignmentRule: variable = f4_Ii
	global_par_f4_Ii=global_par_U0+(global_par_Um-global_par_U0)/(1+exp((-global_par_beta)*log(x(5)/global_par_C4*(1/global_par_Vi+1/(global_par_E*global_par_ti)))));
% assignmentRule: variable = f5_x3
	global_par_f5_x3=global_par_Rg/(1+exp(global_par_alpha*(x(3)*1/global_par_Vp-global_par_C5)));
% rateRule: variable = Ip
x(6) = x(7);
% rateRule: variable = Ii
x(5) = x(8);
% rateRule: variable = G
x(4) = x(9);
% rateRule: variable = x3
x(3) = x(10);
% rateRule: variable = x1
x(1) = x(11);
% rateRule: variable = x2
x(2) = x(12);

	xdot=zeros(12,1);
	% rateRule: variable = Ip
	xdot(7) = global_par_f1_G-(global_par_E*(x(6)/global_par_Vp-x(5)/global_par_Vi)+x(6)/global_par_tp);
	% rateRule: variable = Ii
	xdot(8) = global_par_E*(x(6)/global_par_Vp-x(5)/global_par_Vi)-x(5)/global_par_ti;
	% rateRule: variable = G
	xdot(9) = global_par_Gin+global_par_f5_x3+(-(global_par_f2_G+global_par_f3_G*global_par_f4_Ii));
	% rateRule: variable = x3
	xdot(10) = 3/global_par_td*(x(2)-x(3));
	% rateRule: variable = x1
	xdot(11) = 3/global_par_td*(x(6)/1-x(1));
	% rateRule: variable = x2
	xdot(12) = 3/global_par_td*(x(1)-x(2));
	
% Species:   id = x1, name = x1, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = x2, name = x2, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = x3, name = x3, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = G, name = G, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ii, name = Ii, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Ip, name = Ip, defined in a rule 	xdot(6) = x(6);
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


