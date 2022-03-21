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
% Model name = Palmer2008 - Negative Feedback in IL-7 mediated Jak-Stat signaling
%
% isDescribedBy http://identifiers.org/pubmed/18445337
% is http://identifiers.org/biomodels.db/MODEL2010160001
% is http://identifiers.org/biomodels.db/BIOMD0000000968
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 2.49080856064075;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.66053904042716;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0E-12;
% Parameter:   id =  Kf1, name = Kf1
	global_par_Kf1=1.0;
% Parameter:   id =  Kr1, name = Kr1
	global_par_Kr1=0.1;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.1;
% Parameter:   id =  Kf3, name = Kf3
	global_par_Kf3=1.0;
% Parameter:   id =  Kr3, name = Kr3
	global_par_Kr3=0.1;
% Parameter:   id =  K3, name = K3
	global_par_K3=1.0;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.1;
% Parameter:   id =  Kf5, name = Kf5
	global_par_Kf5=1.0;
% Parameter:   id =  K6, name = K6
	global_par_K6=0.1;
% Parameter:   id =  K7, name = K7
	global_par_K7=0.1;
% Parameter:   id =  RatiopSTAT5, name = RatiopSTAT5
% assignmentRule: variable = RatiopSTAT5
	global_par_RatiopSTAT5=x(4)/(x(4)+x(3)+x(9));

% Reaction: id = IL7bindIL7RJAK1, name = IL7bindIL7RJAK1
	reaction_IL7bindIL7RJAK1=compartment_cell*(global_par_Kf1*x(1)*x(7)-global_par_Kr1*x(6));

% Reaction: id = JAK1phosphorylation, name = JAK1phosphorylation
	reaction_JAK1phosphorylation=compartment_cell*(global_par_K2*x(6)-global_par_K6*x(8));

% Reaction: id = STAT5bind, name = STAT5bind
	reaction_STAT5bind=compartment_cell*(global_par_Kf3*x(8)*x(3)-global_par_Kr3*x(9));

% Reaction: id = pSTAT5dephosph, name = pSTAT5dephosph
	reaction_pSTAT5dephosph=compartment_cell*global_par_K7*x(4);

% Reaction: id = SOCS1production, name = SOCS1production
	reaction_SOCS1production=compartment_cell*Rate_Law_for_SOCS1production(global_par_K4, x(4));

% Reaction: id = SOCS1bind, name = SOCS1bind
	reaction_SOCS1bind=compartment_cell*global_par_Kf5*x(8)*x(5);

% Reaction: id = STAT5phosph, name = STAT5phosph
	reaction_STAT5phosph=compartment_cell*global_par_K3*x(9);

	xdot=zeros(10,1);
	
% Species:   id = IL7, name = IL7, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_IL7bindIL7RJAK1));
	
% Species:   id = pJAK1, name = pJAK1
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = STAT5, name = STAT5, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_STAT5bind) + ( 1.0 * reaction_pSTAT5dephosph));
	
% Species:   id = pSTAT5, name = pSTAT5, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_pSTAT5dephosph) + ( 1.0 * reaction_STAT5phosph));
	
% Species:   id = SOCS1, name = SOCS1, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_SOCS1production) + (-1.0 * reaction_SOCS1bind));
	
% Species:   id = IL7IL7RJAK1, name = IL7IL7RJAK1, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_IL7bindIL7RJAK1) + (-1.0 * reaction_JAK1phosphorylation));
	
% Species:   id = IL7RJAK1, name = IL7RJAK1, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_IL7bindIL7RJAK1));
	
% Species:   id = IL7IL7RpJAK1, name = IL7IL7RpJAK1, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_JAK1phosphorylation) + (-1.0 * reaction_STAT5bind) + (-1.0 * reaction_SOCS1bind) + ( 1.0 * reaction_STAT5phosph));
	
% Species:   id = IL7IL7RpJAK1STAT5, name = IL7IL7RpJAK1STAT5, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_STAT5bind) + (-1.0 * reaction_STAT5phosph));
	
% Species:   id = IL7IL7RpJAK1SOCS1, name = IL7IL7RpJAK1SOCS1, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_SOCS1bind));
end

function z=Rate_Law_for_SOCS1production(K4,pSTAT5), z=(K4*pSTAT5);end

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


