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
% Model name = Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns
%
% is http://identifiers.org/biomodels.db/MODEL2003080001
% is http://identifiers.org/biomodels.db/BIOMD0000001072
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 3.82007920893978;
	x0(2) = -17.5981186613022;
	x0(3) = 5.57377096632541;
	x0(4) = 0.0;
	x0(5) = -0.644229940134898;
	x0(6) = -0.803527836803535;


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

% Compartment: id = individual, name = Default, constant
	compartment_individual=1.0;
% Parameter:   id =  Theta, name = Theta
	global_par_Theta=0.0;
% Parameter:   id =  Q_max, name = Q_max
	global_par_Q_max=100.0;
% Parameter:   id =  theta, name = theta
	global_par_theta=10.0;
% Parameter:   id =  sigma_comma, name = sigma_comma
	global_par_sigma_comma=3.0;
% Parameter:   id =  G, name = G
	global_par_G=37.0;
% Parameter:   id =  r, name = r
	global_par_r=0.4;
% Parameter:   id =  h, name = h
	global_par_h=0.55;
% Parameter:   id =  q, name = q
	global_par_q=10.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.032;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=13750.9870831398;
% Parameter:   id =  f, name = f
	global_par_f=0.99729;
% Parameter:   id =  tau_c, name = tau_c
	global_par_tau_c=24.2;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.13;
% Parameter:   id =  delta, name = delta
	global_par_delta=-0.7;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  k, name = k
	global_par_k=17.0;
% Parameter:   id =  b, name = b
	global_par_b=4.8;
% Parameter:   id =  v_vd, name = v_vd
	global_par_v_vd=-0.17;
% Parameter:   id =  v_md, name = v_md
	global_par_v_md=-0.08;
% Parameter:   id =  v_vb, name = v_vb
	global_par_v_vb=0.0;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.0;
% Parameter:   id =  A_null, name = A_null
	global_par_A_null=1.3;
% Parameter:   id =  D_null, name = D_null
	global_par_D_null=-4.8;
% Parameter:   id =  chi, name = chi
	global_par_chi=79200.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=4.4;
% Parameter:   id =  v_vh, name = v_vh
	global_par_v_vh=1.0;
% Parameter:   id =  v_vm, name = v_vm
	global_par_v_vm=-2.1;
% Parameter:   id =  v_mv, name = v_mv
	global_par_v_mv=-1.8;
% Parameter:   id =  tau_v, name = tau_v
	global_par_tau_v=10.0;
% Parameter:   id =  tau_m, name = tau_m
	global_par_tau_m=10.0;
% Parameter:   id =  B, name = B
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  beta, name = beta
	global_par_beta=1.11111111111111E-4;
% Parameter:   id =  day, name = day
	global_par_day=24.0;
% Parameter:   id =  Qm, name = Qm
% Parameter:   id =  B_circumflex, name = B_circumflex
% Parameter:   id =  Omega, name = Omega
	global_par_Omega=0.0;
% Parameter:   id =  I_on, name = I_on
	global_par_I_on=0.0;
% Parameter:   id =  I_tilded, name = I_tilded
% Parameter:   id =  I, name = I
	global_par_I=0.0;
% Parameter:   id =  alpha_null, name = alpha_null
	global_par_alpha_null=0.00166666666666667;
% Parameter:   id =  I_null, name = I_null
	global_par_I_null=9500.0;
% Parameter:   id =  p, name = p
	global_par_p=0.5;
% Parameter:   id =  I_one, name = I_one
	global_par_I_one=10.0;
% Parameter:   id =  ModelValue_4, name = Initial for G
	global_par_ModelValue_4=37.0;
% Parameter:   id =  ModelValue_41, name = Initial for I_null
	global_par_ModelValue_41=9500.0;
% Parameter:   id =  ModelValue_37, name = Initial for I_on
	global_par_ModelValue_37=0.0;
% Parameter:   id =  ModelValue_1, name = Initial for Q_max
	global_par_ModelValue_1=100.0;
% Parameter:   id =  ModelValue_40, name = Initial for alpha_null
	global_par_ModelValue_40=0.00166666666666667;
% Parameter:   id =  ModelValue_42, name = Initial for p
	global_par_ModelValue_42=0.5;
