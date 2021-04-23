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
% Model name = Wang1996_Synaptic_Inhibition_Two_Neuron
%
% is http://identifiers.org/biomodels.db/MODEL1101240000
% is http://identifiers.org/biomodels.db/BIOMD0000000302
% isDescribedBy http://identifiers.org/pubmed/8815919
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = NaN;
	x0(2) = -64.0;
	x0(3) = NaN;
	x0(4) = NaN;
	x0(5) = -64.0;
	x0(6) = NaN;
	x0(7) = NaN;


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

% Compartment: id = pre_synaptic_cell, name = pre_synaptic_cell, constant
	compartment_pre_synaptic_cell=1.0;
% Compartment: id = post_synaptic_cell, name = post_synaptic_cell, constant
	compartment_post_synaptic_cell=1.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=1.0;
% Parameter:   id =  gL, name = gL
	global_par_gL=0.1;
% Parameter:   id =  gK, name = gK
	global_par_gK=9.0;
% Parameter:   id =  gNa, name = gNa
	global_par_gNa=35.0;
% Parameter:   id =  E_K, name = E_K
	global_par_E_K=-90.0;
% Parameter:   id =  E_L, name = E_L
	global_par_E_L=-65.0;
% Parameter:   id =  E_Na, name = E_Na
	global_par_E_Na=55.0;
% Parameter:   id =  phi, name = phi
	global_par_phi=5.0;
% Parameter:   id =  tau_0, name = tau_0
% Parameter:   id =  I_app_post, name = I_app_post
	global_par_I_app_post=0.0;
% Parameter:   id =  I_Na_post, name = I_Na_post
% Parameter:   id =  m_inf_post, name = m_inf_post
% Parameter:   id =  h_post, name = h_post
% Parameter:   id =  V_post, name = V_post
% Parameter:   id =  alpha_m_post, name = alpha_m_post
% Parameter:   id =  beta_m_post, name = beta_m_post
% Parameter:   id =  alpha_h_post, name = alpha_h_post
% Parameter:   id =  beta_h_post, name = beta_h_post
% Parameter:   id =  I_K_post, name = I_K_post
% Parameter:   id =  n_post, name = n_post
% Parameter:   id =  alpha_n_post, name = alpha_n_post
% Parameter:   id =  beta_n_post, name = beta_n_post
% Parameter:   id =  I_L_post, name = I_L_post
% Parameter:   id =  I_syn, name = I_syn
% Parameter:   id =  g_syn, name = g_syn
	global_par_g_syn=0.1;
% Parameter:   id =  s, name = s
% Parameter:   id =  E_syn, name = E_syn
	global_par_E_syn=-75.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=12.0;
% Parameter:   id =  F, name = F
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  V_pre, name = V_pre
% Parameter:   id =  theta_syn, name = theta_syn
	global_par_theta_syn=0.0;
% Parameter:   id =  I_app_pre, name = I_app_pre
% Parameter:   id =  I_Na_pre, name = I_Na_pre
% Parameter:   id =  m_inf_pre, name = m_inf_pre
% Parameter:   id =  h_pre, name = h_pre
% Parameter:   id =  n_pre, name = n_pre
% Parameter:   id =  alpha_n_pre, name = alpha_n_pre
% Parameter:   id =  beta_n_pre, name = beta_n_pre
% Parameter:   id =  alpha_h_pre, name = alpha_h_pre
% Parameter:   id =  beta_h_pre, name = beta_h_pre
% Parameter:   id =  alpha_m_pre, name = alpha_m_pre
% Parameter:   id =  beta_m_pre, name = beta_m_pre
% Parameter:   id =  I_K_pre, name = I_K_pre
% Parameter:   id =  I_L_pre, name = I_L_pre
% assignmentRule: variable = tau_0
	global_par_tau_0=global_par_Cm/global_par_gL;
% assignmentRule: variable = I_Na_post
	global_par_I_Na_post=global_par_gNa*global_par_m_inf_post^3*global_par_h_post*(global_par_V_post-global_par_E_Na);
% assignmentRule: variable = m_inf_post
	global_par_m_inf_post=global_par_alpha_m_post/(global_par_alpha_m_post+global_par_beta_m_post);
% rateRule: variable = h_post
global_par_h_post = x(1);
% rateRule: variable = V_post
global_par_V_post = x(2);
% assignmentRule: variable = alpha_m_post
	global_par_alpha_m_post=(-0.1)*(global_par_V_post+35)/(exp((-0.1)*(global_par_V_post+35))-1);
% assignmentRule: variable = beta_m_post
	global_par_beta_m_post=4*exp((-(global_par_V_post+60))/18);
