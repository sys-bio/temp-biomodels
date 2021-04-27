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
% Model name = Kirschner1998_Immunotherapy_Tumour
%
% is http://identifiers.org/biomodels.db/MODEL1006230038
% is http://identifiers.org/biomodels.db/BIOMD0000000732
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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

% Compartment: id = COMpartment, name = Microenvr, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=1.0;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.03;
% Parameter:   id =  c, name = c
	global_par_c=0.035;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.1245;
% Parameter:   id =  g1, name = g1
	global_par_g1=2.0E7;
% Parameter:   id =  s1, name = s1
	global_par_s1=0.0;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.18;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  b, name = b
	global_par_b=1.0E-9;
% Parameter:   id =  g2, name = g2
	global_par_g2=100000.0;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=10.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=5.0;
% Parameter:   id =  g3, name = g3
	global_par_g3=1000.0;
% Parameter:   id =  s2, name = s2
	global_par_s2=0.0;

% Reaction: id = Tumor_growth, name = Tumor_growth
	reaction_Tumor_growth=compartment_COMpartment*equation_for_Tumor_Growth(global_par_r2, global_par_b, x(1));

% Reaction: id = Tumor_Killing, name = Tumor Killing
	reaction_Tumor_Killing=compartment_COMpartment*equation_for_Tumor_Killing(global_par_a, x(3), x(1), global_par_g2);

% Reaction: id = Immune_cell_Activation, name = Immune cell Activation
	reaction_Immune_cell_Activation=compartment_COMpartment*equation_for_immune_cell_activation(global_par_s1, global_par_c, x(1), global_par_p1, x(3), x(2), global_par_g1);

% Reaction: id = Immune_cell_Utilization, name = Immune cell Utilization
	reaction_Immune_cell_Utilization=compartment_COMpartment*global_par_mu2*x(3);

% Reaction: id = IL2_Synthesis, name = IL2 Synthesis
	reaction_IL2_Synthesis=compartment_COMpartment*Euuation_for_IL2_Production(global_par_s2, global_par_p2, x(3), x(1), global_par_g3);

% Reaction: id = IL2_Degradation, name = IL2 Degradation
	reaction_IL2_Degradation=compartment_COMpartment*global_par_mu3*x(2);

% Species:   id = Source, name = Source, constant	const_species_Source=0.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=0.0;

	xdot=zeros(3,1);
	
% Species:   id = Tumor, name = Tumor, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_Tumor_Killing));
	
% Species:   id = IL2, name = IL2, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_IL2_Synthesis) + (-1.0 * reaction_IL2_Degradation));
	
% Species:   id = Immune_cells, name = Immune_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_Immune_cell_Activation) + (-1.0 * reaction_Immune_cell_Utilization));
end

function z=equation_for_Tumor_Growth(r2,b,Tumor), z=(r2*(1-b*Tumor)*Tumor);end

function z=equation_for_Tumor_Killing(a,E,T,g2), z=(a*E*T/(g2+T));end

function z=equation_for_immune_cell_activation(s1,c,T,p1,E,IL,g1_IL), z=(s1+c*T+p1*E*IL/g1_IL);end

function z=Euuation_for_IL2_Production(s2,p2,E,T,g3), z=(s2+p2*E*T/(g3+T));end

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


