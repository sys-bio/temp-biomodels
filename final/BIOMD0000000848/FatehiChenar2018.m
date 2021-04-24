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
% Model name = FatehiChenar2018 - Mathematical model of immune response to hepatitis B
%
% isDescribedBy http://identifiers.org/pubmed/29574141
% is http://identifiers.org/biomodels.db/MODEL1911110001
% is http://identifiers.org/biomodels.db/BIOMD0000000848
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.9;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.1;
	x0(6) = 0.2;
	x0(7) = 0.0;
	x0(8) = 0.4;
	x0(9) = 0.1;


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
% Parameter:   id =  d, name = d
	global_par_d=0.003;
% Parameter:   id =  beta, name = beta
	global_par_beta=7.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=5.0;
% Parameter:   id =  psi_1, name = psi_1
	global_par_psi_1=14.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.56;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=5.0;
% Parameter:   id =  s_1, name = s_1
	global_par_s_1=1.5;
% Parameter:   id =  s_2, name = s_2
	global_par_s_2=0.6;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=0.14;
% Parameter:   id =  s_1_prime, name = s_1_prime
	global_par_s_1_prime=1.9;
% Parameter:   id =  s_2_prime, name = s_2_prime
	global_par_s_2_prime=2.0;
% Parameter:   id =  psi_2, name = psi_2
	global_par_psi_2=21.0;
% Parameter:   id =  p_1, name = p_1
	global_par_p_1=1.0;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=4.9;
% Parameter:   id =  p_2, name = p_2
	global_par_p_2=0.5;
% Parameter:   id =  p_3, name = p_3
	global_par_p_3=3.0;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=5.16;
% Parameter:   id =  q_1, name = q_1
	global_par_q_1=0.8;
% Parameter:   id =  q_2, name = q_2
	global_par_q_2=0.6;
% Parameter:   id =  r_e, name = r_e
	global_par_r_e=0.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0;
% Parameter:   id =  p, name = p
	global_par_p=20.0;
% Parameter:   id =  s_3, name = s_3
	global_par_s_3=1.7;
% Parameter:   id =  s_4, name = s_4
	global_par_s_4=1.0;
% Parameter:   id =  c, name = c
	global_par_c=0.67;
% Parameter:   id =  k, name = k
	global_par_k=8.0;
% Parameter:   id =  d_a, name = d_a
	global_par_d_a=0.332;
% Parameter:   id =  q, name = q
	global_par_q=5.0;

% Reaction: id = Uninfected_Death, name = Uninfected_Death
	reaction_Uninfected_Death=compartment_compartment*Function_for_Uninfected_Death(global_par_d, x(1));

% Reaction: id = Uninfected_Infection, name = Uninfected_Infection
	reaction_Uninfected_Infection=compartment_compartment*Function_for_Uninfected_Infection(global_par_beta, x(8), x(1));

% Reaction: id = Refractory_To_Uninfected, name = Refractory_To_Uninfected
	reaction_Refractory_To_Uninfected=compartment_compartment*global_par_rho*x(7);

% Reaction: id = Uninfected_To_Refractory_IFN, name = Uninfected_To_Refractory_IFN
	reaction_Uninfected_To_Refractory_IFN=compartment_compartment*Function_for_Uninfected_To_Refractory_IFN(global_par_psi_1, x(1), x(3), x(4));

% Reaction: id = Infected_Death, name = Infected_Death
	reaction_Infected_Death=compartment_compartment*global_par_delta*x(2);

% Reaction: id = Infected_Killing_Immune, name = Infected_Killing_Immune
	reaction_Infected_Killing_Immune=compartment_compartment*Function_for_Infected_Killing_Immune(global_par_mu_1, global_par_s_1, x(3), global_par_s_2, x(4), x(5), global_par_mu_2, global_par_s_1_prime, global_par_s_2_prime, x(6), x(2));

% Reaction: id = IFN_AB_Production_Infected, name = IFN_AB_Production_Infected
	reaction_IFN_AB_Production_Infected=compartment_compartment*Function_for_IFN_AB_Production_Infected(global_par_p_1, x(2));

% Reaction: id = IFN_AB_Degradation, name = IFN_AB_Degradation
	reaction_IFN_AB_Degradation=compartment_compartment*global_par_delta_1*x(3);

% Reaction: id = IFN_G_Production_CTLs, name = IFN_G_Production_CTLs
	reaction_IFN_G_Production_CTLs=compartment_compartment*Function_for_IFN_G_Production_CTLs(global_par_p_2, x(6));

% Reaction: id = IFN_G_Production_NK, name = IFN_G_Production_NK
	reaction_IFN_G_Production_NK=compartment_compartment*Function_for_IFN_G_Production_NK(global_par_p_3, x(5));

% Reaction: id = IFN_G_Degradation, name = IFN_G_Degradation
	reaction_IFN_G_Degradation=compartment_compartment*global_par_delta_2*x(4);

% Reaction: id = NK_Cells_Proliferaton, name = NK_Cells_Proliferaton
	reaction_NK_Cells_Proliferaton=compartment_compartment*Function_for_NK_Cells_Proliferaton(x(5));

% Reaction: id = NK_Cells_Production_IFN, name = NK_Cells_Production_IFN
	reaction_NK_Cells_Production_IFN=compartment_compartment*Function_for_NK_Cells_Production_IFN(global_par_q_1, x(3), global_par_q_2, x(4), x(5));

