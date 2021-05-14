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
% Model name = Frascoli2014 - A dynamical model of tumour immunotherapy
%
% isDescribedBy http://identifiers.org/pubmed/24759513
% is http://identifiers.org/biomodels.db/MODEL1908120001
% is http://identifiers.org/biomodels.db/BIOMD0000000787
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 0.1;


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
% Parameter:   id =  r_t, name = r_t
	global_par_r_t=0.1;
% Parameter:   id =  k, name = k
	global_par_k=0.2;
% Parameter:   id =  d_c, name = d_c
	global_par_d_c=0.2;
% Parameter:   id =  r_c, name = r_c
	global_par_r_c=0.001;
% Parameter:   id =  rho, name = rho
% Parameter:   id =  min_C, name = min_C
% assignmentRule: variable = min_C
	global_par_min_C=piecewise(1, x(2) >= 1, x(2));
% assignmentRule: variable = rho
	global_par_rho=(36*pi)^(1/3);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_rho, global_par_r_t, x(1));

% Reaction: id = Tumor_Killing_CTL, name = Tumor_Killing_CTL
	reaction_Tumor_Killing_CTL=compartment_compartment*Function_for_Tumor_Killing_CTL(global_par_rho, global_par_k, x(1), global_par_min_C);

% Reaction: id = CTL_Recruitment, name = CTL_Recruitment
	reaction_CTL_Recruitment=compartment_compartment*Function_for_CTL_Recruitment(global_par_rho, global_par_r_c, x(1), x(2));

% Reaction: id = CTL_Death, name = CTL_Death
	reaction_CTL_Death=compartment_compartment*global_par_d_c*x(2);

	xdot=zeros(2,1);
	
% Species:   id = V_Tumor_Volume, name = V_Tumor_Volume, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing_CTL));
	
% Species:   id = C_Cytotoxic_T_Lymphocytes_Coverage, name = C_Cytotoxic_T_Lymphocytes_Coverage, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CTL_Recruitment) + (-1.0 * reaction_CTL_Death));
end

function z=Function_for_CTL_Recruitment(rho,r_c,V,C), z=(rho*r_c*V^(2/3)*C);end

function z=Function_for_Tumor_Growth(rho,r_t,V), z=(rho*r_t*V^(2/3));end

function z=Function_for_Tumor_Killing_CTL(rho,k,V,min_C), z=(rho*k*V^(2/3)*min_C);end

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


