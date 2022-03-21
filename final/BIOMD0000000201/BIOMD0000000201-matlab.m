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
% Model name = Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF
%
% is http://identifiers.org/biomodels.db/MODEL6415057828
% is http://identifiers.org/biomodels.db/BIOMD0000000201
% isDescribedBy http://identifiers.org/pubmed/18308339
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.5;
	x0(2) = 0.2;
	x0(3) = 0.0;
	x0(4) = 0.1;
	x0(5) = 0.001;
	x0(6) = 0.1;
	x0(7) = 0.001;
	x0(8) = 0.1;
	x0(9) = 3.0;
	x0(10) = 0.1;
	x0(11) = 0.1;
	x0(12) = 0.5;
	x0(13) = 0.2;
	x0(14) = 0.1;
	x0(15) = 0.1;
	x0(16) = 0.1;
	x0(17) = 0;
	x0(18) = 0;
	x0(19) = 0;
	x0(20) = 2.0;
	x0(21) = 2.0;
	x0(22) = 2.0;
	x0(23) = 2.0;
	x0(24) = 0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  KdN, name = KdN
	global_par_KdN=1.4;
% Parameter:   id =  vsN, name = vsN
	global_par_vsN=0.23;
% Parameter:   id =  vdN, name = vdN
	global_par_vdN=2.82;
% Parameter:   id =  KdNa, name = KdNa
	global_par_KdNa=0.001;
% Parameter:   id =  VdNa, name = VdNa
	global_par_VdNa=0.01;
% Parameter:   id =  kt1, name = kt1
	global_par_kt1=0.1;
% Parameter:   id =  kt2, name = kt2
	global_par_kt2=0.1;
% Parameter:   id =  KdNan, name = KdNan
	global_par_KdNan=0.001;
% Parameter:   id =  VdNan, name = VdNan
	global_par_VdNan=0.1;
% Parameter:   id =  KdMF, name = KdMF
	global_par_KdMF=0.768;
% Parameter:   id =  KIG1, name = KIG1
	global_par_KIG1=2.5;
% Parameter:   id =  vsFK, name = vsFK
% Parameter:   id =  vsF, name = vsF
	global_par_vsF=3.0;
% Parameter:   id =  vmF, name = vmF
	global_par_vmF=1.92;
% Parameter:   id =  KA, name = KA
	global_par_KA=0.05;
% Parameter:   id =  KdF, name = KdF
	global_par_KdF=0.37;
% Parameter:   id =  vdF, name = vdF
	global_par_vdF=0.39;
% Parameter:   id =  ksF, name = ksF
	global_par_ksF=0.3;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=0.0;
% Parameter:   id =  vsB, name = vsB
	global_par_vsB=0.087;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=7.062;
% Parameter:   id =  v0, name = v0
	global_par_v0=0.06;
% Parameter:   id =  vMB, name = vMB
	global_par_vMB=1.64;
% Parameter:   id =  vmd, name = vmd
	global_par_vmd=0.8;
% Parameter:   id =  KaB, name = KaB
	global_par_KaB=0.7;
% Parameter:   id =  KaXa, name = KaXa
	global_par_KaXa=0.05;
% Parameter:   id =  Kmd, name = Kmd
	global_par_Kmd=0.48;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  vMXa, name = vMXa
	global_par_vMXa=0.5;
% Parameter:   id =  ksAx, name = ksAx
	global_par_ksAx=0.02;
% Parameter:   id =  vdAx, name = vdAx
	global_par_vdAx=0.6;
% Parameter:   id =  KdAx, name = KdAx
	global_par_KdAx=0.63;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.1;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.8;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.28;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.03;
% Parameter:   id =  kt3, name = kt3
	global_par_kt3=0.7;
% Parameter:   id =  kt4, name = kt4
	global_par_kt4=1.5;
% Parameter:   id =  ksDusp, name = ksDusp
	global_par_ksDusp=0.5;
% Parameter:   id =  vdDusp, name = vdDusp
	global_par_vdDusp=2.0;
% Parameter:   id =  KdDusp, name = KdDusp
	global_par_KdDusp=0.5;
% Parameter:   id =  kcDusp, name = kcDusp
	global_par_kcDusp=1.35;
