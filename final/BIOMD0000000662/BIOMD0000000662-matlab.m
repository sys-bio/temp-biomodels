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
% Model name = Moore2004 - Chronic Myeloid Leukemic cells and T-lymphocyte interaction
%
% is http://identifiers.org/biomodels.db/MODEL1006230057
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/15038986
% is http://identifiers.org/biomodels.db/BIOMD0000000662
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 10000.0;
	x0(2) = 1510.0;
	x0(3) = 20.0;


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

% Compartment: id = COMpartment, name = Blood, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=0.071;
% Parameter:   id =  dn, name = dn
	global_par_dn=0.05;
% Parameter:   id =  alpha_n, name = alpha_n
	global_par_alpha_n=0.56;
% Parameter:   id =  alpha_e, name = alpha_e
	global_par_alpha_e=0.53;
% Parameter:   id =  de, name = de
	global_par_de=0.12;
% Parameter:   id =  gamma_e, name = gamma_e
	global_par_gamma_e=0.0077;
% Parameter:   id =  Cmax, name = Cmax
	global_par_Cmax=190000.0;
% Parameter:   id =  rc, name = rc
	global_par_rc=0.23;
% Parameter:   id =  dc, name = dc
	global_par_dc=0.68;
% Parameter:   id =  gamma_c, name = gamma_c
	global_par_gamma_c=0.047;
% Parameter:   id =  kn, name = kn
	global_par_kn=0.063;
% Parameter:   id =  eta, name = eta
	global_par_eta=43.0;

% Reaction: id = T_cell_naive_Source, name = T_cell_naive Source
	reaction_T_cell_naive_Source=compartment_COMpartment*global_par_sn*const_species_Source;

% Reaction: id = T_cell_naive_Natural_Death, name = T_cell_naive Natural Death
	reaction_T_cell_naive_Natural_Death=compartment_COMpartment*global_par_dn*x(2);

% Reaction: id = T_cell_naive_Activation, name = T_cell_naive Activation
	reaction_T_cell_naive_Activation=compartment_COMpartment*function_for_naive_activation(x(2), x(1), global_par_eta, global_par_kn);

% Reaction: id = T_cell_effector_Recruitment, name = T_cell_effector Recruitment
	reaction_T_cell_effector_Recruitment=compartment_COMpartment*function_for_T_cell_effector_recruitment(global_par_alpha_e, x(3), x(1), global_par_eta);

% Reaction: id = T_cell_effector_Natural_Death, name = T_cell_effector Natural Death
	reaction_T_cell_effector_Natural_Death=compartment_COMpartment*global_par_de*x(3);

% Reaction: id = T_cell_effector_Death_by_CML, name = T_cell_effector Death by CML
	reaction_T_cell_effector_Death_by_CML=compartment_COMpartment*function_for_T_cell_effector_death_by_CML(global_par_gamma_e, x(1), x(3));

% Reaction: id = CML_Growth, name = CML Growth
	reaction_CML_Growth=compartment_COMpartment*function_for_CML_growth(global_par_rc, x(1), global_par_Cmax);

% Reaction: id = CML_death_by_T_cell_effector, name = CML death by T_cell_effector
	reaction_CML_death_by_T_cell_effector=compartment_COMpartment*function_for_CML_death_by_T_cell_effector(global_par_gamma_c, x(3), x(1));

% Reaction: id = CML_natural_death, name = CML natural death
	reaction_CML_natural_death=compartment_COMpartment*global_par_dc*x(1);

% Reaction: id = T_cell_effector_Production_from_T_cell_Naive_activation, name = T_cell_effector Production from T_cell_Naive activation
	reaction_T_cell_effector_Production_from_T_cell_Naive_activation=compartment_COMpartment*function_for_T_cell_effector_production_from_T_cell_naive_activation(global_par_alpha_n, global_par_kn, x(2), x(1), global_par_eta);

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

	xdot=zeros(3,1);
	
% Species:   id = CML, name = CML, affected by kineticLaw
	xdot(1) = (1/(compartment_COMpartment))*(( 1.0 * reaction_CML_Growth) + (-1.0 * reaction_CML_death_by_T_cell_effector) + (-1.0 * reaction_CML_natural_death));
	
% Species:   id = T_cell_naive, name = T_cell_naive, affected by kineticLaw
	xdot(2) = (1/(compartment_COMpartment))*(( 1.0 * reaction_T_cell_naive_Source) + (-1.0 * reaction_T_cell_naive_Natural_Death) + (-1.0 * reaction_T_cell_naive_Activation));
	
% Species:   id = T_cell_effector, name = T_cell_effector, affected by kineticLaw
	xdot(3) = (1/(compartment_COMpartment))*(( 1.0 * reaction_T_cell_effector_Recruitment) + (-1.0 * reaction_T_cell_effector_Natural_Death) + (-1.0 * reaction_T_cell_effector_Death_by_CML) + ( 1.0 * reaction_T_cell_effector_Production_from_T_cell_Naive_activation));
end

function z=function_for_naive_activation(naive,CML,eta,k), z=(k*naive*CML/(CML+eta));end

function z=function_for_T_cell_effector_death_by_CML(param,CML,effector), z=(param*CML*effector);end

function z=function_for_CML_growth(r,C,Cmax), z=(r*C*log(Cmax/C));end

function z=function_for_CML_death_by_T_cell_effector(param,mod,substrate), z=(param*mod*substrate);end

function z=function_for_T_cell_effector_production_from_T_cell_naive_activation(alpha,k,naive,CML,eta), z=(alpha*k*naive*CML/(CML+eta));end

function z=function_for_T_cell_effector_recruitment(alpha,effector,CML,eta), z=(alpha*effector*CML/(CML+eta));end

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


