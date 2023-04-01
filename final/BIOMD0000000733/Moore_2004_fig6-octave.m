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
% Model name = Moore_2004_Mathematical model for CML and T cell interaction
%
% isDescribedBy http://identifiers.org/pubmed/15038986
% is http://identifiers.org/biomodels.db/MODEL1902200001
% is http://identifiers.org/biomodels.db/BIOMD0000000733
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1510.0;
	x0(2) = 20.0;
	x0(3) = 10000.0;


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

% Compartment: id = TumorMicroenvr, name = TumorMicroenvr, constant
	compartment_TumorMicroenvr=1.0;
% Parameter:   id =  Sn, name = Sn
	global_par_Sn=0.37;
% Parameter:   id =  n, name = n
	global_par_n=720.0;
% Parameter:   id =  Kn, name = Kn
	global_par_Kn=0.062;
% Parameter:   id =  De, name = De
	global_par_De=0.3;
% Parameter:   id =  gamma_E, name = gamma_E
	global_par_gamma_E=0.057;
% Parameter:   id =  An, name = An
	global_par_An=0.14;
% Parameter:   id =  Ae, name = Ae
	global_par_Ae=0.98;
% Parameter:   id =  Dn, name = Dn
	global_par_Dn=0.23;
% Parameter:   id =  Rc, name = Rc
	global_par_Rc=0.0057;
% Parameter:   id =  Cmax, name = Cmax
	global_par_Cmax=230000.0;
% Parameter:   id =  Dc, name = Dc
	global_par_Dc=0.024;
% Parameter:   id =  gamma_C, name = gamma_C
	global_par_gamma_C=0.0034;

% Reaction: id = Naive_Tcells_degradation, name = Naive_Tcells_degradation
	reaction_Naive_Tcells_degradation=compartment_TumorMicroenvr*naive_tcells_degradation(global_par_Dn, x(1), global_par_Kn, x(3), global_par_n);

% Reaction: id = eff_Tcells_production, name = eff_Tcells_production
	reaction_eff_Tcells_production=compartment_TumorMicroenvr*eff_tcells_production(global_par_An, global_par_Kn, x(1), x(3), global_par_n, global_par_Ae, x(2));

% Reaction: id = eff_Tcells_degradation, name = eff_Tcells_degradation
	reaction_eff_Tcells_degradation=compartment_TumorMicroenvr*eff_tcells_degradation(global_par_De, x(2), global_par_gamma_E, x(3));

% Reaction: id = Tumor_growth, name = Tumor_growth
	reaction_Tumor_growth=compartment_TumorMicroenvr*Tumor_growth_equation(global_par_Rc, x(3), global_par_Cmax);

% Reaction: id = Tumor_killing, name = Tumor_killing
	reaction_Tumor_killing=compartment_TumorMicroenvr*Tumor_killing_equation(global_par_Dc, x(3), global_par_gamma_C, x(2));

	xdot=zeros(3,1);
	
% Species:   id = naive_Tcells, name = naive_Tcells, affected by kineticLaw
	xdot(1) = (1/(compartment_TumorMicroenvr))*(( 1.0 * reaction_Naive_Tcells_production) + (-1.0 * reaction_Naive_Tcells_degradation));
	
% Species:   id = eff_Tcells, name = eff_Tcells, affected by kineticLaw
	xdot(2) = (1/(compartment_TumorMicroenvr))*(( 1.0 * reaction_eff_Tcells_production) + (-1.0 * reaction_eff_Tcells_degradation));
	
% Species:   id = tumor_cells, name = tumor_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_TumorMicroenvr))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_Tumor_killing));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=naive_tcells_degradation(Dn,Tn,Kn,C,n), z=(Dn*Tn+Kn*Tn*C/(C+n));end

function z=eff_tcells_production(An,Kn,Tn,C,n,Ae,Te), z=(An*Kn*Tn*C/(C+n)+Ae*Te*C/(C+n));end

function z=eff_tcells_degradation(De,Te,gammaE,C), z=(De*Te+gammaE*C*Te);end

function z=Tumor_growth_equation(Rc,C,Cmax), z=(Rc*C*log(Cmax/C));end

function z=Tumor_killing_equation(Dc,C,gammaC,Te), z=(Dc*C-gammaC*C*Te);end

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


