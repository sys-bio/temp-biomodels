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
% Model name = Hu2019 - Pancreatic cancer dynamics
%
% is http://identifiers.org/biomodels.db/MODEL1907050003
% is http://identifiers.org/biomodels.db/BIOMD0000000744
% isDescribedBy http://identifiers.org/pubmed/30843136
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0E9;
	x0(2) = 5600000.0;
	x0(3) = 1.9E8;
	x0(4) = 50000.0;
	x0(5) = 9.4;


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

% Compartment: id = Pancreatic_tumor, name = Pancreatic tumor, constant
	compartment_Pancreatic_tumor=1.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.0195;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.02E-11;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=3.482115E-12;
% Parameter:   id =  m1, name = m1
	global_par_m1=1.0E8;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=0.96;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.00195;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.125;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.6E10;
% Parameter:   id =  b2, name = b2
	global_par_b2=1.7857E-9;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.015;
% Parameter:   id =  beta3, name = beta3
	global_par_beta3=124.5;
% Parameter:   id =  k3, name = k3
	global_par_k3=2.0E10;
% Parameter:   id =  m3, name = m3
	global_par_m3=1000000.0;
% Parameter:   id =  r3, name = r3
	global_par_r3=3500.0;
% Parameter:   id =  u3, name = u3
	global_par_u3=0.02;
% Parameter:   id =  beta4, name = beta4
	global_par_beta4=5.85;
% Parameter:   id =  k4, name = k4
	global_par_k4=1000000.0;
% Parameter:   id =  u4, name = u4
	global_par_u4=0.034;
% Parameter:   id =  r4, name = r4
	global_par_r4=12500.0;
% Parameter:   id =  m4, name = m4
	global_par_m4=8.9E10;
% Parameter:   id =  beta5, name = beta5
	global_par_beta5=7.3;
% Parameter:   id =  k5, name = k5
	global_par_k5=1000000.0;
% Parameter:   id =  u5, name = u5
	global_par_u5=0.034;

% Reaction: id = PCC_growth, name = PCC growth
	reaction_PCC_growth=compartment_Pancreatic_tumor*PCC_growth_0(global_par_r1, x(1), global_par_b1);

% Reaction: id = PCC_activation_by_PSC, name = PCC activation by PSC
	reaction_PCC_activation_by_PSC=compartment_Pancreatic_tumor*PCC_activation_by_PSC_0(global_par_beta1, x(2), x(1), global_par_b1);

% Reaction: id = PCC_death, name = PCC death
	reaction_PCC_death=compartment_Pancreatic_tumor*PCC_death_0(global_par_delta1, x(1), x(3), global_par_m1, x(4));

% Reaction: id = PSC_growth, name = PSC growth
	reaction_PSC_growth=compartment_Pancreatic_tumor*PSC_growth_0(global_par_r2, x(2), global_par_b2);

% Reaction: id = PSC_activation_by_tp_cytokine, name = PSC activation by tp cytokine
	reaction_PSC_activation_by_tp_cytokine=compartment_Pancreatic_tumor*PSC_activation_by_tp_cytokine_0(global_par_beta2, x(4), global_par_k2, x(2), global_par_b2);

% Reaction: id = PSC_death, name = PSC death
	reaction_PSC_death=compartment_Pancreatic_tumor*PSC_death_0(global_par_u2, x(2));

% Reaction: id = effector_production, name = effector production
	reaction_effector_production=compartment_Pancreatic_tumor*effector_production_0(global_par_beta3, x(3), x(5), global_par_k3, global_par_m3, x(4));

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_Pancreatic_tumor*effector_death_0(global_par_u3, x(3));

% Reaction: id = tp_cytokine_production, name = tp cytokine production
	reaction_tp_cytokine_production=compartment_Pancreatic_tumor*tp_production(global_par_beta4, x(1), x(3), global_par_k4);

% Reaction: id = tp_decay, name = tp decay
	reaction_tp_decay=compartment_Pancreatic_tumor*tp_decay_0(global_par_u4, x(4));

% Reaction: id = tp_stimulation_by_PSC, name = tp stimulation by PSC
	reaction_tp_stimulation_by_PSC=compartment_Pancreatic_tumor*tp_by_PSC(global_par_r4, x(1), x(2), global_par_m4, x(5));

% Reaction: id = ts_production, name = ts production
	reaction_ts_production=compartment_Pancreatic_tumor*ts_production_0(global_par_beta5, x(1), x(3), global_par_k5);

% Reaction: id = ts_decay, name = ts decay
	reaction_ts_decay=compartment_Pancreatic_tumor*ts_decay_0(global_par_u5, x(5));

	xdot=zeros(5,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_Pancreatic_tumor))*(( 1.0 * reaction_PCC_growth) + ( 1.0 * reaction_PCC_activation_by_PSC) + (-1.0 * reaction_PCC_death));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(2) = (1/(compartment_Pancreatic_tumor))*(( 1.0 * reaction_PSC_growth) + ( 1.0 * reaction_PSC_activation_by_tp_cytokine) + (-1.0 * reaction_PSC_death));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(3) = (1/(compartment_Pancreatic_tumor))*(( 1.0 * reaction_effector_production) + ( 1.0 * reaction_effector_prolif) + (-1.0 * reaction_effector_death));
	
% Species:   id = w, name = w, affected by kineticLaw
	xdot(4) = (1/(compartment_Pancreatic_tumor))*(( 1.0 * reaction_tp_cytokine_production) + (-1.0 * reaction_tp_decay) + ( 1.0 * reaction_tp_stimulation_by_PSC));
	
% Species:   id = v, name = v, affected by kineticLaw
	xdot(5) = (1/(compartment_Pancreatic_tumor))*(( 1.0 * reaction_ts_production) + (-1.0 * reaction_ts_decay));
end

function z=PCC_growth_0(r1,x,b1), z=(r1*x*(1-x*b1));end

function z=PCC_death_0(delta1,x,z,m1,w), z=(delta1*x*z/(m1+w));end

function z=PCC_activation_by_PSC_0(beta1,y,x,b1), z=(beta1*y*x*(1-x*b1));end

function z=PSC_growth_0(r2,y,b2), z=(r2*y*(1-b2*y));end

function z=PSC_activation_by_tp_cytokine_0(beta2,w,k2,y,b2), z=(beta2*w/(k2+w)*y*(1-b2*y));end

function z=PSC_death_0(u2,y), z=(u2*y);end

function z=effector_production_0(beta3,z,v,k3,m3,w), z=(beta3*z*v/((k3+v)*(m3+w)));end

function z=effector_death_0(u3,z), z=(u3*z);end

function z=effector_prolif_0(r3), z=(r3);end

function z=tp_production(beta4,x,z,k4), z=(beta4*x*z/(k4+x));end

function z=tp_decay_0(u4,w), z=(u4*w);end

function z=tp_by_PSC(r4,x,y,m4,v), z=(r4*x*y/(m4+v));end

function z=ts_production_0(beta5,x,z,k5), z=(beta5*x*z/(k5+x));end

function z=ts_decay_0(u5,v), z=(u5*v);end

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


