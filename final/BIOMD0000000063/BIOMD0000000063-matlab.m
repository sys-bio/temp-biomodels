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
% Model name = Galazzo1990_FermentationPathwayKinetics
%
% is http://identifiers.org/biomodels.db/MODEL6624154196
% is http://identifiers.org/biomodels.db/BIOMD0000000063
% isDescribedBy http://identifiers.org/doi/10.1016/0141-0229(90)90033-M
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.0345;
	x0(2) = 1.19;
	x0(3) = 1.011;
	x0(4) = 9.144;
	x0(5) = 0.0095;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.0;


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

% Compartment: id = extracellular, name = Extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytoplasm, name = Cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  VappGly, name = VappGly
% Parameter:   id =  VratioVmax, name = VratioVmax_ATP
% Parameter:   id =  parameter_4, name = Trehalose and Glycogen formation_Vm3
	global_par_parameter_4=14.31;
% Parameter:   id =  parameter_5, name = Trehalose and Glycogen formation_n3
	global_par_parameter_5=8.25;
% Parameter:   id =  parameter_6, name = Trehalose and Glycogen formation_K3Gly
	global_par_parameter_6=2.0;
% Parameter:   id =  parameter_7, name = Hexokinase_Vm2
	global_par_parameter_7=68.5;
% assignmentRule: variable = VappGly
	global_par_VappGly=global_par_parameter_4*x(3)^global_par_parameter_5/(global_par_parameter_6^global_par_parameter_5+x(3)^global_par_parameter_5);
% assignmentRule: variable = VratioVmax
	global_par_VratioVmax=reaction_Vhk/(compartment_cytoplasm*global_par_parameter_7);

% Reaction: id = Vin, name = Glucose in	% Local Parameter:   id =  Vm1, name = Vm1
	reaction_Vin_Vm1=19.7;
	% Local Parameter:   id =  Ki1G6P, name = Ki1G6P
	reaction_Vin_Ki1G6P=3.7;

	reaction_Vin=compartment_cytoplasm*(reaction_Vin_Vm1-reaction_Vin_Ki1G6P*x(3));

% Reaction: id = Vhk, name = Hexokinase	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_Vhk_Vm2=68.5;
	% Local Parameter:   id =  Km2Glc, name = Km2Glc
	reaction_Vhk_Km2Glc=0.11;
	% Local Parameter:   id =  Km2ATP, name = Km2ATP
	reaction_Vhk_Km2ATP=0.1;
	% Local Parameter:   id =  Ks2Glc, name = Ks2Glc
	reaction_Vhk_Ks2Glc=0.0062;

	reaction_Vhk=compartment_cytoplasm*reaction_Vhk_Vm2/(1+reaction_Vhk_Km2Glc/x(1)+reaction_Vhk_Km2ATP/x(2)+reaction_Vhk_Ks2Glc*reaction_Vhk_Km2ATP/(x(1)*x(2)));

% Reaction: id = Vpol, name = Trehalose and Glycogen formation	% Local Parameter:   id =  Vm3, name = Vm3
	reaction_Vpol_Vm3=14.31;
	% Local Parameter:   id =  n3, name = n3
	reaction_Vpol_n3=8.25;
	% Local Parameter:   id =  K3Gly, name = K3Gly
	reaction_Vpol_K3Gly=2.0;
	% Local Parameter:   id =  Km30, name = Km30
	reaction_Vpol_Km30=1.0;
	% Local Parameter:   id =  Km3G6P, name = Km3G6P
	reaction_Vpol_Km3G6P=1.1;

	reaction_Vpol=compartment_cytoplasm*1.1*reaction_Vpol_Vm3*x(3)^reaction_Vpol_n3/(reaction_Vpol_K3Gly^reaction_Vpol_n3+x(3)^reaction_Vpol_n3)/(1+reaction_Vpol_Km30/0.7*(1+reaction_Vpol_Km3G6P/x(3)));

