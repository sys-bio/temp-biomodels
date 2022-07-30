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
% Model name = Novak2022 - Mitotic kinase oscillation
%
% is http://identifiers.org/biomodels.db/MODEL2205190001
% is http://identifiers.org/biomodels.db/BIOMD0000001058
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.1;
	x0(2) = 0.999999999999997;
	x0(3) = 0.05;
	x0(4) = 0.509;
	x0(5) = 0.999999999999997;
	x0(6) = 0.249999999999999;
	x0(7) = 0.0;
	x0(8) = 0.999999999999985;
	x0(9) = 0.0;
	x0(10) = 0.1;


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
% Parameter:   id =  kscln, name = kscln
	global_par_kscln=0.2;
% Parameter:   id =  kdcln, name = kdcln
	global_par_kdcln=0.2;
% Parameter:   id =  kasbf, name = kasbf'
	global_par_kasbf=1.0;
% Parameter:   id =  kasbf_0, name = kasbf
	global_par_kasbf_0=10.0;
% Parameter:   id =  kisbf, name = kisbf
	global_par_kisbf=25.0;
% Parameter:   id =  jsbf, name = jsbf
	global_par_jsbf=1.0;
% Parameter:   id =  ksclbs, name = ksclbs
	global_par_ksclbs=0.15;
% Parameter:   id =  kdclbs, name = kdclbs'
	global_par_kdclbs=0.1;
% Parameter:   id =  kdclbs_0, name = kdclbs
	global_par_kdclbs_0=0.05;
% Parameter:   id =  ksnrm1, name = ksnrm1
	global_par_ksnrm1=0.05;
% Parameter:   id =  kdnrm1, name = kdnrm1
	global_par_kdnrm1=0.1;
% Parameter:   id =  MBFtot, name = MBFtot
	global_par_MBFtot=0.5;
% Parameter:   id =  kass, name = kass'
	global_par_kass=1.0;
% Parameter:   id =  kdiss, name = kdiss'
	global_par_kdiss=0.001;
% Parameter:   id =  Jmbf, name = Jmbf
	global_par_Jmbf=0.01;
% Parameter:   id =  ksclbm, name = ksclbm'
	global_par_ksclbm=0.01;
% Parameter:   id =  ksclbm_0, name = ksclbm
	global_par_ksclbm_0=0.01;
% Parameter:   id =  kdclbm, name = kdclbm'
	global_par_kdclbm=0.01;
% Parameter:   id =  kdclbm_0, name = kdclbm
	global_par_kdclbm_0=1.0;
% Parameter:   id =  Jclbm, name = Jclbm
	global_par_Jclbm=0.05;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  kspolo, name = kspolo
	global_par_kspolo=0.01;
% Parameter:   id =  kdpolo, name = kdpolo'
	global_par_kdpolo=0.01;
% Parameter:   id =  kdpolo_0, name = kdpolo
	global_par_kdpolo_0=1.0;
% Parameter:   id =  kacdc14, name = kacdc14
	global_par_kacdc14=1.0;
% Parameter:   id =  kicdc14, name = kicdc14
	global_par_kicdc14=0.25;
% Parameter:   id =  jcdc14, name = jcdc14
	global_par_jcdc14=0.01;
% Parameter:   id =  kssic, name = kssic'
	global_par_kssic=0.02;
% Parameter:   id =  kdsic, name = kdsic'
	global_par_kdsic=0.01;
% Parameter:   id =  kdsic_0, name = kdsic
	global_par_kdsic_0=2.0;
% Parameter:   id =  Jsic1, name = Jsic1
	global_par_Jsic1=0.01;
% Parameter:   id =  Kdiss, name = Kdiss
	global_par_Kdiss=0.05;
% Parameter:   id =  kacdh1, name = kacdh1'
	global_par_kacdh1=1.0;
% Parameter:   id =  kacdh1_0, name = kacdh1
	global_par_kacdh1_0=10.0;
