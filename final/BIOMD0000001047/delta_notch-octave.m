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
% Model name = Collier1996 - Delta Notch intercellular signalling and lateral inhibition
%
% is http://identifiers.org/biomodels.db/MODEL2204050001
% is http://identifiers.org/biomodels.db/BIOMD0000001047
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.999999999999985;
	x0(2) = 0.99;
	x0(3) = 0.999999999999987;
	x0(4) = 0.99;


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

% Compartment: id = cell_1___plasma_membrane, name = cell 1 - plasma membrane, constant
	compartment_cell_1___plasma_membrane=1.0;
% Compartment: id = cell_2___plasma_membrane, name = cell 2 - plasma membrane, constant
	compartment_cell_2___plasma_membrane=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.01;
% Parameter:   id =  b, name = b
	global_par_b=100.0;
% Parameter:   id =  G1, name = G1
% Parameter:   id =  h, name = h
	global_par_h=2.0;
% Parameter:   id =  k, name = k
	global_par_k=2.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0;
% Parameter:   id =  G2, name = G2
% Parameter:   id =  F2, name = F2
% Parameter:   id =  F1, name = F1
% Parameter:   id =  ModelValue_0, name = Initial for a
	global_par_ModelValue_0=0.01;
% Parameter:   id =  ModelValue_1, name = Initial for b
	global_par_ModelValue_1=100.0;
% Parameter:   id =  ModelValue_3, name = Initial for h
	global_par_ModelValue_3=2.0;
% Parameter:   id =  ModelValue_4, name = Initial for k
	global_par_ModelValue_4=2.0;
% assignmentRule: variable = G1
	global_par_G1=1/(1+global_par_ModelValue_1*x(3)^global_par_ModelValue_3);
% assignmentRule: variable = G2
	global_par_G2=1/(1+global_par_ModelValue_1*x(4)^global_par_ModelValue_3);
% assignmentRule: variable = F1
	global_par_F1=x(1)^global_par_ModelValue_4/(global_par_ModelValue_0+x(1)^global_par_ModelValue_4);
% assignmentRule: variable = F2
	global_par_F2=x(2)^global_par_ModelValue_4/(global_par_ModelValue_0+x(2)^global_par_ModelValue_4);

% Reaction: id = delta2_activation, name = delta2 activation
	reaction_delta2_activation=compartment_cell_2___plasma_membrane*Rate_Law_for_delta_activation(global_par_G2, global_par_rho);

% Reaction: id = delta1_activation, name = delta1 activation
	reaction_delta1_activation=compartment_cell_1___plasma_membrane*Rate_Law_for_delta_activation(global_par_G1, global_par_rho);

% Reaction: id = delta1_inhibition, name = delta1 inhibition
	reaction_delta1_inhibition=compartment_cell_1___plasma_membrane*Rate_Law_for_delta_inhibition(x(1), global_par_rho);

% Reaction: id = delta2_inhibition, name = delta2 inhibition
	reaction_delta2_inhibition=compartment_cell_2___plasma_membrane*Rate_Law_for_delta_inhibition(x(2), global_par_rho);

% Reaction: id = notch1_inhibition, name = notch1 inhibition
	reaction_notch1_inhibition=compartment_cell_1___plasma_membrane*Rate_law_for_notch_inhibition(global_par_mu, x(3));

% Reaction: id = notch2_inhibition, name = notch2 inhibition
	reaction_notch2_inhibition=compartment_cell_2___plasma_membrane*Rate_law_for_notch_inhibition(global_par_mu, x(4));

	xdot=zeros(4,1);
	
% Species:   id = delta1, name = delta1, affected by kineticLaw
	xdot(1) = (1/(compartment_cell_1___plasma_membrane))*(( 1.0 * reaction_delta1_activation) + (-1.0 * reaction_delta1_inhibition));
	
% Species:   id = delta2, name = delta2, affected by kineticLaw
	xdot(2) = (1/(compartment_cell_2___plasma_membrane))*(( 1.0 * reaction_delta2_activation) + (-1.0 * reaction_delta2_inhibition));
	
% Species:   id = notch1, name = notch1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell_1___plasma_membrane))*(( 1.0 * reaction_notch1_activation) + (-1.0 * reaction_notch1_inhibition));
	
% Species:   id = notch2, name = notch2, affected by kineticLaw
	xdot(4) = (1/(compartment_cell_2___plasma_membrane))*(( 1.0 * reaction_notch2_activation) + (-1.0 * reaction_notch2_inhibition));
end

function z=Rate_Law_for_delta_activation(G,rho), z=(G/rho);end

function z=Rate_Law_for_delta_inhibition(d,rho), z=(rho*d);end

function z=Rate_law_for_notch_inhibition(mu,n), z=(mu*n);end

function z=Rate_law_for_notch_activation(F), z=(F);end

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


