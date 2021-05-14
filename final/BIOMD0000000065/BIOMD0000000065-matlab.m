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
% Model name = Yildirim2003_Lac_Operon
%
% is http://identifiers.org/biomodels.db/MODEL6624248569
% is http://identifiers.org/biomodels.db/BIOMD0000000065
% isDescribedBy http://identifiers.org/pubmed/12719218
% isDerivedFrom http://identifiers.org/pubmed/9104037
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 6.26E-4;
	x0(2) = 0.0;
	x0(3) = 0.038;
	x0(4) = 0.372;
	x0(5) = 0.0149;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.0226;
% Parameter:   id =  gamma_M, name = gamma_M
	global_par_gamma_M=0.411;
% Parameter:   id =  gamma_B, name = gamma_B
	global_par_gamma_B=8.33E-4;
% Parameter:   id =  gamma_A, name = gamma_A
	global_par_gamma_A=0.52;
% Parameter:   id =  gamma_0, name = gamma_0
	global_par_gamma_0=7.25E-7;
% Parameter:   id =  K, name = K
	global_par_K=7200.0;
% Parameter:   id =  alpha_M, name = alpha_M
	global_par_alpha_M=9.97E-4;
% Parameter:   id =  tau_B, name = tau_B
	global_par_tau_B=2.0;
% Parameter:   id =  alpha_A, name = alpha_A
	global_par_alpha_A=17600.0;
% Parameter:   id =  K_L1, name = K_L1
	global_par_K_L1=1.81;
% Parameter:   id =  alpha_B, name = alpha_B
	global_par_alpha_B=0.0166;
% Parameter:   id =  K_A, name = K_A
	global_par_K_A=1.95;
% Parameter:   id =  beta_A, name = beta_A
	global_par_beta_A=21500.0;
% Parameter:   id =  tau_M, name = tau_M
	global_par_tau_M=0.1;
% Parameter:   id =  K_L, name = K_L
	global_par_K_L=0.97;
% Parameter:   id =  gamma_L, name = gamma_L
	global_par_gamma_L=0.0;
% Parameter:   id =  gamma_P, name = gamma_P
	global_par_gamma_P=0.65;
% Parameter:   id =  alpha_L, name = alpha_L
	global_par_alpha_L=2880.0;
% Parameter:   id =  alpha_P, name = alpha_P
	global_par_alpha_P=10.0;
% Parameter:   id =  tau_P, name = tau_P
	global_par_tau_P=0.83;
% Parameter:   id =  beta_L1, name = beta_L1
	global_par_beta_L1=2650.0;
% Parameter:   id =  K_Le, name = K_Le
	global_par_K_Le=0.26;
% Parameter:   id =  K_1, name = K_1
	global_par_K_1=25200.0;

% Reaction: id = r_m1, name = Basal_mRNA_Synthesis
	reaction_r_m1=compartment_cell*global_par_gamma_0;

% Reaction: id = r_m2, name = mRNA_Degradation
	reaction_r_m2=compartment_cell*x(1)*(global_par_gamma_M+global_par_mu);

% Reaction: id = r_m3_i1, name = allolactose_controlled_mRNA_synthesis
	reaction_r_m3_i1=compartment_cell*x(6)/global_par_tau_M;

% Reaction: id = r_i1, name = allolactose_controlled_partial_mRNA_synthesis
	reaction_r_i1=compartment_cell*global_par_alpha_M*(global_par_K_1*exp(global_par_mu*global_par_tau_M*-2)*x(3)^2+1)/(global_par_K+global_par_K_1*exp(-2*global_par_mu*global_par_tau_M)*x(3)^2);

% Reaction: id = r_b1, name = Beta_galactosidase_Degradation
	reaction_r_b1=compartment_cell*x(2)*(global_par_gamma_B+global_par_mu);

% Reaction: id = r_b2_i2, name = Beta_galactosidase_synthesis
	reaction_r_b2_i2=compartment_cell*x(7)/global_par_tau_B;

% Reaction: id = r_i2, name = Partial_Beta_galactosidase_synthesis
	reaction_r_i2=compartment_cell*global_par_alpha_B*x(1)*exp(-global_par_mu*global_par_tau_B);

% Reaction: id = r_a1, name = Basal_Allolactose_Degradation
	reaction_r_a1=compartment_cell*x(3)*(global_par_gamma_A+global_par_mu);

% Reaction: id = r_a2, name = Betagalactosidase_mediated_Allolactose_Degradation
	reaction_r_a2=compartment_cell*global_par_beta_A*x(2)*x(3)/(global_par_K_A+x(3));

% Reaction: id = r_a3_l1, name = Beta_galactosidase_reaction
	reaction_r_a3_l1=compartment_cell*global_par_alpha_A*x(2)*x(4)/(global_par_K_L+x(4));

% Reaction: id = r_l2, name = lactose_degradation
	reaction_r_l2=compartment_cell*x(4)*(global_par_gamma_L+global_par_mu);

% Reaction: id = r_l3, name = Lactose_transport_out
	reaction_r_l3=compartment_cell*global_par_beta_L1*x(5)*x(4)/(global_par_K_L1+x(4));

% Reaction: id = r_l4, name = Lactose_transport_in
	reaction_r_l4=compartment_cell*global_par_alpha_L*x(5)*const_species_L_e/(global_par_K_Le+const_species_L_e);

% Reaction: id = r_p1, name = permease_degradation
	reaction_r_p1=compartment_cell*x(5)*(global_par_gamma_P+global_par_mu);

% Reaction: id = r_p2_i3, name = permease_synthesis
	reaction_r_p2_i3=compartment_cell*x(8)/(global_par_tau_B+global_par_tau_P);

% Reaction: id = r_i3, name = partial_permease_synthesis
	reaction_r_i3=compartment_cell*global_par_alpha_P*x(1)*exp(-1*global_par_mu*(global_par_tau_B+global_par_tau_P));

% Species:   id = L_e, name = External_Lactose, constant	const_species_L_e=0.08;

	xdot=zeros(8,1);
	
% Species:   id = M, name = mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r_m1) + (-1.0 * reaction_r_m2) + ( 1.0 * reaction_r_m3_i1));
	
% Species:   id = B, name = Betagalactosidase, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r_b1) + ( 1.0 * reaction_r_b2_i2));
	
% Species:   id = A, name = allolactose, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_r_a1) + (-1.0 * reaction_r_a2) + ( 1.0 * reaction_r_a3_l1));
	
% Species:   id = L, name = lactose_internal, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_r_a3_l1) + (-1.0 * reaction_r_l2) + (-1.0 * reaction_r_l3) + ( 1.0 * reaction_r_l4));
	
% Species:   id = P, name = permease, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_r_p1) + ( 1.0 * reaction_r_p2_i3));
	
% Species:   id = I1, name = PartialmRNA, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_r_m3_i1) + ( 1.0 * reaction_r_i1));
	
% Species:   id = I2, name = PartialBetagalactosidase, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_r_b2_i2) + ( 1.0 * reaction_r_i2));
	
% Species:   id = I3, name = PartialPermease, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_r_p2_i3) + ( 1.0 * reaction_r_i3));
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


