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
% Model name = Blum2000_LHsecretion_1
%
% is http://identifiers.org/biomodels.db/MODEL3092061764
% is http://identifiers.org/biomodels.db/BIOMD0000000077
% isDescribedBy http://identifiers.org/pubmed/10662710
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.01;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.1;
	x0(7) = 0.0;
	x0(8) = 0.0;


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
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=2.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=4.0;
% assignmentRule: variable = CHO
	x(8)=0.001*global_par_alpha*x(7)*(0.3+0.3*global_par_beta*time*exp(1-global_par_beta*time))/(1+0.001*global_par_alpha*x(7));

% Reaction: id = reaction_0, name = H binding to  R	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=2.5;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_0_k2=5.0;

	reaction_reaction_0=compartment_cell*(reaction_reaction_0_k1*x(1)*x(3)-reaction_reaction_0_k2*x(2));

% Reaction: id = reaction_1, name = HR forming HRRH	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=2500.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=5.0;

	reaction_reaction_1=compartment_cell*(reaction_reaction_1_k1*x(2)^2-reaction_reaction_1_k2*x(4));

% Reaction: id = reaction_2, name = G protein react with dimer producing E	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=4000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=200.0;

	reaction_reaction_2=compartment_cell*(reaction_reaction_2_k1*x(4)*x(6)-reaction_reaction_2_k2*x(5));

% Reaction: id = reaction_3, name = IP3 converted into inactive metabolites	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=10.0;

	reaction_reaction_3=compartment_cell*reaction_reaction_3_k1*x(7);

% Reaction: id = reaction_4, name = Production of IP3	% Local Parameter:   id =  k, name = k
	reaction_reaction_4_k=2.0E7;

	reaction_reaction_4=compartment_cell*reaction_reaction_4_k*x(5);

%Event: id=RemovalH
	event_RemovalH=time > 5;

	if(event_RemovalH) 
		x(1)=0;
	end

	xdot=zeros(8,1);
	
% Species:   id = H, name = H, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0));
	
% Species:   id = HR, name = HR, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0) + (-2.0 * reaction_reaction_1));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0));
	
% Species:   id = HRRH, name = HRRH, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2));
	
% Species:   id = GQ, name = GQ, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_2));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = CHO, name = CHO, defined in a rule 	xdot(8) = x(8);
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


