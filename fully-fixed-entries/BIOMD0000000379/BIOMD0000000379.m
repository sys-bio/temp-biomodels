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
% Model name = DallaMan2007_MealModel_GlucoseInsulinSystem
%
% is http://identifiers.org/biomodels.db/MODEL1110030000
% is http://identifiers.org/biomodels.db/BIOMD0000000379
% isDescribedBy http://identifiers.org/pubmed/17926672
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(13) = 178.0;
	x0(14) = 135.0;
	x0(15) = 4.5;
	x0(16) = 1.25;
	x0(17) = 78000.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 25.0;
	x0(21) = 25.0;
	x0(22) = 0.0;
	x0(23) = 3.6;
	x0(24) = 0.0;
	x0(1) = 178.0;
	x0(2) = 135.0;
	x0(3) = 4.5;
	x0(4) = 1.25;
	x0(5) = 78000.0;
	x0(6) = 0.0;
	x0(7) = 25.0;
	x0(8) = 25.0;
	x0(9) = 0.0;
	x0(10) = 3.6;
	x0(11) = 0.0;
	x0(12) = 0.0;


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

% Compartment: id = Compartment1, name = default, constant
	compartment_Compartment1=1.0;
% Parameter:   id =  V_G, name = V_G
	global_par_V_G=1.88;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.065;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.079;
% Parameter:   id =  G_b, name = G_b
	global_par_G_b=95.0;
% Parameter:   id =  V_I, name = V_I
	global_par_V_I=0.05;
% Parameter:   id =  m_1, name = m_1
	global_par_m_1=0.19;
% Parameter:   id =  m_2, name = m_2
	global_par_m_2=0.484;
% Parameter:   id =  m_4, name = m_4
	global_par_m_4=0.194;
% Parameter:   id =  m_5, name = m_5
	global_par_m_5=0.0304;
% Parameter:   id =  m_6, name = m_6
	global_par_m_6=0.6471;
% Parameter:   id =  HE_b, name = HE_b
	global_par_HE_b=0.6;
% Parameter:   id =  I_b, name = I_b
	global_par_I_b=25.0;
% Parameter:   id =  S_b, name = S_b
	global_par_S_b=1.8;
% Parameter:   id =  S_b_minus, name = S_b_minus
	global_par_S_b_minus=-1.8;
% Parameter:   id =  k_max, name = k_max
	global_par_k_max=0.0558;
% Parameter:   id =  k_min, name = k_min
	global_par_k_min=0.008;
% Parameter:   id =  k_abs, name = k_abs
	global_par_k_abs=0.057;
% Parameter:   id =  k_gri, name = k_gri
	global_par_k_gri=0.0558;
% Parameter:   id =  f, name = f
	global_par_f=0.9;
% Parameter:   id =  b, name = b
	global_par_b=0.82;
% Parameter:   id =  d, name = d
	global_par_d=0.01;
% Parameter:   id =  BW, name = BW
	global_par_BW=78.0;
% Parameter:   id =  k_p1, name = k_p1
	global_par_k_p1=2.7;
% Parameter:   id =  k_p2, name = k_p2
	global_par_k_p2=0.0021;
% Parameter:   id =  k_p3, name = k_p3
	global_par_k_p3=0.009;
% Parameter:   id =  k_p4, name = k_p4
	global_par_k_p4=0.0618;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=0.0079;
% Parameter:   id =  U_ii, name = U_ii
	global_par_U_ii=1.0;
% Parameter:   id =  V_m0, name = V_m0
	global_par_V_m0=2.5;
% Parameter:   id =  V_mX, name = V_mX
	global_par_V_mX=0.047;
% Parameter:   id =  K_m0, name = K_m0
	global_par_K_m0=225.59;
% Parameter:   id =  p_2U, name = p_2U
	global_par_p_2U=0.0331;
% Parameter:   id =  part, name = part
	global_par_part=0.2;
% Parameter:   id =  K, name = K
	global_par_K=2.3;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.05;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.11;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.5;
% Parameter:   id =  k_e1, name = k_e1
	global_par_k_e1=5.0E-4;
% Parameter:   id =  k_e2, name = k_e2
	global_par_k_e2=339.0;
% Parameter:   id =  D, name = D
	global_par_D=78000.0;
% Parameter:   id =  aa, name = aa
% Parameter:   id =  cc, name = cc
% Parameter:   id =  EGP, name = EGP
% Parameter:   id =  V_mmax, name = V_mmax
% Parameter:   id =  E, name = E
% Parameter:   id =  S, name = S
% Parameter:   id =  I, name = I
% Parameter:   id =  G, name = G
% Parameter:   id =  HE, name = HE
% Parameter:   id =  m_3, name = m_3
% Parameter:   id =  Q_sto, name = Q_sto
% Parameter:   id =  Ra, name = Ra
% Parameter:   id =  k_empt, name = k_empt
% Parameter:   id =  U_idm, name = U_idm
% Parameter:   id =  U_id, name = U_id
% Parameter:   id =  U, name = U
% Parameter:   id =  S_po, name = S_po
% assignmentRule: variable = aa
	global_par_aa=5/2/(1-global_par_b)/global_par_D;
