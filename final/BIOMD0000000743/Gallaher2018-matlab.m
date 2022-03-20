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
% Model name = Gallaher2018 - Tumor?Immune dynamics in multiple myeloma
%
% is http://identifiers.org/biomodels.db/MODEL1907050001
% is http://identifiers.org/biomodels.db/BIOMD0000000743
% isDescribedBy http://identifiers.org/pubmed/30172689
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 4.0;
	x0(2) = 464.0;
	x0(3) = 227.0;
	x0(4) = 42.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  sm, name = sm
	global_par_sm=0.001;
% Parameter:   id =  rm, name = rm
	global_par_rm=0.0175;
% Parameter:   id =  km, name = km
	global_par_km=10.0;
% Parameter:   id =  dm, name = dm
	global_par_dm=0.002;
% Parameter:   id =  anm, name = anm
	global_par_anm=5.0;
% Parameter:   id =  bnm, name = bnm
	global_par_bnm=150.0;
% Parameter:   id =  acm, name = acm
	global_par_acm=5.0;
% Parameter:   id =  bcm, name = bcm
	global_par_bcm=375.0;
% Parameter:   id =  acnm, name = acnm
	global_par_acnm=8.0;
% Parameter:   id =  amm, name = amm
	global_par_amm=0.5;
% Parameter:   id =  bmm, name = bmm
	global_par_bmm=3.0;
% Parameter:   id =  arm, name = arm
	global_par_arm=0.5;
% Parameter:   id =  brm, name = brm
	global_par_brm=25.0;
% Parameter:   id =  rc, name = rc
	global_par_rc=0.013;
% Parameter:   id =  kc, name = kc
	global_par_kc=800.0;
% Parameter:   id =  dc, name = dc
	global_par_dc=0.02;
% Parameter:   id =  amc, name = amc
	global_par_amc=5.0;
% Parameter:   id =  bmc, name = bmc
	global_par_bmc=3.0;
% Parameter:   id =  anc, name = anc
	global_par_anc=1.0;
% Parameter:   id =  bnc, name = bnc
	global_par_bnc=150.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=0.03;
% Parameter:   id =  rn, name = rn
	global_par_rn=0.04;
% Parameter:   id =  kn, name = kn
	global_par_kn=450.0;
% Parameter:   id =  dn, name = dn
	global_par_dn=0.025;
% Parameter:   id =  acn, name = acn
	global_par_acn=1.0;
% Parameter:   id =  bcn, name = bcn
	global_par_bcn=375.0;
% Parameter:   id =  rr, name = rr
	global_par_rr=0.0831;
% Parameter:   id =  kr, name = kr
	global_par_kr=80.0;
% Parameter:   id =  dr, name = dr
	global_par_dr=0.0757;
% Parameter:   id =  amr, name = amr
	global_par_amr=2.0;
% Parameter:   id =  bmr, name = bmr
	global_par_bmr=3.0;

% Reaction: id = M_breakup, name = M breakup
	reaction_M_breakup=compartment_compartment*M_breakup_0(x(1), global_par_anm, x(3), global_par_bnm, global_par_acm, x(2), global_par_bcm, global_par_acnm, global_par_amm, global_par_bmm, global_par_arm, x(4), global_par_brm, global_par_dm);

% Reaction: id = M_decay, name = M decay
	reaction_M_decay=compartment_compartment*M_decay_0(x(1), global_par_dm);

% Reaction: id = M_growth, name = M growth
	reaction_M_growth=compartment_compartment*M_growth_0(global_par_rm, x(1), global_par_km);

% Reaction: id = Tc_growth, name = Tc growth
	reaction_Tc_growth=compartment_compartment*Tc_growth_0(global_par_rc, x(2), global_par_kc);

% Reaction: id = Tc_death, name = Tc death
	reaction_Tc_death=compartment_compartment*Tc_death_0(global_par_dc, x(2));

% Reaction: id = Tc_stimulation, name = Tc stimulation
	reaction_Tc_stimulation=compartment_compartment*Tc_stimulation_0(global_par_rc, x(2), global_par_kc, global_par_amc, x(3), global_par_bmc, global_par_anc, x(1), global_par_bnc);

% Reaction: id = N_growth, name = N growth
	reaction_N_growth=compartment_compartment*N_growth_0(global_par_rn, x(3), global_par_kn);

% Reaction: id = N_stimulation, name = N stimulation
	reaction_N_stimulation=compartment_compartment*N_stimulation_0(global_par_rn, x(3), global_par_kn, global_par_acn, x(2), global_par_bcn);

% Reaction: id = N_death, name = N death
	reaction_N_death=compartment_compartment*N_death_0(global_par_dn, x(3));

% Reaction: id = Tr_death, name = Tr death
	reaction_Tr_death=compartment_compartment*Tr_death_0(global_par_dr, x(4));

% Reaction: id = Tr_growth, name = Tr growth
	reaction_Tr_growth=compartment_compartment*Tr_growth_0(global_par_rr, x(4), global_par_kr);

% Reaction: id = Tr_stimulation, name = Tr stimulation
	reaction_Tr_stimulation=compartment_compartment*Tr_stimulation_0(global_par_rr, x(4), global_par_kr, global_par_amr, x(1), global_par_bmr);

	xdot=zeros(4,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_M_breakup) + (-1.0 * reaction_M_decay) + ( 1.0 * reaction_M_source) + ( 1.0 * reaction_M_growth));
	
% Species:   id = Tc, name = Tc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tc_growth) + (-1.0 * reaction_Tc_death) + ( 1.0 * reaction_Tc_stimulation));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_N_source) + ( 1.0 * reaction_N_growth) + ( 1.0 * reaction_N_stimulation) + (-1.0 * reaction_N_death));
	
% Species:   id = Tr, name = Tr, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Tr_death) + ( 1.0 * reaction_Tr_growth) + ( 1.0 * reaction_Tr_stimulation));
end

function z=M_source_0(sm), z=(sm);end

function z=M_growth_0(rm,M,km), z=(rm*(1-M/km)*M);end

function z=M_decay_0(M,dm), z=(M*dm);end

function z=M_breakup_0(M,anm,N,bnm,acm,Tc,bcm,acnm,amm,bmm,arm,Tr,brm,dm), z=(M*(anm*N/(bnm+N)+acm*Tc/(bcm+Tc)+acnm*N*Tc/((bnm+N)*(bcm+Tc)))*(1-amm*M/(bmm+M)-arm*Tr/(brm+Tr))*dm);end

function z=Tc_growth_0(rc,Tc,kc), z=(rc*(1-Tc/kc)*Tc);end

function z=Tc_stimulation_0(rc,Tc,kc,amc,M,bmc,anc,N,bnc), z=(rc*(1-Tc/kc)*(amc*M/(bmc+M)+anc*N/(bnc+N))*Tc);end

function z=Tc_death_0(dc,Tc), z=(dc*Tc);end

function z=N_source_0(sn), z=(sn);end

function z=N_growth_0(rn,N,kn), z=(rn*(1-N/kn)*N);end

function z=N_stimulation_0(rn,N,kn,acn,Tc,bcn), z=(rn*(1-N/kn)*acn*Tc/(bcn+Tc)*N);end

function z=N_death_0(dn,N), z=(dn*N);end

function z=Tr_growth_0(rr,Tr,kr), z=(rr*(1-Tr/kr)*Tr);end

function z=Tr_stimulation_0(rr,Tr,kr,amr,M,bmr), z=(rr*(1-Tr/kr)*amr*M/(bmr+M)*Tr);end

function z=Tr_death_0(dr,Tr), z=(dr*Tr);end

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


