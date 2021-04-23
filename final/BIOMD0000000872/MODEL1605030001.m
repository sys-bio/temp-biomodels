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
% Model name = Verma2016 - HIV and HPV co-infection, T-cell response
%
% is http://identifiers.org/biomodels.db/MODEL1605030001
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 48000.0;
	x0(2) = 2364.02569593148;
	x0(3) = 320000.0;
	x0(4) = 0.0;
	x0(5) = 0.01;
	x0(6) = 0.0;
	x0(7) = 1.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  e_rt, name = e_rt
	global_par_e_rt=0.0;
% Parameter:   id =  e_pi, name = e_pi
	global_par_e_pi=0.0;
% Parameter:   id =  epi, name = epi
	global_par_epi=0.5;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.001;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.048;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.53907922912206E-7;
% Parameter:   id =  c1, name = c1
	global_par_c1=23.0;
% Parameter:   id =  N1, name = N1
	global_par_N1=467.0;
% Parameter:   id =  s, name = s
	global_par_s=5564.02569593148;
% Parameter:   id =  d, name = d
	global_par_d=0.01;

% Reaction: id = re1, name = Production of HIV virion	% Local Parameter:   id =  delta, name = delta
	reaction_re1_delta=1.0;

	reaction_re1=compartment_default*Rate_Law_for_Production_of_HIV_virion_1(global_par_N1, reaction_re1_delta, global_par_e_pi, x(2));

% Reaction: id = re3, name = Death of HIV
	reaction_re3=compartment_default*global_par_c1*x(1);

% Reaction: id = re4, name = Production of HIV infected cells
	reaction_re4=compartment_default*Rate_Law_for_production_of_HIV_infected_cells_1(global_par_beta, global_par_e_rt, x(1), x(3));

% Reaction: id = re7, name = Decay of T cells
	reaction_re7=compartment_default*global_par_d*x(3);

% Reaction: id = re8, name = Decay of HIV-infected	% Local Parameter:   id =  k1, name = k1
	reaction_re8_k1=1.0;

	reaction_re8=compartment_default*reaction_re8_k1*x(2);

% Reaction: id = re9, name = Production of HPV-self-proliferating cells by HPV infected
	reaction_re9=compartment_default*global_par_epi*x(7);

% Reaction: id = re11, name = Production of HPV due to HPVinfected	% Local Parameter:   id =  k1, name = k1
	reaction_re11_k1=1000.0;

	reaction_re11=compartment_default*Rate_Law_for_Production_of_HPV_due_to_HPVinfected_1(reaction_re11_k1, global_par_mu, x(7));

% Reaction: id = re12, name = Death of HPV infected due to Effector cells	% Local Parameter:   id =  a, name = a
	reaction_re12_a=0.01;

	reaction_re12=compartment_default*Death_of_HPV_self_proliferating_due_to_Effector_cells(reaction_re12_a, x(7), x(5));

% Reaction: id = re14, name = Decay of HPV self-proliferating	% Local Parameter:   id =  k1, name = k1
	reaction_re14_k1=0.048;

	reaction_re14=compartment_default*reaction_re14_k1*x(6);

% Reaction: id = re15, name = Logistic term for Effector cells	% Local Parameter:   id =  b, name = b
	reaction_re15_b=3.5E-5;

	reaction_re15=compartment_default*Logistic_term_for_Effector_cells_1(reaction_re15_b, global_par_omega, x(6), x(5), x(3));

% Reaction: id = re17, name = Death of HPV self-proliferating cells due to effector cells	% Local Parameter:   id =  a, name = a
	reaction_re17_a=0.01;

	reaction_re17=compartment_default*Death_of_HPV_self_proliferating_cells_due_to_effector_cells(reaction_re17_a, x(6), x(5));

% Reaction: id = re18, name = Decay of HPV-infected cells
	reaction_re18=compartment_default*global_par_mu*x(7);

% Reaction: id = re20, name = Decay of HPV	% Local Parameter:   id =  k1, name = k1
	reaction_re20_k1=0.05;

	reaction_re20=compartment_default*reaction_re20_k1*x(4);

