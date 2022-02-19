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
% Model name = Voit2003_Trehalose_Cycle
%
% is http://identifiers.org/biomodels.db/MODEL1007210000
% is http://identifiers.org/biomodels.db/BIOMD0000000266
% isDescribedBy http://identifiers.org/pubmed/12782117
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(9) = 0.03;
	x0(10) = 1.0;
	x0(11) = 0.1;
	x0(12) = 0.7;
	x0(13) = 1.0;
	x0(14) = 0.02;
	x0(15) = 0.05;
	x0(1) = 1.0;
	x0(2) = 0.03;
	x0(3) = 1.0;
	x0(4) = 0.1;
	x0(5) = 0.7;
	x0(6) = 1.0;
	x0(7) = 0.02;
	x0(8) = 0.05;


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
% Compartment: id = external, name = external, constant
	compartment_external=1.0;
% Parameter:   id =  heat_shock, name = heat_shock
	global_par_heat_shock=0.0;
% Parameter:   id =  X8, name = glucose transport into cell
% Parameter:   id =  X9, name = hexokinase/glucokinase
% Parameter:   id =  X10, name = phosphofructokinase
% Parameter:   id =  X11, name = G6P dehydrogenase
% Parameter:   id =  X12r, name = phoshpoglucomutase
% Parameter:   id =  X12f, name = phoshpoglucomutase
% Parameter:   id =  X13, name = UDPG pyrophosphorylase
% Parameter:   id =  X14, name = glycogen synthase
% Parameter:   id =  X15r, name = glycogen phosphorylase
% Parameter:   id =  X15f, name = glycogen phosphorylase
% Parameter:   id =  X16, name = glycogen use
% Parameter:   id =  X17, name = alpha,alpha-T6P synthase
% Parameter:   id =  X18, name = alpha,alpha--T6P phosphatase
% Parameter:   id =  X19, name = trehalase
% Parameter:   id =  flux_X1_in, name = flux_to_glucose
% Parameter:   id =  flux_X1_out, name = flux_from_glucose
% Parameter:   id =  flux_X2_in, name = flux_to_G6P
% Parameter:   id =  flux_X2_out, name = flux_from_G6P
% Parameter:   id =  flux_X3_in, name = flux_to_G1P
% Parameter:   id =  flux_X3_out, name = flux_from_G1P
% Parameter:   id =  flux_X4_in, name = flux_to_UDPG
% Parameter:   id =  flux_X4_out, name = flux_from_UDPG
% Parameter:   id =  flux_X5_in, name = flux_to_glycogen
% Parameter:   id =  flux_X5_out, name = flux_from_glucogen
% Parameter:   id =  flux_X6_in, name = flux_to_T6P
% Parameter:   id =  flux_X6_out, name = flux_from_T6P
% Parameter:   id =  flux_X7_in, name = flux_to_trehalose
% Parameter:   id =  flux_X7_out, name = flux_from_trehalose
% assignmentRule: variable = flux_X1_in
	global_par_flux_X1_in=31.912*x(1)^0.968*x(3)^(-0.194)*x(8)^0.00968*global_par_X8^0.968*global_par_X19^0.0323;
% assignmentRule: variable = flux_X1_out
	global_par_flux_X1_out=89.935*x(2)^0.75*x(7)^(-0.4)*global_par_X9;
% rateRule: variable = X1
x(2) = x(9);
% assignmentRule: variable = flux_X2_in
	global_par_flux_X2_in=142.72*x(2)^0.517*x(3)^(-0.179)*x(4)^0.183*x(7)^(-0.276)*global_par_X9^0.689*global_par_X12r^0.311;
% assignmentRule: variable = flux_X2_out
	global_par_flux_X2_out=30.12*x(2)^(-0.00333)*x(3)^0.575*x(4)^(-0.17)*x(5)^0.00333*global_par_X10^0.5111*global_par_X11^0.0667*global_par_X12f^0.411*global_par_X17^0.0111;
% rateRule: variable = X2
x(3) = x(10);
% assignmentRule: variable = flux_X3_in
	global_par_flux_X3_in=7.8819*x(3)^0.394*x(4)^(-0.392)*x(5)^(-0.01)*x(6)^0.0128*global_par_X12f^0.949*global_par_X15r^0.0513;
