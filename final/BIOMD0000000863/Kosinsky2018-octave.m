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
% Model name = Kosinsky2018 - Radiation and PD-(L)1 treatment combinations
%
% isDescribedBy http://identifiers.org/pubmed/29486799
% is http://identifiers.org/biomodels.db/MODEL1911140003
% is http://identifiers.org/biomodels.db/BIOMD0000000863
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 15.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.4;
% Parameter:   id =  TVmax, name = TVmax
	global_par_TVmax=2500.0;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.01;
% Parameter:   id =  kLN, name = kLN
	global_par_kLN=279.0;
% Parameter:   id =  S_L, name = S_L
	global_par_S_L=8.89;
% Parameter:   id =  omegaSL, name = omegaSL
	global_par_omegaSL=0.696;
% Parameter:   id =  kpro, name = kpro
	global_par_kpro=3.0;
% Parameter:   id =  kdif, name = kdif
	global_par_kdif=3.2;
% Parameter:   id =  k_el, name = k_el
	global_par_k_el=0.2;
% Parameter:   id =  kapo, name = kapo
	global_par_kapo=2.0;
% Parameter:   id =  n_e, name = n_e
	global_par_n_e=0.001;
% Parameter:   id =  Kpdl, name = Kpdl
	global_par_Kpdl=478.0;
% Parameter:   id =  kpdl, name = kpdl
	global_par_kpdl=1.0;
% Parameter:   id =  Ktcd, name = Ktcd
	global_par_Ktcd=0.2;
% Parameter:   id =  S_R, name = S_R
	global_par_S_R=30.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.146;
% Parameter:   id =  delta, name = delta
	global_par_delta=19.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.02;
% Parameter:   id =  k_a, name = k_a
	global_par_k_a=0.0;
% Parameter:   id =  V_d, name = V_d
	global_par_V_d=0.003;
% Parameter:   id =  k_el_mAB, name = k_el_mAB
	global_par_k_el_mAB=0.15;
% Parameter:   id =  K_D, name = K_D
	global_par_K_D=30.0;
% Parameter:   id =  a, name = a
	global_par_a=21.2;
% Parameter:   id =  b, name = b
	global_par_b=0.176;
% Parameter:   id =  radiation_Dose, name = radiation_Dose
% Parameter:   id =  mu, name = mu
	global_par_mu=0.1725;
% Parameter:   id =  mAb, name = mAb
	global_par_mAb=0.0;
% assignmentRule: variable = radiation_Dose
	global_par_radiation_Dose=0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r, x(1), global_par_TVmax);

% Reaction: id = Tumor_DSB_Formation, name = Tumor_DSB_Formation
	reaction_Tumor_DSB_Formation=compartment_compartment*Function_for_Tumor_DSB_Formation(global_par_alpha, global_par_radiation_Dose, global_par_tau, global_par_delta, x(2), x(1));

% Reaction: id = Tumor_DSB_Repair, name = Tumor_DSB_Repair
	reaction_Tumor_DSB_Repair=compartment_compartment*global_par_mu*x(6);

% Reaction: id = Tumor_Elimination, name = Tumor_Elimination
	reaction_Tumor_Elimination=compartment_compartment*Function_for_Tumor_Elimination(global_par_n_e, x(4), global_par_d0, x(1));

% Reaction: id = DSB_Formation, name = DSB_Formation
	reaction_DSB_Formation=compartment_compartment*Function_for_DSB_Formation(global_par_radiation_Dose, global_par_delta);

% Reaction: id = DSB_Repair, name = DSB_Repair
	reaction_DSB_Repair=compartment_compartment*global_par_tau*x(2);

% Reaction: id = NonDiff_T_Cells_Influx, name = NonDiff_T_Cells_Influx
	reaction_NonDiff_T_Cells_Influx=compartment_compartment*Function_for_NonDiff_T_Cells_Influx(global_par_kLN, global_par_mu, x(6), x(1), global_par_n_e, x(4), global_par_d0, global_par_Ktcd, global_par_S_L);

