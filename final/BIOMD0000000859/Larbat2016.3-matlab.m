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
% Model name = Larbat2016.3 - Modeling the diversion of primary carbon flux into secondary metabolism under variable nitrate and light or dark conditions (Light Dark Cycles with Minimum Starch Adaption)
%
% isDescribedBy http://identifiers.org/pubmed/27164436
% is http://identifiers.org/biomodels.db/MODEL1911130006
% is http://identifiers.org/biomodels.db/BIOMD0000000859
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 5.14E-5;
	x0(2) = 6.012;
	x0(3) = 38.677;
	x0(4) = 5.0;
	x0(5) = 1.046E-7;
	x0(6) = 18.75;
	x0(7) = 0.0;
	x0(8) = 2.773;
	x0(9) = 55.574;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 3.342;


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
	global_par_k4=5.0;
% Parameter:   id =  k5, name = k5
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
	global_par_k12=15.0;
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
% Parameter:   id =  k30, name = k30
	global_par_k30=0.1;
% Parameter:   id =  k31, name = k31
	global_par_k31=2.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=1.0E-6;
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
	global_par_k38=0.02;
% Parameter:   id =  k39, name = k39
	global_par_k39=1000.0;
% Parameter:   id =  f_I_phe, name = f_I_phe
% Parameter:   id =  f_act_pcf, name = f_act_pcf
% Parameter:   id =  f_I_E_phe_outfl, name = f_I_E_phe_outfl
% Parameter:   id =  f_act_trioseP, name = f_act_trioseP
% Parameter:   id =  g, name = g
	global_par_g=1.0;
% Parameter:   id =  Light_Dark_Tracker, name = Light_Dark_Tracker
% Parameter:   id =  k40, name = k40
	global_par_k40=0.0568;
% Parameter:   id =  k44, name = k44
	global_par_k44=1000.0;
% Parameter:   id =  K_I_L, name = K_I_L
	global_par_K_I_L=1.0E-4;
% Parameter:   id =  K_M_M2, name = K_M_M2
	global_par_K_M_M2=1.0E-6;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.001;
% Parameter:   id =  k53, name = k53
	global_par_k53=2.5E-4;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.00625;
% Parameter:   id =  k55, name = k55
	global_par_k55=1.0E-4;
% Parameter:   id =  f_I, name = f_I
% Parameter:   id =  k56, name = k56
	global_par_k56=0.1;
% Parameter:   id =  Daylight_Duration, name = Daylight_Duration
	global_par_Daylight_Duration=16.0;
% assignmentRule: variable = k5
	global_par_k5=x(11)+x(12)-0.85;
% assignmentRule: variable = f_act_trioseP
	global_par_f_act_trioseP=x(4)/(global_par_k33+x(4));
% assignmentRule: variable = Light_Dark_Tracker
	global_par_Light_Dark_Tracker=piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24))-8;
% assignmentRule: variable = k29
	global_par_k29=piecewise(10.1, global_par_Light_Dark_Tracker < 0, 0);
% assignmentRule: variable = f_act_pcf
	global_par_f_act_pcf=x(4)/(global_par_k13+x(4));
% assignmentRule: variable = f_I_phe
	global_par_f_I_phe=global_par_k38/(global_par_k38+x(4));
% assignmentRule: variable = f_I_E_phe_outfl
	global_par_f_I_E_phe_outfl=global_par_k39/(global_par_k39+x(4));
% assignmentRule: variable = f_I
	global_par_f_I=global_par_k56/(global_par_k56+x(10));

% Reaction: id = Sucrose_Formation_TrioseP, name = Sucrose_Formation_TrioseP
	reaction_Sucrose_Formation_TrioseP=compartment_compartment*Function_for_Sucrose_Formation_TrioseP(global_par_k4, x(2), x(7));

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
	reaction_N_Formation=compartment_compartment*Function_for_N_Formation(global_par_k11, const_species_Next, x(6));

% Reaction: id = N_Consumption, name = N_Consumption
	reaction_N_Consumption=compartment_compartment*global_par_k12*x(4);

% Reaction: id = Next_Consumption, name = Next_Consumption
	reaction_Next_Consumption=compartment_compartment*Function_for_Next_Consumption(global_par_g, global_par_k11, const_species_Next, x(6));

% Reaction: id = Starch_Formation, name = Starch_Formation
	reaction_Starch_Formation=compartment_compartment*Function_for_Starch_Formation(global_par_k10, x(7), global_par_f_I, global_par_k49);

% Reaction: id = Enitrate_Consumption, name = Enitrate_Consumption
	reaction_Enitrate_Consumption=compartment_compartment*Function_for_Enitrate_Consumption(global_par_k27, x(4), x(6), global_par_k28);

% Reaction: id = TrioseP_Formation, name = TrioseP_Formation
	reaction_TrioseP_Formation=compartment_compartment*Function_for_TrioseP_Formation(global_par_k29, global_par_f_act_trioseP, x(8));

