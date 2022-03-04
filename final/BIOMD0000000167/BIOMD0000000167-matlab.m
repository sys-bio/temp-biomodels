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
% Model name = Mayya2005_STATmodule
%
% is http://identifiers.org/biomodels.db/MODEL6095659304
% is http://identifiers.org/biomodels.db/BIOMD0000000167
% isDescribedBy http://identifiers.org/pubmed/17091582
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000093
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000094
% isDerivedFrom http://identifiers.org/pubmed/12552139
% isDerivedFrom http://identifiers.org/pubmed/15240442
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.05;
	x0(9) = 0.0;


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

% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=1.0;
% Compartment: id = sol, name = sol, constant
	compartment_sol=14.625;
% Compartment: id = nm, name = nm, constant
	compartment_nm=1.0;
% assignmentRule: variable = statKinase_sol
	x(3)=piecewise(0.01*sin(0.001571*(-500+t)), (t > 500) && (t < 2502.54614894971), 0);

% Reaction: id = PstatDimerisation, name = PstatDimerisation	% Local Parameter:   id =  Kf_PstatDimerisation, name = Kf_PstatDimerisation
	reaction_PstatDimerisation_Kf_PstatDimerisation=0.6;
	% Local Parameter:   id =  Kr_PstatDimerisation, name = Kr_PstatDimerisation
	reaction_PstatDimerisation_Kr_PstatDimerisation=0.03;

	reaction_PstatDimerisation=(reaction_PstatDimerisation_Kf_PstatDimerisation*x(2)^2+(-reaction_PstatDimerisation_Kr_PstatDimerisation*x(4)))*compartment_sol;

% Reaction: id = statDephosphorylation, name = statDephosphorylation	% Local Parameter:   id =  Kcat_dephos, name = Kcat_dephos
	reaction_statDephosphorylation_Kcat_dephos=1.0;
	% Local Parameter:   id =  Km_dephos, name = Km_dephos
	reaction_statDephosphorylation_Km_dephos=2.0;

	reaction_statDephosphorylation=reaction_statDephosphorylation_Kcat_dephos*x(8)*x(7)*1/(reaction_statDephosphorylation_Km_dephos+x(7))*compartment_nuc;

% Reaction: id = statPhosphorylation, name = statPhosphorylation	% Local Parameter:   id =  Kcat_phos, name = Kcat_phos
	reaction_statPhosphorylation_Kcat_phos=1.0;
	% Local Parameter:   id =  Km_phos, name = Km_phos
	reaction_statPhosphorylation_Km_phos=4.0;

	reaction_statPhosphorylation=reaction_statPhosphorylation_Kcat_phos*x(3)*x(1)*1/(reaction_statPhosphorylation_Km_phos+x(1))*compartment_sol;

% Reaction: id = PstatDimerisationNuc, name = PstatDimerisationNuc	% Local Parameter:   id =  Kf_PstatDimerisation, name = Kf_PstatDimerisation
	reaction_PstatDimerisationNuc_Kf_PstatDimerisation=0.6;
	% Local Parameter:   id =  Kr_PstatDimerisation, name = Kr_PstatDimerisation
	reaction_PstatDimerisationNuc_Kr_PstatDimerisation=0.03;

	reaction_PstatDimerisationNuc=(reaction_PstatDimerisationNuc_Kf_PstatDimerisation*x(7)^2+(-reaction_PstatDimerisationNuc_Kr_PstatDimerisation*x(5)))*compartment_nuc;

% Reaction: id = PstatDimer__import, name = PstatDimer_ import	% Local Parameter:   id =  PstatDimer_impMax, name = PstatDimer_impMax
	reaction_PstatDimer__import_PstatDimer_impMax=0.045;
	% Local Parameter:   id =  Kpsd_imp, name = Kpsd_imp
	reaction_PstatDimer__import_Kpsd_imp=0.3;

	reaction_PstatDimer__import=reaction_PstatDimer__import_PstatDimer_impMax*x(4)*1/(reaction_PstatDimer__import_Kpsd_imp+x(4))*compartment_nm;

% Reaction: id = stat_export, name = stat_export	% Local Parameter:   id =  stat_expMax, name = stat_expMax
	reaction_stat_export_stat_expMax=-0.06;
	% Local Parameter:   id =  Ks_exp, name = Ks_exp
	reaction_stat_export_Ks_exp=0.6;

	reaction_stat_export=compartment_nuc*reaction_stat_export_stat_expMax*x(6)*1/(reaction_stat_export_Ks_exp+x(6))*compartment_nm;

% Reaction: id = stat_import, name = stat_import	% Local Parameter:   id =  stat_impMax, name = stat_impMax
	reaction_stat_import_stat_impMax=0.003;
	% Local Parameter:   id =  Ks_imp, name = Ks_imp
	reaction_stat_import_Ks_imp=3.0;

	reaction_stat_import=compartment_nuc*reaction_stat_import_stat_impMax*x(1)*1/(reaction_stat_import_Ks_imp+x(1))*compartment_nm;

	xdot=zeros(9,1);
	
% Species:   id = stat_sol, name = stat_sol, affected by kineticLaw
	xdot(1) = (1/(compartment_sol))*((-1.0 * reaction_statPhosphorylation) + (-1.0 * reaction_stat_export) + (-1.0 * reaction_stat_import));
	
% Species:   id = Pstat_sol, name = Pstat_sol, affected by kineticLaw
	xdot(2) = (1/(compartment_sol))*((-2.0 * reaction_PstatDimerisation) + ( 1.0 * reaction_statPhosphorylation));
	
% Species:   id = statKinase_sol, name = statKinase_sol, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = PstatDimer_sol, name = PstatDimer_sol, affected by kineticLaw
	xdot(4) = (1/(compartment_sol))*(( 1.0 * reaction_PstatDimerisation) + (-1.0 * reaction_PstatDimer__import));
	
% Species:   id = PstatDimer_nuc, name = PstatDimer_nuc, affected by kineticLaw
	xdot(5) = (1/(compartment_nuc))*(( 1.0 * reaction_PstatDimerisationNuc) + ( 1.0 * reaction_PstatDimer__import));
	
% Species:   id = stat_nuc, name = stat_nuc, affected by kineticLaw
	xdot(6) = (1/(compartment_nuc))*(( 1.0 * reaction_statDephosphorylation) + ( 1.0 * reaction_stat_export) + ( 1.0 * reaction_stat_import));
	
% Species:   id = Pstat_nuc, name = Pstat_nuc, affected by kineticLaw
	xdot(7) = (1/(compartment_nuc))*((-1.0 * reaction_statDephosphorylation) + (-2.0 * reaction_PstatDimerisationNuc));
	
% Species:   id = statPhosphatase_nuc, name = statPhosphatase_nuc
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = species_test, name = species_test, affected by kineticLaw
	xdot(9) = (1/(compartment_sol))*(( 1.0 * reaction_statPhosphorylation));
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


