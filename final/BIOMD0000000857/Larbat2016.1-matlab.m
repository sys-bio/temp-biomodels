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
% Model name = Larbat2016.1 - Modeling the diversion of primary carbon flux into secondary metabolism under variable nitrate and light or dark conditions (Base Model)
%
% isDescribedBy http://identifiers.org/pubmed/27164436
% is http://identifiers.org/biomodels.db/MODEL1911130004
% is http://identifiers.org/biomodels.db/BIOMD0000000857
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.7;
	x0(2) = 8.06;
	x0(3) = 1.0E-5;
	x0(4) = 5.0;
	x0(5) = 0.0;
	x0(6) = 500.0;
	x0(7) = 0.075;
	x0(8) = 1.1;
	x0(9) = 1.0E-4;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E-5;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=8.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=10.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=9.8;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.0E-6;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=10.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.2;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.5;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.2;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.2;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.5;
% Parameter:   id =  k27, name = k27
	global_par_k27=0.1;
% Parameter:   id =  k28, name = k28
	global_par_k28=1.0E-6;
% Parameter:   id =  k29, name = k29
	global_par_k29=10.1;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.0;
% Parameter:   id =  k31, name = k31
	global_par_k31=0.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=1.0E-5;
% Parameter:   id =  k33, name = k33
	global_par_k33=1.0E-11;
% Parameter:   id =  k34, name = k34
	global_par_k34=9.8;
% Parameter:   id =  k35, name = k35
	global_par_k35=10.0;
% Parameter:   id =  k36, name = k36
	global_par_k36=1.0E-4;
% Parameter:   id =  k37, name = k37
	global_par_k37=0.1;
% Parameter:   id =  k38, name = k38
	global_par_k38=0.2;
% Parameter:   id =  k39, name = k39
	global_par_k39=1000.0;
% Parameter:   id =  f_I_phe, name = f_I_phe
% Parameter:   id =  f_act_pcf, name = f_act_pcf
% Parameter:   id =  f_I_E_phe_outfl, name = f_I_E_phe_outfl
% Parameter:   id =  f_act_trioseP, name = f_act_trioseP
% Parameter:   id =  g, name = g
	global_par_g=1.0;
% assignmentRule: variable = f_act_pcf
	global_par_f_act_pcf=x(4)/(global_par_k13+x(4));
% assignmentRule: variable = f_I_E_phe_outfl
	global_par_f_I_E_phe_outfl=global_par_k39/(global_par_k39+x(4));
% assignmentRule: variable = f_act_trioseP
	global_par_f_act_trioseP=x(4)/(global_par_k33+x(4));
% assignmentRule: variable = f_I_phe
	global_par_f_I_phe=global_par_k38/(global_par_k38+x(4));

% Reaction: id = Sucrose_Formation_TrioseP, name = Sucrose_Formation_TrioseP
	reaction_Sucrose_Formation_TrioseP=compartment_compartment*Function_for_Sucrose_Formation_TrioseP(global_par_k4, x(2), x(8));

% Reaction: id = Sucrose_Consumption_Ephe, name = Sucrose_Consumption_Ephe
	reaction_Sucrose_Consumption_Ephe=compartment_compartment*Function_for_Sucrose_Consumption_Ephe(global_par_k9, x(1), x(3), global_par_f_I_phe);

% Reaction: id = Sucrose_Consumption_PCF, name = Sucrose_Consumption_PCF
	reaction_Sucrose_Consumption_PCF=compartment_compartment*Function_for_Sucrose_Consumption_PCF(global_par_k5, x(1), global_par_f_act_pcf);

% Reaction: id = Sucrose_Consumption_PCF_Lignin, name = Sucrose_Consumption_PCF_Lignin
	reaction_Sucrose_Consumption_PCF_Lignin=compartment_compartment*Function_for_Sucrose_Consumption_PCF_Lignin(global_par_k14, global_par_k15, x(1));

% Reaction: id = Sucrose_Formation_Starch, name = Sucrose_Formation_Starch
	reaction_Sucrose_Formation_Starch=compartment_compartment*Function_for_Sucrose_Formation_Starch(global_par_k37, x(5), x(9));

% Reaction: id = EtrioseP_Consumption_Sucrose, name = EtrioseP_Consumption_Sucrose
	reaction_EtrioseP_Consumption_Sucrose=compartment_compartment*Function_for_EtrioseP_Consumption_Sucrose(global_par_k2, x(1), x(2), global_par_k3);

% Reaction: id = Ephe_Formation_Sucrose, name = Ephe_Formation_Sucrose
	reaction_Ephe_Formation_Sucrose=compartment_compartment*Function_for_Ephe_Formation_Sucrose(global_par_k6, x(1), global_par_f_I_E_phe_outfl);

% Reaction: id = Ephe_Consumption, name = Ephe_Consumption
	reaction_Ephe_Consumption=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(3), global_par_k8, global_par_k7);

% Reaction: id = N_Formation, name = N_Formation
	reaction_N_Formation=compartment_compartment*Function_for_N_Formation(global_par_k11, x(6), x(7));