% Reaction: id = NonDiff_T_Cells_Activation, name = NonDiff_T_Cells_Activation
	reaction_NonDiff_T_Cells_Activation=compartment_compartment*Function_for_NonDiff_T_Cells_Immune_Activation_Rate(x(5), global_par_mAb, global_par_K_D, global_par_mu, x(6), x(1), global_par_n_e, x(4), global_par_d0, global_par_Ktcd, global_par_S_R, x(3), global_par_kpro, global_par_kdif);

% Reaction: id = NonDiff_T_Cells_Elimination, name = NonDiff_T_Cells_Elimination
	reaction_NonDiff_T_Cells_Elimination=compartment_compartment*global_par_k_el*x(3);

% Reaction: id = Diff_T_Cells_Activation, name = Diff_T_Cells_Activation
	reaction_Diff_T_Cells_Activation=compartment_compartment*Function_for_Diff_T_Cells_Immune_Activation_Rate(x(5), global_par_mAb, global_par_K_D, global_par_mu, x(6), x(1), global_par_n_e, x(4), global_par_d0, global_par_Ktcd, global_par_S_R, global_par_kdif, x(3));

% Reaction: id = Diff_T_Cells_Apoptosis, name = Diff_T_Cells_Apoptosis
	reaction_Diff_T_Cells_Apoptosis=compartment_compartment*global_par_kapo*x(4);

% Reaction: id = PDL1_Production, name = PDL1_Production
	reaction_PDL1_Production=compartment_compartment*Function_for_PDL1_Production(global_par_kpdl, x(4), global_par_Kpdl);

% Reaction: id = PDL1_Breakdown, name = PDL1_Breakdown
	reaction_PDL1_Breakdown=compartment_compartment*global_par_kpdl*x(5);

	xdot=zeros(6,1);
	
% Species:   id = TV, name = TV, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_DSB_Formation) + (-1.0 * reaction_Tumor_Elimination));
	
% Species:   id = U, name = DSB, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_DSB_Formation) + (-1.0 * reaction_DSB_Repair));
	
% Species:   id = nTeff, name = TC_ND, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_NonDiff_T_Cells_Influx) + ( 1.0 * reaction_NonDiff_T_Cells_Activation) + (-1.0 * reaction_NonDiff_T_Cells_Elimination));
	
% Species:   id = dTeff, name = TC_D, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Diff_T_Cells_Activation) + (-1.0 * reaction_Diff_T_Cells_Apoptosis));
	
% Species:   id = PDL1, name = PDL1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_PDL1_Production) + (-1.0 * reaction_PDL1_Breakdown));
	
% Species:   id = TVd, name = TVD, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_DSB_Formation) + (-1.0 * reaction_Tumor_DSB_Repair));
end

function z=Function_for_Tumor_DSB_Formation(alpha,radiation_Dose,tau,delta,U,TV), z=(TV*(alpha*radiation_Dose+0.2*alpha/(tau*delta^2)*U^2));end

function z=Function_for_Tumor_Growth(r,TV,TVmax), z=(r*TV*(1-TV/TVmax));end

function z=Function_for_Tumor_Elimination(paramE,dTeff,d0,TV), z=((paramE*dTeff+d0)*TV);end

function z=Function_for_NonDiff_T_Cells_Influx(kLN,mu,TVd,TV,n_e,dTeff,d0,Ktcd,S_L), z=(kLN*(mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)+S_L));end

function z=Function_for_NonDiff_T_Cells_Immune_Activation_Rate(PDL1,mAb,K_D,mu,TVd,TV,n_e,dTeff,d0,Ktcd,S_R,nTeff,kpro,kdif), z=((1-PDL1/(1+mAb/K_D))*(1-(mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)+S_R))*nTeff*(kpro-kdif));end

function z=Function_for_DSB_Formation(rad,delta), z=(rad*delta);end

function z=Function_for_PDL1_Production(kpdl,dTeff,Kpdl), z=(kpdl*dTeff/(Kpdl+dTeff));end

function z=Function_for_Diff_T_Cells_Immune_Activation_Rate(PDL1,mAb,K_D,mu,TVd,TV,n_e,dTeff,d0,Ktcd,S_R,kdif,nTeff), z=((1-PDL1/(1+mAb/K_D))*(1-(mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2/((mu*TVd/(TV+TVd)+n_e*dTeff+d0)^2+Ktcd^2)*(TV+TVd)+S_R))*nTeff*kdif);end

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


