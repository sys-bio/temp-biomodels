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
% Model name = Lolas2016 - tumour-induced neoneurogenesis and perineural tumour growth
%
% isDescribedBy http://identifiers.org/pubmed/26861829
% is http://identifiers.org/biomodels.db/MODEL1907160001
% is http://identifiers.org/biomodels.db/BIOMD0000000750
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 100000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.26;
	x0(6) = 0.03;
	x0(7) = 0.5;
	x0(8) = 80.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  rtp, name = rtp
	global_par_rtp=4.81E-4;
% Parameter:   id =  rtm, name = rtm
	global_par_rtm=1.0E-4;
% Parameter:   id =  t1, name = t1
	global_par_t1=134.27;
% Parameter:   id =  t2, name = t2
	global_par_t2=2.39;
% Parameter:   id =  kt, name = kt
	global_par_kt=1000000.0;
% Parameter:   id =  theta1, name = theta1
	global_par_theta1=10000.0;
% Parameter:   id =  theta2, name = theta2
	global_par_theta2=1.0;
% Parameter:   id =  dt, name = dt
	global_par_dt=0.0127;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.0129;
% Parameter:   id =  u0, name = u0
	global_par_u0=0.22;
% Parameter:   id =  u1, name = u1
	global_par_u1=9.8E-6;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.002;
% Parameter:   id =  sg, name = sg
	global_par_sg=0.00222;
% Parameter:   id =  dg, name = dg
	global_par_dg=22.18;
% Parameter:   id =  y1, name = y1
	global_par_y1=5.57E-5;
% Parameter:   id =  y2, name = y2
	global_par_y2=0.05;
% Parameter:   id =  sA, name = sA
	global_par_sA=0.00542;
% Parameter:   id =  dA, name = dA
	global_par_dA=2.4;
% Parameter:   id =  y3, name = y3
	global_par_y3=1.0E-5;
% Parameter:   id =  y4, name = y4
	global_par_y4=1.47E-5;
% Parameter:   id =  rs, name = rs
	global_par_rs=0.06;
% Parameter:   id =  ks, name = ks
	global_par_ks=0.26;
% Parameter:   id =  sigma1, name = sigma1
	global_par_sigma1=129.0;
% Parameter:   id =  sigma2, name = sigma2
	global_par_sigma2=50.0;
% Parameter:   id =  sigma3, name = sigma3
	global_par_sigma3=7.79;
% Parameter:   id =  sigma4, name = sigma4
	global_par_sigma4=0.01;
% Parameter:   id =  rp, name = rp
	global_par_rp=7.0;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.03;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.33;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.1;
% Parameter:   id =  p3, name = p3
	global_par_p3=1.0;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.01;
% Parameter:   id =  cn, name = cn
	global_par_cn=0.41;
% Parameter:   id =  sn, name = sn
	global_par_sn=1.6;
% Parameter:   id =  dn, name = dn
	global_par_dn=1.66;
% Parameter:   id =  y5, name = y5
	global_par_y5=0.002;
% Parameter:   id =  ca, name = ca
	global_par_ca=3990.0;
% Parameter:   id =  sa, name = sa
	global_par_sa=0.73;
% Parameter:   id =  da, name = da
	global_par_da=49.91;
% Parameter:   id =  y6, name = y6
	global_par_y6=0.001;
% Parameter:   id =  ONn, name = ONn
% assignmentRule: variable = ONn
	global_par_ONn=global_par_theta1/(1+global_par_theta2*x(7));

% Reaction: id = tumor_growth_NGF__logistic, name = tumor growth-NGF, logistic
	reaction_tumor_growth_NGF__logistic=compartment_tumor_microenvironment*t_g_ngf(x(1), global_par_rtp, x(3), global_par_t1, global_par_t2, global_par_kt, global_par_ONn);

% Reaction: id = tumor_death_AGM, name = tumor death-AGM
	reaction_tumor_death_AGM=compartment_tumor_microenvironment*t_d_agm(global_par_dt, global_par_delta, x(4), x(1));

% Reaction: id = tumor_migration, name = tumor migration
	reaction_tumor_migration=compartment_tumor_microenvironment*migration(global_par_u0, global_par_u1, x(4), global_par_u2, x(8), x(1));

% Reaction: id = migrating_tumor_cell_growth, name = migrating tumor cell growth
	reaction_migrating_tumor_cell_growth=compartment_tumor_microenvironment*_1nd_growth(global_par_rtm, x(2));

% Reaction: id = migrating_cell_death, name = migrating cell death
	reaction_migrating_cell_death=compartment_tumor_microenvironment*global_par_dt*x(2);

% Reaction: id = NGF_production, name = NGF production
	reaction_NGF_production=compartment_tumor_microenvironment*_1par_growth(global_par_sg, x(1));

% Reaction: id = NGF_decay, name = NGF decay
	reaction_NGF_decay=compartment_tumor_microenvironment*global_par_dg*x(3);

% Reaction: id = NGF_internalisation, name = NGF internalisation
	reaction_NGF_internalisation=compartment_tumor_microenvironment*internalisation(global_par_y1, x(1), global_par_y2, x(5), x(6), x(3));

% Reaction: id = AGM_production, name = AGM production
	reaction_AGM_production=compartment_tumor_microenvironment*_1par_growth(global_par_sA, x(1));

% Reaction: id = AGM_decay, name = AGM decay
	reaction_AGM_decay=compartment_tumor_microenvironment*global_par_dA*x(4);

