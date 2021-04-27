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
% Model name = Benary2019 - Controlling NFKB dynamics by B-TrCP
%
% isDescribedBy http://identifiers.org/pubmed/31137887
% is http://identifiers.org/biomodels.db/MODEL1908130003
% is http://identifiers.org/biomodels.db/BIOMD0000000794
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 199.999999987913;
	x0(2) = 2.44263810567829E-26;
	x0(3) = 2.78889437354332E-25;
	x0(4) = 1.17746437501971E-28;
	x0(5) = 2.5066291758827;
	x0(6) = 1.41567842221093E-26;
	x0(7) = 59.209565891463;
	x0(8) = 0.31550547924599;
	x0(9) = 2.29576677664394;
	x0(10) = 3.43573095552417;
	x0(11) = 0.0788763698117992;
	x0(12) = 0.00286970847085134;
	x0(13) = 0.00286970847085134;
	x0(14) = 4.78284745142474;
	x0(15) = 0.0;
	x0(16) = 0.00286970847085134;
	x0(17) = 1.0E-4;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Parameter:   id =  NFKB_total, name = NFKB_total
% Parameter:   id =  Kv, name = Kv
	global_par_Kv=5.0;
% Parameter:   id =  a1, name = k12
	global_par_a1=0.03;
% Parameter:   id =  a2, name = k7
	global_par_a2=0.012;
% Parameter:   id =  t1, name = k8
	global_par_t1=6.0;
% Parameter:   id =  a3, name = k9
	global_par_a3=0.06;
% Parameter:   id =  t2, name = k10
	global_par_t2=6.0;
% Parameter:   id =  c1a, name = k18
	global_par_c1a=3.0E-5;
% Parameter:   id =  c3a, name = k19
	global_par_c3a=0.024;
% Parameter:   id =  c4a, name = k20
	global_par_c4a=30.0;
% Parameter:   id =  c5a, name = k21
	global_par_c5a=0.006;
% Parameter:   id =  c6a, name = k15
	global_par_c6a=0.0012;
% Parameter:   id =  c1, name = k22
	global_par_c1=3.0E-5;
% Parameter:   id =  c3, name = k23
	global_par_c3=0.024;
% Parameter:   id =  c4, name = k24
	global_par_c4=30.0;
% Parameter:   id =  c5, name = k25
	global_par_c5=0.018;
% Parameter:   id =  k1, name = k3
	global_par_k1=0.15;
% Parameter:   id =  k2, name = k26
	global_par_k2=0.006;
% Parameter:   id =  k3, name = k4
	global_par_k3=0.09;
% Parameter:   id =  Kprod, name = v1
	global_par_Kprod=1.5;
% Parameter:   id =  Kdeg, name = k2
	global_par_Kdeg=0.0075;
% Parameter:   id =  i1, name = k11
	global_par_i1=0.15;
% Parameter:   id =  e2a, name = k13
	global_par_e2a=0.6;
% Parameter:   id =  i1a, name = k17
	global_par_i1a=0.06;
% Parameter:   id =  e1a, name = k16
	global_par_e1a=0.03;
% Parameter:   id =  c1c, name = k27
	global_par_c1c=3.0E-5;
% Parameter:   id =  c3c, name = k28
	global_par_c3c=0.024;
% Parameter:   id =  TNF_R, name = TNF_R
	global_par_TNF_R=0.0;
% Parameter:   id =  IkB_mRNA_amp, name = IkB_mRNA_amp
% Parameter:   id =  A20_mRNA_amp, name = A20_mRNA_amp
% Parameter:   id =  cgen_mRNA_amp, name = cgen_mRNA_amp
% Parameter:   id =  NFKB_nuc_actual, name = NFKB_nuc_actual
% Parameter:   id =  ModelValue_1, name = Initial for Kv
	global_par_ModelValue_1=5.0;
% assignmentRule: variable = NFKB_nuc_actual
	global_par_NFKB_nuc_actual=1/global_par_ModelValue_1*x(9);
