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
% Model name = Ciliberto2005 - Steady states and oscillations in the p53/Mdm2 network
%
% isDescribedBy http://identifiers.org/pubmed/15725723
% is http://identifiers.org/biomodels.db/MODEL2104140001
% is http://identifiers.org/biomodels.db/BIOMD0000001006
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.07118;
	x0(4) = 0.02456;
	x0(5) = 0.006826;
	x0(6) = 0.1161;
	x0(7) = 0.01187;
	x0(8) = 0.331800000000002;
	x0(9) = 0.039794;
	x0(10) = 0.150090000000001;


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

% Compartment: id = Cyt, name = Cyt, constant
	compartment_Cyt=1.0;
% Compartment: id = Nuc, name = Nuc, constant
	compartment_Nuc=1.0;
% Parameter:   id =  Kf, name = Kf
	global_par_Kf=8.8;
% Parameter:   id =  Kr, name = Kr
	global_par_Kr=2.5;
% Parameter:   id =  ks53, name = ks53
	global_par_ks53=0.055;
% Parameter:   id =  kDNA, name = kDNA
	global_par_kDNA=0.18;
% Parameter:   id =  kdDNA, name = kdDNA
	global_par_kdDNA=0.017;
% Parameter:   id =  Jdna, name = Jdna
	global_par_Jdna=1.0;
% Parameter:   id =  vratio, name = vratio
	global_par_vratio=15.0;
% Parameter:   id =  kd53, name = kd53'
	global_par_kd53=0.0055;
% Parameter:   id =  ks2, name = ks2'
	global_par_ks2=0.0015;
% Parameter:   id =  ks2_0, name = ks2
	global_par_ks2_0=0.006;
% Parameter:   id =  kd2, name = kd2'
	global_par_kd2=0.01;
% Parameter:   id =  kd2_, name = kd2''
	global_par_kd2_=0.01;
% Parameter:   id =  kph, name = kph
	global_par_kph=0.05;
% Parameter:   id =  kdeph, name = kdeph
	global_par_kdeph=6.0;
% Parameter:   id =  kin, name = kin
	global_par_kin=14.0;
% Parameter:   id =  kout, name = kout
	global_par_kout=0.5;
% Parameter:   id =  kd53_0, name = kd53
	global_par_kd53_0=8.0;
% Parameter:   id =  m, name = m
	global_par_m=3.0;
% Parameter:   id =  Js, name = Js
	global_par_Js=1.2;
% Parameter:   id =  Jdam, name = Jdam
	global_par_Jdam=0.2;
% Parameter:   id =  Jph, name = Jph
	global_par_Jph=0.01;
% Parameter:   id =  ampl, name = ampl
	global_par_ampl=1.0;
% Parameter:   id =  step, name = step
	global_par_step=0.0;
% Parameter:   id =  t_on, name = t_on
	global_par_t_on=10.0;
% Parameter:   id =  t_off, name = t_off
	global_par_t_off=20.0;
% Parameter:   id =  kd2_0, name = kd2
% Parameter:   id =  ModelValue_6, name = Initial for vratio
	global_par_ModelValue_6=15.0;
% assignmentRule: variable = kd2_0
	global_par_kd2_0=global_par_kd2+global_par_kd2_*x(1)/(global_par_Jdam+x(1));
% assignmentRule: variable = IR
	x(2)=global_par_ampl*global_par_step;
% assignmentRule: variable = p53
	x(9)=x(3)-x(4)-x(5);
% assignmentRule: variable = MDM2_total
	x(10)=x(6)+1/global_par_ModelValue_6*x(8)+x(7);

% Reaction: id = DNA_Damage, name = DNA Damage
	reaction_DNA_Damage=compartment_Nuc*F2_Damage(global_par_kDNA, x(2));

% Reaction: id = DNA_Repair, name = DNA Repair
	reaction_DNA_Repair=compartment_Nuc*F3_Repair(global_par_kdDNA, x(3), x(1), global_par_Jdna);

