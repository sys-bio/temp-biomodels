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
% Model name = ChowHall2008 Dynamics of Human Weight Change_ODE_1
%
% is http://identifiers.org/biomodels.db/MODEL1912050005
% is http://identifiers.org/biomodels.db/BIOMD0000000901
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(4) = 50.0;
	x0(5) = 50.0;
	x0(1) = 50.0;
	x0(2) = 50.0;
	x0(3) = 100.0;


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

% Compartment: id = Body, name = Body, constant
	compartment_Body=1.0;
% Parameter:   id =  p___Ratio, name = p - Ratio
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  rho_F, name = rho_F
	global_par_rho_F=39.5;
% Parameter:   id =  rho_L, name = rho_L
	global_par_rho_L=7.6;
% Parameter:   id =  Intake_Rate, name = Intake Rate
	global_par_Intake_Rate=9.2;
% Parameter:   id =  Energy_Expenditure_Rate, name = Energy Expenditure Rate
% Parameter:   id =  Psy, name = Psy
% assignmentRule: variable = alpha
	global_par_alpha=global_par_rho_F/global_par_rho_L*x(1)/10.4;
% assignmentRule: variable = p___Ratio
	global_par_p___Ratio=1/(1+global_par_alpha);
% assignmentRule: variable = Body_Mass
	x(3)=x(1)+x(2);
% assignmentRule: variable = Energy_Expenditure_Rate
	global_par_Energy_Expenditure_Rate=0.14*x(2)+0.05*x(1)+1.55;
% assignmentRule: variable = Psy
	global_par_Psy=0.05*(x(1)-0.4*exp(x(2)/10.4))/x(1);
% rateRule: variable = Fat_Mass
x(1) = x(4);
% rateRule: variable = Lean_Mass
x(2) = x(5);

%Event: id=Fat_Removal
	event_Fat_Removal=time >= 100;

	if(event_Fat_Removal) 
		x(1)=x(1)-10;
	end

	xdot=zeros(5,1);
	% rateRule: variable = Fat_Mass
	xdot(4) = ((1-global_par_p___Ratio)*(global_par_Intake_Rate-global_par_Energy_Expenditure_Rate)-global_par_Psy)/global_par_rho_F;
	% rateRule: variable = Lean_Mass
	xdot(5) = (global_par_p___Ratio*(global_par_Intake_Rate-global_par_Energy_Expenditure_Rate)+global_par_Psy)/global_par_rho_L;
	
% Species:   id = Fat_Mass, name = Fat Mass, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Lean_Mass, name = Lean Mass, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Body_Mass, name = Body Mass, involved in a rule 	xdot(3) = x(3);
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


