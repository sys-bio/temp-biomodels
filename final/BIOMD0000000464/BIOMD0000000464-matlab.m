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
% Model name = Koo2013 - Shear stress induced calcium influx and eNOS activation - Model 1
%
% is http://identifiers.org/biomodels.db/MODEL1302180003
% is http://identifiers.org/biomodels.db/BIOMD0000000464
% isDescribedBy http://identifiers.org/pubmed/23708369
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 1500000.0;
	x0(2) = 2830000.0;
	x0(3) = 117.2;
	x0(4) = 3870.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = Cell, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = ER, constant
	compartment_c2=1.0;
% Parameter:   id =  R_T, name = R_T
	global_par_R_T=44000.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=6.0E-4;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=3.32;
% Parameter:   id =  k4, name = k4
	global_par_k4=2500.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=5.0E-11;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.05;
% Parameter:   id =  k7, name = k7
	global_par_k7=150.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=200.0;
% Parameter:   id =  K3, name = K3
	global_par_K3=150.0;
% Parameter:   id =  K4, name = K4
	global_par_K4=80.0;
% Parameter:   id =  K5, name = K5
	global_par_K5=321.0;
% Parameter:   id =  K_hi, name = K_hi
	global_par_K_hi=380.0;
% Parameter:   id =  k_CICR, name = k_CICR
	global_par_k_CICR=1.0;
% Parameter:   id =  K_CICR, name = K_CICR
	global_par_K_CICR=0.0;
% Parameter:   id =  k_CCE, name = k_CCE
	global_par_k_CCE=0.0;
% Parameter:   id =  B_T, name = B_T
	global_par_B_T=120000.0;
% Parameter:   id =  dot_Vp, name = dot_Vp
	global_par_dot_Vp=815.0;
% Parameter:   id =  dot_Vex, name = dot_Vex
	global_par_dot_Vex=9165.0;
% Parameter:   id =  dot_Vhi, name = dot_Vhi
	global_par_dot_Vhi=2380.0;
% Parameter:   id =  dot_q_inpass, name = dot_q_inpass
	global_par_dot_q_inpass=3000.0;
% Parameter:   id =  Cao, name = Cao
	global_par_Cao=100.0;
% Parameter:   id =  tau_I, name = tau_I
	global_par_tau_I=66.0;
% Parameter:   id =  tau_II, name = tau_II
	global_par_tau_II=0.01;
% Parameter:   id =  half, name = half
	global_par_half=0.5;
% Parameter:   id =  fracK, name = fracK
	global_par_fracK=7071067.81;

% Reaction: id = re3, name = re1
	reaction_re3=(-global_par_k6)*x(3)*(global_par_B_T-x(4))+global_par_k7*x(4);

% Reaction: id = re4
	reaction_re4=global_par_k_CCE*(global_par_fracK*global_par_Cao/(global_par_K3+global_par_Cao)-x(2))*(x(1)-x(2));

% Reaction: id = re5
	reaction_re5=global_par_k1*(global_par_R_T-global_par_half*global_par_R_T*(exp((-x(12))/global_par_tau_I)+exp((-x(12))/global_par_tau_II)+(exp((-x(12))/global_par_tau_I)-exp((-x(12))/global_par_tau_II))*(global_par_tau_I+global_par_tau_II)/(global_par_tau_I-global_par_tau_II)))*x(3)/(global_par_K1+x(3));

% Reaction: id = re6
	reaction_re6=global_par_k2*x(6);

% Reaction: id = re7
	reaction_re7=global_par_k3*global_par_k_CICR*x(3)/(global_par_K_CICR+x(3))*(x(6)/(global_par_K2+x(6)))^3*x(2)-global_par_k4*(x(3)/(global_par_K3+x(3)))^2+global_par_k5*x(2)*x(2);

% Reaction: id = re8
	reaction_re8=global_par_dot_Vhi*x(3)^4/(global_par_K_hi^4+x(3)^4);

% Reaction: id = re9
	reaction_re9=global_par_dot_Vex*x(3)/(global_par_K5+x(3));

% Reaction: id = re10
	reaction_re10=global_par_dot_q_inpass;

% Reaction: id = re11	% Local Parameter:   id =  unisec, name = unisec
	reaction_re11_unisec=1.0;

	reaction_re11=reaction_re11_unisec;

% Reaction: id = re12
	reaction_re12=global_par_dot_Vp*x(3)^2/(global_par_K4^2+x(3)^2);

	xdot=zeros(14,1);
	
% Species:   id = s1, name = Ca_ex
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s2, name = Ca_s, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_re4) + (-1.0 * reaction_re7);
	
% Species:   id = s3, name = Ca_c, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_re3) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re9) + ( 1.0 * reaction_re10) + (-1.0 * reaction_re12);
	
% Species:   id = s4, name = Ca_B, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_re3);
	
% Species:   id = s5, name = s5, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re4);
	
% Species:   id = s6, name = IP3, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_re5) + (-1.0 * reaction_re6);
	
% Species:   id = s7, name = s7, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re5);
	
% Species:   id = s8, name = s8, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re6);
	
% Species:   id = s9, name = s9, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re8) + ( 1.0 * reaction_re12);
	
% Species:   id = s10, name = s10, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re9);
	
% Species:   id = s11, name = s11, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_re10);
	
% Species:   id = s12, name = TimeT, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re11);
	
% Species:   id = s13, name = s13, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_re11);
	
% Species:   id = s119, name = Shear Stress
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
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