% Reaction: id = Vpfk, name = Phosphofructokinase	% Local Parameter:   id =  Vm4, name = Vm4
	reaction_Vpfk_Vm4=31.7;
	% Local Parameter:   id =  g4R, name = g4R
	reaction_Vpfk_g4R=10.0;
	% Local Parameter:   id =  K4F6P, name = K4F6P
	reaction_Vpfk_K4F6P=1.0;
	% Local Parameter:   id =  K4ATP, name = K4ATP
	reaction_Vpfk_K4ATP=0.06;
	% Local Parameter:   id =  L40, name = L40
	reaction_Vpfk_L40=3342.0;
	% Local Parameter:   id =  c4AMP, name = c4AMP
	reaction_Vpfk_c4AMP=0.019;
	% Local Parameter:   id =  K4AMP, name = K4AMP
	reaction_Vpfk_K4AMP=0.025;
	% Local Parameter:   id =  c4F6P, name = c4F6P
	reaction_Vpfk_c4F6P=5.0E-4;
	% Local Parameter:   id =  c4ATP, name = c4ATP
	reaction_Vpfk_c4ATP=1.0;
	% Local Parameter:   id =  gT, name = gT
	reaction_Vpfk_gT=1.0;

	reaction_Vpfk=compartment_cytoplasm*reaction_Vpfk_Vm4*reaction_Vpfk_g4R*0.3*x(3)/reaction_Vpfk_K4F6P*x(2)/reaction_Vpfk_K4ATP*(1+0.3*x(3)/reaction_Vpfk_K4F6P+x(2)/reaction_Vpfk_K4ATP+reaction_Vpfk_g4R*0.3*x(3)/reaction_Vpfk_K4F6P*x(2)/reaction_Vpfk_K4ATP)/((1+0.3*x(3)/reaction_Vpfk_K4F6P+x(2)/reaction_Vpfk_K4ATP+reaction_Vpfk_g4R*0.3*x(3)/reaction_Vpfk_K4F6P*x(2)/reaction_Vpfk_K4ATP)^2+reaction_Vpfk_L40*((1+reaction_Vpfk_c4AMP*(3-x(2)-0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5))/reaction_Vpfk_K4AMP)/(1+(3-x(2)-0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5))/reaction_Vpfk_K4AMP))^2*(1+reaction_Vpfk_c4F6P*0.3*x(3)/reaction_Vpfk_K4F6P+reaction_Vpfk_c4ATP*x(2)/reaction_Vpfk_K4ATP+reaction_Vpfk_gT*reaction_Vpfk_c4F6P*0.3*x(3)/reaction_Vpfk_K4F6P*reaction_Vpfk_c4ATP*x(2)/reaction_Vpfk_K4ATP)^2);

% Reaction: id = Vgapd, name = GAPD	% Local Parameter:   id =  Vm5, name = Vm5
	reaction_Vgapd_Vm5=49.9;
	% Local Parameter:   id =  K5G3P, name = K5G3P
	reaction_Vgapd_K5G3P=0.0025;
	% Local Parameter:   id =  K5NAD, name = K5NAD
	reaction_Vgapd_K5NAD=0.18;
	% Local Parameter:   id =  NAD, name = NAD
	reaction_Vgapd_NAD=1.91939;
	% Local Parameter:   id =  NADH, name = NADH
	reaction_Vgapd_NADH=0.0806142;
	% Local Parameter:   id =  K5NADH, name = K5NADH
	reaction_Vgapd_K5NADH=3.0E-4;
	% Local Parameter:   id =  K5ADP, name = K5ADP
	reaction_Vgapd_K5ADP=1.5;
	% Local Parameter:   id =  K5AMP, name = K5AMP
	reaction_Vgapd_K5AMP=1.1;
	% Local Parameter:   id =  K5ATP, name = K5ATP
	reaction_Vgapd_K5ATP=2.5;

	reaction_Vgapd=compartment_cytoplasm*reaction_Vgapd_Vm5/(1+reaction_Vgapd_K5G3P/(0.01*x(4))+(reaction_Vgapd_K5NAD/reaction_Vgapd_NAD+reaction_Vgapd_K5G3P*reaction_Vgapd_K5NAD/(reaction_Vgapd_NAD*0.01*x(4))+reaction_Vgapd_K5G3P*reaction_Vgapd_K5NAD*reaction_Vgapd_NADH/(reaction_Vgapd_NAD*0.01*x(4)*reaction_Vgapd_K5NADH))*(1+0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgapd_K5ADP+(3-x(2)-0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5))/reaction_Vgapd_K5AMP+x(2)/reaction_Vgapd_K5ATP));