% Reaction: id = HBV_S_CTL_Proliferation, name = HBV_S_CTL_Proliferation
	reaction_HBV_S_CTL_Proliferation=compartment_compartment*Function_for_HBV_S_CTL_Proliferation(global_par_r_e, x(6));

% Reaction: id = HBV_S_CTL_Proliferation_Antigen, name = HBV_S_CTL_Proliferation_Antigen
	reaction_HBV_S_CTL_Proliferation_Antigen=compartment_compartment*Function_for_HBV_S_CTL_Proliferation_Antigen(global_par_alpha, x(2), x(6));

% Reaction: id = Infected_To_Refractory, name = Infected_To_Refractory
	reaction_Infected_To_Refractory=compartment_compartment*Function_for_Infected_To_Refractory(global_par_psi_2, x(2), x(4));

% Reaction: id = Virus_Production, name = Virus_Production
	reaction_Virus_Production=compartment_compartment*Function_for_Virus_Production(x(2), global_par_p, global_par_s_3, x(3), global_par_s_4, x(4));

% Reaction: id = Virus_Clearance_Natural, name = Virus_Clearance_Natural
	reaction_Virus_Clearance_Natural=compartment_compartment*global_par_c*x(8);

% Reaction: id = Virus_Clearance_Antibodies, name = Virus_Clearance_Antibodies
	reaction_Virus_Clearance_Antibodies=compartment_compartment*global_par_k*x(8)*x(9);

% Reaction: id = Antibody_Turnover, name = Antibody_Turnover
	reaction_Antibody_Turnover=compartment_compartment*Function_for_Antibody_Turnover(global_par_d_a, x(9));

% Reaction: id = Antibody_Production_Virus, name = Antibody_Production_Virus
	reaction_Antibody_Production_Virus=compartment_compartment*Function_for_Antibody_Production_Virus(global_par_q, x(8));

	xdot=zeros(9,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_Death) + (-1.0 * reaction_Uninfected_Infection) + ( 1.0 * reaction_Refractory_To_Uninfected) + (-1.0 * reaction_Uninfected_To_Refractory_IFN));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_Infection) + (-1.0 * reaction_Infected_Death) + (-1.0 * reaction_Infected_Killing_Immune) + (-1.0 * reaction_Infected_To_Refractory));
	
% Species:   id = F_1, name = F_1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_IFN_AB_Production_Infected) + (-1.0 * reaction_IFN_AB_Degradation));
	
% Species:   id = F_2, name = F_2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_IFN_G_Production_CTLs) + ( 1.0 * reaction_IFN_G_Production_NK) + (-1.0 * reaction_IFN_G_Degradation));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_NK_Cells_Proliferaton) + ( 1.0 * reaction_NK_Cells_Production_IFN));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_HBV_S_CTL_Proliferation) + ( 1.0 * reaction_HBV_S_CTL_Proliferation_Antigen));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Refractory_To_Uninfected) + ( 1.0 * reaction_Uninfected_To_Refractory_IFN) + ( 1.0 * reaction_Infected_To_Refractory));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Virus_Production) + (-1.0 * reaction_Virus_Clearance_Natural) + (-1.0 * reaction_Virus_Clearance_Antibodies));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Virus_Clearance_Antibodies) + ( 1.0 * reaction_Antibody_Turnover) + ( 1.0 * reaction_Antibody_Production_Virus));
end

function z=Function_for_Uninfected_To_Refractory_IFN(phi_1,T,F_1,F_2), z=(phi_1*T*(F_1+F_2));end

function z=Function_for_Uninfected_Death(d,T), z=(d*(1-T));end

function z=Function_for_Uninfected_Infection(beta,V,T), z=(beta*V*T);end

function z=Function_for_Infected_Killing_Immune(mu_1,s_1,F_1,s_2,F_2,N,mu_2,s_1_prime,s_2_prime,E,I), z=((mu_1*(1+s_1*F_1+s_2*F_2)*N+mu_2*(1+s_1_prime*F_1+s_2_prime*F_2)*E)*I);end

function z=Function_for_IFN_AB_Production_Infected(p_1,I), z=(p_1*I);end

function z=Function_for_HBV_S_CTL_Proliferation_Antigen(alpha,I,E), z=(alpha*I*E);end

function z=Function_for_Antibody_Turnover(d_a,A), z=(d_a*(1-A));end

function z=Function_for_IFN_G_Production_CTLs(p_2,E), z=(p_2*E);end

function z=Function_for_NK_Cells_Proliferaton(N), z=(N*(1-N));end

function z=Function_for_HBV_S_CTL_Proliferation(r_e,E), z=(r_e*E*(1-E));end

function z=Function_for_Antibody_Production_Virus(q,V), z=(q*V);end

function z=Function_for_Virus_Production(I,p,s_3,F_1,s_4,F_2), z=(I*p/(1+s_3*F_1+s_4*F_2));end

function z=Function_for_NK_Cells_Production_IFN(q_1,F_1,q_2,F_2,N), z=((q_1*F_1+q_2*F_2)*N);end

function z=Function_for_Infected_To_Refractory(psi_2,I,F_2), z=(psi_2*I*F_2);end

function z=Function_for_IFN_G_Production_NK(p_3,N), z=(p_3*N);end

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


