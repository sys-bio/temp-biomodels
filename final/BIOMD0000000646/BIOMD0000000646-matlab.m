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
% Model name = Barr2016 - All-or-nothing G1/S transition
%
% is http://identifiers.org/biomodels.db/MODEL1708240001
% is http://identifiers.org/biomodels.db/BIOMD0000000646
% isDescribedBy http://identifiers.org/pubmed/27136687
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0;
	x0(18) = 1.0;


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
% Parameter:   id =  kscyce, name = kscyce
	global_par_kscyce=0.003;
% Parameter:   id =  kdcyce, name = kdcyce
	global_par_kdcyce=0.001;
% Parameter:   id =  kdcycee, name = kdcycee
	global_par_kdcycee=1.0E-4;
% Parameter:   id =  kdcycea, name = kdcycea
	global_par_kdcycea=0.03;
% Parameter:   id =  kasse, name = kasse
	global_par_kasse=1.0;
% Parameter:   id =  kdise, name = kdise
	global_par_kdise=0.02;
% Parameter:   id =  kscyca, name = kscyca
	global_par_kscyca=0.0025;
% Parameter:   id =  kdcyca, name = kdcyca
	global_par_kdcyca=0.002;
% Parameter:   id =  kdcycac1, name = kdcycac1
	global_par_kdcycac1=0.4;
% Parameter:   id =  kassa, name = kassa
	global_par_kassa=1.0;
% Parameter:   id =  kdisa, name = kdisa
	global_par_kdisa=0.02;
% Parameter:   id =  ks27, name = ks27
	global_par_ks27=0.008;
% Parameter:   id =  kd27, name = kd27
	global_par_kd27=0.004;
% Parameter:   id =  kd27e, name = kd27e
	global_par_kd27e=2.0;
% Parameter:   id =  kd27a, name = kd27a
	global_par_kd27a=2.0;
% Parameter:   id =  ksemi1, name = ksemi1
	global_par_ksemi1=0.003;
% Parameter:   id =  kdemi1, name = kdemi1
	global_par_kdemi1=0.001;
% Parameter:   id =  kacdh1, name = kacdh1
	global_par_kacdh1=0.02;
% Parameter:   id =  kicdh1e, name = kicdh1e
	global_par_kicdh1e=0.07;
% Parameter:   id =  kicdh1a, name = kicdh1a
	global_par_kicdh1a=0.2;
% Parameter:   id =  kasec, name = kasec
	global_par_kasec=2.0;
% Parameter:   id =  kdiec, name = kdiec
	global_par_kdiec=0.02;
% Parameter:   id =  ksskp2, name = ksskp2
	global_par_ksskp2=0.004;
% Parameter:   id =  kdskp2, name = kdskp2
	global_par_kdskp2=0.002;
% Parameter:   id =  kdskp2c1, name = kdskp2c1
	global_par_kdskp2c1=0.2;
% Parameter:   id =  Inhibitor, name = Inhibitor
	global_par_Inhibitor=0.0;
% assignmentRule: variable = CycET
	x(10)=x(1)+x(3);
% assignmentRule: variable = CycAT
	x(11)=x(2)+x(4);
% assignmentRule: variable = p27T
	x(12)=x(8)+x(3)+x(4);
% assignmentRule: variable = EmiC
	x(15)=x(13)+x(14);
% assignmentRule: variable = Emi1T
	x(16)=x(7)+x(13)+x(14);
% assignmentRule: variable = Cdh1dp
	x(17)=x(9)+x(13);
% assignmentRule: variable = Cdh1T
	x(18)=x(9)+x(6)+x(13)+x(14);

% Reaction: id = CycE_degradation, name = CycE degradation
	reaction_CycE_degradation=compartment_compartment*Vdcyce(global_par_kdcyce, global_par_kdcycee, x(1), global_par_Inhibitor, global_par_kdcycea, x(2), x(1));

% Reaction: id = CycA_degradation, name = CycA degradation
	reaction_CycA_degradation=compartment_compartment*Vdcyca(global_par_kdcyca, global_par_kdcycac1, x(9), x(2));

% Reaction: id = p27_degradation, name = p27 degradation
	reaction_p27_degradation=compartment_compartment*Vdp27(global_par_kd27e, x(1), global_par_Inhibitor, global_par_kd27a, x(2), x(5), global_par_kd27, x(8));