% Reaction: id = Vpk, name = Pyruvate kinase	% Local Parameter:   id =  Vm6, name = Vm6
	reaction_Vpk_Vm6=3440.0;
	% Local Parameter:   id =  K6PEP, name = K6PEP
	reaction_Vpk_K6PEP=0.00793966;
	% Local Parameter:   id =  K6ADP, name = K6ADP
	reaction_Vpk_K6ADP=5.0;
	% Local Parameter:   id =  g6R, name = g6R
	reaction_Vpk_g6R=0.1;
	% Local Parameter:   id =  q6, name = q6
	reaction_Vpk_q6=1.0;
	% Local Parameter:   id =  L60, name = L60
	reaction_Vpk_L60=164.084;
	% Local Parameter:   id =  c6FDP, name = c6FDP
	reaction_Vpk_c6FDP=0.01;
	% Local Parameter:   id =  K6FDP, name = K6FDP
	reaction_Vpk_K6FDP=0.2;
	% Local Parameter:   id =  g6T, name = g6T
	reaction_Vpk_g6T=1.0;
	% Local Parameter:   id =  c6PEP, name = c6PEP
	reaction_Vpk_c6PEP=1.58793E-4;
	% Local Parameter:   id =  c6ADP, name = c6ADP
	reaction_Vpk_c6ADP=1.0;
	% Local Parameter:   id =  h6, name = h6
	reaction_Vpk_h6=1.14815E-7;

	reaction_Vpk=compartment_cytoplasm*reaction_Vpk_Vm6*x(5)/reaction_Vpk_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP*(reaction_Vpk_g6R*(1+x(5)/reaction_Vpk_K6PEP+0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP+reaction_Vpk_g6R*x(5)/reaction_Vpk_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP)+reaction_Vpk_q6*reaction_Vpk_L60*((1+reaction_Vpk_c6FDP*x(4)/reaction_Vpk_K6FDP)/(1+x(4)/reaction_Vpk_K6FDP))^2*reaction_Vpk_g6T*reaction_Vpk_c6PEP*x(5)/reaction_Vpk_K6PEP*reaction_Vpk_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP*(1+reaction_Vpk_c6PEP*x(5)/reaction_Vpk_K6PEP+reaction_Vpk_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP+reaction_Vpk_g6T*reaction_Vpk_c6PEP*x(5)/reaction_Vpk_K6PEP*reaction_Vpk_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP))/((1+9.55*10^(-9)/reaction_Vpk_h6)*((1+x(5)/reaction_Vpk_K6PEP+0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP+reaction_Vpk_g6R*x(5)/reaction_Vpk_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP)^2+reaction_Vpk_L60*((1+reaction_Vpk_c6FDP*x(4)/reaction_Vpk_K6FDP)/(1+x(4)/reaction_Vpk_K6FDP))^2*(1+reaction_Vpk_c6PEP*x(5)/reaction_Vpk_K6PEP+reaction_Vpk_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP+reaction_Vpk_g6T*reaction_Vpk_c6PEP*x(5)/reaction_Vpk_K6PEP*reaction_Vpk_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vpk_K6ADP)^2));