% assignmentRule: variable = cc
	global_par_cc=5/2/global_par_d/global_par_D;
% assignmentRule: variable = EGP
	global_par_EGP=global_par_k_p1-global_par_k_p2*x(1)-global_par_k_p3*x(8)-global_par_k_p4*x(10);
% assignmentRule: variable = V_mmax
	global_par_V_mmax=(1-global_par_part)*(global_par_V_m0+global_par_V_mX*x(9));
% assignmentRule: variable = U_idm
	global_par_U_idm=global_par_V_mmax*x(2)/(global_par_K_m0+x(2));
% assignmentRule: variable = E
	global_par_E=0;
% assignmentRule: variable = S
	global_par_S=global_par_gamma*x(10);
% assignmentRule: variable = I
	global_par_I=x(4)/global_par_V_I;
% assignmentRule: variable = G
	global_par_G=x(1)/global_par_V_G;
% assignmentRule: variable = HE
	global_par_HE=(-global_par_m_5)*global_par_S+global_par_m_6;
% assignmentRule: variable = m_3
	global_par_m_3=global_par_HE*global_par_m_1/(1-global_par_HE);
% assignmentRule: variable = Q_sto
	global_par_Q_sto=x(5)+x(12);
% assignmentRule: variable = Ra
	global_par_Ra=global_par_f*global_par_k_abs*x(6)/global_par_BW;
% assignmentRule: variable = k_empt
	global_par_k_empt=global_par_k_min+(global_par_k_max-global_par_k_min)/2*(tanh(global_par_aa*(global_par_Q_sto-global_par_b*global_par_D))-tanh(global_par_cc*(global_par_Q_sto-global_par_d*global_par_D))+2);
% assignmentRule: variable = U_id
	global_par_U_id=global_par_U_idm;
% assignmentRule: variable = U
	global_par_U=global_par_U_ii+global_par_U_id;
% assignmentRule: variable = S_po
	global_par_S_po=x(11)+global_par_K*(global_par_EGP+global_par_Ra-global_par_E-global_par_U_ii-global_par_k_1*x(1)+global_par_k_2*x(2))/global_par_V_G+global_par_S_b;
% rateRule: variable = G_p
x(1) = x(13);
% rateRule: variable = G_t
x(2) = x(14);
% rateRule: variable = I_l
x(3) = x(15);
% rateRule: variable = I_p
x(4) = x(16);
% rateRule: variable = Q_sto1
x(5) = x(17);
% rateRule: variable = Q_sto2
x(12) = x(18);
% rateRule: variable = Q_gut
x(6) = x(19);
% rateRule: variable = I_1
x(7) = x(20);
% rateRule: variable = I_d
x(8) = x(21);
% rateRule: variable = X
x(9) = x(22);
% rateRule: variable = I_po
x(10) = x(23);
% rateRule: variable = Y
x(11) = x(24);

	xdot=zeros(24,1);
	% rateRule: variable = G_p
	xdot(13) = global_par_EGP+global_par_Ra-global_par_E-global_par_U_ii-global_par_k_1*x(1)+global_par_k_2*x(2);
	% rateRule: variable = G_t
	xdot(14) = -global_par_U_id+global_par_k_1*x(1)-global_par_k_2*x(2);
	% rateRule: variable = I_l
	xdot(15) = (-global_par_m_1)*x(3)-global_par_m_3*x(3)+global_par_m_2*x(4)+global_par_S;
	% rateRule: variable = I_p
	xdot(16) = (-global_par_m_2)*x(4)-global_par_m_4*x(4)+global_par_m_1*x(3);
	% rateRule: variable = Q_sto1
	xdot(17) = (-global_par_k_gri)*x(5);
	% rateRule: variable = Q_sto2
	xdot(18) = (-global_par_k_empt)*x(12)+global_par_k_gri*x(5);
	% rateRule: variable = Q_gut
	xdot(19) = (-global_par_k_abs)*x(6)+global_par_k_empt*x(12);
	% rateRule: variable = I_1
	xdot(20) = (-global_par_k_i)*(x(7)-global_par_I);
	% rateRule: variable = I_d
	xdot(21) = (-global_par_k_i)*(x(8)-x(7));
	% rateRule: variable = X
	xdot(22) = (-global_par_p_2U)*x(9)+global_par_p_2U*(global_par_I-global_par_I_b);
	% rateRule: variable = I_po
	xdot(23) = (-global_par_gamma)*x(10)+global_par_S_po;
	% rateRule: variable = Y
	xdot(24) = (-global_par_alpha)*(x(11)-global_par_beta*(global_par_G-global_par_G_b));
	
% Species:   id = G_p, name = G_p, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = G_t, name = G_t, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = I_l, name = I_l, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = I_p, name = I_p, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Q_sto1, name = Q_sto1, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Q_gut, name = Q_gut, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = I_1, name = I_1, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = I_d, name = I_d, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = X, name = X, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = I_po, name = I_po, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = Y, name = Y, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = Q_sto2, name = Q_sto2, defined in a rule 	xdot(12) = x(12);
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