% Reaction: id = CycE_p27_Binding, name = CycE-p27 Binding
	reaction_CycE_p27_Binding=compartment_compartment*(global_par_kasse*x(1)*x(8)-global_par_kdise*x(3));

% Reaction: id = CycA_p27_Binding, name = CycA-p27 Binding
	reaction_CycA_p27_Binding=compartment_compartment*(global_par_kassa*x(2)*x(8)-global_par_kdisa*x(4));

% Reaction: id = CycA_degradation_from_CycA_p27_complexes, name = CycA degradation from CycA:p27 complexes
	reaction_CycA_degradation_from_CycA_p27_complexes=compartment_compartment*Vdcyca(global_par_kdcyca, global_par_kdcycac1, x(9), x(4));

% Reaction: id = p27_degradation_from_CycA_p27_complexes, name = p27 degradation from CycA:p27 complexes
	reaction_p27_degradation_from_CycA_p27_complexes=compartment_compartment*Vdp27(global_par_kd27e, x(1), global_par_Inhibitor, global_par_kd27a, x(2), x(5), global_par_kd27, x(4));

% Reaction: id = CycE_degradation_from_CycE_p27_complexes, name = CycE degradation from CycE:p27 complexes
	reaction_CycE_degradation_from_CycE_p27_complexes=compartment_compartment*Vdcyce(global_par_kdcyce, global_par_kdcycee, x(1), global_par_Inhibitor, global_par_kdcycea, x(2), x(3));

% Reaction: id = p27_degradation_from_CycE_p27_complexes, name = p27 degradation from CycE:p27 complexes
	reaction_p27_degradation_from_CycE_p27_complexes=compartment_compartment*Vdp27(global_par_kd27e, x(1), global_par_Inhibitor, global_par_kd27a, x(2), x(5), global_par_kd27, x(3));

% Reaction: id = Skp2_degradation, name = Skp2 degradation
	reaction_Skp2_degradation=compartment_compartment*Vdskp2(global_par_kdskp2, global_par_kdskp2c1, x(9), x(5));

% Reaction: id = Cdh1_phosphorylation, name = Cdh1 phosphorylation
	reaction_Cdh1_phosphorylation=compartment_compartment*Vicdh1(global_par_kicdh1e, x(1), global_par_Inhibitor, global_par_kicdh1a, x(2), x(9));

% Reaction: id = Cdh1_dephosphorylation, name = Cdh1 dephosphorylation
	reaction_Cdh1_dephosphorylation=compartment_compartment*global_par_kacdh1*x(6);

% Reaction: id = Cdh1_Emi1_binding, name = Cdh1-Emi1 binding
	reaction_Cdh1_Emi1_binding=compartment_compartment*(global_par_kasec*x(9)*x(7)-global_par_kdiec*x(13));

% Reaction: id = Emi1_degradation_from_Cdh1_Emi1_complexes, name = Emi1 degradation from Cdh1:Emi1 complexes
	reaction_Emi1_degradation_from_Cdh1_Emi1_complexes=compartment_compartment*global_par_kdemi1*x(13);

% Reaction: id = Cdh1p_Emi1_binding, name = Cdh1p-Emi1 binding
	reaction_Cdh1p_Emi1_binding=compartment_compartment*(global_par_kasec*x(6)*x(7)-global_par_kdiec*x(14));

% Reaction: id = Cdh1_Emi1_phosphorylation, name = Cdh1:Emi1 phosphorylation
	reaction_Cdh1_Emi1_phosphorylation=compartment_compartment*Vicdh1(global_par_kicdh1e, x(1), global_par_Inhibitor, global_par_kicdh1a, x(2), x(13));

% Reaction: id = Cdh1p_Emi1_dephosphorylation, name = Cdh1p:Emi1 dephosphorylation
	reaction_Cdh1p_Emi1_dephosphorylation=compartment_compartment*global_par_kacdh1*x(14);

% Reaction: id = Emi1_degradation_from_Cdh1p_Emi1_complexes, name = Emi1 degradation from Cdh1p:Emi1 complexes
	reaction_Emi1_degradation_from_Cdh1p_Emi1_complexes=compartment_compartment*global_par_kdemi1*x(14);

% Reaction: id = Emi1_degradation, name = Emi1 degradation
	reaction_Emi1_degradation=compartment_compartment*global_par_kdemi1*x(7);

	xdot=zeros(18,1);
	
% Species:   id = CycE, name = CycE, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_CycE_Synthesis) + (-1.0 * reaction_CycE_degradation) + (-1.0 * reaction_CycE_p27_Binding) + ( 1.0 * reaction_p27_degradation_from_CycE_p27_complexes));
	