% Parameter:   id =  kicdh1, name = kicdh1'
	global_par_kicdh1=0.2;
% Parameter:   id =  kicdh1_0, name = kicdh1
	global_par_kicdh1_0=10.0;
% Parameter:   id =  Jcdh1, name = Jcdh1
	global_par_Jcdh1=0.01;
% Parameter:   id =  ndClbM, name = ndClbM
	global_par_ndClbM=0.0;
% Parameter:   id =  MBFa, name = MBFa
% Parameter:   id =  Clbt, name = Clbt
% Parameter:   id =  BB, name = BB
% Parameter:   id =  Sic1Clb, name = Sic1Clb
% Parameter:   id =  Clb, name = Clb
% Parameter:   id =  ClbM, name = ClbM
% Parameter:   id =  ClbS, name = ClbS
% Parameter:   id =  ModelValue_14, name = Initial for Jmbf
	global_par_ModelValue_14=0.01;
% Parameter:   id =  ModelValue_31, name = Initial for Kdiss
	global_par_ModelValue_31=0.05;
% Parameter:   id =  ModelValue_37, name = Initial for ndClbM
	global_par_ModelValue_37=0.0;
% assignmentRule: variable = Clbt
	global_par_Clbt=x(2)+x(5)+global_par_ModelValue_37;
% assignmentRule: variable = BB
	global_par_BB=x(7)+global_par_Clbt+global_par_ModelValue_31;
% assignmentRule: variable = Sic1Clb
	global_par_Sic1Clb=2*x(7)*global_par_Clbt/(global_par_BB+(global_par_BB^2-4*x(7)*global_par_Clbt)^(0.5));
% assignmentRule: variable = ClbM
	global_par_ClbM=(x(5)+global_par_ModelValue_37)*(global_par_Clbt-global_par_Sic1Clb)/global_par_Clbt;
% assignmentRule: variable = MBFa
	global_par_MBFa=x(3)*x(1)/(global_par_ModelValue_14+x(1));
% assignmentRule: variable = Clb
	global_par_Clb=global_par_Clbt-global_par_Sic1Clb;
% assignmentRule: variable = ClbS
	global_par_ClbS=x(2)*(global_par_Clbt-global_par_Sic1Clb)/global_par_Clbt;

% Reaction: id = Transcription_of_Cln, name = Transcription of Cln
	reaction_Transcription_of_Cln=compartment_compartment*function_1(global_par_kscln, x(8));

% Reaction: id = Autoregulation_of_Cln_synthesis, name = Autoregulation of Cln synthesis
	reaction_Autoregulation_of_Cln_synthesis=compartment_compartment*global_par_kdcln*x(1);

% Reaction: id = Activation_by_MBF_of_ClbS_transcription, name = Activation by MBF of ClbS transcription
	reaction_Activation_by_MBF_of_ClbS_transcription=compartment_compartment*function_2(global_par_ksclbs, global_par_MBFa);

% Reaction: id = Degradation_of_ClbS, name = Degradation of ClbS
	reaction_Degradation_of_ClbS=compartment_compartment*function_3(global_par_kdclbs, global_par_kdclbs_0, x(9), x(2));

% Reaction: id = Synthesis_of_MBF, name = Synthesis of MBF
	reaction_Synthesis_of_MBF=compartment_compartment*function_15(global_par_kdiss, global_par_MBFtot, x(3));

% Reaction: id = Transcriptional_repression_of_MBF_by_Nrm1t, name = Transcriptional repression of MBF by Nrm1t
	reaction_Transcriptional_repression_of_MBF_by_Nrm1t=compartment_compartment*function_16(global_par_kass, x(3), x(4), global_par_MBFtot);

% Reaction: id = Activation_of_Nrm1_transcription_by_MBF, name = Activation of Nrm1 transcription by MBF
	reaction_Activation_of_Nrm1_transcription_by_MBF=compartment_compartment*function_2(global_par_ksnrm1, global_par_MBFa);

