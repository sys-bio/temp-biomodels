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
% Model name = Westermark2003_Pancreatic_GlycOsc_extended
%
% is http://identifiers.org/biomodels.db/MODEL9574422639
% is http://identifiers.org/biomodels.db/BIOMD0000000236
% isDescribedBy http://identifiers.org/pubmed/12829470
% isDerivedFrom http://identifiers.org/pubmed/6271617
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 3.71728;
	x0(2) = 0;
	x0(3) = 6.3612E-4;
	x0(4) = 0;
	x0(5) = 0;
	x0(6) = 0.00262966;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  Vgk, name = Vgk
% Parameter:   id =  hGK, name = hGK
	global_par_hGK=1.7;
% Parameter:   id =  KeqGPI, name = KeqGPI
	global_par_KeqGPI=0.3;
% Parameter:   id =  KeqTPI, name = KeqTPI
	global_par_KeqTPI=0.045455;
% Parameter:   id =  Vpfk, name = Vpfk
% Parameter:   id =  Vfba, name = Vfba
% Parameter:   id =  Vgapdh, name = Vgapdh
% Parameter:   id =  Sgk, name = Sgk
	global_par_Sgk=8.0;
% Parameter:   id =  Spfk, name = Spfk
	global_par_Spfk=4.0;
% Parameter:   id =  Sfba, name = Sfba
	global_par_Sfba=0.005;
% Parameter:   id =  Sgapdh, name = Sgapdh
	global_par_Sgapdh=0.005;
% Parameter:   id =  Xpfk, name = Xpfk
	global_par_Xpfk=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=5.0;
% Parameter:   id =  hx, name = hx
	global_par_hx=2.5;
% Parameter:   id =  hpfk, name = hpfk
	global_par_hpfk=2.5;
% Parameter:   id =  hact, name = hact
	global_par_hact=1.0;
% Parameter:   id =  dw_per_ml, name = dw_per_ml
	global_par_dw_per_ml=0.3333;
% Parameter:   id =  min_to_sec, name = min_to_sec
	global_par_min_to_sec=60.0;
% Parameter:   id =  Vgk_min, name = Vgk_min
	global_par_Vgk_min=10.0;
% Parameter:   id =  Vpfk_min, name = Vpfk_min
	global_par_Vpfk_min=100.0;
% Parameter:   id =  Vfba_min, name = Vfba_min
	global_par_Vfba_min=25.0;
% Parameter:   id =  Vgapdh_min, name = Vgapdh_min
	global_par_Vgapdh_min=250.0;
% Parameter:   id =  Pfba, name = Pfba
	global_par_Pfba=0.5;
% Parameter:   id =  Qfba, name = Qfba
	global_par_Qfba=0.275;
% Parameter:   id =  KeqFBA, name = KeqFBA
	global_par_KeqFBA=0.1;
% Parameter:   id =  sigma, name = sigma
% assignmentRule: variable = sigma
	global_par_sigma=x(2)/global_par_Spfk;
% assignmentRule: variable = Vgk
	global_par_Vgk=global_par_Vgk_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = Vpfk
	global_par_Vpfk=global_par_Vpfk_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = Vfba
	global_par_Vfba=global_par_Vfba_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = Vgapdh
	global_par_Vgapdh=global_par_Vgapdh_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = F6P
	x(2)=x(1)*global_par_KeqGPI/(1+global_par_KeqGPI);
% assignmentRule: variable = G3P
	x(4)=x(6)*global_par_KeqTPI/(1+global_par_KeqTPI);
% assignmentRule: variable = DHAP
	x(5)=x(6)-x(4);

% Reaction: id = vgk, name = vgk
	reaction_vgk=compartment_cell*global_par_Vgk*(const_species_GLC/global_par_Sgk)^global_par_hGK/(1+(const_species_GLC/global_par_Sgk)^global_par_hGK);

% Reaction: id = vpfk, name = vpfk
	reaction_vpfk=compartment_cell*global_par_Vpfk*(x(2)/global_par_Spfk)^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))/((x(2)/global_par_Spfk)^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))+(1+(x(3)/global_par_Xpfk)^global_par_hx)/(1+global_par_alpha^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))*(x(3)/global_par_Xpfk)^global_par_hx));

% Reaction: id = vfba, name = vfba
	reaction_vfba=compartment_cell*global_par_Vfba*(x(3)/global_par_Sfba-x(4)*x(5)/(global_par_Pfba*global_par_Qfba*global_par_KeqFBA))/(1+x(3)/global_par_Sfba+x(5)/global_par_Qfba+x(4)*x(5)/(global_par_Pfba*global_par_Qfba));

% Reaction: id = vgapdh, name = vgapdh
	reaction_vgapdh=compartment_cell*global_par_Vgapdh*x(4)/(global_par_Sgapdh+x(4));

% Species:   id = GLC, name = intracellular glucose, constant	const_species_GLC=10.0;

	xdot=zeros(6,1);
	
% Species:   id = G6P_F6P, name = G6P_F6P, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_vgk) + (-1.0 * reaction_vpfk));
	
% Species:   id = F6P, name = fructose-6-phosphate, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = FBP, name = fructose-1,6-biphosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_vpfk) + (-1.0 * reaction_vfba));
	
% Species:   id = G3P, name = glyceraldehyde--phosphate, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = DHAP, name = dihydroxyacetone-phosphate, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = DHAP_G3P, name = DHAP-G3P pool, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 2.0 * reaction_vfba) + (-1.0 * reaction_vgapdh));
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