% Parameter:   id =  KaFgf, name = KaFgf
	global_par_KaFgf=0.5;
% Parameter:   id =  KaRas, name = KaRas
	global_par_KaRas=0.103;
% Parameter:   id =  KdRas, name = KdRas
	global_par_KdRas=0.1;
% Parameter:   id =  KdErk, name = KdErk
	global_par_KdErk=0.05;
% Parameter:   id =  KaErk, name = KaErk
	global_par_KaErk=0.05;
% Parameter:   id =  KaX, name = KaX
	global_par_KaX=0.05;
% Parameter:   id =  KIF, name = KIF
	global_par_KIF=0.5;
% Parameter:   id =  KID, name = KID
	global_par_KID=0.5;
% Parameter:   id =  KdX, name = KdX
	global_par_KdX=0.05;
% Parameter:   id =  KaMDusp, name = KaMDusp
	global_par_KaMDusp=0.5;
% Parameter:   id =  KdMDusp, name = KdMDusp
	global_par_KdMDusp=0.5;
% Parameter:   id =  q, name = q
	global_par_q=2.0;
% Parameter:   id =  r, name = r
	global_par_r=2.0;
% Parameter:   id =  kc, name = kc
	global_par_kc=3.45;
% Parameter:   id =  j, name = j
	global_par_j=2.0;
% Parameter:   id =  p, name = p
	global_par_p=2.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.3;
% Parameter:   id =  theta, name = theta
	global_par_theta=1.5;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.3;
% Parameter:   id =  VMsMDusp, name = VMsMDusp
	global_par_VMsMDusp=0.9;
% Parameter:   id =  VMdMDusp, name = VMdMDusp
	global_par_VMdMDusp=0.5;
% Parameter:   id =  VMK, name = VMK
	global_par_VMK=5.08;
% Parameter:   id =  VMP, name = VMP
	global_par_VMP=1.0;
% Parameter:   id =  VMaRas, name = VMaRas
	global_par_VMaRas=4.968;
% Parameter:   id =  VMdRas, name = VMdRas
	global_par_VMdRas=0.41;
% Parameter:   id =  VMaErk, name = VMaErk
	global_par_VMaErk=3.3;
% Parameter:   id =  VMaX, name = VMaX
	global_par_VMaX=1.6;
% Parameter:   id =  VMdX, name = VMdX
	global_par_VMdX=0.5;
% assignmentRule: variable = vsFK
	global_par_vsFK=global_par_vsF*global_par_KIG1/(global_par_KIG1+x(9));
% assignmentRule: variable = AK
	x(24)=const_species_Kt-x(9);
% assignmentRule: variable = Rasi
	x(17)=x(20)-x(12);
% assignmentRule: variable = ERKi
	x(18)=x(21)-x(13);
% assignmentRule: variable = Xi
	x(19)=x(22)-x(14);

% Reaction: id = n_synth, name = Notch_synthesis
	reaction_n_synth=compartment_cytosol*global_par_epsilon*global_par_vsN;

% Reaction: id = N_degradation, name = N_degradation
	reaction_N_degradation=global_par_epsilon*compartment_cytosol*global_par_vdN*x(1)/(global_par_KdN+x(1));

% Reaction: id = N_activation, name = Notch_activation
	reaction_N_activation=global_par_epsilon*compartment_cytosol*global_par_kc*x(1)*global_par_KIF^global_par_j/(global_par_KIF^global_par_j+x(5)^global_par_j);

% Reaction: id = Na_degradation, name = Na_degradation
	reaction_Na_degradation=global_par_epsilon*compartment_cytosol*global_par_VdNa*x(2)/(global_par_KdNa+x(2));

% Reaction: id = Na_transport
	reaction_Na_transport=global_par_epsilon*compartment_cytosol*(global_par_kt1*x(2)-global_par_kt2*x(3));

% Reaction: id = Nan_degradation
	reaction_Nan_degradation=global_par_epsilon*compartment_cytosol*global_par_VdNan*x(3)/(global_par_KdNan+x(3));

% Reaction: id = MF_transkription
	reaction_MF_transkription=global_par_epsilon*compartment_cytosol*global_par_vsFK*x(3)^global_par_p/(global_par_KA^global_par_p+x(3)^global_par_p);

