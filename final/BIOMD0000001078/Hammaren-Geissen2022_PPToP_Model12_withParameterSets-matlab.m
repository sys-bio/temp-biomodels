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
% Model name = Hammaren-Geissen2022_PPToP_Model12
%
% isDescribedBy http://identifiers.org/pubmed:36460637
% is http://identifiers.org/biomodels.db/MODEL2212160002
% is http://identifiers.org/biomodels.db/BIOMD0000001078
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.666666666666667;
	x0(2) = 0.333333333333333;
	x0(3) = 0.0;
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
% Parameter:   id =  kdegu, name = kdegu
	global_par_kdegu=0.0625;
% Parameter:   id =  kdegp, name = kdegp
	global_par_kdegp=0.0625;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.0625;
% Parameter:   id =  kw, name = kw
	global_par_kw=0.0625;
% Parameter:   id =  Pu_total, name = Pu_old+new
% Parameter:   id =  Pp_total, name = Pp_old+new
% Parameter:   id =  ksyn, name = ksyn
	global_par_ksyn=0.0625;
% Parameter:   id =  Pu_observable, name = Ou_Pu_old_observable
% Parameter:   id =  Pp_observable, name = Op_Pp_old_observable
% Parameter:   id =  EntProt_observable, name = O_P_observable
% Parameter:   id =  Pu_old_clearance, name = Pu_old_clearanceProfile
% Parameter:   id =  Pp_old_clearance, name = Pp_old_clearanceProfile
% Parameter:   id =  P_old_clearance, name = P_old_clearanceProfile
% Parameter:   id =  ModelValue_5, name = Initial for Pp_old+new
	global_par_ModelValue_5=0.333333333333333;
% Parameter:   id =  ModelValue_4, name = Initial for Pu_old+new
	global_par_ModelValue_4=0.666666666666667;
% Parameter:   id =  ModelValue_1, name = Initial for kdegp
	global_par_ModelValue_1=0.0625;
% Parameter:   id =  ModelValue_0, name = Initial for kdegu
	global_par_ModelValue_0=0.0625;
% Parameter:   id =  ModelValue_2, name = Initial for ke
	global_par_ModelValue_2=0.0625;
% Parameter:   id =  ModelValue_6, name = Initial for ksyn
	global_par_ModelValue_6=0.0625;
% Parameter:   id =  ModelValue_3, name = Initial for kw
	global_par_ModelValue_3=0.0625;
% assignmentRule: variable = Pu_total
	global_par_Pu_total=global_par_ModelValue_6*(global_par_ModelValue_1+global_par_ModelValue_2)/(global_par_ModelValue_1*global_par_ModelValue_0+global_par_ModelValue_0*global_par_ModelValue_2+global_par_ModelValue_1*global_par_ModelValue_3);
% assignmentRule: variable = Pu_new
	x(3)=global_par_ModelValue_4-x(1);
% assignmentRule: variable = Pp_total
	global_par_Pp_total=global_par_ModelValue_6*global_par_ModelValue_3/(global_par_ModelValue_1*global_par_ModelValue_0+global_par_ModelValue_0*global_par_ModelValue_2+global_par_ModelValue_1*global_par_ModelValue_3);
% assignmentRule: variable = Pp_new
	x(4)=global_par_ModelValue_5-x(2);
% assignmentRule: variable = Pu_observable
	global_par_Pu_observable=x(1)/global_par_ModelValue_4;
% assignmentRule: variable = Pp_observable
	global_par_Pp_observable=x(2)/global_par_ModelValue_5;
% assignmentRule: variable = EntProt_observable
	global_par_EntProt_observable=(x(2)+x(1))/(global_par_ModelValue_5+global_par_ModelValue_4);

% Reaction: id = Pu_degradation, name = Pu degradation
	reaction_Pu_degradation=compartment_compartment*global_par_kdegu*x(1);

% Reaction: id = PTM_writing, name = PTM writing
	reaction_PTM_writing=compartment_compartment*global_par_kw*x(1);

% Reaction: id = PTM_erasing, name = PTM erasing
	reaction_PTM_erasing=compartment_compartment*global_par_ke*x(2);

% Reaction: id = Pp_degradation, name = Pp degradation
	reaction_Pp_degradation=compartment_compartment*global_par_kdegp*x(2);

	xdot=zeros(4,1);
	
% Species:   id = Pu, name = Pu_old, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Pu_degradation) + (-1.0 * reaction_PTM_writing) + ( 1.0 * reaction_PTM_erasing));
	
% Species:   id = Pp, name = Pp_old, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_PTM_writing) + (-1.0 * reaction_PTM_erasing) + (-1.0 * reaction_Pp_degradation));
	
% Species:   id = Pu_new, name = Pu_new, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Pp_new, name = Pp_new, involved in a rule 	xdot(4) = x(4);
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


