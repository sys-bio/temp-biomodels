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
% Model name = Reed2004 - Methionine Cycle
%
% is http://identifiers.org/biomodels.db/MODEL1006230091
% isDescribedBy http://identifiers.org/pubmed/14637052
% is http://identifiers.org/biomodels.db/BIOMD0000000698
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 200.0;
	x0(2) = 53.5;
	x0(3) = 137.6;
	x0(4) = 13.2;
	x0(5) = 0.88;
	x0(6) = 0.0;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  V_max_MATI, name = V_max_MATI
	global_par_V_max_MATI=561.0;
% Parameter:   id =  K_m_MATI, name = K_m_MATI
	global_par_K_m_MATI=41.0;
% Parameter:   id =  K_i_MATI, name = K_i_MATI
	global_par_K_i_MATI=50.0;
% Parameter:   id =  V_max_MATIII, name = V_max_MATIII
	global_par_V_max_MATIII=22870.0;
% Parameter:   id =  K_m1_MATIII, name = K_m1_MATIII
% Parameter:   id =  K_m2_MATIII, name = K_m2_MATIII
	global_par_K_m2_MATIII=21.1;
% Parameter:   id =  V_max_GNMT, name = V_max_GNMT
	global_par_V_max_GNMT=10600.0;
% Parameter:   id =  K_m_GNMT, name = K_m_GNMT
	global_par_K_m_GNMT=4500.0;
% Parameter:   id =  K_i_GNMT, name = K_i_GNMT
	global_par_K_i_GNMT=20.0;
% Parameter:   id =  V_max_METH, name = V_max_METH
	global_par_V_max_METH=4521.0;
% Parameter:   id =  K_m1_METH, name = K_m1_METH
% Parameter:   id =  K_m2_METH_A, name = K_m2_METH_A
	global_par_K_m2_METH_A=10.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=100.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=10.0;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=1.7;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=30.0;
% Parameter:   id =  V_max_MS, name = V_max_MS
	global_par_V_max_MS=500.0;
% Parameter:   id =  K_m_Hcy_MS, name = K_m_Hcy_MS
	global_par_K_m_Hcy_MS=0.1;
% Parameter:   id =  K_m_5mTHF_MS, name = K_m_5mTHF_MS
	global_par_K_m_5mTHF_MS=25.0;
% Parameter:   id =  K_d_MS, name = K_d_MS
	global_par_K_d_MS=1.0;
% Parameter:   id =  V_max_BHMT, name = V_max_BHMT
	global_par_V_max_BHMT=2500.0;
% Parameter:   id =  K_m_BHMT, name = K_m_BHMT
	global_par_K_m_BHMT=12.0;
% assignmentRule: variable = Metin
	x(1)=piecewise(200, (time < 2) || (time >= 8), piecewise(300, (time >= 2) && (time < 5), piecewise(100, (time >= 5) && (time < 8), 200)));
% assignmentRule: variable = K_m1_MATIII
	global_par_K_m1_MATIII=20000/(1+5.7*(x(3)/(x(3)+600))^2);
% assignmentRule: variable = K_m1_METH
	global_par_K_m1_METH=1*(1+x(4)/4);

% Reaction: id = V_MAT_I, name = V_MAT-I
	reaction_V_MAT_I=compartment_Compartment*function_for_V_MATI(global_par_V_max_MATI, global_par_K_m_MATI, x(2), x(3), global_par_K_i_MATI);

% Reaction: id = V_MAT_III, name = V_MAT-III
	reaction_V_MAT_III=compartment_Compartment*function_for_V_MATIII(global_par_V_max_MATIII, x(2), global_par_K_m1_MATIII, global_par_K_m2_MATIII);

% Reaction: id = V_METH, name = V_METH
	reaction_V_METH=compartment_Compartment*function_for_V_METH(global_par_V_max_METH, x(3), global_par_K_m2_METH_A, global_par_K_m1_METH);

% Reaction: id = V_GNMT, name = V_GNMT
	reaction_V_GNMT=compartment_Compartment*function_for_V_GMNT(global_par_V_max_GNMT, global_par_K_m_GNMT, x(3), x(4), global_par_K_i_GNMT);

% Reaction: id = V_AH, name = V_AH
	reaction_V_AH=compartment_Compartment*function_for_V_AH(global_par_alpha_1, x(4), global_par_alpha_2, x(5));