% Reaction: id = re24, name = Proliferation of HPV self-proliferating cells	% Local Parameter:   id =  r, name = r
	reaction_re24_r=0.1;

	reaction_re24=compartment_default*Proliferation_of_HPV_self_proliferating(global_par_epi, reaction_re24_r, x(6));

% Reaction: id = re25, name = Productionof HPV infected cells	% Local Parameter:   id =  N2, name = N2
	reaction_re25_N2=10000.0;
	% Local Parameter:   id =  p, name = p
	reaction_re25_p=2.0833E-5;
	% Local Parameter:   id =  phi, name = phi
	reaction_re25_phi=1000000.0;
	% Local Parameter:   id =  psi, name = psi
	reaction_re25_psi=0.0067;

	reaction_re25=compartment_default*Productionof_HPV_infected_cells(reaction_re25_N2, reaction_re25_p, reaction_re25_phi, reaction_re25_psi, x(7), x(4), x(1));

% Reaction: id = re26, name = Production of Effector cell
	reaction_re26=compartment_default*Rate_Law_for_Production_of_Effector_cell_1_1(global_par_omega, x(6), x(5));

% Reaction: id = Production_of_HPV_due_to_HPV_self_proliferating, name = Production of HPV due to HPV self proliferating	% Local Parameter:   id =  k2, name = k2
	reaction_Production_of_HPV_due_to_HPV_self_proliferating_k2=1000.0;

	reaction_Production_of_HPV_due_to_HPV_self_proliferating=compartment_default*Production_of_HPV_due_to_HPV_self_proliferating_1(reaction_Production_of_HPV_due_to_HPV_self_proliferating_k2, global_par_mu, x(6));

	xdot=zeros(7,1);
	
% Species:   id = s2, name = V, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re3));
	
% Species:   id = s3, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re8));
	
% Species:   id = s4, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_re4) + ( 1.0 * reaction_re5) + (-1.0 * reaction_re7));
	
% Species:   id = s14, name = W, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re20) + ( 1.0 * reaction_Production_of_HPV_due_to_HPV_self_proliferating));
	
% Species:   id = s16, name = E, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_re15) + (-1.0 * reaction_re26) + ( 2.0 * reaction_re26));
	
% Species:   id = s13, name = Y2, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re14) + (-1.0 * reaction_re17) + (-1.0 * reaction_re24) + ( 2.0 * reaction_re24));
	
% Species:   id = s12, name = Y1, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re9) + (-1.0 * reaction_re12) + (-1.0 * reaction_re18) + (-1.0 * reaction_re25) + ( 2.0 * reaction_re25));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Death_of_HPV_self_proliferating_cells_due_to_effector_cells(a,s13,s16), z=(a*s16*s13);end

function z=Rate_Law_for_Production_of_HPV_due_to_HPVinfected_1(k1,mu,s12), z=(mu*k1*s12);end

function z=Logistic_term_for_Effector_cells_1(b,omega,s13,s16,s4), z=(omega*s13*s16*s16/(b*s4));end

function z=Productionof_HPV_infected_cells(N2,p,phi,psi,s12,s14,s2), z=(psi*s14*((1+p*s2)*N2-s12)/(phi+(1+p*s2)*N2-s12));end

function z=Rate_Law_for_production_of_HIV_infected_cells_1(beta,e_rt,s2,s4), z=((1-e_rt)*beta*s4*s2);end

function z=Production_of_HPV_due_to_HPV_self_proliferating_1(k2,mu,s13), z=(mu*k2*s13);end

function z=Rate_Law_for_Production_of_HIV_virion_1(N1,delta,e_pi,s3), z=((1-e_pi)*N1*delta*s3);end

function z=Rate_Law_for_Production_of_Effector_cell_1_1(omega,s13,s16), z=(omega*s13*s16);end

function z=Proliferation_of_HPV_self_proliferating(epi,r,s13), z=(r*epi*s13);end

function z=Death_of_HPV_self_proliferating_due_to_Effector_cells(a,s12,s16), z=(a*s12*s16);end

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