% Reaction: id = ECO2_Consumption, name = ECO2_Consumption
	reaction_ECO2_Consumption=compartment_compartment*Function_for_ECO2_Consumption(global_par_k31, x(7), x(8), global_par_k32);

% Reaction: id = Estarch_Consumption, name = Estarch_Consumption
	reaction_Estarch_Consumption=compartment_compartment*Function_for_Estarch_Consumption(global_par_k35, x(1), x(9), global_par_k36);

% Reaction: id = ETP_Formation, name = ETP_Formation
	reaction_ETP_Formation=compartment_compartment*Function_for_ETP_Formation(global_par_k53, x(5));

% Reaction: id = ETP_Consumption, name = ETP_Consumption
	reaction_ETP_Consumption=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(10), global_par_k55, global_par_k54);

% Reaction: id = M1_Formation, name = M1_Formation
	reaction_M1_Formation=compartment_compartment*Function_for_M1_Formation(global_par_k29, global_par_k40);

% Reaction: id = M1_Consumption, name = M1_Consumption
	reaction_M1_Consumption=compartment_compartment*Function_for_M1_Consumption(global_par_k44, global_par_K_I_L, x(11), global_par_k29);

% Reaction: id = M2_Consumption, name = M2_Consumption
	reaction_M2_Consumption=compartment_compartment*Function_for_M2_Consumption(global_par_k29, global_par_k40, x(12), global_par_K_M_M2);

% Species:   id = Next, name = Next, constant	const_species_Next=20.0;

	xdot=zeros(12,1);
	
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
	
% Species:   id = Enitrate, name = Enitrate, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Enitrate_Formation) + (-1.0 * reaction_Enitrate_Consumption));
	
% Species:   id = trioseP, name = trioseP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Sucrose_Formation_TrioseP) + (-1.0 * reaction_Starch_Formation) + ( 1.0 * reaction_TrioseP_Formation));
	
% Species:   id = ECO2, name = ECO2, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_ECO2_Formation) + (-1.0 * reaction_ECO2_Consumption));
	
% Species:   id = Estarch, name = Estarch, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_Estarch_Formation) + (-1.0 * reaction_Estarch_Consumption));
	
% Species:   id = ETP, name = ETP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_ETP_Formation) + (-1.0 * reaction_ETP_Consumption));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_M1_Formation) + (-1.0 * reaction_M1_Consumption));
	
% Species:   id = M2, name = M2, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_M1_Consumption) + (-1.0 * reaction_M2_Consumption));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Function_for_Sucrose_Consumption_Ephe(k9,sucr,Ephe,f_I_phe), z=(k9*sucr*Ephe*f_I_phe);end

function z=Function_for_Sucrose_Consumption_PCF_Lignin(k14,k15,sucr), z=((k14+k15)*sucr);end

function z=Function_for_Enitrate_Consumption(k27,N,Enitrate,k28), z=(k27*N*Enitrate/(k28+Enitrate));end

function z=Function_for_TrioseP_Formation(k29,f_act_trioseP,ECO2), z=(k29*f_act_trioseP*ECO2);end

function z=Function_for_Sucrose_Formation_Starch(k37,starch,Estarch), z=(k37*starch*Estarch);end

function z=Function_for_Starch_Formation(k10,trioseP,f_I,k49), z=(k10*trioseP*f_I/(k49+trioseP));end

function z=Function_for_ETP_Formation(k53,starch), z=(k53*starch);end

function z=Function_for_Sucrose_Formation_TrioseP(k4,EtrioseP,trioseP), z=(k4*EtrioseP*trioseP);end

function z=Function_for_Sucrose_Consumption_PCF(k5,sucr,f_act_pcf), z=(k5*sucr*f_act_pcf);end

function z=Function_for_Next_Consumption(g,k11,Next,Enitrate), z=(g*k11*Next*Enitrate);end

function z=Function_for_ECO2_Consumption(k31,trioseP,ECO2,k32), z=(k31*trioseP*ECO2/(k32+ECO2));end

function z=Function_for_M1_Formation(k29,k40), z=(k29*k40);end

function z=Function_for_M1_Consumption(k44,K_I_L,M1,k29), z=(k44*K_I_L*M1/(K_I_L+k29));end

function z=Function_for_Ephe_Formation_Sucrose(k6,sucr,f_I_E_phe_outfl), z=(k6*sucr*f_I_E_phe_outfl);end

function z=Function_for_N_Formation(k11,Next,Enitrate), z=(k11*Next*Enitrate);end

function z=Function_for_M2_Consumption(k29,k40,M2,K_M_M2), z=(k29*k40*M2/(K_M_M2+M2));end

function z=Function_for_EtrioseP_Consumption_Sucrose(k2,sucr,EtrioseP,k3), z=(k2*sucr*EtrioseP/(k3+EtrioseP));end

function z=Function_for_Estarch_Consumption(k35,sucr,Estarch,k36), z=(k35*sucr*Estarch/(k36+Estarch));end

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