% Reaction: id = N_Consumption, name = N_Consumption
	reaction_N_Consumption=compartment_compartment*global_par_k12*x(4);

% Reaction: id = Next_Consumption, name = Next_Consumption
	reaction_Next_Consumption=compartment_compartment*Function_for_Next_Consumption(global_par_g, global_par_k11, x(6), x(7));

% Reaction: id = Starch_Formation, name = Starch_Formation
	reaction_Starch_Formation=compartment_compartment*global_par_k10*x(8);

% Reaction: id = Enitrate_Consumption, name = Enitrate_Consumption
	reaction_Enitrate_Consumption=compartment_compartment*Function_for_Enitrate_Consumption(global_par_k27, x(4), x(7), global_par_k28);

% Reaction: id = TrioseP_Formation, name = TrioseP_Formation
	reaction_TrioseP_Formation=compartment_compartment*Function_for_TrioseP_Formation(global_par_k29, global_par_f_act_trioseP, const_species_ECO2);

% Reaction: id = ECO2_Consumption, name = ECO2_Consumption
	reaction_ECO2_Consumption=compartment_compartment*Function_for_ECO2_Consumption(global_par_k31, x(8), const_species_ECO2, global_par_k32);

% Reaction: id = Estarch_Consumption, name = Estarch_Consumption
	reaction_Estarch_Consumption=compartment_compartment*Function_for_Estarch_Consumption(global_par_k35, x(1), x(9), global_par_k36);

% Species:   id = ECO2, name = ECO2, constant	const_species_ECO2=1.0;

	xdot=zeros(9,1);
	
% Species:   id = sucr, name = sucr, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Sucrose_Formation_TrioseP) + (-1.0 * reaction_Sucrose_Consumption_Ephe) + (-1.0 * reaction_Sucrose_Consumption_PCF) + (-1.0 * reaction_Sucrose_Consumption_PCF_Lignin) + ( 1.0 * reaction_Sucrose_Formation_Starch));
	
% Species:   id = EtrioseP, name = EtrioseP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_EtrioseP_Formation_Constant) + (-1.0 * reaction_EtrioseP_Consumption_Sucrose));
	
% Species:   id = Ephe, name = Ephe, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Ephe_Formation_Sucrose) + (-1.0 * reaction_Ephe_Consumption));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_N_Formation) + (-1.0 * reaction_N_Consumption));
	
% Species:   id = starch, name = starch, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_Sucrose_Formation_Starch) + ( 1.0 * reaction_Starch_Formation));
	
% Species:   id = Next, name = Next, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_Next_Consumption));
	
% Species:   id = Enitrate, name = Enitrate, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Enitrate_Formation) + (-1.0 * reaction_Enitrate_Consumption));
	
% Species:   id = trioseP, name = trioseP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_Sucrose_Formation_TrioseP) + (-1.0 * reaction_Starch_Formation) + ( 1.0 * reaction_TrioseP_Formation));
	
% Species:   id = Estarch, name = Estarch, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_Estarch_Formation) + (-1.0 * reaction_Estarch_Consumption));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Function_for_Sucrose_Consumption_Ephe(k9,sucr,Ephe,f_I_phe), z=(k9*sucr*Ephe*f_I_phe);end

function z=Function_for_Sucrose_Consumption_PCF_Lignin(k14,k15,sucr), z=((k14+k15)*sucr);end

function z=Function_for_Sucrose_Formation_Starch(k37,starch,Estarch), z=(k37*starch*Estarch);end

function z=Function_for_Sucrose_Formation_TrioseP(k4,EtrioseP,trioseP), z=(k4*EtrioseP*trioseP);end

function z=Function_for_EtrioseP_Consumption_Sucrose(k2,sucr,EtrioseP,k3), z=(k2*sucr*EtrioseP/(k3+EtrioseP));end

function z=Function_for_Sucrose_Consumption_PCF(k5,sucr,f_act_pcf), z=(k5*sucr*f_act_pcf);end

function z=Function_for_Next_Consumption(g,k11,Next,Enitrate), z=(g*k11*Next*Enitrate);end

function z=Function_for_TrioseP_Formation(k29,f_act_trioseP,ECO2), z=(k29*f_act_trioseP*ECO2);end

function z=Function_for_Enitrate_Consumption(k27,N,Enitrate,k28), z=(k27*N*Enitrate/(k28+Enitrate));end

function z=Function_for_ECO2_Consumption(k31,trioseP,ECO2,k32), z=(k31*trioseP*ECO2/(k32+ECO2));end

function z=Function_for_N_Formation(k11,Next,Enitrate), z=(k11*Next*Enitrate);end

function z=Function_for_Estarch_Consumption(k35,sucr,Estarch,k36), z=(k35*sucr*Estarch/(k36+Estarch));end

function z=Function_for_Ephe_Formation_Sucrose(k6,sucr,f_I_E_phe_outfl), z=(k6*sucr*f_I_E_phe_outfl);end

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


