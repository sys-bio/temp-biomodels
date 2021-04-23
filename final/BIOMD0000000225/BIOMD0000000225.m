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
% Model name = Westermark2003_Pancreatic_GlycOsc_basic
%
% is http://identifiers.org/biomodels.db/MODEL5950995486
% is http://identifiers.org/biomodels.db/BIOMD0000000225
% isDescribedBy http://identifiers.org/pubmed/12829470
% isDerivedFrom http://identifiers.org/pubmed/6271617
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 3.71728;
	x0(2) = 0;
	x0(3) = 6.3612E-4;


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

% Compartment: id = comp, name = compartment, constant
	compartment_comp=1.0;
% Parameter:   id =  Vgk, name = Vgk
% Parameter:   id =  hGK, name = hGK
	global_par_hGK=1.7;
% Parameter:   id =  KeqGPI, name = KeqGPI
	global_par_KeqGPI=0.3;
% Parameter:   id =  Vpfk, name = Vpfk
% Parameter:   id =  Vfba, name = Vfba
% Parameter:   id =  Sgk, name = Sgk
	global_par_Sgk=8.0;
% Parameter:   id =  Spfk, name = Spfk
	global_par_Spfk=4.0;
% Parameter:   id =  Sfba, name = Sfba
	global_par_Sfba=0.005;
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
% Parameter:   id =  sigcorr, name = sigcorr
	global_par_sigcorr=1.5;
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
% assignmentRule: variable = Vgk
	global_par_Vgk=global_par_Vgk_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = Vpfk
	global_par_Vpfk=global_par_Vpfk_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = Vfba
	global_par_Vfba=global_par_Vfba_min*global_par_dw_per_ml/global_par_min_to_sec;
% assignmentRule: variable = F6P
	x(2)=x(1)*global_par_KeqGPI/(1+global_par_KeqGPI);

% Reaction: id = vgk, name = vgk
	reaction_vgk=compartment_comp*global_par_Vgk*(const_species_GLC/global_par_Sgk)^global_par_hGK/(1+(const_species_GLC/global_par_Sgk)^global_par_hGK);

% Reaction: id = vpfk, name = vpfk
	reaction_vpfk=compartment_comp*global_par_Vpfk*(x(2)/global_par_Spfk)^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))/((x(2)/global_par_Spfk)^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))+(1+(x(3)/global_par_Xpfk)^global_par_hx)/(1+global_par_alpha^(global_par_hpfk-(global_par_hpfk-global_par_hact)*x(3)/global_par_Sfba/(1+x(3)/global_par_Sfba))*(x(3)/global_par_Xpfk)^global_par_hx));

% Reaction: id = vfba, name = vfba
	reaction_vfba=compartment_comp*global_par_Vfba*x(3)/global_par_Sfba/(x(3)/global_par_Sfba+1);

% Species:   id = GLC, name = GLC, constant	const_species_GLC=10.0;

% Species:   id = G3P, name = G3P, constant	const_species_G3P=0.0;

	xdot=zeros(3,1);
	
% Species:   id = G6P_F6P, name = G6P_F6P, affected by kineticLaw
	xdot(1) = (1/(compartment_comp))*(( 1.0 * reaction_vgk) + (-1.0 * reaction_vpfk));
	
% Species:   id = F6P, name = F6P, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(3) = (1/(compartment_comp))*(( 1.0 * reaction_vpfk) + (-1.0 * reaction_vfba));
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


