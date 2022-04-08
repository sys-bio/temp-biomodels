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
% Model name = Viertel2019 - A Computational model of the mammalian external tufted cell
%
% isDescribedBy http://identifiers.org/pubmed/30290156
% isDerivedFrom http://identifiers.org/pubmed/25717156
% isDerivedFrom http://identifiers.org/pubmed/9497431
% isDerivedFrom http://identifiers.org/pubmed/21723921
% is http://identifiers.org/biomodels.db/MODEL1911100001
% is http://identifiers.org/biomodels.db/BIOMD0000000844
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = -51.4085348748388;
	x0(2) = 3.9839179219E-4;
	x0(3) = 0.055706295559466;
	x0(4) = 0.139259083672574;
	x0(5) = 0.157733123889777;
	x0(6) = 0.048620921041047;
	x0(7) = 0.216830183163897;
	x0(8) = 0.118223401083348;
	x0(9) = 0.049382804823416;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  vL, name = vL
	global_par_vL=-62.5;
% Parameter:   id =  vH, name = vH
	global_par_vH=-35.0;
% Parameter:   id =  vNa, name = vNa
	global_par_vNa=45.0;
% Parameter:   id =  vK, name = vK
	global_par_vK=-105.0;
% Parameter:   id =  vCa, name = vCa
	global_par_vCa=120.0;
% Parameter:   id =  gL, name = gL
	global_par_gL=2.5;
% Parameter:   id =  gH, name = gH
	global_par_gH=20.0;
% Parameter:   id =  gNaP, name = gNaP
	global_par_gNaP=8.3244;
% Parameter:   id =  gLVA, name = gLVA
	global_par_gLVA=15.0213;
% Parameter:   id =  gNa, name = gNa
	global_par_gNa=29.17;
% Parameter:   id =  gK, name = gK
	global_par_gK=12.96;
% Parameter:   id =  gHVA, name = gHVA
	global_par_gHVA=2.0;
% Parameter:   id =  gBK, name = gBK
	global_par_gBK=5.0;
% Parameter:   id =  gHVK, name = gHVK
	global_par_gHVK=10.0;
% Parameter:   id =  theta_mNa, name = theta_mNa
	global_par_theta_mNa=-25.0;
% Parameter:   id =  beta_mNa, name = beta_mNa
	global_par_beta_mNa=-6.5;
% Parameter:   id =  theta_nK, name = theta_nK
	global_par_theta_nK=-26.0;
% Parameter:   id =  beta_nK, name = beta_nK
	global_par_beta_nK=-9.0;
% Parameter:   id =  tau_nK, name = tau_nK
	global_par_tau_nK=10.0;
% Parameter:   id =  theta_mLVA, name = theta_mLVA
	global_par_theta_mLVA=-37.1;
% Parameter:   id =  beta_mLVA, name = beta_mLVA
	global_par_beta_mLVA=-4.8916;
% Parameter:   id =  tau_mLVA, name = tau_mLVA
	global_par_tau_mLVA=40.0;
% Parameter:   id =  theta_hLVA, name = theta_hLVA
	global_par_theta_hLVA=-59.2;
% Parameter:   id =  beta_hLVA, name = beta_hLVA
	global_par_beta_hLVA=11.2326;
% Parameter:   id =  tau_hLVA, name = tau_hLVA
	global_par_tau_hLVA=350.0;
% Parameter:   id =  theta_mHVA, name = theta_mHVA
	global_par_theta_mHVA=-10.0;
% Parameter:   id =  beta_mHVA, name = beta_mHVA
	global_par_beta_mHVA=-6.5;
% Parameter:   id =  theta_mNaP, name = theta_mNaP
	global_par_theta_mNaP=-40.0;
% Parameter:   id =  beta_mNaP, name = beta_mNaP
	global_par_beta_mNaP=-4.0;
% Parameter:   id =  theta_hNaP, name = theta_hNaP
	global_par_theta_hNaP=-54.0;
% Parameter:   id =  beta_hNaP, name = beta_hNaP
	global_par_beta_hNaP=5.0;
% Parameter:   id =  tau_hNaP, name = tau_hNaP
	global_par_tau_hNaP=500.0;
% Parameter:   id =  theta_hH, name = theta_hH
	global_par_theta_hH=-61.32;