% assignmentRule: variable = TNF
	x(15)=global_par_TNF_R;
% assignmentRule: variable = NFKB_total
	global_par_NFKB_total=x(6)+x(8)+x(7)+1/global_par_ModelValue_1*x(9)+1/global_par_ModelValue_1*x(11);
% assignmentRule: variable = IkB_mRNA_amp
	global_par_IkB_mRNA_amp=x(12)*10000;
% assignmentRule: variable = A20_mRNA_amp
	global_par_A20_mRNA_amp=x(13)*10000;
% assignmentRule: variable = cgen_mRNA_amp
	global_par_cgen_mRNA_amp=x(16)*10000;

% Reaction: id = IKKn_degradation, name = IKKn_degradation
	reaction_IKKn_degradation=compartment_Cytosol*global_par_Kdeg*x(1);

% Reaction: id = IKKn_activation, name = IKKn_activation
	reaction_IKKn_activation=compartment_Cytosol*function_for_R3(global_par_k1, x(15), x(1));

% Reaction: id = NFKB_export, name = NFKB_export
	reaction_NFKB_export=compartment_Cytosol*global_par_i1*x(8);

% Reaction: id = IkBn_NFKBn_binding, name = IkBn_NFKBn_binding
	reaction_IkBn_NFKBn_binding=compartment_Nucleus*global_par_a1*x(9)*x(10);

% Reaction: id = IkB_NFKB_n_export, name = IkB_NFKB_n_export
	reaction_IkB_NFKB_n_export=compartment_Nucleus*function_for_transport(global_par_e2a, global_par_Kv, x(11));

% Reaction: id = IkB_NFKB_binding, name = IkB_NFKB_binding
	reaction_IkB_NFKB_binding=compartment_Cytosol*global_par_a1*x(8)*x(5);

% Reaction: id = IkB_degradation, name = IkB_degradation
	reaction_IkB_degradation=compartment_Cytosol*global_par_c6a*x(7);

% Reaction: id = IkBnuc_export, name = IkBnuc_export
	reaction_IkBnuc_export=compartment_Nucleus*function_for_transport(global_par_e1a, global_par_Kv, x(10));

% Reaction: id = IkB_export, name = IkB_export
	reaction_IkB_export=compartment_Cytosol*global_par_i1a*x(5);

% Reaction: id = IkB_transcription, name = IkB_transcription
	reaction_IkB_transcription=compartment_Nucleus*function_for_substrateless_production(global_par_c1a, x(9));

% Reaction: id = IKKa_spon_inactivation, name = IKKa_spon_inactivation
	reaction_IKKa_spon_inactivation=compartment_Cytosol*global_par_k3*x(2);

% Reaction: id = IKKinact_degradation, name = IKKinact_degradation
	reaction_IKKinact_degradation=compartment_Cytosol*global_par_Kdeg*x(3);

% Reaction: id = IKKa_degradation, name = IKKa_degradation
	reaction_IKKa_degradation=compartment_Cytosol*global_par_Kdeg*x(2);

% Reaction: id = IKKa_IkB_binding, name = IKKa_IkB_binding
	reaction_IKKa_IkB_binding=compartment_Cytosol*global_par_a2*x(2)*x(5);

% Reaction: id = IKKa_IkBNFKB_binding, name = IKKa_IkBNFKB_binding
	reaction_IKKa_IkBNFKB_binding=compartment_Cytosol*global_par_a3*x(2)*x(7);

% Reaction: id = IkBmRNA_degradation, name = IkBmRNA_degradation
	reaction_IkBmRNA_degradation=compartment_Nucleus*global_par_c3a*x(12);

% Reaction: id = IkB_translation, name = IkB_translation
	reaction_IkB_translation=function_for_substrateless_production(global_par_c4a, x(12));

% Reaction: id = IkB_con_degradation, name = IkB_con_degradation
	reaction_IkB_con_degradation=compartment_Cytosol*global_par_c5a*x(5);

