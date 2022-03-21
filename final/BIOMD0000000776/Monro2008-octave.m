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
% Model name = Monro2008 - chemotherapy resistance
%
% isDescribedBy http://identifiers.org/pubmed/19135065
% is http://identifiers.org/biomodels.db/MODEL1908020002
% is http://identifiers.org/biomodels.db/BIOMD0000000776
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0E10;
	x0(2) = 200000.0;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  b, name = b
	global_par_b=0.005928;
% Parameter:   id =  N, name = N
% Parameter:   id =  C0, name = C0
	global_par_C0=2.0;
% Parameter:   id =  t1, name = t1
	global_par_t1=1.0E-6;
% Parameter:   id =  t2, name = t2
	global_par_t2=1.0E-6;
% Parameter:   id =  Ninf, name = Ninf
	global_par_Ninf=2.0E12;
% Parameter:   id =  Ncrit, name = Ncrit
	global_par_Ncrit=5.0E11;
% assignmentRule: variable = N
	global_par_N=x(2)+x(1);

% Reaction: id = sensitive_cell_growth, name = sensitive cell growth
	reaction_sensitive_cell_growth=compartment_tme*growth(global_par_b, global_par_N, global_par_Ninf, x(1));

% Reaction: id = sensitive_cell_death, name = sensitive cell death
	reaction_sensitive_cell_death=compartment_tme*sd(global_par_b, global_par_N, global_par_Ninf, global_par_C0, x(1));

% Reaction: id = resistance, name = resistance
	reaction_resistance=compartment_tme*resistance_0(global_par_t1, x(1), global_par_t2, x(2), global_par_b, global_par_N, global_par_Ninf);

% Reaction: id = resistant_cell_growth, name = resistant cell growth
	reaction_resistant_cell_growth=compartment_tme*growth(global_par_b, global_par_N, global_par_Ninf, x(2));

	xdot=zeros(2,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_sensitive_cell_growth) + (-1.0 * reaction_sensitive_cell_death) + (-1.0 * reaction_resistance));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_resistance) + ( 1.0 * reaction_resistant_cell_growth));
end

function z=resistance_0(t1,S,t2,R,b,N,Ninf), z=((-b)*log(N/Ninf)*(t1*S-t2*R));end

function z=sd(b,N,Ninf,C0,S), z=((-b)*log(N/Ninf)*C0*S);end

function z=growth(b,N,Ninf,pro), z=((-b)*log(N/Ninf)*pro);end

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