% assignmentRule: variable = flux_X3_out
	global_par_flux_X3_out=76.434*x(3)^(-0.412)*x(4)^0.593*global_par_X12r^0.718*global_par_X13^0.18*global_par_X15f^0.103;
% rateRule: variable = X3
x(4) = x(11);
% assignmentRule: variable = flux_X4_in
	global_par_flux_X4_in=11.07*x(4)^0.5*global_par_X13;
% assignmentRule: variable = flux_X4_out
	global_par_flux_X4_out=3.4556*x(2)^(-0.0429)*x(3)^0.214*x(5)^0.386*global_par_X14^0.857*global_par_X17^0.143;
% rateRule: variable = X4
x(5) = x(12);
% assignmentRule: variable = flux_X5_in
	global_par_flux_X5_in=11.06*x(3)^0.04*x(4)^0.32*x(5)^0.16*global_par_X14^0.6*global_par_X15f^0.4;
% assignmentRule: variable = flux_X5_out
	global_par_flux_X5_out=4.929*x(3)^(-0.04)*x(5)^(-0.04)*x(6)^0.25*global_par_X15r^0.2*global_par_X16^0.8;
% rateRule: variable = X5
x(6) = x(13);
% assignmentRule: variable = flux_X6_in
	global_par_flux_X6_in=0.19424*x(2)^(-0.3)*x(3)^0.3*x(5)^0.3*global_par_X17;
% assignmentRule: variable = flux_X6_out
	global_par_flux_X6_out=1.0939*x(7)^0.2*global_par_X18;
% rateRule: variable = X6
x(7) = x(14);
% assignmentRule: variable = flux_X7_in
	global_par_flux_X7_in=1.0939*x(7)^0.2*global_par_X18;
% assignmentRule: variable = flux_X7_out
	global_par_flux_X7_out=1.2288*x(8)^0.3*global_par_X19;
% rateRule: variable = X7
x(8) = x(15);
% assignmentRule: variable = X8
	global_par_X8=piecewise(8, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X9
	global_par_X9=piecewise(1, global_par_heat_shock == 8, 1);
% assignmentRule: variable = X10
	global_par_X10=piecewise(1, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X11
	global_par_X11=piecewise(1, global_par_heat_shock == 6, 1);
% assignmentRule: variable = X12f
	global_par_X12f=piecewise(1, global_par_heat_shock == 16, 1);
% assignmentRule: variable = X12r
	global_par_X12r=piecewise(16, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X13
	global_par_X13=piecewise(16, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X14
	global_par_X14=piecewise(1, global_par_heat_shock == 16, 1);
% assignmentRule: variable = X15f
	global_par_X15f=piecewise(1, global_par_heat_shock == 50, 1);
% assignmentRule: variable = X15r
	global_par_X15r=piecewise(50, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X16
	global_par_X16=piecewise(16, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X17
	global_par_X17=piecewise(1, global_par_heat_shock == 12, 1);
% assignmentRule: variable = X18
	global_par_X18=piecewise(18, global_par_heat_shock == 1, 1);
% assignmentRule: variable = X19
	global_par_X19=piecewise(1, global_par_heat_shock == 6, 1);

	xdot=zeros(15,1);
	% rateRule: variable = X1
	xdot(9) = global_par_flux_X1_in-global_par_flux_X1_out;
	% rateRule: variable = X2
	xdot(10) = global_par_flux_X2_in-global_par_flux_X2_out;
	% rateRule: variable = X3
	xdot(11) = global_par_flux_X3_in-global_par_flux_X3_out;
	% rateRule: variable = X4
	xdot(12) = global_par_flux_X4_in-global_par_flux_X4_out;
	% rateRule: variable = X5
	xdot(13) = global_par_flux_X5_in-global_par_flux_X5_out;
	% rateRule: variable = X6
	xdot(14) = global_par_flux_X6_in-global_par_flux_X6_out;
	% rateRule: variable = X7
	xdot(15) = global_par_flux_X7_in-global_par_flux_X7_out;
	
% Species:   id = X0, name = glucose
%WARNING speciesID: X0, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = X1, name = glucose, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = X2, name = G6P, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = X3, name = G1P, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = X4, name = UDPG, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = X5, name = glycogen, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = X6, name = T6P, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = X7, name = trehalose, involved in a rule 	xdot(8) = x(8);
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


