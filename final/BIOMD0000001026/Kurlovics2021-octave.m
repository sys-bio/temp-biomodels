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
% Model name = Kurlovics2021 - Metformin partitioning between plasma and RBC with independent Kin and Kout coefficients
%
% unknownQualifier http://identifiers.org/biomodels.db/MODEL2103170002
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% isInstanceOf http://identifiers.org/biomodels.db/MODEL2103170002
% isInstanceOf http://identifiers.org/bto/BTO:0000424
% isInstanceOf http://identifiers.org/chebi/CHEBI:6801
% isInstanceOf http://identifiers.org/mamo/MAMO_0000046
% isInstanceOf http://identifiers.org/taxonomy/9606
% isInstanceOf http://identifiers.org/go/GO:0015893
% is http://identifiers.org/biomodels.db/MODEL2103170002
% is http://identifiers.org/biomodels.db/BIOMD0000001026
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.0;


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

% Compartment: id = RBC, name = RBC, constant
	compartment_RBC=2198.0;
% Parameter:   id =  Mpl, name = Mpl
% Parameter:   id =  A, name = A
	global_par_A=1382.06142698431;
% Parameter:   id =  B, name = B
% Parameter:   id =  d, name = d
	global_par_d=-0.783006790599975;
% Parameter:   id =  Kin, name = Kin
	global_par_Kin=0.0440064186883752;
% Parameter:   id =  c, name = c
	global_par_c=-0.215608884195034;
% Parameter:   id =  Kout, name = Kout
	global_par_Kout=0.0399798384276102;
% Parameter:   id =  Summary_flux_to_RBC, name = Summary flux to RBC
% Parameter:   id =  ModelValue_1, name = Initial for A
	global_par_ModelValue_1=1382.06142698431;
% Parameter:   id =  ModelValue_2, name = Initial for B
	global_par_ModelValue_2=1382.06142698431;
% Parameter:   id =  ModelValue_5, name = Initial for c
	global_par_ModelValue_5=-0.215608884195034;
% Parameter:   id =  ModelValue_3, name = Initial for d
	global_par_ModelValue_3=-0.783006790599975;
% assignmentRule: variable = B
	global_par_B=global_par_ModelValue_1;
% assignmentRule: variable = Summary_flux_to_RBC
	global_par_Summary_flux_to_RBC=reaction_Vin-reaction_Vout;
% assignmentRule: variable = Mpl
	global_par_Mpl=global_par_ModelValue_1*exp(global_par_ModelValue_5*time)-global_par_ModelValue_2*exp(global_par_ModelValue_3*time);

% Reaction: id = Vout, name = Vout
	reaction_Vout=compartment_RBC*global_par_Kout*x(1);

% Reaction: id = Vin, name = Vin
	reaction_Vin=compartment_RBC*Diffusion_to_RBC(global_par_Kin, global_par_Mpl);

	xdot=zeros(1,1);
	
% Species:   id = Mrbc, name = Mrbc, affected by kineticLaw
	xdot(1) = (1/(compartment_RBC))*((-1.0 * reaction_Vout) + ( 1.0 * reaction_Vin));
end

function z=Diffusion_to_RBC(k,x), z=(k*x);end

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


