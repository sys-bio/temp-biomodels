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
% Model name = Zhang2007 - Mechanism of DNA damage response (Model2)
%
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/17245126
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.2;
	x0(2) = 0.21;
	x0(3) = 0.55;
	x0(4) = 0.0;
	x0(5) = 0.19;
	x0(6) = 0.01;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=1.0;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=1.0;
% Parameter:   id =  kd53, name = kd53'
	global_par_kd53=0.3;
% Parameter:   id =  kin, name = kin
	global_par_kin=0.4;
% Parameter:   id =  kout, name = kout
	global_par_kout=0.05;
% Parameter:   id =  kd2, name = kd2'
	global_par_kd2=0.1;
% Parameter:   id =  kd2_0, name = kd2
% Parameter:   id =  ks2, name = ks2'
	global_par_ks2=0.182;
% Parameter:   id =  Js2, name = Js2
	global_par_Js2=0.7;
% Parameter:   id =  m, name = m
	global_par_m=3.0;
% Parameter:   id =  kd53_0, name = kd53
% Parameter:   id =  Q, name = Q
	global_par_Q=0.8;
% Parameter:   id =  J1, name = J1
	global_par_J1=0.1;
% Parameter:   id =  J2, name = J2
	global_par_J2=0.1;
% Parameter:   id =  krepair, name = krepair
	global_par_krepair=0.05;
% Parameter:   id =  u, name = u
% Parameter:   id =  r, name = r
% Parameter:   id =  v, name = v
% Parameter:   id =  q, name = q
% Parameter:   id =  G_u_v_q_r, name = G(u,v,q,r)
% Parameter:   id =  kd53_, name = kd53''
	global_par_kd53_=8.0;
% Parameter:   id =  ks2_, name = ks2''
	global_par_ks2_=3.0;
% Parameter:   id =  kd2_, name = kd2''
	global_par_kd2_=0.7;
% Parameter:   id =  ks53, name = ks53
	global_par_ks53=0.6;
% Parameter:   id =  k_inact, name = k_inact
	global_par_k_inact=0.1;
% Parameter:   id =  k_act, name = k_act
% Parameter:   id =  k_act_, name = k_act''
	global_par_k_act_=5.0;
% Parameter:   id =  J_act, name = J_act
	global_par_J_act=0.2;
% Parameter:   id =  k_act_0, name = k_act'
	global_par_k_act_0=0.2;
% Parameter:   id =  Dam0, name = Dam0
	global_par_Dam0=2.0;
% Parameter:   id =  Tdam, name = Tdam
	global_par_Tdam=50.0;
% Parameter:   id =  x, name = x
% Parameter:   id =  max, name = max
% Parameter:   id =  heav_x, name = heav(x)
% Parameter:   id =  ModelValue_28, name = Initial for Tdam
	global_par_ModelValue_28=50.0;
% assignmentRule: variable = p53_total
	x(1)=x(5)+x(6);
% assignmentRule: variable = u
	global_par_u=x(3);
% assignmentRule: variable = r
	global_par_r=global_par_J2/x(1);
% assignmentRule: variable = v
	global_par_v=global_par_Q;
% assignmentRule: variable = q
	global_par_q=global_par_J1/x(1);
% assignmentRule: variable = G_u_v_q_r
	global_par_G_u_v_q_r=2*global_par_u*global_par_r/(global_par_v-global_par_u+global_par_v*global_par_q+global_par_u*global_par_r+((global_par_v-global_par_u+global_par_v*global_par_q+global_par_u*global_par_r)^2-4*global_par_u*global_par_r*(global_par_v-global_par_u))^0.5);
% assignmentRule: variable = kd53_0
	global_par_kd53_0=global_par_kd53+global_par_kd53_*global_par_G_u_v_q_r;
% assignmentRule: variable = k_act
	global_par_k_act=global_par_k_act_0+global_par_k_act_*x(6)^3/(global_par_J_act^3+x(6)^3);
% assignmentRule: variable = x
	global_par_x=time-global_par_ModelValue_28;
% assignmentRule: variable = max
	global_par_max=MAX(0, global_par_Dam0-global_par_krepair*(time-global_par_Tdam));
% assignmentRule: variable = heav_x
	global_par_heav_x=piecewise(0, global_par_x < 0, piecewise(1, global_par_x > 0, 0));
% assignmentRule: variable = DNAdamage
	x(4)=global_par_heav_x*global_par_max;
% assignmentRule: variable = kd2_0
	global_par_kd2_0=global_par_kd2*(1+x(4));

% Reaction: id = MDM2cyt_production, name = MDM2cyt production
	reaction_MDM2cyt_production=mdm2_production(global_par_ks2, x(6), global_par_m, global_par_Js2, global_par_ks2_);

% Reaction: id = MDM2cyt_translocation, name = MDM2cyt translocation
	reaction_MDM2cyt_translocation=global_par_kin*x(2)-global_par_kout*x(3);

% Reaction: id = MDM2cyt_degradation, name = MDM2cyt degradation
	reaction_MDM2cyt_degradation=compartment_cyt*global_par_kd2_*x(2);

% Reaction: id = MDM2nuc_degradation, name = MDM2nuc degradation
	reaction_MDM2nuc_degradation=compartment_nuc*global_par_kd2_0*x(3);

% Reaction: id = p53_activation, name = p53 activation
	reaction_p53_activation=compartment_nuc*(global_par_k_act*x(5)-global_par_k_inact*x(6));

% Reaction: id = p53_inact_degradation, name = p53_inact degradation
	reaction_p53_inact_degradation=compartment_nuc*global_par_kd53_0*x(5);

% Reaction: id = p53_act_degradation, name = p53_act degradation
	reaction_p53_act_degradation=compartment_nuc*global_par_kd53_0*x(6);

	xdot=zeros(6,1);
	
% Species:   id = p53_total, name = p53_total, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = MDM2cyt, name = MDM2cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*(( 1.0 * reaction_MDM2cyt_production) + (-1.0 * reaction_MDM2cyt_translocation) + (-1.0 * reaction_MDM2cyt_degradation));
	
% Species:   id = MDM2nuc, name = MDM2nuc, affected by kineticLaw
	xdot(3) = (1/(compartment_nuc))*(( 1.0 * reaction_MDM2cyt_translocation) + (-1.0 * reaction_MDM2nuc_degradation));
	
% Species:   id = DNAdamage, name = DNAdamage, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = p53_inact, name = p53_inact, affected by kineticLaw
	xdot(5) = (1/(compartment_nuc))*(( 1.0 * reaction_p53_inact_production) + (-1.0 * reaction_p53_activation) + (-1.0 * reaction_p53_inact_degradation));
	
% Species:   id = p53_act, name = p53_act, affected by kineticLaw
	xdot(6) = (1/(compartment_nuc))*(( 1.0 * reaction_p53_activation) + (-1.0 * reaction_p53_act_degradation));
end

function z=MAX(a,b,piecewise(a), z=(a >= b,b));end

function z=mdm2_production(ks2,p53,m,Js2,ks21), z=(ks2+ks21*p53^m/(Js2^m+p53^m));end

function z=Constant_flux__irreversible(v), z=(v);end

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