% Reaction: id = p53_total_degradation, name = p53 total degradation
	reaction_p53_total_degradation=compartment_Nuc*global_par_kd53*x(3);

% Reaction: id = p53_ubiquitination_1, name = p53 ubiquitination 1
	reaction_p53_ubiquitination_1=compartment_Nuc*F1___ubiquitination1(global_par_Kf, x(8), x(9));

% Reaction: id = p53_ubiquitination_2, name = p53 ubiquitination 2
	reaction_p53_ubiquitination_2=compartment_Nuc*F8_ubiquitination2(global_par_Kf, x(8), x(4));

% Reaction: id = p53_ub_degradation, name = p53_ub degradation
	reaction_p53_ub_degradation=compartment_Nuc*global_par_kd53*x(4);

% Reaction: id = p53_ub_ub_degradation, name = p53_ub_ub degradation
	reaction_p53_ub_ub_degradation=compartment_Nuc*F9__p53_ub_ub_deg(global_par_kd53, global_par_kd53_0, x(5));

% Reaction: id = p53_deubiquitination_1, name = p53 deubiquitination 1
	reaction_p53_deubiquitination_1=compartment_Nuc*global_par_Kr*x(4);

% Reaction: id = p53_deubiquitination_2, name = p53 deubiquitination 2
	reaction_p53_deubiquitination_2=compartment_Nuc*global_par_Kr*x(5);

% Reaction: id = Mdm2_cyt_production, name = Mdm2_cyt production
	reaction_Mdm2_cyt_production=F10___mdm2cyt_synthesis(global_par_ks2, global_par_ks2_0, x(3), global_par_m, global_par_Js);

% Reaction: id = Mdm2_cyt_phosphorylation, name = Mdm2_cyt phosphorylation
	reaction_Mdm2_cyt_phosphorylation=F4___mdm2_phos(x(3), global_par_Jph, global_par_kph, x(6));

% Reaction: id = Mdm2_cyt_degradation, name = Mdm2_cyt degradation
	reaction_Mdm2_cyt_degradation=compartment_Cyt*global_par_kd2*x(6);

% Reaction: id = Mdm2_p_cyt_degradation, name = Mdm2_p_cyt degradation
	reaction_Mdm2_p_cyt_degradation=compartment_Cyt*global_par_kd2*x(7);

% Reaction: id = Mdm2_p_nuc_translocation_out, name = Mdm2_p_nuc translocation out
	reaction_Mdm2_p_nuc_translocation_out=compartment_Nuc*F11___translocation1(global_par_vratio, global_par_kout, x(8));

% Reaction: id = Mdm2_p_cyt_dephosphorylation, name = Mdm2_p_cyt dephosphorylation
	reaction_Mdm2_p_cyt_dephosphorylation=compartment_Cyt*global_par_kdeph*x(7);

% Reaction: id = Mdm2_p_cyt_translocation_out, name = Mdm2_p_cyt translocation out
	reaction_Mdm2_p_cyt_translocation_out=compartment_Cyt*global_par_kin*x(7);

% Reaction: id = Mdm2_p_nuc_degradation, name = Mdm2_p_nuc degradation
	reaction_Mdm2_p_nuc_degradation=compartment_Nuc*global_par_kd2_0*x(8);

% Reaction: id = p53_total_degradation_2, name = p53 total degradation 2
	reaction_p53_total_degradation_2=compartment_Nuc*F7___indirect(global_par_kd53_0, x(5));

% Reaction: id = Mdm2_p_cyt_translocation_in, name = Mdm2_p_cyt translocation in
	reaction_Mdm2_p_cyt_translocation_in=F2_Damage(global_par_kout, x(8));

% Reaction: id = Mdm2_p_nuc_translocation_in, name = Mdm2_p_nuc translocation in
	reaction_Mdm2_p_nuc_translocation_in=F12__translocation2(global_par_vratio, global_par_kin, x(7));

%Event: id=event
	event_event=time > 10;

	if(event_event) 
		global_par_step=1;
	end