% Parameter:   id =  ModelValue_5, name = Initial for r
	global_par_ModelValue_5=0.4;
% Parameter:   id =  ModelValue_3, name = Initial for sigma_comma
	global_par_ModelValue_3=3.0;
% Parameter:   id =  ModelValue_2, name = Initial for theta
	global_par_ModelValue_2=10.0;
% assignmentRule: variable = Qm
	global_par_Qm=global_par_ModelValue_1/(1+exp((global_par_ModelValue_2-x(2))/global_par_ModelValue_3));
% assignmentRule: variable = I_tilded
	global_par_I_tilded=global_par_Omega*global_par_ModelValue_37*piecewise(global_par_I-24*3600*ceil(global_par_I/(24*3600)),  xor (global_par_I < 0, (24*3600) < 0), global_par_I-24*3600*floor(global_par_I/(24*3600)));
% assignmentRule: variable = alpha
	global_par_alpha=global_par_ModelValue_40*(global_par_I_tilded/global_par_ModelValue_41)^global_par_ModelValue_42*global_par_I_tilded/(global_par_I_tilded+global_par_I_one);
% assignmentRule: variable = B_circumflex
	global_par_B_circumflex=global_par_ModelValue_4*global_par_alpha*(1-x(4));
% assignmentRule: variable = B
	global_par_B=(1-global_par_ModelValue_5*x(5))*(1-global_par_ModelValue_5*x(6))*global_par_B_circumflex;

% Reaction: id = Vm_deg, name = V_m_Degradation
	reaction_Vm_deg=compartment_individual*Rate_Law_for_V_m_degradation(x(2), global_par_tau_m);

% Reaction: id = Vv_deg, name = V_v_Degradation
	reaction_Vv_deg=compartment_individual*Rate_Law_for_V_v_degradation(x(1), global_par_tau_v);

% Reaction: id = Vm_Vv, name = V_v_Regulation
	reaction_Vm_Vv=compartment_individual*FV_v_reg(global_par_B, global_par_D_null, x(3), global_par_Q_max, x(2), x(5), global_par_a, global_par_b, global_par_delta, global_par_eta, global_par_k, global_par_sigma_comma, global_par_tau_v, global_par_theta, global_par_v_vb, global_par_v_vd, global_par_v_vh, global_par_v_vm);

% Reaction: id = Vv_Vm, name = V_m_Regulation
	reaction_Vv_Vm=compartment_individual*FV_m_reg(global_par_A_null, global_par_Q_max, x(1), x(5), global_par_a, global_par_b, global_par_delta, global_par_k, global_par_sigma_comma, global_par_tau_m, global_par_theta, global_par_v_md, global_par_v_mv);

% Reaction: id = Vm_H, name = H_Regulation_by_V_m
	reaction_Vm_H=compartment_individual*FH_reg_V_m(global_par_Q_max, x(2), global_par_chi, global_par_mu, global_par_sigma_comma, global_par_theta);

% Reaction: id = H_deg, name = H_Degradation
	reaction_H_deg=compartment_individual*Rate_Law_for_H_degradation(x(3), global_par_chi);

% Reaction: id = X_syn, name = x_Production
	reaction_X_syn=compartment_individual*Fx_prod(global_par_B, global_par_Theta, x(5), global_par_gamma, global_par_kappa, global_par_q, global_par_rho);

% Reaction: id = Y_syn, name = y_Production
	reaction_Y_syn=compartment_individual*Fy_syn(global_par_B, x(6), global_par_kappa);

% Reaction: id = n_deg, name = n_Degradation
	reaction_n_deg=compartment_individual*Fn_deg(global_par_alpha, global_par_beta, x(4));

% Reaction: id = Y_X, name = x_Regulation_by_y
	reaction_Y_X=compartment_individual*Fx_reg_y(x(6), global_par_kappa);

% Reaction: id = X_Y, name = y_Regulation_by_x
	reaction_X_Y=compartment_individual*Fy_reg_x(global_par_B, x(5), global_par_day, global_par_f, global_par_h, global_par_kappa, global_par_tau_c);

