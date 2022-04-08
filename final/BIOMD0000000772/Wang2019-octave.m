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
% Model name = Wang2019 - A mathematical model of oncolytic virotherapy with time delay
%
% isDescribedBy http://identifiers.org/pubmed/31137188
% isDerivedFrom http://identifiers.org/pubmed/11309314
% is http://identifiers.org/biomodels.db/MODEL1908010001
% is http://identifiers.org/biomodels.db/BIOMD0000000772
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 200.0;
	x0(2) = 0.0;
	x0(3) = 800.0;
	x0(4) = 100.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.206;
% Parameter:   id =  k, name = k
	global_par_k=2139.0;
% Parameter:   id =  b, name = b
	global_par_b=4.48E-4;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.0;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  p, name = p
	global_par_p=0.01;
% Parameter:   id =  c, name = c
	global_par_c=0.02;
% Parameter:   id =  d, name = d
	global_par_d=0.5;
% Parameter:   id =  n, name = n
	global_par_n=0.01;

% Reaction: id = Uninfected_Cells_Proliferation, name = Uninfected_Cells_Proliferation
	reaction_Uninfected_Cells_Proliferation=compartment_compartment*Function_for_Uninfected_Cells_Proliferation(global_par_r, x(1), x(3), global_par_k);

% Reaction: id = Uninfected_Cells_Infection, name = Uninfected_Cells_Infection
	reaction_Uninfected_Cells_Infection=compartment_compartment*global_par_b*x(1)*x(3);

% Reaction: id = Length_of_Eclipse_Phase, name = Length_of_Eclipse_Phase
	reaction_Length_of_Eclipse_Phase=compartment_compartment*Function_for_Length_of_Eclipse_Phase(global_par_b, global_par_n, global_par_tau, x(1), x(3));

% Reaction: id = Cytotoxicity, name = Cytotoxicity
	reaction_Cytotoxicity=compartment_compartment*global_par_a*x(3);

% Reaction: id = Immune_Kill, name = Immune_Kill
	reaction_Immune_Kill=compartment_compartment*Function_for_Immune_Kill(global_par_p, x(3), x(4));

% Reaction: id = Stimulation, name = Stimulation
	reaction_Stimulation=compartment_compartment*Function_for_Stimulation(global_par_c, x(3), x(4));

% Reaction: id = Clearance, name = Clearance
	reaction_Clearance=compartment_compartment*global_par_d*x(4);

	xdot=zeros(4,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_Cells_Proliferation) + (-1.0 * reaction_Uninfected_Cells_Infection));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_Cells_Infection) + (-1.0 * reaction_Length_of_Eclipse_Phase));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Uninfected_Cells_Infection) + ( 1.0 * reaction_Length_of_Eclipse_Phase) + (-1.0 * reaction_Cytotoxicity) + (-1.0 * reaction_Immune_Kill));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Stimulation) + (-1.0 * reaction_Clearance));
end

function z=Function_for_Length_of_Eclipse_Phase(b,n,tau,x,y), z=(b*exp((-n)*tau)*x*y);end

function z=Function_for_Stimulation(c,y,z), z=(c*y*z);end

function z=Function_for_Immune_Kill(p,y,z), z=(p*y*z);end

function z=Function_for_Uninfected_Cells_Proliferation(r,x,y,k), z=(r*x*(1-(x+y)/k));end

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