% Parameter:   id =  beta_hH, name = beta_hH
	global_par_beta_hH=5.855;
% Parameter:   id =  tau_hH_T, name = tau_hH_T
	global_par_tau_hH_T=100.0;
% Parameter:   id =  delta_hH_T, name = delta_hH_T
	global_par_delta_hH_T=0.205;
% Parameter:   id =  theta_hH_T, name = theta_hH_T
	global_par_theta_hH_T=-65.95;
% Parameter:   id =  beta_hH_T, name = beta_hH_T
	global_par_beta_hH_T=4.44;
% Parameter:   id =  theta_mHVK, name = theta_mHVK
	global_par_theta_mHVK=-40.0;
% Parameter:   id =  beta_mHVK, name = beta_mHVK
	global_par_beta_mHVK=-2.0;
% Parameter:   id =  theta_nHVK, name = theta_nHVK
	global_par_theta_nHVK=-30.0;
% Parameter:   id =  beta_nHVK, name = beta_nHVK
	global_par_beta_nHVK=-2.0;
% Parameter:   id =  mBK_base, name = mBK_base
	global_par_mBK_base=170.0;
% Parameter:   id =  beta_mBK, name = beta_mBK
	global_par_beta_mBK=-15.6;
% Parameter:   id =  Ca0, name = Ca0
	global_par_Ca0=2.0E-5;
% Parameter:   id =  tau_Ca, name = tau_Ca
	global_par_tau_Ca=8.0;
% Parameter:   id =  Ca_buffer, name = Ca_buffer
	global_par_Ca_buffer=0.5;
% Parameter:   id =  Ca_z, name = Ca_z
	global_par_Ca_z=2.0;
% Parameter:   id =  d, name = d
	global_par_d=1.0;
% Parameter:   id =  C, name = C
	global_par_C=21.0;
% Parameter:   id =  F, name = F
	global_par_F=96485.0;
% Parameter:   id =  mNa_inf, name = mNa_inf
% Parameter:   id =  nK_Inf, name = nK_Inf
% Parameter:   id =  mNaP_inf, name = mNaP_inf
% Parameter:   id =  hNaP_inf, name = hNaP_inf
% Parameter:   id =  hH_inf, name = hH_inf
% Parameter:   id =  mLVA_inf, name = mLVA_inf
% Parameter:   id =  hLVA_inf, name = hLVA_inf
% Parameter:   id =  mHVA_inf, name = mHVA_inf
% Parameter:   id =  mBK_inf, name = mBK_inf
% Parameter:   id =  mHVK_inf, name = mHVK_inf
% Parameter:   id =  nHVK_inf, name = nHVK_inf
% Parameter:   id =  theta_mBK, name = theta_mBK
% Parameter:   id =  p_mBK, name = p_mBK
% Parameter:   id =  s, name = s
% Parameter:   id =  f, name = f
% Parameter:   id =  nHVK_tau, name = nHVK_tau
% Parameter:   id =  nK_tau, name = nK_tau
% Parameter:   id =  hNaP_tau, name = hNaP_tau
% Parameter:   id =  hH_tau, name = hH_tau
% Parameter:   id =  mLVA_tau, name = mLVA_tau
% Parameter:   id =  hLVA_tau, name = hLVA_tau
% Parameter:   id =  mBK_tau, name = mBK_tau
% Parameter:   id =  INa, name = INa
% Parameter:   id =  IHVK, name = IHVK
% Parameter:   id =  IK, name = IK
% Parameter:   id =  IL, name = IL
% Parameter:   id =  IH, name = IH
% Parameter:   id =  INaP, name = INaP
% Parameter:   id =  ILVA, name = ILVA
% Parameter:   id =  IHVA, name = IHVA
% Parameter:   id =  IBK, name = IBK
% assignmentRule: variable = hNaP_inf
	global_par_hNaP_inf=1/(1+exp((x(1)-global_par_theta_hNaP)/global_par_beta_hNaP));
% assignmentRule: variable = hH_inf
	global_par_hH_inf=1/(1+exp((x(1)-global_par_theta_hH)/global_par_beta_hH));
% assignmentRule: variable = nK_Inf
	global_par_nK_Inf=1/(1+exp((x(1)-global_par_theta_nK)/global_par_beta_nK));
