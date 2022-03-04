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
% Model name = Sotolongo-Costa2003 - Behavior of tumors under nonstationary therapy
%
% isDescribedBy http://identifiers.org/doi/10.1016/S0167-2789(03)00005-8
% is http://identifiers.org/biomodels.db/MODEL1908090002
% is http://identifiers.org/biomodels.db/BIOMD0000000785
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 5.3;
	x0(2) = 6.7;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=2.0;
% Parameter:   id =  k, name = k
	global_par_k=0.2;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.25;

% Reaction: id = Malignant_Cells_Growth, name = Malignant_Cells_Growth
	reaction_Malignant_Cells_Growth=compartment_compartment*Function_for_Malignant_Cells_Growth(global_par_alpha, x(1));

% Reaction: id = Malignant_Cells_Death_Lymphocytes, name = Malignant_Cells_Death_Lymphocytes
	reaction_Malignant_Cells_Death_Lymphocytes=compartment_compartment*Function_for_Malignant_Cells_Death_Lymphocytes(x(1), x(2));

% Reaction: id = Lymphocyte_Death, name = Lymphocyte_Death
	reaction_Lymphocyte_Death=compartment_compartment*Function_for_Lymphocyte_Elimination_1(x(2), global_par_alpha);

% Reaction: id = Lymphocyte_Elimination_Malignant_Cells, name = Lymphocyte_Elimination_Malignant_Cells
	reaction_Lymphocyte_Elimination_Malignant_Cells=compartment_compartment*Function_for_Lymphocyte_Elimination_Malignant_Cells(global_par_k, x(1));

	xdot=zeros(2,1);
	
% Species:   id = x_Malignant_Cells, name = x_Malignant_Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Malignant_Cells_Growth) + (-1.0 * reaction_Malignant_Cells_Death_Lymphocytes));
	
% Species:   id = y_Lymphocytes, name = y_Lymphocytes, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Malignant_Cells_Death_Lymphocytes) + ( 1.0 * reaction_Lymphocytes_Production) + (-1.0 * reaction_Lymphocyte_Death) + (-1.0 * reaction_Lymphocyte_Elimination_Malignant_Cells));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Malignant_Cells_Growth(alpha,x), z=(alpha*x);end

function z=Function_for_Lymphocyte_Elimination_1(y,alpha), z=(y/alpha);end

function z=Function_for_Lymphocyte_Elimination_Malignant_Cells(k,x), z=(k*x);end

function z=Function_for_Malignant_Cells_Death_Lymphocytes(x,y), z=(x*y);end

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