% Reaction: id = Degradation_of_Nrm1_by_APC_C_Cdh1_complex, name = Degradation of Nrm1 by APC/C-Cdh1 complex
	reaction_Degradation_of_Nrm1_by_APC_C_Cdh1_complex=compartment_compartment*function_4(global_par_kdnrm1, x(4), x(9));

% Reaction: id = Autocatalytic_synthesis_of_ClbMt, name = Autocatalytic synthesis of ClbMt
	reaction_Autocatalytic_synthesis_of_ClbMt=compartment_compartment*function_7(global_par_ksclbm, global_par_ClbM, global_par_n, global_par_ksclbm_0, global_par_Jclbm);

% Reaction: id = APC_C_Cdh1_dependent_degradation_of_M_phase_cyclins, name = APC/C-Cdh1 dependent degradation of M-phase cyclins
	reaction_APC_C_Cdh1_dependent_degradation_of_M_phase_cyclins=compartment_compartment*function_3(global_par_kdclbm, global_par_kdclbm_0, x(9), x(5));

% Reaction: id = Cdk1_dependent_synthesis_of_Polo_kinase, name = Cdk1-dependent synthesis of Polo-kinase
	reaction_Cdk1_dependent_synthesis_of_Polo_kinase=compartment_compartment*function_2(global_par_kspolo, global_par_ClbM);

% Reaction: id = Cdh1_dependent_degradation_of_Polo, name = Cdh1-dependent degradation of Polo
	reaction_Cdh1_dependent_degradation_of_Polo=compartment_compartment*function_3(global_par_kdpolo, global_par_kdpolo_0, x(9), x(6));

% Reaction: id = Sic1_phosphorylation_catalyzed_by_Clb_and_Cln_kinases_followed_by_Sic1_degradation, name = Sic1 phosphorylation catalyzed by Clb and Cln kinases followed by Sic1 degradation
	reaction_Sic1_phosphorylation_catalyzed_by_Clb_and_Cln_kinases_followed_by_Sic1_degradation=compartment_compartment*function_8(global_par_kdsic, global_par_kdsic_0, global_par_Clb, x(1), global_par_Jsic1, x(7));

% Reaction: id = Activation_of_SBF_by_Cln, name = Activation of SBF by Cln
	reaction_Activation_of_SBF_by_Cln=compartment_compartment*function_9(global_par_kasbf, global_par_kasbf_0, x(1), x(8), global_par_jsbf);

% Reaction: id = Inhibition_of_SBF_by_Cdk1, name = Inhibition of SBF by Cdk1
	reaction_Inhibition_of_SBF_by_Cdk1=compartment_compartment*function_10(global_par_kisbf, global_par_ClbM, x(8), global_par_jsbf);

% Reaction: id = Activation_of_Cdh1_by_Cln, name = Activation of Cdh1 by Cln
	reaction_Activation_of_Cdh1_by_Cln=compartment_compartment*function_11(global_par_kacdh1, global_par_kacdh1_0, x(10), x(9), global_par_Jcdh1);

% Reaction: id = Inhibition_of_Cdh1_Cdk1, name = Inhibition of Cdh1 Cdk1
	reaction_Inhibition_of_Cdh1_Cdk1=compartment_compartment*function_12(global_par_kicdh1, x(1), global_par_kicdh1_0, global_par_Clb, x(9), global_par_Jcdh1);

% Reaction: id = Activation_of_Cdc14_by_Cln, name = Activation of Cdc14 by Cln
	reaction_Activation_of_Cdc14_by_Cln=compartment_compartment*function_13(global_par_kacdc14, x(6), x(10), global_par_jcdc14);

% Reaction: id = Inhibition_of_Cdc14_by_Cdk1, name = Inhibition of Cdc14 by Cdk1
	reaction_Inhibition_of_Cdc14_by_Cdk1=compartment_compartment*function_14(global_par_kicdc14, x(10), global_par_jcdc14);

	xdot=zeros(10,1);
	
