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
% Model name = Kolomeisky2003_MyosinV_Processivity
%
% is http://identifiers.org/biomodels.db/MODEL6623628741
% is http://identifiers.org/biomodels.db/BIOMD0000000305
% isDescribedBy http://identifiers.org/pubmed/12609867
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 10.0;
	x0(2) = 20.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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

% Compartment: id = compartment_, name = compartment_, constant
	compartment_compartment_=1.0E-15;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.7;
% Parameter:   id =  th_1, name = th_1
	global_par_th_1=-0.01;
% Parameter:   id =  Force, name = Force
	global_par_Force=0.0;
% Parameter:   id =  d, name = d
	global_par_d=36.0;
% Parameter:   id =  kT, name = kT
	global_par_kT=4.1164;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=12.0;
% Parameter:   id =  th_2, name = th_2
	global_par_th_2=0.045;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=5.0E-6;
% Parameter:   id =  th_3, name = th_3
	global_par_th_3=0.58;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=6.0E-6;
% Parameter:   id =  th_4, name = th_4
	global_par_th_4=0.385;
% Parameter:   id =  S_tot, name = S_tot
% Parameter:   id =  V, name = V
% Parameter:   id =  V_ave, name = V_ave
% Parameter:   id =  tau, name = tau
% assignmentRule: variable = S_tot
	global_par_S_tot=x(1)+x(3);
% assignmentRule: variable = V
	global_par_V=global_par_d*((reaction_Fw_1st_step+reaction_Fw_2nd_step)/2-(reaction_Bw_1st_step+reaction_Bw_2nd_step)/2)/global_par_S_tot;
% assignmentRule: variable = V_ave
	global_par_V_ave=global_par_d*((x(6)+x(7))/2-(x(8)+x(9))/2)/(global_par_S_tot*time);
% assignmentRule: variable = tau
	global_par_tau=(global_par_k_1*x(2)*exp((-global_par_th_1)*global_par_Force*global_par_d/global_par_kT)+global_par_k_2*exp((-global_par_th_2)*global_par_Force*global_par_d/global_par_kT)+global_par_k_3*x(2)*exp(global_par_th_3*global_par_Force*global_par_d/global_par_kT)+global_par_k_4*exp(global_par_th_4*global_par_Force*global_par_d/global_par_kT))/(global_par_k_1*x(2)*exp((-global_par_th_1)*global_par_Force*global_par_d/global_par_kT)*global_par_k_2*exp((-global_par_th_2)*global_par_Force*global_par_d/global_par_kT)+global_par_k_3*x(2)*exp(global_par_th_3*global_par_Force*global_par_d/global_par_kT)*global_par_k_4*exp(global_par_th_4*global_par_Force*global_par_d/global_par_kT));

% Reaction: id = Fw_1st_step
	reaction_Fw_1st_step=global_par_k_1*x(1)*x(2)*exp((-global_par_th_1)*global_par_Force*global_par_d/global_par_kT);

% Reaction: id = Fw_2nd_step
	reaction_Fw_2nd_step=global_par_k_2*x(3)*exp((-global_par_th_2)*global_par_Force*global_par_d/global_par_kT);

% Reaction: id = Bw_1st_step
	reaction_Bw_1st_step=global_par_k_3*x(1)*x(2)*exp(global_par_th_3*global_par_Force*global_par_d/global_par_kT);

% Reaction: id = Bw_2nd_step
	reaction_Bw_2nd_step=global_par_k_4*x(3)*exp(global_par_th_4*global_par_Force*global_par_d/global_par_kT);

	xdot=zeros(9,1);
	
% Species:   id = S0, name = S0, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_Fw_1st_step) + ( 1.0 * reaction_Fw_2nd_step) + (-1.0 * reaction_Bw_1st_step) + ( 1.0 * reaction_Bw_2nd_step);
	
% Species:   id = ATP, name = ATP
%WARNING speciesID: ATP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Fw_1st_step) + (-1.0 * reaction_Fw_2nd_step) + ( 1.0 * reaction_Bw_1st_step) + (-1.0 * reaction_Bw_2nd_step);
	
% Species:   id = Pi_, name = Pi_
%WARNING speciesID: Pi_, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = ADP, name = ADP
%WARNING speciesID: ADP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = fwd_step1, name = fwd_step1, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Fw_1st_step);
	
% Species:   id = fwd_step2, name = fwd_step2, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Fw_2nd_step);
	
% Species:   id = back_step1, name = back_step1, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_Bw_1st_step);
	
% Species:   id = back_step2, name = back_step2, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Bw_2nd_step);
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