% assignmentRule: variable = mLVA_inf
	global_par_mLVA_inf=1/(1+exp((x(1)-global_par_theta_mLVA)/global_par_beta_mLVA));
% assignmentRule: variable = mHVA_inf
	global_par_mHVA_inf=1/(1+exp((x(1)-global_par_theta_mHVA)/global_par_beta_mHVA));
% assignmentRule: variable = mNa_inf
	global_par_mNa_inf=1/(1+exp((x(1)-global_par_theta_mNa)/global_par_beta_mNa));
% assignmentRule: variable = mHVK_inf
	global_par_mHVK_inf=1/(1+exp((x(1)-global_par_theta_mHVK)/global_par_beta_mHVK));
% assignmentRule: variable = hLVA_inf
	global_par_hLVA_inf=1/(1+exp((x(1)-global_par_theta_hLVA)/global_par_beta_hLVA));
% assignmentRule: variable = mNaP_inf
	global_par_mNaP_inf=1/(1+exp((x(1)-global_par_theta_mNaP)/global_par_beta_mNaP));
% assignmentRule: variable = nHVK_inf
	global_par_nHVK_inf=1/(1+exp((x(1)-global_par_theta_nHVK)/global_par_beta_nHVK));
% assignmentRule: variable = p_mBK
	global_par_p_mBK=2.9+6.3*exp((-360)*x(2));
% assignmentRule: variable = s
	global_par_s=-25.3+107.5*exp((-120)*x(2));
% assignmentRule: variable = theta_mBK
	global_par_theta_mBK=-20+59.2*exp((-90)*x(2))+96.7*exp((-470)*x(2));
% assignmentRule: variable = mBK_inf
	global_par_mBK_inf=1/(1+exp((x(1)-global_par_theta_mBK)/global_par_beta_mBK));
% assignmentRule: variable = f
	global_par_f=1/(10*(exp((-(x(1)+100-global_par_s))/63.6)+exp((-150+(x(1)+100-global_par_s))/63.6)))-5.2;
% assignmentRule: variable = IHVK
	global_par_IHVK=global_par_gHVK*global_par_mHVK_inf*x(9)*(x(1)-global_par_vK);
% assignmentRule: variable = hH_tau
	global_par_hH_tau=global_par_tau_hH_T*exp(global_par_delta_hH_T*(x(1)-global_par_theta_hH_T)/global_par_beta_hH_T)/(1+exp((x(1)-global_par_theta_hH_T)/global_par_beta_hH_T));
% assignmentRule: variable = IL
	global_par_IL=global_par_gL*(x(1)-global_par_vL);
% assignmentRule: variable = mBK_tau
	global_par_mBK_tau=(-(global_par_p_mBK-1))*(global_par_f-0.2)/0.8+global_par_mBK_base;
% assignmentRule: variable = IBK
	global_par_IBK=global_par_gBK*x(8)*(x(1)-global_par_vK);
% assignmentRule: variable = nK_tau
	global_par_nK_tau=global_par_tau_nK/cosh((x(1)-global_par_theta_nK)/(2*global_par_beta_nK));
% assignmentRule: variable = INa
	global_par_INa=global_par_gNa*(1-x(3))*global_par_mNa_inf^3*(x(1)-global_par_vNa);
% assignmentRule: variable = INaP
	global_par_INaP=global_par_gNaP*global_par_mNaP_inf*x(4)*(x(1)-global_par_vNa);
% assignmentRule: variable = IH
	global_par_IH=global_par_gH*x(5)*(x(1)-global_par_vH);
% assignmentRule: variable = hLVA_tau
	global_par_hLVA_tau=global_par_tau_hLVA/cosh((x(1)-global_par_theta_hLVA)/(2*global_par_beta_hLVA));
% assignmentRule: variable = ILVA
	global_par_ILVA=global_par_gLVA*x(6)^2*x(7)*(x(1)-global_par_vCa);
% assignmentRule: variable = IHVA
	global_par_IHVA=global_par_gHVA*global_par_mHVA_inf*(x(1)-global_par_vCa);
% assignmentRule: variable = mLVA_tau
	global_par_mLVA_tau=global_par_tau_mLVA/cosh((x(1)-global_par_theta_mLVA)/(2*global_par_beta_mLVA));