% assignmentRule: variable = alpha_h_post
	global_par_alpha_h_post=0.07*exp((-(global_par_V_post+58))/20);
% assignmentRule: variable = beta_h_post
	global_par_beta_h_post=1/(exp((-0.1)*(global_par_V_post+28))+1);
% assignmentRule: variable = I_K_post
	global_par_I_K_post=global_par_gK*global_par_n_post^4*(global_par_V_post-global_par_E_K);
% rateRule: variable = n_post
global_par_n_post = x(3);
% assignmentRule: variable = alpha_n_post
	global_par_alpha_n_post=(-0.01)*(global_par_V_post+34)/(exp((-0.1)*(global_par_V_post+34))-1);
% assignmentRule: variable = beta_n_post
	global_par_beta_n_post=0.125*exp((-(global_par_V_post+44))/80);
% assignmentRule: variable = I_L_post
	global_par_I_L_post=global_par_gL*(global_par_V_post-global_par_E_L);
% assignmentRule: variable = I_syn
	global_par_I_syn=global_par_g_syn*global_par_s*(global_par_V_post-global_par_E_syn);
% rateRule: variable = s
global_par_s = x(4);
% assignmentRule: variable = F
	global_par_F=1/(1+exp((-(global_par_V_pre-global_par_theta_syn))/2));
% rateRule: variable = V_pre
global_par_V_pre = x(5);
% assignmentRule: variable = I_app_pre
	global_par_I_app_pre=piecewise(2, (time >= 10) && (time <= 20), 0);
% assignmentRule: variable = I_Na_pre
	global_par_I_Na_pre=global_par_gNa*global_par_m_inf_pre^3*global_par_h_pre*(global_par_V_pre-global_par_E_Na);
% assignmentRule: variable = m_inf_pre
	global_par_m_inf_pre=global_par_alpha_m_pre/(global_par_alpha_m_pre+global_par_beta_m_pre);
% rateRule: variable = h_pre
global_par_h_pre = x(6);
% rateRule: variable = n_pre
global_par_n_pre = x(7);
% assignmentRule: variable = alpha_n_pre
	global_par_alpha_n_pre=(-0.01)*(global_par_V_pre+34)/(exp((-0.1)*(global_par_V_pre+34))-1);
% assignmentRule: variable = beta_n_pre
	global_par_beta_n_pre=0.125*exp((-(global_par_V_pre+44))/80);
% assignmentRule: variable = alpha_h_pre
	global_par_alpha_h_pre=0.07*exp((-(global_par_V_pre+58))/20);
% assignmentRule: variable = beta_h_pre
	global_par_beta_h_pre=1/(exp((-0.1)*(global_par_V_pre+28))+1);
% assignmentRule: variable = alpha_m_pre
	global_par_alpha_m_pre=(-0.1)*(global_par_V_pre+35)/(exp((-0.1)*(global_par_V_pre+35))-1);
% assignmentRule: variable = beta_m_pre
	global_par_beta_m_pre=4*exp((-(global_par_V_pre+60))/18);
% assignmentRule: variable = I_K_pre
	global_par_I_K_pre=global_par_gK*global_par_n_pre^4*(global_par_V_pre-global_par_E_K);
% assignmentRule: variable = I_L_pre
	global_par_I_L_pre=global_par_gL*(global_par_V_pre-global_par_E_L);

	xdot=zeros(7,1);
	% rateRule: variable = h_post
	xdot(1) = global_par_phi*(global_par_alpha_h_post*(1-global_par_h_post)-global_par_beta_h_post*global_par_h_post);
	% rateRule: variable = V_post
	xdot(2) = (global_par_I_app_post-(global_par_I_Na_post+global_par_I_K_post+global_par_I_L_post+global_par_I_syn))/global_par_Cm;
	% rateRule: variable = n_post
	xdot(3) = global_par_phi*(global_par_alpha_n_post*(1-global_par_n_post)-global_par_beta_n_post*global_par_n_post);
	% rateRule: variable = s
	xdot(4) = global_par_alpha*global_par_F*(1-global_par_s)-global_par_beta*global_par_s;
	% rateRule: variable = V_pre
	xdot(5) = (global_par_I_app_pre-(global_par_I_Na_pre+global_par_I_K_pre+global_par_I_L_pre))/global_par_Cm;
	% rateRule: variable = h_pre
	xdot(6) = global_par_phi*(global_par_alpha_h_pre*(1-global_par_h_pre)-global_par_beta_h_pre*global_par_h_pre);
	% rateRule: variable = n_pre
	xdot(7) = global_par_phi*(global_par_alpha_n_pre*(1-global_par_n_pre)-global_par_beta_n_pre*global_par_n_pre);
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


