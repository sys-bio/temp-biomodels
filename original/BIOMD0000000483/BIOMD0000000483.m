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
% Model name = Cao2008 - Network of a toggle switch
%
% is http://identifiers.org/biomodels.db/MODEL1308080008
% is http://identifiers.org/biomodels.db/BIOMD0000000483
% isDescribedBy http://identifiers.org/pubmed/18373871
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  da, name = da
	global_par_da=1.0;
% Parameter:   id =  db, name = db
	global_par_db=1.0;
% Parameter:   id =  sa, name = sa
	global_par_sa=100.0;
% Parameter:   id =  sb, name = sb
	global_par_sb=100.0;
% Parameter:   id =  ba, name = ba
	global_par_ba=1.0E-5;
% Parameter:   id =  bb, name = bb
	global_par_bb=1.0E-5;
% Parameter:   id =  ua, name = ua
	global_par_ua=0.1;
% Parameter:   id =  ub, name = ub
	global_par_ub=0.1;

% Reaction: id = re2
	reaction_re2=compartment_default*global_par_sa*x(3);

% Reaction: id = re1
	reaction_re1=compartment_default*global_par_sb*x(4);

% Reaction: id = re12
	reaction_re12=compartment_default*global_par_da*x(1);

% Reaction: id = re11
	reaction_re11=compartment_default*global_par_db*x(2);

% Reaction: id = re13
	reaction_re13=compartment_default*global_par_bb*x(1)*(x(1)-1)/2*x(4);

% Reaction: id = re5
	reaction_re5=compartment_default*global_par_ba*x(2)*(x(2)-1)/2*x(3);

% Reaction: id = re7
	reaction_re7=compartment_default*global_par_ua*x(5);

% Reaction: id = re14
	reaction_re14=compartment_default*global_par_ub*x(6);

	xdot=zeros(8,1);
	
% Species:   id = Pa, name = Pa, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re12) + (-2.0 * reaction_re13) + ( 2.0 * reaction_re14));
	
% Species:   id = Pb, name = Pb, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re11) + (-2.0 * reaction_re5) + ( 2.0 * reaction_re7));
	
% Species:   id = Da, name = Da, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_re5) + ( 1.0 * reaction_re7));
	
% Species:   id = Db, name = Db, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re13) + ( 1.0 * reaction_re14));
	
% Species:   id = BDa, name = BDa, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re7));
	
% Species:   id = BDb, name = BDb, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re13) + (-1.0 * reaction_re14));
	
% Species:   id = ESA, name = ESA, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re2) + ( 1.0 * reaction_re12));
	
% Species:   id = ESB, name = ESB, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re11));
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