% Species:   id = Cln, name = Cln, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Transcription_of_Cln) + (-1.0 * reaction_Autoregulation_of_Cln_synthesis));
	
% Species:   id = ClbSt, name = ClbSt, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_by_MBF_of_ClbS_transcription) + (-1.0 * reaction_Degradation_of_ClbS));
	
% Species:   id = MBF, name = MBF, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Synthesis_of_MBF) + (-1.0 * reaction_Transcriptional_repression_of_MBF_by_Nrm1t));
	
% Species:   id = Nrm1t, name = Nrm1t, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_Nrm1_transcription_by_MBF) + (-1.0 * reaction_Degradation_of_Nrm1_by_APC_C_Cdh1_complex));
	
% Species:   id = ClbMt, name = ClbMt, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Autocatalytic_synthesis_of_ClbMt) + (-1.0 * reaction_APC_C_Cdh1_dependent_degradation_of_M_phase_cyclins));
	
% Species:   id = Polo, name = Polo, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdk1_dependent_synthesis_of_Polo_kinase) + (-1.0 * reaction_Cdh1_dependent_degradation_of_Polo));
	
% Species:   id = Sic1t, name = Sic1t, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Constant_synthesis_of_Sic1) + (-1.0 * reaction_Sic1_phosphorylation_catalyzed_by_Clb_and_Cln_kinases_followed_by_Sic1_degradation));
	
% Species:   id = SBF, name = SBF, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_SBF_by_Cln) + (-1.0 * reaction_Inhibition_of_SBF_by_Cdk1));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_Cdh1_by_Cln) + (-1.0 * reaction_Inhibition_of_Cdh1_Cdk1));
	
% Species:   id = Cdc14, name = Cdc14, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_Cdc14_by_Cln) + (-1.0 * reaction_Inhibition_of_Cdc14_by_Cdk1));
end

function z=function_3(k1,k2,b,substrate), z=((k1+k2*b)*substrate);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_16(kass_,MBF,NRM1t,MBFtot), z=(kass_*MBF*(NRM1t-(MBFtot-MBF)));end

function z=function_4(k,substrate,modifier), z=(k*substrate*modifier);end

function z=function_15(kdis,MBFtot,MBF), z=(kdis*(MBFtot-MBF));end

function z=function_7(k1,a,n,k2,k3), z=(k1+k2*a^n/(k3^n+a^n));end

function z=function_8(kdsic_,kdsic,Clb,Cln,Jsic1,Sic1t), z=((kdsic_+kdsic*Clb*(Cln+Clb)/(Jsic1+Cln+Clb))*Sic1t);end

function z=function_2(k,param), z=(k*param);end

function z=function_10(kisbf,ClbM,SBF,Jsbf), z=(kisbf*ClbM*SBF/(Jsbf+SBF));end

function z=function_9(kasbf_,kasbf,Cln,SBF,Jscbf), z=((kasbf_+kasbf*Cln)*(1-SBF)/(Jscbf+1-SBF));end

function z=function_13(kacdc14,Polo,Cdc14,Jcdc14), z=(kacdc14*Polo*(1-Cdc14)/(Jcdc14+1-Cdc14));end

function z=function_14(kicdc14,Cdc14,Jcdc14), z=(kicdc14*Cdc14/(Jcdc14+Cdc14));end

function z=function_11(kacdh1_,kacdh1,Cdc14,Cdh1,Jcdh1), z=((kacdh1_+kacdh1*Cdc14)*(1-Cdh1)/(Jcdh1+1-Cdh1));end

function z=function_1(k,modifier), z=(k*modifier);end

function z=function_12(kicdh1_,Cln,kicdh1,Clb,Cdh1,Jcdh1), z=((kicdh1_*Cln+kicdh1*Clb)*Cdh1/(Jcdh1+Cdh1));end

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


