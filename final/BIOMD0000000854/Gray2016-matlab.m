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
% Model name = Gray2016 - The Akt switch model
%
% isDescribedBy http://identifiers.org/pubmed/26992575
% is http://identifiers.org/biomodels.db/MODEL1911130001
% is http://identifiers.org/biomodels.db/BIOMD0000000854
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.95;
	x0(2) = 0.0;
	x0(3) = 0.05;
	x0(4) = 0.0;


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
% Parameter:   id =  kin, name = kin
	global_par_kin=0.55;
% Parameter:   id =  koff, name = koff
	global_par_koff=0.35;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.014;
% Parameter:   id =  alpha100, name = alpha100
	global_par_alpha100=0.023;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=2.2;
% Parameter:   id =  P_Perc, name = P_Perc
% Parameter:   id =  Akt_Total, name = Akt_Total
% Parameter:   id =  Pp_Perc, name = Pp_Perc
% Parameter:   id =  Pc_Perc, name = Pc_Perc
% assignmentRule: variable = Akt_Total
	global_par_Akt_Total=x(1)+x(3)+x(2)+x(4);
% assignmentRule: variable = Pc_Perc
	global_par_Pc_Perc=100*x(2)/global_par_Akt_Total;
% assignmentRule: variable = Pp_Perc
	global_par_Pp_Perc=100*x(4)/global_par_Akt_Total;
% assignmentRule: variable = P_Perc
	global_par_P_Perc=100*(x(2)+x(4))/global_par_Akt_Total;

% Reaction: id = AktP_Dephosphorylation_Cytosol, name = AktP_Dephosphorylation_Cytosol
	reaction_AktP_Dephosphorylation_Cytosol=compartment_compartment*global_par_koff*x(2);

% Reaction: id = Akt_Translocation_Cytosol_PM_Insulin, name = Akt_Translocation_Cytosol_PM_Insulin
	reaction_Akt_Translocation_Cytosol_PM_Insulin=compartment_compartment*Function_for_Akt_Translocation_Cytosol_PM_Insulin(global_par_alpha1, global_par_kin, x(1));

% Reaction: id = Akt_Translocation_PM_Cytosol, name = Akt_Translocation_PM_Cytosol
	reaction_Akt_Translocation_PM_Cytosol=compartment_compartment*global_par_kin*x(3);

% Reaction: id = AktP_Translocation_PM_Cytosol, name = AktP_Translocation_PM_Cytosol
	reaction_AktP_Translocation_PM_Cytosol=compartment_compartment*global_par_kin*x(4);

% Reaction: id = AktP_Translocation_Cytosol_PM_Insulin, name = AktP_Translocation_Cytosol_PM_Insulin
	reaction_AktP_Translocation_Cytosol_PM_Insulin=compartment_compartment*Function_for_AktP_Translocation_Cytosol_PM_Insulin(global_par_alpha1, global_par_kin, x(2));

% Reaction: id = AktP_Dephosphorylation_PM, name = AktP_Dephosphorylation_PM
	reaction_AktP_Dephosphorylation_PM=compartment_compartment*global_par_koff*x(4);

% Reaction: id = Akt_Phosphorylation_PM_Equilibrium, name = Akt_Phosphorylation_PM_Equilibrium
	reaction_Akt_Phosphorylation_PM_Equilibrium=compartment_compartment*Function_for_Akt_Phosphorylation_PM_Equilibrium(global_par_beta1, global_par_koff, x(3));

	xdot=zeros(4,1);
	
% Species:   id = Ac, name = Ac, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_AktP_Dephosphorylation_Cytosol) + (-1.0 * reaction_Akt_Translocation_Cytosol_PM_Insulin) + ( 1.0 * reaction_Akt_Translocation_PM_Cytosol));
	
% Species:   id = Pc, name = Pc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_AktP_Dephosphorylation_Cytosol) + ( 1.0 * reaction_AktP_Translocation_PM_Cytosol) + (-1.0 * reaction_AktP_Translocation_Cytosol_PM_Insulin));
	
% Species:   id = Ap, name = Ap, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Akt_Translocation_Cytosol_PM_Insulin) + (-1.0 * reaction_Akt_Translocation_PM_Cytosol) + ( 1.0 * reaction_AktP_Dephosphorylation_PM) + (-1.0 * reaction_Akt_Phosphorylation_PM_Equilibrium));
	
% Species:   id = Pp, name = Pp, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_AktP_Translocation_PM_Cytosol) + ( 1.0 * reaction_AktP_Translocation_Cytosol_PM_Insulin) + (-1.0 * reaction_AktP_Dephosphorylation_PM) + ( 1.0 * reaction_Akt_Phosphorylation_PM_Equilibrium));
end

function z=Function_for_AktP_Translocation_Cytosol_PM_Insulin(alpha,kin,Pc), z=(alpha*kin*Pc);end

function z=Function_for_Akt_Translocation_Cytosol_PM_Insulin(alpha,kin,Ac), z=(alpha*kin*Ac);end

function z=Function_for_Akt_Phosphorylation_PM_Equilibrium(beta,koff,Ap), z=(beta*koff*Ap);end

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