% Reaction: id = V_MS, name = V_MS
	reaction_V_MS=compartment_Compartment*function_for_V_MS(global_par_V_max_MS, const_species__5mTHF, x(5), global_par_K_d_MS, global_par_K_m_Hcy_MS, global_par_K_m_5mTHF_MS);

% Reaction: id = V_BHMT, name = V_BHMT
	reaction_V_BHMT=compartment_Compartment*function_for_V_BHMT(x(3), x(4), global_par_V_max_BHMT, x(5), global_par_K_m_BHMT);

% Reaction: id = V_CBS, name = V_CBS
	reaction_V_CBS=compartment_Compartment*function_for_V_CBS(global_par_beta_1, x(3), x(4), global_par_beta_2, x(5));

% Reaction: id = METIN, name = METIN	% Local Parameter:   id =  k1, name = k1
	reaction_METIN_k1=1.0;

	reaction_METIN=compartment_Compartment*reaction_METIN_k1*x(1);

% Species:   id = _5mTHF, name = 5mTHF, constant	const_species__5mTHF=5.2;

	xdot=zeros(6,1);
	
% Species:   id = Metin, name = Metin, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Methionine, name = Methionine, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment))*((-1.0 * reaction_V_MAT_I) + (-1.0 * reaction_V_MAT_III) + ( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_BHMT) + ( 1.0 * reaction_METIN));
	
% Species:   id = AdoMet, name = AdoMet, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment))*(( 1.0 * reaction_V_MAT_I) + ( 1.0 * reaction_V_MAT_III) + (-1.0 * reaction_V_METH) + (-1.0 * reaction_V_GNMT));
	
% Species:   id = AdoHcy, name = AdoHcy, affected by kineticLaw
	xdot(4) = (1/(compartment_Compartment))*(( 1.0 * reaction_V_METH) + ( 1.0 * reaction_V_GNMT) + (-1.0 * reaction_V_AH));
	
% Species:   id = Homocysteine, name = Homocysteine, affected by kineticLaw
	xdot(5) = (1/(compartment_Compartment))*(( 1.0 * reaction_V_AH) + (-1.0 * reaction_V_MS) + (-1.0 * reaction_V_BHMT) + (-1.0 * reaction_V_CBS));
	
% Species:   id = Cystathionine, name = Cystathionine, affected by kineticLaw
	xdot(6) = (1/(compartment_Compartment))*(( 1.0 * reaction_V_CBS));
end

function z=function_for_V_MATI(V_max_mati,K_m_mati,MET,AdoMet,K_i_meti), z=(V_max_mati/(1+K_m_mati/MET*(1+AdoMet/K_i_meti)));end

function z=function_for_V_MATIII(V_max_matiii,Met,K_m1_MATIII,K_m2_MATIII), z=(V_max_matiii/(1+K_m1_MATIII*K_m2_MATIII/(Met^2+Met*K_m2_MATIII)));end

function z=function_for_V_GMNT(V_max_GMNT,K_m_GMNT,AdoMet,AdoHcy,K_i_GMNT), z=(V_max_GMNT/(1+(K_m_GMNT/AdoMet)^2.3)*1/(1+AdoHcy/K_i_GMNT));end

function z=function_for_V_METH(V_max_METH,AdoMet,K_m2_METH_A,K_m1_METH), z=(V_max_METH/(1+K_m1_METH/AdoMet+K_m2_METH_A+K_m2_METH_A*K_m1_METH/AdoMet));end

function z=function_for_V_MS(V_max_MS,mTHF,Hcy,K_d_MS,K_m_Hcy_MS,K_m_mTHF_MS), z=(V_max_MS*mTHF*Hcy/(K_d_MS*K_m_Hcy_MS+K_m_Hcy_MS*mTHF+K_m_mTHF_MS*Hcy+mTHF*Hcy));end

function z=function_for_V_CBS(beta1,AdoMet,AdoHcy,beta2,Hcy), z=((beta1*(AdoMet+AdoHcy)-beta2)*Hcy);end

function z=function_for_V_BHMT(AdoMet,AdoHcy,V_max_bhmt,Hcy,K_m_BHMT), z=((0.7-0.025*(AdoMet+AdoHcy-150))*V_max_bhmt*Hcy/(K_m_BHMT+Hcy));end

function z=function_for_V_AH(alpha1,AdoHcy,alpha2,Hcy), z=(alpha1*(AdoHcy-alpha2*Hcy));end

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


