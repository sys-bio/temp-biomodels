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
% Model name = Messiha2013 - Pentose phosphate pathway model
%
% is http://identifiers.org/biomodels.db/MODEL1311290000
% is http://identifiers.org/biomodels.db/BIOMD0000000502
% isDescribedBy http://identifiers.org/doi/10.7287/peerj.preprints.146v2
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.029;
	x0(2) = 0.1;
	x0(3) = 0.16;
	x0(4) = 0.25;
	x0(5) = 0.118;
	x0(6) = 0.033;
	x0(7) = 0.082;
	x0(8) = 0.041;
	x0(9) = 0.17;
	x0(10) = 0.9;


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
% Parameter:   id =  sum_NADP, name = sum_NADP
	global_par_sum_NADP=0.33;
% Parameter:   id =  Kx5p_TAL, name = Kx5p_TAL
	global_par_Kx5p_TAL=0.67;
% Parameter:   id =  Ke4p_TAL, name = Ke4p_TAL
	global_par_Ke4p_TAL=0.946;
% Parameter:   id =  Kr5p_TAL, name = Kr5p_TAL
	global_par_Kr5p_TAL=0.235;
% Parameter:   id =  Kgap_TAL, name = Kgap_TAL
	global_par_Kgap_TAL=0.1;
% Parameter:   id =  Kf6p_TAL, name = Kf6p_TAL
	global_par_Kf6p_TAL=1.1;
% Parameter:   id =  Ks7p_TAL, name = Ks7p_TAL
	global_par_Ks7p_TAL=0.15;
% assignmentRule: variable = G6P
	x(10)=0.9+piecewise(44.1*t/(48+t+0.45*t^2), t >= 0, 0);
% assignmentRule: variable = NADP
	x(9)=global_par_sum_NADP-x(3);

% Reaction: id = GND, name = GND	% Local Parameter:   id =  kcat_GND1, name = kcat_GND1
	reaction_GND_kcat_GND1=28.0;
	% Local Parameter:   id =  Kp6g_GND1, name = Kp6g_GND1
	reaction_GND_Kp6g_GND1=0.062;
	% Local Parameter:   id =  Knadp_GND1, name = Knadp_GND1
	reaction_GND_Knadp_GND1=0.094;
	% Local Parameter:   id =  Kru5p_GND1, name = Kru5p_GND1
	reaction_GND_Kru5p_GND1=0.1;
	% Local Parameter:   id =  Knadph_GND1, name = Knadph_GND1
	reaction_GND_Knadph_GND1=0.055;
	% Local Parameter:   id =  kcat_GND2, name = kcat_GND2
	reaction_GND_kcat_GND2=27.3;
	% Local Parameter:   id =  Kp6g_GND2, name = Kp6g_GND2
	reaction_GND_Kp6g_GND2=0.115;
	% Local Parameter:   id =  Knadp_GND2, name = Knadp_GND2
	reaction_GND_Knadp_GND2=0.094;
	% Local Parameter:   id =  Kru5p_GND2, name = Kru5p_GND2
	reaction_GND_Kru5p_GND2=0.1;
	% Local Parameter:   id =  Knadph_GND2, name = Knadph_GND2
	reaction_GND_Knadph_GND2=0.055;

	reaction_GND=compartment_cell*(const_species_GND1*reaction_GND_kcat_GND1*x(4)*x(9)/(reaction_GND_Kp6g_GND1*reaction_GND_Knadp_GND1)/((1+x(4)/reaction_GND_Kp6g_GND1+x(6)/reaction_GND_Kru5p_GND1)*(1+x(9)/reaction_GND_Knadp_GND1+x(3)/reaction_GND_Knadph_GND1))+const_species_GND2*reaction_GND_kcat_GND2*x(4)*x(9)/((1+x(4)/reaction_GND_Kp6g_GND2+x(6)/reaction_GND_Kru5p_GND2)*(1+x(9)/reaction_GND_Knadp_GND2+x(3)/reaction_GND_Knadph_GND2)));

% Reaction: id = RKI, name = RKI	% Local Parameter:   id =  kcat, name = kcat
	reaction_RKI_kcat=335.0;
	% Local Parameter:   id =  Kru5p, name = Kru5p
	reaction_RKI_Kru5p=2.47;
	% Local Parameter:   id =  Kr5p, name = Kr5p
	reaction_RKI_Kr5p=5.7;
	% Local Parameter:   id =  Kiru5p, name = Kiru5p
	reaction_RKI_Kiru5p=9.88;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_RKI_Keq=4.0;

	reaction_RKI=compartment_cell*const_species_RKI1*reaction_RKI_kcat*(x(6)-x(5)/reaction_RKI_Keq)/reaction_RKI_Kru5p/(1+x(6)/reaction_RKI_Kru5p+x(5)/reaction_RKI_Kr5p);