% Reaction: id = A20_transcription, name = A20_transcription
	reaction_A20_transcription=compartment_Nucleus*function_for_substrateless_production(global_par_c1, x(9));

% Reaction: id = A20mRNA_degradation, name = A20mRNA_degradation
	reaction_A20mRNA_degradation=compartment_Nucleus*global_par_c3*x(13);

% Reaction: id = A20_translation, name = A20_translation
	reaction_A20_translation=function_for_substrateless_production(global_par_c4, x(13));

% Reaction: id = A20_degradation, name = A20_degradation
	reaction_A20_degradation=compartment_Cytosol*global_par_c5*x(14);

% Reaction: id = IKKa_inactivation_1, name = IKKa_inactivation_1
	reaction_IKKa_inactivation_1=compartment_Cytosol*function_for_R26(global_par_k2, x(15), x(14), x(2));

% Reaction: id = cgen_transcription, name = cgen_transcription
	reaction_cgen_transcription=compartment_Nucleus*function_for_substrateless_production(global_par_c1c, x(9));

% Reaction: id = cgen_mRNA_degradation, name = cgen_mRNA_degradation
	reaction_cgen_mRNA_degradation=compartment_Nucleus*global_par_c3c*x(16);

% Reaction: id = IkB_degradation_1, name = IkB_degradation_1
	reaction_IkB_degradation_1=compartment_Cytosol*function_for_R3(global_par_t2, x(17), x(6));

% Reaction: id = IkB_degradation_2, name = IkB_degradation_2
	reaction_IkB_degradation_2=compartment_Cytosol*function_for_R3(global_par_t1, x(17), x(4));

% Reaction: id = NFKBc_induced_NFKBn_production, name = NFKBc_induced_NFKBn_production
	reaction_NFKBc_induced_NFKBn_production=function_for_indirect_transport(global_par_i1, global_par_Kv, x(8));

% Reaction: id = IkBn_induced_IkBc_production, name = IkBn_induced_IkBc_production
	reaction_IkBn_induced_IkBc_production=function_for_indirect_production(global_par_e1a, x(10));

% Reaction: id = IkBc_induced_IkBn_production, name = IkBc_induced_IkBn_production
	reaction_IkBc_induced_IkBn_production=function_for_indirect_transport(global_par_i1a, global_par_Kv, x(5));

% Reaction: id = IkB_NFKB_n_induced_IkB_NFKBc_production, name = IkB_NFKB_n_induced_IkB_NFKBc_production
	reaction_IkB_NFKB_n_induced_IkB_NFKBc_production=function_for_indirect_production(global_par_e2a, x(11));

%Event: id=TNF_stimulation
	event_TNF_stimulation=time > 6060;

	if(event_TNF_stimulation) 
		global_par_TNF_R=1;
	end

	xdot=zeros(17,1);
	
% Species:   id = IKK_neutral, name = IKK_neutral, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IKKn_production) + (-1.0 * reaction_IKKn_degradation) + (-1.0 * reaction_IKKn_activation));
	
% Species:   id = IKK_active, name = IKK_active, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IKKn_activation) + (-1.0 * reaction_IKKa_spon_inactivation) + (-1.0 * reaction_IKKa_degradation) + (-1.0 * reaction_IKKa_IkB_binding) + (-1.0 * reaction_IKKa_IkBNFKB_binding) + (-1.0 * reaction_IKKa_inactivation_1) + ( 1.0 * reaction_IkB_degradation_1) + ( 1.0 * reaction_IkB_degradation_2));
	
% Species:   id = IKK_inact, name = IKK_inact, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IKKa_spon_inactivation) + (-1.0 * reaction_IKKinact_degradation) + ( 1.0 * reaction_IKKa_inactivation_1));
	
% Species:   id = IKKactive_IkB, name = IKKactive_IkB, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IKKa_IkB_binding) + (-1.0 * reaction_IkB_degradation_2));
	
