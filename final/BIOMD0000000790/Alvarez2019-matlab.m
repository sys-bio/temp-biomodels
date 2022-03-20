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
% Model name = Alvarez2019 - A nonlinear mathematical model of cell-mediated immune response for tumor phenotypic heterogeneity
%
% isDescribedBy http://identifiers.org/pubmed/30930063
% is http://identifiers.org/biomodels.db/MODEL1908120003
% is http://identifiers.org/biomodels.db/BIOMD0000000790
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 8.0E7;
	x0(2) = 2.0E7;
	x0(3) = 1.05E7;
	x0(4) = 0.0;


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
% Parameter:   id =  a, name = a
	global_par_a=0.514;
% Parameter:   id =  b, name = b
	global_par_b=2.0E-9;
% Parameter:   id =  mu, name = mu
	global_par_mu=1.101E-7;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.101E-10;
% Parameter:   id =  nu, name = nu
	global_par_nu=1.101E-9;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=13000.0;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=0.0412;
% Parameter:   id =  c_3, name = c_3
	global_par_c_3=3.422E-10;
% Parameter:   id =  c_4, name = c_4
	global_par_c_4=0.1245;
% Parameter:   id =  c_5, name = c_5
	global_par_c_5=2.0193E7;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=1.1E-7;
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=3.42E-10;
% Parameter:   id =  d_3, name = d_3
	global_par_d_3=0.02;
% Parameter:   id =  p, name = p
	global_par_p=0.35;
% Parameter:   id =  q, name = q
	global_par_q=1.0;
% Parameter:   id =  r, name = r
	global_par_r=1.5;
% Parameter:   id =  s, name = s
	global_par_s=1.0;
% Parameter:   id =  T_Total, name = T_Total
% assignmentRule: variable = T_Total
	global_par_T_Total=x(1)+x(2);

% Reaction: id = Tumor_Growth_1, name = Tumor_Growth_1
	reaction_Tumor_Growth_1=compartment_compartment*Function_for_Tumor_Growth_1(global_par_a, x(1), global_par_b);

% Reaction: id = Tumor_Growth_2, name = Tumor_Growth_2
	reaction_Tumor_Growth_2=compartment_compartment*Function_for_Tumor_Growth_2(global_par_a, global_par_p, x(2), global_par_b);

% Reaction: id = Tumor_Killing_T1_E1, name = Tumor_Killing_T1_E1
	reaction_Tumor_Killing_T1_E1=compartment_compartment*Function_for_Tumor_Killing_T1_E1(global_par_mu, x(3), x(1));

% Reaction: id = Tumor_Killing_T1_E2, name = Tumor_Killing_T1_E2
	reaction_Tumor_Killing_T1_E2=compartment_compartment*Function_for_Tumor_Killing_T1_E2(global_par_beta, x(4), x(1));

% Reaction: id = Tumor_Competition_1, name = Tumor_Competition_1
	reaction_Tumor_Competition_1=compartment_compartment*Function_for_Tumor_Competition_1(global_par_nu, x(1), x(2));

% Reaction: id = Tumor_Competition_2, name = Tumor_Competition_2
	reaction_Tumor_Competition_2=compartment_compartment*Function_for_Tumor_Competition_2(global_par_r, global_par_nu, x(1), x(2));

% Reaction: id = Tumor_Killing_T2_E1, name = Tumor_Killing_T2_E1
	reaction_Tumor_Killing_T2_E1=compartment_compartment*Function_for_Tumor_Killing_T2_E1(global_par_q, x(3), x(2), global_par_mu);

% Reaction: id = E1_Death, name = E1_Death
	reaction_E1_Death=compartment_compartment*global_par_c_2*x(3);

% Reaction: id = E1_Depletion, name = E1_Depletion
	reaction_E1_Depletion=compartment_compartment*Function_for_E1_Depletion(global_par_c_3, x(1), x(2), x(3));

% Reaction: id = E1_Recruitment, name = E1_Recruitment
	reaction_E1_Recruitment=compartment_compartment*Function_for_E1_Recruitment(global_par_c_4, x(1), global_par_s, x(2), x(3), global_par_c_5);

% Reaction: id = E2_Recruitment, name = E2_Recruitment
	reaction_E2_Recruitment=compartment_compartment*Function_for_E2_Recruitment(global_par_d_1, x(1), x(3));

% Reaction: id = E2_Depletion, name = E2_Depletion
	reaction_E2_Depletion=compartment_compartment*Function_for_E2_Depletion(global_par_d_2, x(1), x(4));

% Reaction: id = E2_Death, name = E2_Death
	reaction_E2_Death=compartment_compartment*global_par_d_3*x(4);

	xdot=zeros(4,1);
	
% Species:   id = T_1, name = T_1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth_1) + (-1.0 * reaction_Tumor_Killing_T1_E1) + (-1.0 * reaction_Tumor_Killing_T1_E2) + (-1.0 * reaction_Tumor_Competition_1));
	
% Species:   id = T_2, name = T_2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth_2) + (-1.0 * reaction_Tumor_Competition_2) + (-1.0 * reaction_Tumor_Killing_T2_E1));
	
% Species:   id = E_1_Innate, name = E_1_Innate, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_E1_Production_Constant) + (-1.0 * reaction_E1_Death) + (-1.0 * reaction_E1_Depletion) + ( 1.0 * reaction_E1_Recruitment));
	
% Species:   id = E_2_Adaptive, name = E_2_Adaptive, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_E2_Recruitment) + (-1.0 * reaction_E2_Depletion) + (-1.0 * reaction_E2_Death));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Tumor_Growth_1(a,T_1,b), z=(a*T_1*(1-b*T_1));end

function z=Function_for_E1_Depletion(c_3,T_1,T_2,E_1), z=(c_3*(T_1+T_2)*E_1);end

function z=Function_for_Tumor_Killing_T1_E1(mu,E_1,T_1), z=(mu*E_1*T_1);end

function z=Function_for_E2_Recruitment(d_1,T_1,E_1), z=(d_1*T_1*E_1);end

function z=Function_for_E2_Depletion(d_2,T_1,E_2), z=(d_2*T_1*E_2);end

function z=Function_for_Tumor_Competition_1(nu,T_1,T_2), z=(nu*T_1*T_2);end

function z=Function_for_E1_Recruitment(c_4,T_1,s,T_2,E_1,c_5), z=(c_4*(T_1+s*T_2)*E_1/(c_5+T_1+T_2));end

function z=Function_for_Tumor_Killing_T1_E2(beta,E_2,T_1), z=(beta*E_2*T_1);end

function z=Function_for_Tumor_Killing_T2_E1(q,E_1,T_2,mu), z=(mu*q*E_1*T_2);end

function z=Function_for_Tumor_Competition_2(r,nu,T_1,T_2), z=(r*nu*T_1*T_2);end

function z=Function_for_Tumor_Growth_2(a,p,T_2,b), z=(a*p*T_2*(1-b*T_2));end

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