% Reaction: id = AGM_internalisation, name = AGM internalisation
	reaction_AGM_internalisation=compartment_tumor_microenvironment*internalisation(global_par_y3, x(1), global_par_y4, x(5), x(6), x(4));

% Reaction: id = sympathetic_neuron_growth, name = sympathetic neuron growth
	reaction_sympathetic_neuron_growth=compartment_tumor_microenvironment*n_g(global_par_rs, x(5), global_par_ks);

% Reaction: id = sympathetic_neuron_growth_NGF, name = sympathetic neuron growth-NGF
	reaction_sympathetic_neuron_growth_NGF=compartment_tumor_microenvironment*extra_growth(x(3), global_par_sigma1, global_par_sigma2, x(5));

% Reaction: id = sympathetic_neuron_growth_AGM, name = sympathetic neuron growth-AGM
	reaction_sympathetic_neuron_growth_AGM=compartment_tumor_microenvironment*extra_growth(x(4), global_par_sigma3, global_par_sigma4, x(5));

% Reaction: id = parasym_neuron_growth, name = parasym neuron growth
	reaction_parasym_neuron_growth=compartment_tumor_microenvironment*n_g(global_par_rp, x(6), global_par_kp);

% Reaction: id = parasym_neuron_growth_NGF, name = parasym neuron growth-NGF
	reaction_parasym_neuron_growth_NGF=compartment_tumor_microenvironment*extra_growth(x(3), global_par_p1, global_par_p2, x(6));

% Reaction: id = parasym_neuron_growth_AGM, name = parasym neuron growth-AGM
	reaction_parasym_neuron_growth_AGM=compartment_tumor_microenvironment*extra_growth(x(4), global_par_p3, global_par_p4, x(6));

% Reaction: id = norepinephrine_by_SNC, name = norepinephrine by SNC
	reaction_norepinephrine_by_SNC=compartment_tumor_microenvironment*_1par_growth(global_par_sn, x(5));

% Reaction: id = norepinephrine_decay, name = norepinephrine decay
	reaction_norepinephrine_decay=compartment_tumor_microenvironment*global_par_dn*x(7);

% Reaction: id = norepinephrine_uptake_tumor, name = norepinephrine uptake-tumor
	reaction_norepinephrine_uptake_tumor=compartment_tumor_microenvironment*uptake(global_par_y5, x(1), x(7));

% Reaction: id = ACh_by_PNC, name = ACh by PNC
	reaction_ACh_by_PNC=compartment_tumor_microenvironment*_1par_growth(global_par_sa, x(6));

% Reaction: id = ACh_decay, name = ACh decay
	reaction_ACh_decay=compartment_tumor_microenvironment*global_par_da*x(8);

% Reaction: id = ACh_uptake_tumor, name = ACh uptake-tumor
	reaction_ACh_uptake_tumor=compartment_tumor_microenvironment*uptake(global_par_y6, x(1), x(8));

	xdot=zeros(8,1);
	
% Species:   id = Tp, name = Tp, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth_NGF__logistic) + (-1.0 * reaction_tumor_death_AGM) + (-1.0 * reaction_tumor_migration));
	
% Species:   id = Tm, name = Tm, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_migration) + ( 1.0 * reaction_migrating_tumor_cell_growth) + (-1.0 * reaction_migrating_cell_death));
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_NGF_production) + (-1.0 * reaction_NGF_decay) + (-1.0 * reaction_NGF_internalisation));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_AGM_production) + (-1.0 * reaction_AGM_decay) + (-1.0 * reaction_AGM_internalisation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(5) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_sympathetic_neuron_growth) + ( 1.0 * reaction_sympathetic_neuron_growth_NGF) + ( 1.0 * reaction_sympathetic_neuron_growth_AGM));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(6) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_parasym_neuron_growth) + ( 1.0 * reaction_parasym_neuron_growth_NGF) + ( 1.0 * reaction_parasym_neuron_growth_AGM));
	
% Species:   id = Nn, name = Nn, affected by kineticLaw
	xdot(7) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_norepinephrine_source) + ( 1.0 * reaction_norepinephrine_by_SNC) + (-1.0 * reaction_norepinephrine_decay) + (-1.0 * reaction_norepinephrine_uptake_tumor));
	
% Species:   id = Na, name = Na, affected by kineticLaw
	xdot(8) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_ACh_source) + ( 1.0 * reaction_ACh_by_PNC) + (-1.0 * reaction_ACh_decay) + (-1.0 * reaction_ACh_uptake_tumor));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=extra_growth(mod,k1,k2,pro), z=(mod*pro/(k1+k2*mod));end

function z=t_d_agm(dt,delta,A,Tp), z=(dt*(1+delta*A)*Tp);end

function z=t_g_ngf(Tp,rtp,G,t1,t2,kt,ONn), z=(7/8*Tp*(rtp+G/(t1+t2*G))*(1-Tp/kt)*(Tp/ONn-1));end

function z=uptake(y,Tp,n), z=(y*Tp*n);end

function z=migration(u0,u1,A,u2,Na,Tp), z=((u0+u1*A+u2*Na)*Tp);end

function z=_1nd_growth(const,product), z=(const*product);end

function z=_1par_growth(const,mod), z=(const*mod);end

function z=internalisation(k1,Tp,k2,S,P,sub), z=((k1*Tp+k2*(S+P))*sub);end

function z=n_g(r,n,k), z=(r*(1-n/k)*n);end

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