% Species:   id = CycA, name = CycA, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CycA_synthesis) + (-1.0 * reaction_CycA_degradation) + (-1.0 * reaction_CycA_p27_Binding) + ( 1.0 * reaction_p27_degradation_from_CycA_p27_complexes));
	
% Species:   id = CycEp27, name = CycEp27, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CycE_p27_Binding) + (-1.0 * reaction_CycE_degradation_from_CycE_p27_complexes) + (-1.0 * reaction_p27_degradation_from_CycE_p27_complexes));
	
% Species:   id = CycAp27, name = CycAp27, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_CycA_p27_Binding) + (-1.0 * reaction_CycA_degradation_from_CycA_p27_complexes) + (-1.0 * reaction_p27_degradation_from_CycA_p27_complexes));
	
% Species:   id = Skp2, name = Skp2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Skp2_synthesis) + (-1.0 * reaction_Skp2_degradation));
	
% Species:   id = Cdh1p, name = Cdh1p, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdh1_phosphorylation) + (-1.0 * reaction_Cdh1_dephosphorylation) + (-1.0 * reaction_Cdh1p_Emi1_binding) + ( 1.0 * reaction_Emi1_degradation_from_Cdh1p_Emi1_complexes));
	
% Species:   id = Emi1, name = Emi1, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Cdh1_Emi1_binding) + ( 1.0 * reaction_Emi1_synthesis) + (-1.0 * reaction_Cdh1p_Emi1_binding) + (-1.0 * reaction_Emi1_degradation));
	
% Species:   id = p27, name = p27, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_p27_Synthesis) + (-1.0 * reaction_p27_degradation) + (-1.0 * reaction_CycE_p27_Binding) + (-1.0 * reaction_CycA_p27_Binding) + ( 1.0 * reaction_CycA_degradation_from_CycA_p27_complexes) + ( 1.0 * reaction_CycE_degradation_from_CycE_p27_complexes));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Cdh1_phosphorylation) + ( 1.0 * reaction_Cdh1_dephosphorylation) + (-1.0 * reaction_Cdh1_Emi1_binding) + ( 1.0 * reaction_Emi1_degradation_from_Cdh1_Emi1_complexes));
	
% Species:   id = CycET, name = CycET, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = CycAT, name = CycAT, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = p27T, name = p27T, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = Emi1Cdh1, name = Emi1Cdh1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdh1_Emi1_binding) + (-1.0 * reaction_Emi1_degradation_from_Cdh1_Emi1_complexes) + (-1.0 * reaction_Cdh1_Emi1_phosphorylation) + ( 1.0 * reaction_Cdh1p_Emi1_dephosphorylation));
	
% Species:   id = Emi1Cdh1p, name = Emi1Cdh1p, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdh1p_Emi1_binding) + ( 1.0 * reaction_Cdh1_Emi1_phosphorylation) + (-1.0 * reaction_Cdh1p_Emi1_dephosphorylation) + (-1.0 * reaction_Emi1_degradation_from_Cdh1p_Emi1_complexes));
	
% Species:   id = EmiC, name = EmiC, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Emi1T, name = Emi1T, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = Cdh1dp, name = Cdh1dp, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Cdh1T, name = Cdh1T, involved in a rule 	xdot(18) = x(18);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Vdcyce(kdcyce,kdcycee,CycE,Inhibitor,kdcycea,CycA,Sub), z=((kdcyce+kdcycee*CycE/(1+Inhibitor)+kdcycea*CycA/(1+Inhibitor))*Sub);end

function z=Vdcyca(kdcyca,kdcycac1,Cdh1,Sub), z=((kdcyca+kdcycac1*Cdh1)*Sub);end

function z=Vdp27(kd27e,CycE,Inhibitor,kd27a,CycA,Skp2,kd27,Sub), z=(((kd27e*CycE/(1+Inhibitor)+kd27a*CycA/(1+Inhibitor))*Skp2+kd27)*Sub);end

function z=Vdskp2(kdskp2,kdskp2c1,Cdh1,Sub), z=((kdskp2+kdskp2c1*Cdh1)*Sub);end

function z=Vicdh1(kicdh1e,CycE,Inhibitor,kicdh1a,CycA,Sub), z=((kicdh1e*CycE/(1+Inhibitor)+kicdh1a*CycA/(1+Inhibitor))*Sub);end

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


