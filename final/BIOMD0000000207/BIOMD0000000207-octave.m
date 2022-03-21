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
% Model name = Romond1999_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL1111382868
% is http://identifiers.org/biomodels.db/BIOMD0000000207
% isDescribedBy http://identifiers.org/pubmed/10415827
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 2.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  V1, name = V1
% Parameter:   id =  Kc1, name = Kc1
	global_par_Kc1=0.5;
% Parameter:   id =  V_M1, name = V_M1
	global_par_V_M1=0.3;
% Parameter:   id =  V3, name = V3
% Parameter:   id =  V_M3, name = V_M3
	global_par_V_M3=0.1;
% Parameter:   id =  U1, name = U1
% Parameter:   id =  Kc2, name = Kc2
	global_par_Kc2=0.5;
% Parameter:   id =  U_M1, name = U_M1
	global_par_U_M1=0.3;
% Parameter:   id =  U3, name = U3
% Parameter:   id =  U_M3, name = U_M3
	global_par_U_M3=0.1;
% Parameter:   id =  vi1, name = vi1
	global_par_vi1=0.05;
% Parameter:   id =  Kim1, name = Kim1
	global_par_Kim1=0.03;
% Parameter:   id =  vd1, name = vd1
	global_par_vd1=0.025;
% Parameter:   id =  K_d1, name = K_d1
	global_par_K_d1=0.02;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=0.001;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.01;
% Parameter:   id =  V2, name = V2
	global_par_V2=0.15;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.01;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.01;
% Parameter:   id =  V4, name = V4
	global_par_V4=0.05;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.01;
% Parameter:   id =  vi2, name = vi2
	global_par_vi2=0.05;
% Parameter:   id =  Kim2, name = Kim2
	global_par_Kim2=0.03;
% Parameter:   id =  vd2, name = vd2
	global_par_vd2=0.025;
% Parameter:   id =  K_d2, name = K_d2
	global_par_K_d2=0.02;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.001;
% Parameter:   id =  H1, name = H1
	global_par_H1=0.01;
% Parameter:   id =  U2, name = U2
	global_par_U2=0.15;
% Parameter:   id =  H2, name = H2
	global_par_H2=0.01;
% Parameter:   id =  H3, name = H3
	global_par_H3=0.01;
% Parameter:   id =  U4, name = U4
	global_par_U4=0.05;
% Parameter:   id =  H4, name = H4
	global_par_H4=0.01;
% assignmentRule: variable = V1
	global_par_V1=x(1)/(global_par_Kc1+x(1))*global_par_V_M1;
% assignmentRule: variable = V3
	global_par_V3=x(2)*global_par_V_M3;
% assignmentRule: variable = U1
	global_par_U1=x(4)/(global_par_Kc2+x(4))*global_par_U_M1;
% assignmentRule: variable = U3
	global_par_U3=x(5)*global_par_U_M3;
% rateRule: variable = M1
x(2) = x(7);
% rateRule: variable = X1
x(3) = x(8);
% rateRule: variable = M2
x(5) = x(9);
% rateRule: variable = X2
x(6) = x(10);

% Reaction: id = R1, name = cdk2 mediated cyclinB synthesis
	reaction_R1=compartment_compartment*global_par_vi1*global_par_Kim1/(global_par_Kim1+x(5));

% Reaction: id = R2, name = Ubiquitin ligase mediated cyclinB degradation
	reaction_R2=compartment_compartment*global_par_vd1*x(3)*x(1)/(global_par_K_d1+x(1));

% Reaction: id = R3, name = cyclinB degradation
	reaction_R3=compartment_compartment*global_par_kd1*x(1);

% Reaction: id = R8, name = cyclinE synthesis
	reaction_R8=compartment_compartment*global_par_vi2*global_par_Kim2/(global_par_Kim2+x(2));

% Reaction: id = R9, name = Ubiquitin ligase mediated cyclinE degradation
	reaction_R9=compartment_compartment*global_par_vd2*x(6)*x(4)/(global_par_K_d2+x(4));

% Reaction: id = R10, name = cyclinE degradation
	reaction_R10=compartment_compartment*global_par_kd2*x(4);

	xdot=zeros(10,1);
	% rateRule: variable = M1
	xdot(7) = global_par_V1*(1-x(2))/(global_par_K1+(1-x(2)))-global_par_V2*x(2)/(global_par_K2+x(2));
	% rateRule: variable = X1
	xdot(8) = global_par_V3*(1-x(3))/(global_par_K3+(1-x(3)))-global_par_V4*x(3)/(global_par_K4+x(3));
	% rateRule: variable = M2
	xdot(9) = global_par_U1*(1-x(5))/(global_par_H1+(1-x(5)))-global_par_U2*x(5)/(global_par_H2+x(5));
	% rateRule: variable = X2
	xdot(10) = global_par_U3*(1-x(6))/(global_par_H3+(1-x(6)))-global_par_U4*x(6)/(global_par_H4+x(6));
	
% Species:   id = C1, name = cyclinB, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = M1, name = cdk1, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = X1, name = ubiquitin ligase, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = C2, name = cyclinE, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = M2, name = cdk2, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = X2, name = Ubiquitin ligase 2, defined in a rule 	xdot(6) = x(6);
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


