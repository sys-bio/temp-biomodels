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
% Model name = Kogan2013 - A mathematical model for the immunotherapeutic control of the TH1 TH2 imbalance in melanoma
%
% isDescribedBy http://identifiers.org/doi/10.3934/dcdsb.2013.18.1017
% is http://identifiers.org/biomodels.db/MODEL1912020001
% is http://identifiers.org/biomodels.db/BIOMD0000000881
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 500000.0;
	x0(2) = 1000000.0;
	x0(3) = 1.0;
	x0(4) = 1.0;


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
% Parameter:   id =  mu_T, name = mu_T
	global_par_mu_T=0.001;
% Parameter:   id =  r_T, name = r_T
	global_par_r_T=1000.0;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=0.0;
% Parameter:   id =  b_1, name = b_1
	global_par_b_1=0.35;
% Parameter:   id =  a_2, name = a_2
	global_par_a_2=0.0;
% Parameter:   id =  b_2, name = b_2
	global_par_b_2=0.18;
% Parameter:   id =  mu_G, name = mu_G
	global_par_mu_G=0.6;
% Parameter:   id =  q_G, name = q_G
	global_par_q_G=1.0E-7;
% Parameter:   id =  p_G, name = p_G
	global_par_p_G=0.016;
% Parameter:   id =  a_G, name = a_G
	global_par_a_G=0.59;
% Parameter:   id =  b_G, name = b_G
	global_par_b_G=0.13;
% Parameter:   id =  mu_I, name = mu_I
	global_par_mu_I=0.36;
% Parameter:   id =  q_I, name = q_I
	global_par_q_I=1.0E-7;
% Parameter:   id =  p_I, name = p_I
	global_par_p_I=0.5;
% Parameter:   id =  a_I, name = a_I
	global_par_a_I=0.12;
% Parameter:   id =  b_I, name = b_I
	global_par_b_I=0.025;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=30.0;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=0.8;
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=0.8;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=0.1;
% Parameter:   id =  c_G, name = c_G
	global_par_c_G=12.0;
% Parameter:   id =  d_G, name = d_G
	global_par_d_G=0.05;
% Parameter:   id =  e_G, name = e_G
	global_par_e_G=5.4;
% Parameter:   id =  f_G, name = f_G
	global_par_f_G=0.22;
% Parameter:   id =  L, name = L
	global_par_L=0.0;
% Parameter:   id =  T_1_e5, name = T_1_e5
% Parameter:   id =  T_2_e5, name = T_2_e5
% assignmentRule: variable = T_1_e5
	global_par_T_1_e5=x(1)/100000;
% assignmentRule: variable = T_2_e5
	global_par_T_2_e5=x(2)/100000;

% Reaction: id = Th1_Recruitment, name = Th1_Recruitment
	reaction_Th1_Recruitment=compartment_compartment*Function_for_Th1_Recruitment(global_par_r_T, global_par_b_1, x(4), global_par_c_1, global_par_L, global_par_d_1);

% Reaction: id = Th1_Elimination, name = Th1_Elimination
	reaction_Th1_Elimination=compartment_compartment*global_par_mu_T*x(1);

% Reaction: id = Th2_Recruitment, name = Th2_Recruitment
	reaction_Th2_Recruitment=compartment_compartment*Function_for_Th2_Recruitment(global_par_c_2, global_par_L, global_par_d_1, global_par_r_T, global_par_b_2, x(3));

% Reaction: id = Th2_Elimination, name = Th2_Elimination
	reaction_Th2_Elimination=compartment_compartment*global_par_mu_T*x(2);

% Reaction: id = IFN_gamma_Production_NK_CTL, name = IFN-gamma_Production_NK_CTL
	reaction_IFN_gamma_Production_NK_CTL=compartment_compartment*Function_for_IFN_gamma_Production_NK_CTL(global_par_p_G, global_par_c_G, global_par_L, global_par_d_G);

% Reaction: id = IFN_gamma_Production_Th2, name = IFN-gamma_Production_Th2
	reaction_IFN_gamma_Production_Th2=compartment_compartment*Function_for_IFN_gamma_Production_Th2(global_par_q_G, x(1), global_par_a_G, global_par_b_G, x(4), global_par_e_G, global_par_L, global_par_f_G);

% Reaction: id = IFN_gamma_Elimination, name = IFN-gamma_Elimination
	reaction_IFN_gamma_Elimination=compartment_compartment*global_par_mu_G*x(3);

% Reaction: id = IL_10_Production_DC, name = IL-10_Production_DC
	reaction_IL_10_Production_DC=compartment_compartment*Function_for_IL_10_Production_DC(global_par_p_I, global_par_a_I, global_par_b_I, x(3));

% Reaction: id = IL_10_Production_Th1, name = IL-10_Production_Th1
	reaction_IL_10_Production_Th1=compartment_compartment*Function_for_IL_10_Production_Th1(global_par_q_I, x(2));

% Reaction: id = IL_10_Elimination, name = IL-10_Elimination
	reaction_IL_10_Elimination=compartment_compartment*global_par_mu_I*x(4);

	xdot=zeros(4,1);
	
% Species:   id = T_1, name = T_1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Th1_Recruitment) + (-1.0 * reaction_Th1_Elimination));
	
% Species:   id = T_2, name = T_2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Th2_Recruitment) + (-1.0 * reaction_Th2_Elimination));
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_IFN_gamma_Production_NK_CTL) + ( 1.0 * reaction_IFN_gamma_Production_Th2) + (-1.0 * reaction_IFN_gamma_Elimination));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_IL_10_Production_DC) + ( 1.0 * reaction_IL_10_Production_Th1) + (-1.0 * reaction_IL_10_Elimination));
end

function z=Function_for_IL_10_Production_DC(p_I,a_I,b_I,G), z=(p_I*(a_I+(1-a_I)*b_I/(G+b_I)));end

function z=Function_for_Th2_Recruitment(c_2,L,d_1,r_T,b_2,G), z=((c_2+(1-c_2)*d_1/(L+d_1))*r_T*b_2/(b_2+G));end

function z=Function_for_IFN_gamma_Production_Th2(q_G,T_1,a_G,b_G,I,e_G,L,f_G), z=(q_G*T_1*(a_G+(1-a_G)*b_G/(I+b_G))*(1+e_G*L/(L+f_G)));end

function z=Function_for_Th1_Recruitment(r_T,b_1,I,c_1,L,d_1), z=((1+c_1*L/(L+d_1))*r_T*b_1/(b_1+I));end

function z=Function_for_IFN_gamma_Production_NK_CTL(p_G,c_G,L,d_G), z=(p_G*(1+c_G*L/(L+d_G)));end

function z=Function_for_IL_10_Production_Th1(q_I,T_2), z=(q_I*T_2);end

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