% Reaction: id = RPE, name = RPE	% Local Parameter:   id =  kcat, name = kcat
	reaction_RPE_kcat=4020.0;
	% Local Parameter:   id =  Kru5p, name = Kru5p
	reaction_RPE_Kru5p=5.97;
	% Local Parameter:   id =  Kx5p, name = Kx5p
	reaction_RPE_Kx5p=7.7;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_RPE_Keq=1.4;

	reaction_RPE=compartment_cell*const_species_RPE1*reaction_RPE_kcat*(x(6)-x(8)/reaction_RPE_Keq)/reaction_RPE_Kru5p/(1+x(6)/reaction_RPE_Kru5p+x(8)/reaction_RPE_Kx5p);

% Reaction: id = SOL, name = SOL	% Local Parameter:   id =  kcat, name = kcat
	reaction_SOL_kcat=4.3;
	% Local Parameter:   id =  Kg6l, name = Kg6l
	reaction_SOL_Kg6l=0.8;
	% Local Parameter:   id =  Kp6g, name = Kp6g
	reaction_SOL_Kp6g=0.5;

	reaction_SOL=compartment_cell*const_species_SOL3*reaction_SOL_kcat*x(2)/reaction_SOL_Kg6l/(1+x(2)/reaction_SOL_Kg6l+x(4)/reaction_SOL_Kp6g);

% Reaction: id = TAL, name = TAL	% Local Parameter:   id =  kcat_TAL1, name = kcat_TAL1
	reaction_TAL_kcat_TAL1=0.694;
	% Local Parameter:   id =  Kgap_TAL1, name = Kgap_TAL1
	reaction_TAL_Kgap_TAL1=0.272;
	% Local Parameter:   id =  Ks7p_TAL1, name = Ks7p_TAL1
	reaction_TAL_Ks7p_TAL1=0.786;
	% Local Parameter:   id =  Kf6p_TAL1, name = Kf6p_TAL1
	reaction_TAL_Kf6p_TAL1=1.44;
	% Local Parameter:   id =  Ke4p_TAL1, name = Ke4p_TAL1
	reaction_TAL_Ke4p_TAL1=0.362;
	% Local Parameter:   id =  kcat_NQM1, name = kcat_NQM1
	reaction_TAL_kcat_NQM1=0.694;
	% Local Parameter:   id =  Kgap_NQM1, name = Kgap_NQM1
	reaction_TAL_Kgap_NQM1=0.272;
	% Local Parameter:   id =  Ks7p_NQM1, name = Ks7p_NQM1
	reaction_TAL_Ks7p_NQM1=0.786;
	% Local Parameter:   id =  Kf6p_NQM1, name = Kf6p_NQM1
	reaction_TAL_Kf6p_NQM1=1.04;
	% Local Parameter:   id =  Ke4p_NQM1, name = Ke4p_NQM1
	reaction_TAL_Ke4p_NQM1=0.305;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TAL_Keq=1.05;

	reaction_TAL=compartment_cell*(const_species_TAL1*reaction_TAL_kcat_TAL1*(const_species_GAP*x(7)-const_species_F6P*x(1)/reaction_TAL_Keq)/(reaction_TAL_Kgap_TAL1*reaction_TAL_Ks7p_TAL1)/((1+const_species_GAP/reaction_TAL_Kgap_TAL1+const_species_F6P/reaction_TAL_Kf6p_TAL1)*(1+x(7)/reaction_TAL_Ks7p_TAL1+x(1)/reaction_TAL_Ke4p_TAL1))+const_species_NQM1*reaction_TAL_kcat_NQM1*(const_species_GAP*x(7)-const_species_F6P*x(1)/reaction_TAL_Keq)/(reaction_TAL_Kgap_NQM1*reaction_TAL_Ks7p_NQM1)/((1+const_species_GAP/reaction_TAL_Kgap_NQM1+const_species_F6P/reaction_TAL_Kf6p_NQM1)*(1+x(7)/reaction_TAL_Ks7p_NQM1+x(1)/reaction_TAL_Ke4p_NQM1)));

% Reaction: id = TKL_E4P, name = TKL (E4P:F6P)	% Local Parameter:   id =  kcat, name = kcat
	reaction_TKL_E4P_kcat=47.1;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TKL_E4P_Keq=10.0;

	reaction_TKL_E4P=compartment_cell*const_species_TKL1*reaction_TKL_E4P_kcat*(x(8)*x(1)-const_species_GAP*const_species_F6P/reaction_TKL_E4P_Keq)/(global_par_Kx5p_TAL*global_par_Ke4p_TAL)/((1+x(8)/global_par_Kx5p_TAL+const_species_GAP/global_par_Kgap_TAL)*(1+x(1)/global_par_Ke4p_TAL+const_species_F6P/global_par_Kf6p_TAL+x(5)/global_par_Kr5p_TAL+x(7)/global_par_Ks7p_TAL));

