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
% Model name = Scaramellini1997 - Two-receptor:One-transducer (2R1T) model for analysis of interactions between agonists
%
% isDescribedBy http://identifiers.org/pubmed/9253753
% is http://identifiers.org/biomodels.db/MODEL2106080001
% is http://identifiers.org/biomodels.db/BIOMD0000001008
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 9.99999999E-4;
	x0(2) = 9.999999999E-5;
	x0(3) = 1.0E-14;
	x0(4) = 1.0E-15;
	x0(5) = 9.55128864177634;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  m1, name = m1
	global_par_m1=1000000.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=1.0E-5;
% Parameter:   id =  n1, name = n1
	global_par_n1=1.0;
% Parameter:   id =  m2, name = m2
	global_par_m2=1000000.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.0E-5;
% Parameter:   id =  n2, name = n2
	global_par_n2=1.0;
% Parameter:   id =  M_tot, name = M_tot
% Parameter:   id =  Em, name = Em
	global_par_Em=100.0;
% Parameter:   id =  K, name = K
	global_par_K=1.0;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.33;
% assignmentRule: variable = Mediator_A1
	x(1)=global_par_m1*x(3)^global_par_n1/(global_par_K1^global_par_n1+x(3)^global_par_n1);
% assignmentRule: variable = Mediator_A2
	x(2)=global_par_m2*x(4)^global_par_n2/(global_par_K2^global_par_n2+x(4)^global_par_n2);
% assignmentRule: variable = M_tot
	global_par_M_tot=x(1)+x(2);
% assignmentRule: variable = Effect
	x(5)=global_par_Em*global_par_M_tot^global_par_n3/(global_par_K^global_par_n3+global_par_M_tot^global_par_n3);

	xdot=zeros(5,1);
	
% Species:   id = Mediator_A1, name = Mediator_A1, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Mediator_A2, name = Mediator_A2, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Agonist_1, name = Agonist_1
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = Agonist_2, name = Agonist_2
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = Effect, name = Effect, involved in a rule 	xdot(5) = x(5);
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


