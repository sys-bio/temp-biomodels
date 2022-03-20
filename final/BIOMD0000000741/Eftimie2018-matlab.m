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
% Model name = Eftimie2018 - Cancer and Immune biomarkers
%
% is http://identifiers.org/biomodels.db/MODEL1907050002
% is http://identifiers.org/biomodels.db/BIOMD0000000741
% isDescribedBy http://identifiers.org/pubmed/29554938
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
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
% Parameter:   id =  fhtrhtnh, name = fhtrhtnh
	global_par_fhtrhtnh=4560.0;
% Parameter:   id =  ft, name = ft
	global_par_ft=0.1;
% Parameter:   id =  rt, name = rt
	global_par_rt=4.5E-5;
% Parameter:   id =  nh, name = nh
	global_par_nh=0.0;
% Parameter:   id =  kgr, name = kgr
	global_par_kgr=0.00578;
% Parameter:   id =  ket, name = ket
	global_par_ket=0.11;
% Parameter:   id =  cca, name = cca
% Parameter:   id =  dca, name = dca
% Parameter:   id =  vpl, name = vpl
	global_par_vpl=3150.0;
% Parameter:   id =  ai, name = ai
	global_par_ai=2.0794;
% Parameter:   id =  kei, name = kei
	global_par_kei=2.14;
% Parameter:   id =  M, name = M
	global_par_M=1.0E9;
% Parameter:   id =  firi, name = firi
	global_par_firi=1.0925E-6;
% Parameter:   id =  fhirhinh, name = fhirhinh
	global_par_fhirhinh=19548.0;
% Parameter:   id =  cil, name = cil
% Parameter:   id =  dil, name = dil
% Parameter:   id =  cil_conc, name = cil-conc
	global_par_cil_conc=3.8;
% Parameter:   id =  dil_conc, name = dil-conc
	global_par_dil_conc=1.0;
% Parameter:   id =  cca_conc, name = cca-conc
	global_par_cca_conc=34.11;
% Parameter:   id =  dca_conc, name = dca-conc
	global_par_dca_conc=1.5;
% Parameter:   id =  di, name = di
	global_par_di=0.4;
% Parameter:   id =  dt, name = dt
	global_par_dt=1.0E-6;
% Parameter:   id =  hi, name = hi
	global_par_hi=1000.0;
% Parameter:   id =  ModelValue_18, name = Initial for cca-conc
	global_par_ModelValue_18=34.11;
% Parameter:   id =  ModelValue_16, name = Initial for cil-conc
	global_par_ModelValue_16=3.8;
% Parameter:   id =  ModelValue_19, name = Initial for dca-conc
	global_par_ModelValue_19=1.5;
% Parameter:   id =  ModelValue_17, name = Initial for dil-conc
	global_par_ModelValue_17=1.0;
% Parameter:   id =  ModelValue_8, name = Initial for vpl
	global_par_ModelValue_8=3150.0;
% assignmentRule: variable = cca
	global_par_cca=global_par_ModelValue_18*global_par_ModelValue_8;
% assignmentRule: variable = dca
	global_par_dca=global_par_ModelValue_19*global_par_ModelValue_8;
% assignmentRule: variable = cil
	global_par_cil=global_par_ModelValue_16*global_par_ModelValue_8;
% assignmentRule: variable = dil
	global_par_dil=global_par_ModelValue_17*global_par_ModelValue_8;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_compartment*tumor_growth_1(x(1), global_par_kgr);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_compartment*tumor_killing_1(x(2), x(1), global_par_dt, global_par_hi);

% Reaction: id = immune_cell_growth, name = immune cell growth
	reaction_immune_cell_growth=compartment_compartment*immune_cell_growth_1(global_par_M, x(2), x(1), global_par_ai);

% Reaction: id = immune_cell_decay, name = immune cell death
	reaction_immune_cell_decay=compartment_compartment*global_par_di*x(2);

% Reaction: id = CA125_decay, name = CA125 decay
	reaction_CA125_decay=compartment_compartment*global_par_ket*x(3);

% Reaction: id = CA125_secretion, name = CA125 secretion from cancer cells
	reaction_CA125_secretion=compartment_compartment*CA125_secretion_1(x(1), global_par_ft, global_par_rt);

% Reaction: id = IL7_decay, name = IL7 decay
	reaction_IL7_decay=compartment_compartment*global_par_kei*x(4);

% Reaction: id = IL7_secretion, name = IL7 secretion from immune cells
	reaction_IL7_secretion=compartment_compartment*IL7_secretion_1(x(2), global_par_firi);

	xdot=zeros(4,1);
	
% Species:   id = NT, name = NT, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = NI, name = NI, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_immune_cell_growth) + (-1.0 * reaction_immune_cell_decay));
	
% Species:   id = BT, name = BT, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CA125_shedding_natural) + (-1.0 * reaction_CA125_decay) + ( 1.0 * reaction_CA125_secretion));
	
% Species:   id = BI, name = BI, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_IL7_shedding_natural) + (-1.0 * reaction_IL7_decay) + ( 1.0 * reaction_IL7_secretion));
end

function z=Constant_flux__irreversible_0(v), z=(v);end

function z=tumor_killing_1(NI,NT,dt,hi), z=(dt*NT*NI/(hi+NI));end

function z=tumor_growth_1(NT,kgr), z=(kgr*NT);end

function z=CA125_secretion_1(NT,ft,rt), z=(ft*rt*NT);end

function z=IL7_secretion_1(NI,firi), z=(firi*NI);end

function z=immune_cell_growth_1(M,NI,NT,ai), z=(ai*NT*(1-NI/M));end

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