% Reaction: id = MF_degradation
	reaction_MF_degradation=global_par_epsilon*compartment_cytosol*global_par_vmF*x(4)/(global_par_KdMF+x(4));

% Reaction: id = F_translation
	reaction_F_translation=global_par_epsilon*compartment_cytosol*global_par_ksF*x(4);

% Reaction: id = F_degradation
	reaction_F_degradation=global_par_epsilon*compartment_cytosol*global_par_vdF*x(5)/(global_par_KdF+x(5));

% Reaction: id = AK_dissoc
	reaction_AK_dissoc=global_par_theta*compartment_cytosol*(global_par_d1*x(24)-global_par_a1*x(8)*x(9));

% Reaction: id = B_synth
	reaction_B_synth=global_par_theta*compartment_cytosol*global_par_vsB;

% Reaction: id = B_degradation
	reaction_B_degradation=global_par_theta*compartment_cytosol*global_par_kd1*x(10);

% Reaction: id = B_phosphorylation
	reaction_B_phosphorylation=global_par_theta*compartment_cytosol*global_par_VMK*global_par_KID/(global_par_KID+x(23))*x(10)/(global_par_K1+x(10))*x(24)/const_species_Kt;

% Reaction: id = BP_dephosphorylation
	reaction_BP_dephosphorylation=global_par_theta*compartment_cytosol*global_par_VMP*x(6)/(global_par_K2+x(6));

% Reaction: id = B_shuttling
	reaction_B_shuttling=global_par_theta*compartment_cytosol*(global_par_kt4*x(7)-global_par_kt3*x(10));

% Reaction: id = Bp_degradation
	reaction_Bp_degradation=global_par_theta*compartment_cytosol*global_par_kd2*x(6);

% Reaction: id = MAx_trans_basal
	reaction_MAx_trans_basal=global_par_theta*compartment_cytosol*global_par_v0;

% Reaction: id = MAx_trans_BN
	reaction_MAx_trans_BN=global_par_theta*compartment_cytosol*global_par_vMB*x(7)^global_par_n/(global_par_KaB^global_par_n+x(7)^global_par_n);

% Reaction: id = MAx_trans_Xa
	reaction_MAx_trans_Xa=global_par_theta*compartment_cytosol*global_par_vMXa*x(14)^global_par_m/(global_par_KaXa^global_par_m+x(14)^global_par_m);

% Reaction: id = MAx_degradation
	reaction_MAx_degradation=global_par_theta*compartment_cytosol*global_par_vmd*x(11)/(global_par_Kmd+x(11));

% Reaction: id = A_translation
	reaction_A_translation=global_par_theta*compartment_cytosol*global_par_ksAx*x(11);

% Reaction: id = A_degradation
	reaction_A_degradation=global_par_theta*compartment_cytosol*global_par_vdAx*x(8)/(global_par_KdAx+x(8));

% Reaction: id = Ras_activation
	reaction_Ras_activation=global_par_eta*compartment_cytosol*global_par_VMaRas*const_species_Fgf^global_par_r/(global_par_KaFgf^global_par_r+const_species_Fgf^global_par_r)*x(17)/(global_par_KaRas+x(17));

% Reaction: id = Ras_inactivation
	reaction_Ras_inactivation=global_par_eta*compartment_cytosol*global_par_VMdRas*x(12)/(global_par_KdRas+x(12));

% Reaction: id = Erk_activation
	reaction_Erk_activation=global_par_eta*compartment_cytosol*global_par_VMaErk*x(12)/x(20)*x(18)/(global_par_KaErk+x(18));

% Reaction: id = Erk_inactivation
	reaction_Erk_inactivation=global_par_eta*compartment_cytosol*global_par_kcDusp*x(16)*x(13)/(global_par_KdErk+x(13));

% Reaction: id = X_activation
	reaction_X_activation=global_par_eta*compartment_cytosol*global_par_VMaX*x(13)/x(21)*x(19)/(global_par_KaX+x(19));

% Reaction: id = X_inactivation
	reaction_X_inactivation=global_par_eta*compartment_cytosol*global_par_VMdX*x(14)/(global_par_KdX+x(14));