% Reaction: id = TKL_R5P, name = TKL (R5P:S7P)	% Local Parameter:   id =  kcat, name = kcat
	reaction_TKL_R5P_kcat=40.5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TKL_R5P_Keq=1.2;

	reaction_TKL_R5P=compartment_cell*const_species_TKL1*reaction_TKL_R5P_kcat*(x(8)*x(5)-const_species_GAP*x(7)/reaction_TKL_R5P_Keq)/(global_par_Kx5p_TAL*global_par_Kr5p_TAL)/((1+x(8)/global_par_Kx5p_TAL+const_species_GAP/global_par_Kgap_TAL)*(1+x(1)/global_par_Ke4p_TAL+const_species_F6P/global_par_Kf6p_TAL+x(5)/global_par_Kr5p_TAL+x(7)/global_par_Ks7p_TAL));

% Reaction: id = ZWF, name = ZWF	% Local Parameter:   id =  kcat, name = kcat
	reaction_ZWF_kcat=189.0;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_ZWF_Kg6p=0.042;
	% Local Parameter:   id =  Knadp, name = Knadp
	reaction_ZWF_Knadp=0.045;
	% Local Parameter:   id =  Kg6l, name = Kg6l
	reaction_ZWF_Kg6l=0.01;
	% Local Parameter:   id =  Knadph, name = Knadph
	reaction_ZWF_Knadph=0.017;

	reaction_ZWF=compartment_cell*const_species_ZWF1*reaction_ZWF_kcat*x(10)*x(9)/(reaction_ZWF_Kg6p*reaction_ZWF_Knadp)/((1+x(10)/reaction_ZWF_Kg6p+x(2)/reaction_ZWF_Kg6l)*(1+x(9)/reaction_ZWF_Knadp+x(3)/reaction_ZWF_Knadph));

% Reaction: id = NADPH_oxidase, name = NADPH oxidase	% Local Parameter:   id =  k, name = k
	reaction_NADPH_oxidase_k=1.0;

	reaction_NADPH_oxidase=compartment_cell*reaction_NADPH_oxidase_k*x(3);

% Reaction: id = E4P_sink, name = E4P sink	% Local Parameter:   id =  k, name = k
	reaction_E4P_sink_k=1.0;

	reaction_E4P_sink=compartment_cell*reaction_E4P_sink_k*x(1);

% Reaction: id = R5P_sink, name = R5P sink	% Local Parameter:   id =  k, name = k
	reaction_R5P_sink_k=1.0;

	reaction_R5P_sink=compartment_cell*reaction_R5P_sink_k*x(5);

% Species:   id = F6P, name = F6P, constant	const_species_F6P=0.325;

% Species:   id = GAP, name = GAP, constant	const_species_GAP=0.067;

% Species:   id = GND1, name = GND1, constant	const_species_GND1=0.013;

% Species:   id = GND2, name = GND2, constant	const_species_GND2=0.003;

% Species:   id = NQM1, name = NQM1, constant	const_species_NQM1=0.02;

% Species:   id = RKI1, name = RKI1, constant	const_species_RKI1=0.05;

% Species:   id = RPE1, name = RPE1, constant	const_species_RPE1=0.03;

% Species:   id = SOL3, name = SOL3, constant	const_species_SOL3=0.0296;

% Species:   id = TAL1, name = TAL1, constant	const_species_TAL1=0.144;

% Species:   id = TKL1, name = TKL1, constant	const_species_TKL1=0.455;

% Species:   id = ZWF1, name = ZWF1, constant	const_species_ZWF1=0.02;

	xdot=zeros(10,1);
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_TAL) + (-1.0 * reaction_TKL_E4P) + (-1.0 * reaction_E4P_sink));
	
% Species:   id = G6L, name = G6L, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_SOL) + ( 1.0 * reaction_ZWF));
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_GND) + ( 1.0 * reaction_ZWF) + (-1.0 * reaction_NADPH_oxidase));
	
% Species:   id = P6G, name = P6G, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_GND) + ( 1.0 * reaction_SOL));
	
% Species:   id = R5P, name = R5P, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_RKI) + (-1.0 * reaction_TKL_R5P) + (-1.0 * reaction_R5P_sink));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_GND) + (-1.0 * reaction_RKI) + (-1.0 * reaction_RPE));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_TAL) + ( 1.0 * reaction_TKL_R5P));
	
% Species:   id = X5P, name = X5P, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_RPE) + (-1.0 * reaction_TKL_E4P) + (-1.0 * reaction_TKL_R5P));
	
% Species:   id = NADP, name = NADP, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = G6P, name = G6P, involved in a rule 	xdot(10) = x(10);
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