% Species:   id = IkB, name = IkB, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*((-1.0 * reaction_IkB_NFKB_binding) + (-1.0 * reaction_IkB_export) + (-1.0 * reaction_IKKa_IkB_binding) + ( 1.0 * reaction_IkB_translation) + (-1.0 * reaction_IkB_con_degradation) + ( 1.0 * reaction_IkBn_induced_IkBc_production));
	
% Species:   id = IKKactive_IkB_NFKB, name = IKKactive_IkB_NFKB, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IKKa_IkBNFKB_binding) + (-1.0 * reaction_IkB_degradation_1));
	
% Species:   id = IkB_NFKB, name = IkB_NFKB, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytosol))*(( 1.0 * reaction_IkB_NFKB_binding) + (-1.0 * reaction_IkB_degradation) + (-1.0 * reaction_IKKa_IkBNFKB_binding) + ( 1.0 * reaction_IkB_NFKB_n_induced_IkB_NFKBc_production));
	
% Species:   id = NFKB, name = NFKB, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytosol))*((-1.0 * reaction_NFKB_export) + (-1.0 * reaction_IkB_NFKB_binding) + ( 1.0 * reaction_IkB_degradation) + ( 1.0 * reaction_IkB_degradation_1));
	
% Species:   id = NFKB_nuc, name = NFKB_nuc, affected by kineticLaw
	xdot(9) = (1/(compartment_Nucleus))*((-1.0 * reaction_IkBn_NFKBn_binding) + ( 1.0 * reaction_NFKBc_induced_NFKBn_production));
	
% Species:   id = IkB_nuc, name = IkB_nuc, affected by kineticLaw
	xdot(10) = (1/(compartment_Nucleus))*((-1.0 * reaction_IkBn_NFKBn_binding) + (-1.0 * reaction_IkBnuc_export) + ( 1.0 * reaction_IkBc_induced_IkBn_production));
	
% Species:   id = IkB_NFKB_nuc, name = IkB_NFKB_nuc, affected by kineticLaw
	xdot(11) = (1/(compartment_Nucleus))*(( 1.0 * reaction_IkBn_NFKBn_binding) + (-1.0 * reaction_IkB_NFKB_n_export));
	
% Species:   id = IkB_mRNA, name = IkB_mRNA, affected by kineticLaw
	xdot(12) = (1/(compartment_Nucleus))*(( 1.0 * reaction_IkB_transcription) + (-1.0 * reaction_IkBmRNA_degradation));
	
% Species:   id = A20_mRNA, name = A20_mRNA, affected by kineticLaw
	xdot(13) = (1/(compartment_Nucleus))*(( 1.0 * reaction_A20_transcription) + (-1.0 * reaction_A20mRNA_degradation));
	
% Species:   id = A20, name = A20, affected by kineticLaw
	xdot(14) = (1/(compartment_Cytosol))*(( 1.0 * reaction_A20_translation) + (-1.0 * reaction_A20_degradation));
	
% Species:   id = TNF, name = TNF, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = cgen_mRNA, name = cgen_mRNA, affected by kineticLaw
	xdot(16) = (1/(compartment_Nucleus))*(( 1.0 * reaction_cgen_transcription) + (-1.0 * reaction_cgen_mRNA_degradation));
	
% Species:   id = b_TrCP, name = b-TrCP
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
end

function z=function_for_R26(k,X1,X2,S1), z=(k*X1*X2*S1);end

function z=function_for_transport(k,kv,S), z=(k*kv*S);end

function z=function_for_indirect_transport(x,kv,S), z=(x*kv*S);end

function z=function_for_indirect_production(x,S), z=(x*S);end

function z=function_for_R3(K3,X1,Substrate), z=(K3*X1*Substrate);end

function z=function_for_substrateless_production(k,X1), z=(k*X1);end

function z=Constant_flux__irreversible(v), z=(v);end

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