%Event: id=event_1
	event_event_1=time > 20;

	if(event_event_1) 
		global_par_step=0;
	end

	xdot=zeros(10,1);
	
% Species:   id = DNA_damage, name = DNA_damage, affected by kineticLaw
	xdot(1) = (1/(compartment_Nuc))*(( 1.0 * reaction_DNA_Damage) + (-1.0 * reaction_DNA_Repair));
	
% Species:   id = IR, name = IR, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = p53_total, name = p53_total, affected by kineticLaw
	xdot(3) = (1/(compartment_Nuc))*(( 1.0 * reaction_p53_total_production) + (-1.0 * reaction_p53_total_degradation) + (-1.0 * reaction_p53_total_degradation_2));
	
% Species:   id = p53_ub, name = p53_ub, affected by kineticLaw
	xdot(4) = (1/(compartment_Nuc))*(( 1.0 * reaction_p53_ubiquitination_1) + (-1.0 * reaction_p53_ubiquitination_2) + (-1.0 * reaction_p53_ub_degradation) + (-1.0 * reaction_p53_deubiquitination_1) + ( 1.0 * reaction_p53_deubiquitination_2));
	
% Species:   id = p53_ub_ub, name = p53_ub_ub, affected by kineticLaw
	xdot(5) = (1/(compartment_Nuc))*(( 1.0 * reaction_p53_ubiquitination_2) + (-1.0 * reaction_p53_ub_ub_degradation) + (-1.0 * reaction_p53_deubiquitination_2));
	
% Species:   id = Mdm2_cyt, name = Mdm2_cyt, affected by kineticLaw
	xdot(6) = (1/(compartment_Cyt))*(( 1.0 * reaction_Mdm2_cyt_production) + (-1.0 * reaction_Mdm2_cyt_phosphorylation) + (-1.0 * reaction_Mdm2_cyt_degradation) + ( 1.0 * reaction_Mdm2_p_cyt_dephosphorylation));
	
% Species:   id = Mdm2_p_cyt, name = Mdm2_p_cyt, affected by kineticLaw
	xdot(7) = (1/(compartment_Cyt))*(( 1.0 * reaction_Mdm2_cyt_phosphorylation) + (-1.0 * reaction_Mdm2_p_cyt_degradation) + (-1.0 * reaction_Mdm2_p_cyt_dephosphorylation) + (-1.0 * reaction_Mdm2_p_cyt_translocation_out) + ( 1.0 * reaction_Mdm2_p_cyt_translocation_in));
	
% Species:   id = Mdm2_p_nuc, name = Mdm2_p_nuc, affected by kineticLaw
	xdot(8) = (1/(compartment_Nuc))*((-1.0 * reaction_Mdm2_p_nuc_translocation_out) + (-1.0 * reaction_Mdm2_p_nuc_degradation) + ( 1.0 * reaction_Mdm2_p_nuc_translocation_in));
	
% Species:   id = p53, name = p53, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = MDM2_total, name = MDM2_total, involved in a rule 	xdot(10) = x(10);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=F11___translocation1(Vratio,k,S), z=(Vratio*k*S);end

function z=F9__p53_ub_ub_deg(k1,k2,s), z=((k1+k2)*s);end

function z=F7___indirect(k,M), z=(k*M);end

function z=F1___ubiquitination1(k,E,S), z=(k*E*S);end

function z=F2_Damage(k,M), z=(k*M);end

function z=F3_Repair(k,p53,S,Jdna), z=(k*p53*S/(Jdna+S));end

function z=F4___mdm2_phos(p53t,Jph,kph,S), z=(kph/(Jph+p53t)*S);end

function z=F8_ubiquitination2(k,M,S), z=(k*M*S);end

function z=F10___mdm2cyt_synthesis(p1,p2,p53tot,m,Js), z=(p1+p2*p53tot^m/(Js^m+p53tot^m));end

function z=F12__translocation2(Vratio,k,M), z=(Vratio*k*M);end

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


