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
% Model name = Hu2019 - Modeling Pancreatic Cancer Dynamics with Immunotherapy
%
% isDescribedBy http://identifiers.org/pubmed/30843136
% isDerivedFrom http://identifiers.org/doi/10.1142/S021833901750005X
% is http://identifiers.org/biomodels.db/MODEL1908130001
% is http://identifiers.org/biomodels.db/BIOMD0000000792
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E9;
	x0(2) = 5600000.0;
	x0(3) = 1.9E8;
	x0(4) = 50000.0;
	x0(5) = 9.4;
	x0(6) = 1.0;


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
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.0195;
% Parameter:   id =  b_1, name = b_1
	global_par_b_1=1.02E-11;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=1.7857E-12;
% Parameter:   id =  m_1, name = m_1
	global_par_m_1=1.0E9;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.96;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.00195;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=0.125;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=5.6E10;
% Parameter:   id =  b_2, name = b_2
	global_par_b_2=1.7857E-9;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=0.015;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=124.5;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=2.0E10;
% Parameter:   id =  m_3, name = m_3
	global_par_m_3=1000000.0;
% Parameter:   id =  r_3, name = r_3
	global_par_r_3=3500.0;
% Parameter:   id =  mu_3, name = mu_3
	global_par_mu_3=0.02;
% Parameter:   id =  beta_4, name = beta_4
	global_par_beta_4=5.85;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=1000000.0;
% Parameter:   id =  mu_4, name = mu_4
	global_par_mu_4=0.034;
% Parameter:   id =  r_4, name = r_4
	global_par_r_4=12500.0;
% Parameter:   id =  m_4, name = m_4
	global_par_m_4=8.9E10;
% Parameter:   id =  beta_5, name = beta_5
	global_par_beta_5=7.3;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=1000000.0;
% Parameter:   id =  mu_5, name = mu_5
	global_par_mu_5=0.034;
% Parameter:   id =  D_0, name = D_0
	global_par_D_0=5.0E10;
% Parameter:   id =  p, name = p
	global_par_p=0.9;
% Parameter:   id =  k, name = k
	global_par_k=1.0;
% Parameter:   id =  mu_6, name = mu_6
	global_par_mu_6=0.66;

% Reaction: id = PCC_Tumor_Growth, name = PCC_Tumor_Growth
	reaction_PCC_Tumor_Growth=compartment_compartment*Function_for_PCC_Tumor_Growth(global_par_r_1, global_par_beta_1, x(2), x(1), global_par_b_1);

% Reaction: id = PCC_Tumor_Killing, name = PCC_Tumor_Killing
	reaction_PCC_Tumor_Killing=compartment_compartment*Function_for_PCC_Tumor_Killing(global_par_delta_1, x(1), x(3), global_par_m_1, x(4));

% Reaction: id = PSC_Tumor_Growth, name = PSC_Tumor_Growth
	reaction_PSC_Tumor_Growth=compartment_compartment*Function_for_PSC_Tumor_Growth(global_par_r_2, global_par_beta_2, x(4), global_par_k_2, x(2), global_par_b_2);

% Reaction: id = PSC_Natural_Death, name = PSC_Natural_Death
	reaction_PSC_Natural_Death=compartment_compartment*global_par_mu_2*x(2);

% Reaction: id = Effector_Cells_Production, name = Effector_Cells_Production
	reaction_Effector_Cells_Production=compartment_compartment*Function_for_Effector_Cells_Production(global_par_beta_3, x(3), x(5), global_par_k_3, global_par_m_3, x(4));

% Reaction: id = Effector_Cells_Apoptosis, name = Effector_Cells_Apoptosis
	reaction_Effector_Cells_Apoptosis=compartment_compartment*global_par_mu_3*x(3);

% Reaction: id = TPC_Decay, name = TPC_Decay
	reaction_TPC_Decay=compartment_compartment*global_par_mu_4*x(4);

% Reaction: id = TPC_Production_PSC, name = TPC_Production_PSC
	reaction_TPC_Production_PSC=compartment_compartment*Function_for_TPC_Production_PSC(global_par_r_4, x(1), x(2), global_par_m_4, x(5));

% Reaction: id = TSC_Production, name = TSC_Production
	reaction_TSC_Production=compartment_compartment*Function_for_TSC_Production(global_par_beta_5, x(1), x(3), global_par_k_5);

% Reaction: id = TSC_Decay, name = TSC_Decay
	reaction_TSC_Decay=compartment_compartment*global_par_mu_5*x(5);

% Reaction: id = siRNA_Decay, name = siRNA_Decay
	reaction_siRNA_Decay=compartment_compartment*global_par_mu_6*x(6);

	xdot=zeros(6,1);
	
% Species:   id = x_PCC, name = x_PCC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_PCC_Tumor_Growth) + (-1.0 * reaction_PCC_Tumor_Killing));
	
% Species:   id = y_PSC, name = y_PSC, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_PSC_Tumor_Growth) + (-1.0 * reaction_PSC_Natural_Death));
	
% Species:   id = z_Effector_Cells, name = z_Effector_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Effector_Cells_Production) + (-1.0 * reaction_Effector_Cells_Apoptosis) + ( 1.0 * reaction_Effector_Cells_Production_Constant));
	
% Species:   id = w_TPC, name = w_TPC, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_TPC_Production) + (-1.0 * reaction_TPC_Decay) + ( 1.0 * reaction_TPC_Production_PSC));
	
% Species:   id = v_TSC, name = v_TSC, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_TSC_Production) + (-1.0 * reaction_TSC_Decay));
	
% Species:   id = R_siRNA, name = R_siRNA, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_siRNA_Decay) + ( 1.0 * reaction_siRNA_Dose));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_TSC_Production(beta_5,x,z,k_5), z=(beta_5*x*z/(k_5+x));end

function z=Function_for_TPC_Production_PSC(r_4,x,y,m_4,v), z=(r_4*x*y/(m_4+v));end

function z=Function_for_PSC_Tumor_Growth(r_2,beta_2,w,k_2,y,b_2), z=((r_2+beta_2*w/(k_2+w))*y*(1-b_2*y));end

function z=Function_for_PCC_Tumor_Killing(delta_1,x,z,m_1,w), z=(delta_1*x*z/(m_1+w));end

function z=Function_for_Effector_Cells_Production(beta_3,z,v,k_3,m_3,w), z=(beta_3*z*v/((k_3+v)*(m_3+w)));end

function z=Function_for_PCC_Tumor_Growth(r_1,beta_1,y,x,b_1), z=((r_1+beta_1*y)*x*(1-b_1*x));end

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


