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
% Model name = Eftimie2017/1 - interaction of Th and macrophage
%
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/efo/0000756
% isDerivedFrom http://identifiers.org/go/GO:0002418
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000769
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1907310003
% isDescribedBy http://identifiers.org/biomodels.db/BIOMD0000000769
% isDescribedBy http://identifiers.org/biomodels.db/MODEL1907310003
% isDescribedBy http://identifiers.org/pubmed/28219660
% is http://identifiers.org/biomodels.db/MODEL1907310004
% is http://identifiers.org/biomodels.db/BIOMD0000000770
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 100.0;
	x0(4) = 0.0;


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
% Parameter:   id =  ah1, name = ah1
	global_par_ah1=0.008;
% Parameter:   id =  ah2, name = ah2
	global_par_ah2=0.001;
% Parameter:   id =  am1, name = am1
	global_par_am1=0.001;
% Parameter:   id =  am2, name = am2
	global_par_am2=0.001;
% Parameter:   id =  m1, name = m1
	global_par_m1=1.0E8;
% Parameter:   id =  m2, name = m2
	global_par_m2=1.0E9;
% Parameter:   id =  ph1, name = ph1
	global_par_ph1=0.09;
% Parameter:   id =  ph2, name = ph2
	global_par_ph2=0.09;
% Parameter:   id =  pm1, name = pm1
	global_par_pm1=0.02;
% Parameter:   id =  pm2, name = pm2
	global_par_pm2=0.02;
% Parameter:   id =  rm1, name = rm1
	global_par_rm1=0.09;
% Parameter:   id =  rm2, name = rm2
	global_par_rm2=0.05;
% Parameter:   id =  eh1, name = eh1
	global_par_eh1=0.03;
% Parameter:   id =  eh2, name = eh2
	global_par_eh2=0.03;
% Parameter:   id =  em1, name = em1
	global_par_em1=0.02;
% Parameter:   id =  em2, name = em2
	global_par_em2=0.02;

% Reaction: id = H1_M1, name = H1+M1
	reaction_H1_M1=compartment_tme*mod(global_par_ah1, x(3));

% Reaction: id = H1_growth, name = H1 growth
	reaction_H1_growth=compartment_tme*growth(global_par_ph1, x(1), x(3), x(2), global_par_m1);

% Reaction: id = H1_death, name = H1 death
	reaction_H1_death=compartment_tme*global_par_eh1*x(1);

% Reaction: id = H2_M2, name = H2+M2
	reaction_H2_M2=compartment_tme*mod(global_par_ah2, x(4));

% Reaction: id = H2_growth, name = H2 growth
	reaction_H2_growth=compartment_tme*growth(global_par_ph2, x(2), x(4), x(1), global_par_m1);

% Reaction: id = H2_death, name = H2 death
	reaction_H2_death=compartment_tme*global_par_eh2*x(2);

% Reaction: id = M1_H1, name = M1+H1
	reaction_M1_H1=compartment_tme*mod(global_par_am1, x(1));

% Reaction: id = M1_growth, name = M1 growth
	reaction_M1_growth=compartment_tme*m1g(global_par_pm1, x(3), x(4), global_par_m2);

% Reaction: id = M1_death, name = M1 death
	reaction_M1_death=compartment_tme*global_par_em1*x(3);

% Reaction: id = M1_M2_transition, name = M1-M2 transition
	reaction_M1_M2_transition=compartment_tme*global_par_rm2*x(3);

% Reaction: id = M2_M1_transition, name = M2-M1 transition
	reaction_M2_M1_transition=compartment_tme*global_par_rm1*x(4);

% Reaction: id = M2_H2, name = M2+H2
	reaction_M2_H2=compartment_tme*mod(global_par_am2, x(2));

% Reaction: id = M2_growth, name = M2 growth
	reaction_M2_growth=compartment_tme*growth(global_par_pm2, x(4), x(2), x(3), global_par_m2);

% Reaction: id = M2_death, name = M2 death
	reaction_M2_death=compartment_tme*global_par_em2*x(4);

	xdot=zeros(4,1);
	
% Species:   id = H1, name = H1, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_H1_M1) + ( 1.0 * reaction_H1_growth) + (-1.0 * reaction_H1_death));
	
% Species:   id = H2, name = H2, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_H2_M2) + ( 1.0 * reaction_H2_growth) + (-1.0 * reaction_H2_death));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_M1_H1) + ( 1.0 * reaction_M1_growth) + (-1.0 * reaction_M1_death) + (-1.0 * reaction_M1_M2_transition) + ( 1.0 * reaction_M2_M1_transition));
	
% Species:   id = M2, name = M2, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_M1_M2_transition) + (-1.0 * reaction_M2_M1_transition) + ( 1.0 * reaction_M2_H2) + ( 1.0 * reaction_M2_growth) + (-1.0 * reaction_M2_death));
end

function z=mod(k,mod), z=(k*mod());end

function z=m1g(pm1,M1,M2,m2), z=(pm1*M1*(1-(M1+M2)/m2));end

function z=growth(p,product,mod,other,m), z=(p*product*mod()*(1-(product+other)/m));end

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


