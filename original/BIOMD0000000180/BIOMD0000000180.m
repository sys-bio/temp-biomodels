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
% Model name = Kim2007_CellularMemory_SymmetricModel
%
% is http://identifiers.org/biomodels.db/MODEL8716097586
% is http://identifiers.org/biomodels.db/BIOMD0000000180
% isDescribedBy http://identifiers.org/pubmed/17892872
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.01;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 0.1;
	x0(8) = 0.1;


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
% Parameter:   id =  i1, name = i1
% Parameter:   id =  d_R1, name = d_R1
	global_par_d_R1=0.23521;
% Parameter:   id =  sP1R1, name = sP1R1
	global_par_sP1R1=0.47305;
% Parameter:   id =  d_P1, name = d_P1
	global_par_d_P1=0.22367;
% Parameter:   id =  sP1_prime_P1, name = sP1_prime_P1
	global_par_sP1_prime_P1=0.28687;
% Parameter:   id =  s1, name = s1
	global_par_s1=0.4;
% Parameter:   id =  n, name = n
	global_par_n=9.0;
% Parameter:   id =  s3, name = s3
	global_par_s3=0.2;
% Parameter:   id =  d_P1_prime, name = d_P1_prime
	global_par_d_P1_prime=0.37048;
% Parameter:   id =  i2, name = i2
% Parameter:   id =  d_R2, name = d_R2
	global_par_d_R2=0.23521;
% Parameter:   id =  sP2R2, name = sP2R2
	global_par_sP2R2=0.47305;
% Parameter:   id =  d_P2, name = d_P2
	global_par_d_P2=0.22367;
% Parameter:   id =  sP2_prime_P2, name = sP2_prime_P2
	global_par_sP2_prime_P2=0.28687;
% Parameter:   id =  s2, name = s2
	global_par_s2=0.3;
% Parameter:   id =  d_P2_prime, name = d_P2_prime
	global_par_d_P2_prime=0.37048;
% Parameter:   id =  sP3_prime_P2_prime, name = sP3_prime_P2_prime
	global_par_sP3_prime_P2_prime=0.5;
% Parameter:   id =  d_P3_prime, name = d_P3_prime
	global_par_d_P3_prime=0.37048;
% Parameter:   id =  d_P4_prime, name = d_P4_prime
	global_par_d_P4_prime=0.37048;
% Parameter:   id =  sP4_prime_P1_prime, name = sP4_prime_P1_prime
	global_par_sP4_prime_P1_prime=0.5;
% assignmentRule: variable = i2
	global_par_i2=piecewise(1, (t >= 175) && (t <= 225), 0);
% assignmentRule: variable = i1
	global_par_i1=piecewise(1, (t >= 50) && (t <= 100), 0);

% Reaction: id = React1
	reaction_React1=global_par_i1;

% Reaction: id = React2
	reaction_React2=global_par_d_R1*x(1);

% Reaction: id = React3
	reaction_React3=global_par_sP1R1*x(1);

% Reaction: id = React4
	reaction_React4=global_par_d_P1*x(2);

% Reaction: id = React5
	reaction_React5=global_par_sP1_prime_P1*x(2);

% Reaction: id = React6
	reaction_React6=global_par_s1/(1+x(6)^global_par_n);

% Reaction: id = React7
	reaction_React7=global_par_s3/(1+x(7)^global_par_n);

% Reaction: id = React8
	reaction_React8=global_par_d_P1_prime*x(3);

% Reaction: id = React9
	reaction_React9=global_par_i2;

% Reaction: id = React10
	reaction_React10=global_par_d_R2*x(4);

% Reaction: id = React11
	reaction_React11=global_par_sP2R2*x(4);

% Reaction: id = React12
	reaction_React12=global_par_d_P2*x(5);

% Reaction: id = React13
	reaction_React13=global_par_sP2_prime_P2*x(5);

% Reaction: id = React14
	reaction_React14=global_par_s2/(1+x(3)^global_par_n);

% Reaction: id = React15
	reaction_React15=global_par_d_P2_prime*x(6);

% Reaction: id = React16
	reaction_React16=global_par_sP3_prime_P2_prime*x(6)^global_par_n/(1+x(6)^global_par_n);

% Reaction: id = React17
	reaction_React17=global_par_d_P3_prime*x(7);

% Reaction: id = React18
	reaction_React18=global_par_s3/(1+x(8)^global_par_n);

% Reaction: id = React19
	reaction_React19=global_par_sP4_prime_P1_prime*x(3)^global_par_n/(1+x(3)^global_par_n);

% Reaction: id = React20
	reaction_React20=global_par_d_P4_prime*x(8);

	xdot=zeros(8,1);
	
% Species:   id = R1, name = R1, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_React1) + (-1.0 * reaction_React2);
	
% Species:   id = P1, name = P1, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_React3) + (-1.0 * reaction_React4);
	
% Species:   id = P1_prime, name = P1_prime, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_React5) + ( 1.0 * reaction_React6) + ( 1.0 * reaction_React7) + (-1.0 * reaction_React8);
	
% Species:   id = R2, name = R2, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_React9) + (-1.0 * reaction_React10);
	
% Species:   id = P2, name = P2, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_React11) + (-1.0 * reaction_React12);
	
% Species:   id = P2_prime, name = P2_prime, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_React13) + ( 1.0 * reaction_React14) + (-1.0 * reaction_React15) + ( 1.0 * reaction_React18);
	
% Species:   id = P3_prime, name = P3_prime, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_React16) + (-1.0 * reaction_React17);
	
% Species:   id = P4_prime, name = P4_prime, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_React19) + (-1.0 * reaction_React20);
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