% assignmentRule: variable = nHVK_tau
	global_par_nHVK_tau=1000/(1+exp(-(x(1)+35)))+1000;
% assignmentRule: variable = hNaP_tau
	global_par_hNaP_tau=global_par_tau_hNaP/cosh((x(1)-global_par_theta_hNaP)/(2*global_par_beta_hNaP));
% assignmentRule: variable = IK
	global_par_IK=global_par_gK*x(3)^4*(x(1)-global_par_vK);

% Reaction: id = dAdt_V, name = dAdt_V
	reaction_dAdt_V=compartment_compartment*Function_for_dAdt_V(global_par_INa, global_par_IK, global_par_ILVA, global_par_IH, global_par_INaP, global_par_IL, global_par_IHVA, global_par_IBK, global_par_IHVK, global_par_C);

% Reaction: id = dAdt_nK, name = dAdt_nK
	reaction_dAdt_nK=compartment_compartment*Function_for_Ion(global_par_nK_Inf, x(3), global_par_nK_tau);

% Reaction: id = dAdt_hNaP, name = dAdt_hNaP
	reaction_dAdt_hNaP=compartment_compartment*Function_for_Ion(global_par_hNaP_inf, x(4), global_par_hNaP_tau);

% Reaction: id = dAdt_hH, name = dAdt_hH
	reaction_dAdt_hH=compartment_compartment*Function_for_Ion(global_par_hH_inf, x(5), global_par_hH_tau);

% Reaction: id = dAdt_mLVA, name = dAdt_mLVA
	reaction_dAdt_mLVA=compartment_compartment*Function_for_Ion(global_par_mLVA_inf, x(6), global_par_mLVA_tau);

% Reaction: id = dAdt_hLVA, name = dAdt_hLVA
	reaction_dAdt_hLVA=compartment_compartment*Function_for_Ion(global_par_hLVA_inf, x(7), global_par_hLVA_tau);

% Reaction: id = dAdt_mBK, name = dAdt_mBK
	reaction_dAdt_mBK=compartment_compartment*Function_for_Ion(global_par_mBK_inf, x(8), global_par_mBK_tau);

% Reaction: id = dAdt_Ca_Up, name = dAdt_Ca_Up
	reaction_dAdt_Ca_Up=compartment_compartment*Function_for_dAdt_Ca_Up(global_par_Ca0, x(2), global_par_tau_Ca);

% Reaction: id = dAdt_nHVK, name = dAdt_nHVK
	reaction_dAdt_nHVK=compartment_compartment*Function_for_Ion(global_par_nHVK_inf, x(9), global_par_nHVK_tau);

% Reaction: id = dAdt_Ca_Down, name = dAdt_Ca_Down
	reaction_dAdt_Ca_Down=compartment_compartment*Function_for_dAdt_Ca_Down(global_par_Ca_buffer, global_par_ILVA, global_par_IHVA, global_par_Ca_z, global_par_F, global_par_d);

	xdot=zeros(9,1);
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_dAdt_V));
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_Ca_Up) + (-1.0 * reaction_dAdt_Ca_Down));
	
% Species:   id = nK, name = nK, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_nK));
	
% Species:   id = hNaP, name = hNaP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_hNaP));
	
% Species:   id = hH, name = hH, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_hH));
	
% Species:   id = mLVA, name = mLVA, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_mLVA));
	
% Species:   id = hLVA, name = hLVA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_hLVA));
	
% Species:   id = mBK, name = mBK, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_mBK));
	
% Species:   id = nHVK, name = nHVK, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_dAdt_nHVK));
end

function z=Function_for_dAdt_Ca_Down(Ca_buffer,ILVA,IHVA,Ca_z,F,d), z=(Ca_buffer*10*(ILVA+IHVA)/(Ca_z*F*d));end

function z=Function_for_dAdt_V(INa,IK,ILVA,IH,INaP,IL,IHVA,IBK,IHVK,C), z=((INa+IK+ILVA+IH+INaP+IL+IHVA+IBK+IHVK)/C);end

function z=Function_for_Ion(inf,ion,tau), z=((inf-ion)/tau);end

function z=Function_for_dAdt_Ca_Up(Ca0,Ca,tau_Ca), z=((Ca0-Ca)/tau_Ca);end

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