% Reaction: id = Vgol, name = Glycerol synthesis	% Local Parameter:   id =  Vm7, name = Vm7
	reaction_Vgol_Vm7=203.0;
	% Local Parameter:   id =  K6PEP, name = K6PEP
	reaction_Vgol_K6PEP=0.00793966;
	% Local Parameter:   id =  K6ADP, name = K6ADP
	reaction_Vgol_K6ADP=5.0;
	% Local Parameter:   id =  g6R, name = g6R
	reaction_Vgol_g6R=0.1;
	% Local Parameter:   id =  q6, name = q6
	reaction_Vgol_q6=1.0;
	% Local Parameter:   id =  L60, name = L60
	reaction_Vgol_L60=164.084;
	% Local Parameter:   id =  c6FDP, name = c6FDP
	reaction_Vgol_c6FDP=0.01;
	% Local Parameter:   id =  K6FDP, name = K6FDP
	reaction_Vgol_K6FDP=0.2;
	% Local Parameter:   id =  g6T, name = g6T
	reaction_Vgol_g6T=1.0;
	% Local Parameter:   id =  c6PEP, name = c6PEP
	reaction_Vgol_c6PEP=1.58793E-4;
	% Local Parameter:   id =  c6ADP, name = c6ADP
	reaction_Vgol_c6ADP=1.0;
	% Local Parameter:   id =  h6, name = h6
	reaction_Vgol_h6=1.14815E-7;

	reaction_Vgol=reaction_Vgol_Vm7*compartment_cytoplasm*x(5)/reaction_Vgol_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP*(reaction_Vgol_g6R*(1+x(5)/reaction_Vgol_K6PEP+0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP+reaction_Vgol_g6R*x(5)/reaction_Vgol_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP)+reaction_Vgol_q6*reaction_Vgol_L60*((1+reaction_Vgol_c6FDP*x(4)/reaction_Vgol_K6FDP)/(1+x(4)/reaction_Vgol_K6FDP))^2*reaction_Vgol_g6T*reaction_Vgol_c6PEP*x(5)/reaction_Vgol_K6PEP*reaction_Vgol_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP*(1+reaction_Vgol_c6PEP*x(5)/reaction_Vgol_K6PEP+reaction_Vgol_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP+reaction_Vgol_g6T*reaction_Vgol_c6PEP*x(5)/reaction_Vgol_K6PEP*reaction_Vgol_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP))/((1+9.55*10^(-9)/reaction_Vgol_h6)*((1+x(5)/reaction_Vgol_K6PEP+0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP+reaction_Vgol_g6R*x(5)/reaction_Vgol_K6PEP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP)^2+reaction_Vgol_L60*((1+reaction_Vgol_c6FDP*x(4)/reaction_Vgol_K6FDP)/(1+x(4)/reaction_Vgol_K6FDP))^2*(1+reaction_Vgol_c6PEP*x(5)/reaction_Vgol_K6PEP+reaction_Vgol_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP+reaction_Vgol_g6T*reaction_Vgol_c6PEP*x(5)/reaction_Vgol_K6PEP*reaction_Vgol_c6ADP*0.5*(-x(2)+(12*x(2)-3*x(2)^2)^0.5)/reaction_Vgol_K6ADP)^2));

% Reaction: id = Vatpase, name = ATPase	% Local Parameter:   id =  Vm8, name = Vm8
	reaction_Vatpase_Vm8=25.1;

	reaction_Vatpase=compartment_cytoplasm*reaction_Vatpase_Vm8*x(2);

	xdot=zeros(9,1);
	
% Species:   id = Glci, name = Glucose inside the cell, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Vin) + (-1.0 * reaction_Vhk));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Vhk) + (-1.0 * reaction_Vpol) + (-1.0 * reaction_Vpfk) + ( 2.0 * reaction_Vgapd) + ( 1.0 * reaction_Vpk) + (-1.0 * reaction_Vatpase));
	
% Species:   id = G6P, name = Glucose 6-phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Vhk) + (-1.0 * reaction_Vpol) + (-1.0 * reaction_Vpfk));
	
% Species:   id = FDP, name = Fructose 1,6-phosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Vpfk) + (-1.0 * reaction_Vgapd) + (-0.5 * reaction_Vgol));
	
% Species:   id = PEP, name = Phosphoenol pyruvate, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 2.0 * reaction_Vgapd) + (-1.0 * reaction_Vpk));
	
% Species:   id = Gly, name = Glycerol
%WARNING speciesID: Gly, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = EtOH, name = Ethanol
%WARNING speciesID: EtOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = Carbo, name = Glycogen and Trehalose
%WARNING speciesID: Carbo, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = Glco, name = Glucose outside the cell
%WARNING speciesID: Glco, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
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