% Reaction: id = MDusp_transkription
	reaction_MDusp_transkription=global_par_eta*compartment_cytosol*global_par_VMsMDusp*x(14)^global_par_q/(global_par_KaMDusp^global_par_q+x(14)^global_par_q);

% Reaction: id = MDusp_degradation
	reaction_MDusp_degradation=global_par_eta*compartment_cytosol*global_par_VMdMDusp*x(15)/(global_par_KdMDusp+x(15));

% Reaction: id = Dusp_translation
	reaction_Dusp_translation=global_par_eta*compartment_cytosol*global_par_ksDusp*x(15);

% Reaction: id = Dusp_degradation
	reaction_Dusp_degradation=global_par_eta*compartment_cytosol*global_par_vdDusp*x(16)/(global_par_KdDusp+x(16));

% Species:   id = Kt, name = Kt, constant	const_species_Kt=3.0;

% Species:   id = Fgf, name = Fgf, constant	const_species_Fgf=1.0;

	xdot=zeros(24,1);
	
% Species:   id = N, name = Notch protein, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_n_synth) + (-1.0 * reaction_N_degradation) + (-1.0 * reaction_N_activation));
	
% Species:   id = Na, name = cytosolic NicD, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_N_activation) + (-1.0 * reaction_Na_degradation) + (-1.0 * reaction_Na_transport));
	
% Species:   id = Nan, name = nuclear NicD, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_Na_transport) + (-1.0 * reaction_Nan_degradation));
	
% Species:   id = MF, name = Lunatic fringe mRNA, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_MF_transkription) + (-1.0 * reaction_MF_degradation));
	
% Species:   id = F, name = Lunatic Fringe protein, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_F_translation) + (-1.0 * reaction_F_degradation));
	
% Species:   id = Bp, name = phosph. beta-catenin, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_B_phosphorylation) + (-1.0 * reaction_BP_dephosphorylation) + (-1.0 * reaction_Bp_degradation));
	
% Species:   id = BN, name = nuclear beta-catenin, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*((-1.0 * reaction_B_shuttling));
	
% Species:   id = A, name = Axin2 protein, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_AK_dissoc) + ( 1.0 * reaction_A_translation) + (-1.0 * reaction_A_degradation));
	
% Species:   id = K, name = Gsk3, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_AK_dissoc));
	
% Species:   id = B, name = beta-catenin, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_B_synth) + (-1.0 * reaction_B_degradation) + (-1.0 * reaction_B_phosphorylation) + ( 1.0 * reaction_BP_dephosphorylation) + ( 1.0 * reaction_B_shuttling));
	
% Species:   id = MAx, name = Axin2 mRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_MAx_trans_basal) + ( 1.0 * reaction_MAx_trans_BN) + ( 1.0 * reaction_MAx_trans_Xa) + (-1.0 * reaction_MAx_degradation));
	
% Species:   id = Rasa, name = active Ras, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_Ras_activation) + (-1.0 * reaction_Ras_inactivation));
	
% Species:   id = ERKa, name = active ERK, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_Erk_activation) + (-1.0 * reaction_Erk_inactivation));
	
% Species:   id = Xa, name = active TF X, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_X_activation) + (-1.0 * reaction_X_inactivation));
	
% Species:   id = MDusp, name = Dusp6 mRNA, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_MDusp_transkription) + (-1.0 * reaction_MDusp_degradation));
	
% Species:   id = Dusp, name = Dusp6 protein, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_Dusp_translation) + (-1.0 * reaction_Dusp_degradation));
	
% Species:   id = Rasi, name = inactive Ras, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = ERKi, name = inactive ERK, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = Xi, name = inactive TF X, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Rast, name = Ras total
% Warning species is not changed by either rules or reactions
	xdot(20) = ;
	
% Species:   id = ERKt, name = ERK total
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = Xt, name = X total
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
	
% Species:   id = D, name = Dsh protein
% Warning species is not changed by either rules or reactions
	xdot(23) = ;
	
% Species:   id = AK, name = Axin2/Gsk3 destruction complex, involved in a rule 	xdot(24) = x(24);
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


