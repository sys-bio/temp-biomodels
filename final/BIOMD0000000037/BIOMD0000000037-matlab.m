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
% Model name = Marwan2003 - Genetics, regulatory hierarchy between genes
%
% is http://identifiers.org/biomodels.db/BIOMD0000000037
% is http://identifiers.org/biomodels.db/MODEL6621175859
% isDescribedBy http://identifiers.org/pubmed/12750324
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 6.0;
	x0(4) = 0.0;
	x0(5) = 200.0;
	x0(6) = 0.0;
	x0(7) = 0.9;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 30.0;
	x0(12) = 0.0;


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

% Reaction: id = Photoreceptor_activation	% Local Parameter:   id =  IfrSfrPfr, name = IfrSfrPfr
	reaction_Photoreceptor_activation_IfrSfrPfr=0.1;

	reaction_Photoreceptor_activation=compartment_compartment*x(1)*reaction_Photoreceptor_activation_IfrSfrPfr;

% Reaction: id = Photoreceptor_inactivation	% Local Parameter:   id =  IrSrPr, name = IrSrPr
	reaction_Photoreceptor_inactivation_IrSrPr=0.0;

	reaction_Photoreceptor_inactivation=reaction_Photoreceptor_inactivation_IrSrPr*x(2)*compartment_compartment;

% Reaction: id = Transducer_activation	% Local Parameter:   id =  kia, name = kia
	reaction_Transducer_activation_kia=0.1;

	reaction_Transducer_activation=x(3)*reaction_Transducer_activation_kia*x(2)*compartment_compartment;

% Reaction: id = Transducer_inactivation	% Local Parameter:   id =  kai, name = kai
	reaction_Transducer_inactivation_kai=0.8;

	reaction_Transducer_inactivation=reaction_Transducer_inactivation_kai*x(4)*compartment_compartment;

% Reaction: id = preS_formation	% Local Parameter:   id =  kx, name = kx
	reaction_preS_formation_kx=0.2;

	reaction_preS_formation=x(5)*reaction_preS_formation_kx*x(4)*compartment_compartment;

% Reaction: id = S_generation	% Local Parameter:   id =  ky, name = ky
	reaction_S_generation_ky=1.0;

	reaction_S_generation=x(6)*reaction_S_generation_ky*x(7)*compartment_compartment;

% Reaction: id = Glucose_sensor_inactivation	% Local Parameter:   id =  kG, name = kG
	reaction_Glucose_sensor_inactivation_kG=0.1;

	reaction_Glucose_sensor_inactivation=reaction_Glucose_sensor_inactivation_kG*x(7)*x(9)*compartment_compartment;

% Reaction: id = S_formation	% Local Parameter:   id =  alpha1, name = alpha1
	reaction_S_formation_alpha1=30.0;

	reaction_S_formation=compartment_compartment*reaction_S_formation_alpha1/(1+x(11)^3);

% Reaction: id = V_formation	% Local Parameter:   id =  alpha2, name = alpha2
	reaction_V_formation_alpha2=50.0;

	reaction_V_formation=compartment_compartment*reaction_V_formation_alpha2/(1+x(8)^3);

% Reaction: id = S_degradation	% Local Parameter:   id =  kd_s, name = kd_s
	reaction_S_degradation_kd_s=1.0;

	reaction_S_degradation=reaction_S_degradation_kd_s*x(8)*compartment_compartment;

% Reaction: id = V_degradation	% Local Parameter:   id =  kd_v, name = kd_v
	reaction_V_degradation_kd_v=1.0;

	reaction_V_degradation=compartment_compartment*x(11)*reaction_V_degradation_kd_v;

% Reaction: id = Photoreceptor_decay	% Local Parameter:   id =  kd, name = kd
	reaction_Photoreceptor_decay_kd=0.1;

	reaction_Photoreceptor_decay=compartment_compartment*reaction_Photoreceptor_decay_kd*x(2);

	xdot=zeros(12,1);
	
% Species:   id = Pfr, name = Pfr, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Photoreceptor_activation) + ( 1.0 * reaction_Photoreceptor_inactivation));
	
% Species:   id = Pr, name = Pr, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Photoreceptor_activation) + (-1.0 * reaction_Photoreceptor_inactivation) + (-1.0 * reaction_Photoreceptor_decay));
	
% Species:   id = Xi, name = Xi, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Transducer_activation) + ( 1.0 * reaction_Transducer_inactivation));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Transducer_activation) + (-1.0 * reaction_Transducer_inactivation));
	
% Species:   id = prepreS, name = prepreS, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_preS_formation));
	
% Species:   id = preS, name = preS, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_preS_formation) + (-1.0 * reaction_S_generation));
	
% Species:   id = Ya, name = Ya, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Glucose_sensor_inactivation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_S_generation) + ( 1.0 * reaction_S_formation) + (-1.0 * reaction_S_degradation));
	
% Species:   id = Gluc, name = Gluc
%WARNING speciesID: Gluc, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = Yi, name = Yi, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_Glucose_sensor_inactivation));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_V_formation) + (-1.0 * reaction_V_degradation));
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_Photoreceptor_decay));
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