%Event: id=asleep
	event_asleep=(global_par_ModelValue_1/(1+exp(global_par_ModelValue_2-x(2)/global_par_ModelValue_3))) <= 1;

	if(event_asleep) 
		global_par_Theta=1;
		global_par_Omega=0.03;
	end

%Event: id=awake
	event_awake=(global_par_ModelValue_1/(1+exp(global_par_ModelValue_2-x(2)/global_par_ModelValue_3))) > 1;

	if(event_awake) 
		global_par_Theta=0;
		global_par_Omega=1;
	end

%Event: id=day_0
	event_day_0=time < (12*3600);

	if(event_day_0) 
		global_par_I=1;
	end

%Event: id=night
	event_night=time >= (12*3600);

	if(event_night) 
		global_par_I=0;
	end

	xdot=zeros(6,1);
	
% Species:   id = V_v, name = V_v(mean_cell_body_potential_VLPO), affected by kineticLaw
	xdot(1) = (1/(compartment_individual))*((-1.0 * reaction_Vv_deg) + ( 1.0 * reaction_Vm_Vv));
	
% Species:   id = V_m, name = V_m(mean_cell_body_potential_MA), affected by kineticLaw
	xdot(2) = (1/(compartment_individual))*((-1.0 * reaction_Vm_deg) + ( 1.0 * reaction_Vv_Vm));
	
% Species:   id = H, name = H(sleep_homeostatic_drive), affected by kineticLaw
	xdot(3) = (1/(compartment_individual))*(( 1.0 * reaction_Vm_H) + (-1.0 * reaction_H_deg));
	
% Species:   id = n, name = n(fraction_of_photoreceptors_that_are_activated), affected by kineticLaw
	xdot(4) = (1/(compartment_individual))*((-1.0 * reaction_n_deg) + ( 1.0 * reaction_n_syn));
	
% Species:   id = X, name = x(SCN_activity), affected by kineticLaw
	xdot(5) = (1/(compartment_individual))*(( 1.0 * reaction_X_syn) + ( 1.0 * reaction_Y_X));
	
% Species:   id = Y, name = y(complement_of_x), affected by kineticLaw
	xdot(6) = (1/(compartment_individual))*(( 1.0 * reaction_Y_syn) + ( 1.0 * reaction_X_Y));
end

function z=Fy_syn(B,Y,kappa), z=(B*Y/3/kappa);end

function z=FV_v_reg(B,D_null,H,Q_max,V_m,X,a,b,delta,eta,k,sigma_comma,tau_v,theta,v_vb,v_vd,v_vh,v_vm), z=((v_vm*Q_max/(1+exp((theta-V_m)/sigma_comma))+v_vd*(a*k*(X+delta)+b)+v_vh*eta*H+v_vb*eta*B+D_null)/tau_v);end

function z=Rate_Law_for_H_degradation(H,chi), z=(1/chi*H);end

function z=Fx_reg_y(Y,kappa), z=(Y/kappa);end

function z=Rate_Law_for_V_m_degradation(V_m,tau_m), z=(1/tau_m*V_m);end

function z=Fn_deg(alpha,beta,n), z=(60*(alpha+beta)*n);end

function z=FH_reg_V_m(Q_max,V_m,chi,mu,sigma_comma,theta), z=(mu*Q_max/(1+exp((theta-V_m)/sigma_comma))/chi);end

function z=Fn_syn(alpha), z=(60*alpha);end

function z=FV_m_reg(A_null,Q_max,V_v,X,a,b,delta,k,sigma_comma,tau_m,theta,v_md,v_mv), z=((v_mv*Q_max/(1+exp((theta-V_v)/sigma_comma))+v_md*(a*k*(X+delta)+b)+A_null)/tau_m);end

function z=Fx_prod(B,Theta,X,gamma,kappa,q,rho), z=((gamma*(X/3+4/3*X^3-256/105*X^7)+B+rho*(1/3-Theta)*(1-tanh(q*X)))/kappa);end

function z=Fy_reg_x(B,X,day,f,h,kappa,tau_c), z=((-X)*((day/(f*tau_c))^2+h*B)/kappa);end

function z=Rate_Law_for_V_v_degradation(V_v,tau_v), z=(1/tau_v*V_v);end

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


