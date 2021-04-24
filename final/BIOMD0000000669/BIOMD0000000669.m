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
% Model name = Zhu2015 - Combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model
%
% is http://identifiers.org/biomodels.db/MODEL1604270001
% isInstanceOf http://identifiers.org/kegg.drug/D02368
% isInstanceOf http://identifiers.org/kegg.drug/D10417
% isInstanceOf http://identifiers.org/biomodels.db/MODEL1604270001
% isInstanceOf http://identifiers.org/bto/BTO:0000988
% isInstanceOf http://identifiers.org/ncit/C49662
% isInstanceOf http://identifiers.org/ncit/C191
% isDescribedBy http://identifiers.org/pubmed/26252969
% is http://identifiers.org/biomodels.db/BIOMD0000000669
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(8) = 113516.0;
	x0(9) = 25488.0;
	x0(10) = 81656.0;
	x0(11) = 11800.0;
	x0(12) = 3540.0;
	x0(1) = 113516.0;
	x0(2) = 25488.0;
	x0(3) = 81656.0;
	x0(4) = 11800.0;
	x0(5) = 3540.0;
	x0(6) = 236000.0;
	x0(7) = 220660.0;


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

% Compartment: id = Pancreas, name = Pancreas, constant
	compartment_Pancreas=1.0;
% Parameter:   id =  Inh_1, name = Inh_1
% Parameter:   id =  IR50, name = IR50
	global_par_IR50=123000.0;
% Parameter:   id =  Inh_3, name = Inh_3
% Parameter:   id =  Imax_3, name = Imax_3
	global_par_Imax_3=0.753;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.222;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.357;
% Parameter:   id =  k_apo, name = k_apo
	global_par_k_apo=0.00394;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.114;
% Parameter:   id =  Imax_g, name = Imax_g
	global_par_Imax_g=0.878;
% Parameter:   id =  C_g, name = C_g
	global_par_C_g=20.0;
% Parameter:   id =  C_b, name = C_b
	global_par_C_b=500.0;
% Parameter:   id =  Hi_g, name = Hi_g
	global_par_Hi_g=4.34;
% Parameter:   id =  Hs_b, name = Hs_b
	global_par_Hs_b=1.24;
% Parameter:   id =  Hi_b, name = Hi_b
	global_par_Hi_b=1.0;
% Parameter:   id =  Hs_g, name = Hs_g
	global_par_Hs_g=3.0;
% Parameter:   id =  Tlag_re, name = Tlag_re
% Parameter:   id =  Tlag_sg, name = Tlag_sg
	global_par_Tlag_sg=38.7;
% Parameter:   id =  k_other, name = k_other
% Parameter:   id =  Hother_g, name = Hother_g
	global_par_Hother_g=0.1;
% Parameter:   id =  Smax_b, name = Smax_b
	global_par_Smax_b=3.72;
% Parameter:   id =  Psi_i, name = Psi_i
	global_par_Psi_i=0.949;
% Parameter:   id =  Psi_s, name = Psi_s
	global_par_Psi_s=1.26;
% Parameter:   id =  Smax_g, name = Smax_g
	global_par_Smax_g=2.74;
% Parameter:   id =  SC50_g, name = SC50_g
	global_par_SC50_g=23.6;
% Parameter:   id =  SC50_b, name = SC50_b
	global_par_SC50_b=50.1;
% Parameter:   id =  k_comb2, name = k_comb2
	global_par_k_comb2=7.75E-4;
% Parameter:   id =  k_comb1, name = k_comb1
	global_par_k_comb1=9.19E-4;
% Parameter:   id =  k_repair, name = k_repair
	global_par_k_repair=0.0495;
% Parameter:   id =  Tlag_r, name = Tlag_r
% Parameter:   id =  k_delay, name = k_delay
	global_par_k_delay=18.6;
% Parameter:   id =  R_0, name = R_0
	global_par_R_0=236000.0;
% Parameter:   id =  f_G1__0, name = f(G1)_0
	global_par_f_G1__0=48.1;
% Parameter:   id =  f_S__0, name = f(S)_0
	global_par_f_S__0=10.8;
% Parameter:   id =  f_apo__0, name = f(apo)_0
	global_par_f_apo__0=5.0;
% Parameter:   id =  f_other__0, name = f(other)_0
	global_par_f_other__0=1.5;
% Parameter:   id =  f1, name = f1
	global_par_f1=0.467;
% Parameter:   id =  Imax_b, name = Imax_b
	global_par_Imax_b=0.177;
% Parameter:   id =  IC50_g, name = IC50_g
	global_par_IC50_g=6.0;
% Parameter:   id =  IC50_b, name = IC50_b
	global_par_IC50_b=154.0;
% Parameter:   id =  k_tau, name = k_tau
	global_par_k_tau=0.376;
% Parameter:   id =  Kother_g, name = Kother_g
	global_par_Kother_g=1.0E-5;
% Parameter:   id =  Kother_b, name = Kother_b
	global_par_Kother_b=0.0055;
% Parameter:   id =  Hother_b, name = Hother_b
	global_par_Hother_b=1.0;
% Parameter:   id =  Inh_g, name = Inh_g
% Parameter:   id =  Inh_b, name = Inh_b
% Parameter:   id =  Sti_g, name = Sti_g
% Parameter:   id =  Sti_other_g, name = Sti_other_g
% Parameter:   id =  Sti_other_b, name = Sti_other_b
% Parameter:   id =  Sti_b, name = Sti_b
% Parameter:   id =  Sti_apo_g, name = Sti_apo_g
	global_par_Sti_apo_g=0.0;
% Parameter:   id =  Sti_apo_b, name = Sti_apo_b
	global_par_Sti_apo_b=0.0;
% Parameter:   id =  f_G2__0, name = f(G2)_0
	global_par_f_G2__0=34.6;
% Parameter:   id =  CURVE_G1, name = CURVE_G1
% Parameter:   id =  CURVE_S, name = CURVE_S
% Parameter:   id =  CURVE_G2, name = CURVE_G2
% Parameter:   id =  CURVE_FIGURE_7a_d_g, name = CURVE_FIGURE_7a/d/g
% Parameter:   id =  CURVE_FIGURE_7b_r_h, name = CURVE_FIGURE_7b/r/h
% Parameter:   id =  CURVE_FIGURE_7c_f_i, name = CURVE_FIGURE_7c/f/i
	global_par_CURVE_FIGURE_7c_f_i=0.0;
% assignmentRule: variable = R_total
	x(6)=x(1)+x(2)+x(3)+x(4)+x(5);
% assignmentRule: variable = R_live
	x(7)=x(1)+x(2)+x(3);
% assignmentRule: variable = Inh_1
	global_par_Inh_1=x(7)/(global_par_IR50+x(7));
% assignmentRule: variable = Inh_3
	global_par_Inh_3=global_par_Imax_3*x(7)/(global_par_IR50+x(7));
% assignmentRule: variable = k_other
	global_par_k_other=piecewise(0.000297, (global_par_C_b != 0) && (global_par_C_g != 0), 0);
% assignmentRule: variable = Tlag_re
	global_par_Tlag_re=(1+global_par_k_comb1*global_par_C_b)*global_par_Tlag_r;
% assignmentRule: variable = Inh_g
	global_par_Inh_g=piecewise(global_par_Imax_g*global_par_C_g^global_par_Hi_g/(global_par_IC50_g^global_par_Hi_g+global_par_C_g^global_par_Hi_g), (global_par_C_b == 0) && (time <= global_par_Tlag_r), piecewise(global_par_Imax_g*global_par_C_g^global_par_Hi_g/(global_par_IC50_g^global_par_Hi_g+global_par_C_g^global_par_Hi_g)*exp((-1)*global_par_k_repair*(time-global_par_Tlag_r)), (global_par_C_b == 0) && (time > global_par_Tlag_r), piecewise(global_par_Imax_g*global_par_C_g^global_par_Hi_g/((global_par_Psi_i*global_par_IC50_g)^global_par_Hi_g+global_par_C_g^global_par_Hi_g), (global_par_C_b != 0) && (time <= global_par_Tlag_re), piecewise(global_par_Imax_g*global_par_C_g^global_par_Hi_g/((global_par_Psi_i*global_par_IC50_g)^global_par_Hi_g+global_par_C_g^global_par_Hi_g)*exp((-1)*(1-global_par_k_comb2*global_par_C_b)*global_par_k_repair*(time-global_par_Tlag_re)), (global_par_C_b != 0) && (time > global_par_Tlag_re), 0))));
% assignmentRule: variable = Inh_b
	global_par_Inh_b=global_par_Imax_b*global_par_C_b^global_par_Hi_b/(global_par_IC50_b^global_par_Hi_b+global_par_C_b^global_par_Hi_b);
% assignmentRule: variable = Sti_g
	global_par_Sti_g=piecewise(0, time <= global_par_Tlag_sg, global_par_Smax_g*global_par_C_g^global_par_Hs_g/(global_par_SC50_g^global_par_Hs_g+global_par_C_g^global_par_Hs_g));
% assignmentRule: variable = Sti_other_g
	global_par_Sti_other_g=global_par_Kother_g*global_par_C_g^global_par_Hother_g;
% assignmentRule: variable = Sti_other_b
	global_par_Sti_other_b=global_par_Kother_b*global_par_C_b^global_par_Hother_b;
% assignmentRule: variable = Sti_b
	global_par_Sti_b=global_par_Smax_b*global_par_C_b^global_par_Hs_b/((global_par_Psi_s*global_par_SC50_b)^global_par_Hs_b+global_par_C_b^global_par_Hs_b);
% assignmentRule: variable = CURVE_G1
	global_par_CURVE_G1=x(1)/x(6);
% assignmentRule: variable = CURVE_S
	global_par_CURVE_S=x(2)/x(6);
% assignmentRule: variable = CURVE_G2
	global_par_CURVE_G2=x(3)/x(6);
% assignmentRule: variable = CURVE_FIGURE_7a_d_g
	global_par_CURVE_FIGURE_7a_d_g=x(7)/x(6);
% assignmentRule: variable = CURVE_FIGURE_7b_r_h
	global_par_CURVE_FIGURE_7b_r_h=x(4)/x(6);
% rateRule: variable = G1
x(1) = x(8);
% rateRule: variable = S
x(2) = x(9);
% rateRule: variable = G2
x(3) = x(10);
% rateRule: variable = R_apo
x(4) = x(11);
% rateRule: variable = R_other
x(5) = x(12);

	xdot=zeros(12,1);
	% rateRule: variable = G1
	xdot(8) = 2*(1-global_par_Inh_3)*(1-global_par_Inh_b)*global_par_k3*x(3)-(1-global_par_Inh_1)*(1-global_par_Inh_b)*global_par_k1*x(1)-(1+global_par_Sti_apo_g)*(1+global_par_Sti_apo_b)*global_par_k_apo*x(1)-(1+global_par_Sti_other_g)*(1+global_par_Sti_other_b)*global_par_k_other*x(1);
	% rateRule: variable = S
	xdot(9) = (1-global_par_Inh_1)*(1-global_par_Inh_b)*global_par_k1*x(1)-(1-global_par_Inh_g)*global_par_k2*x(2)-(1+global_par_Sti_apo_g)*(1+global_par_Sti_apo_b)*global_par_k_apo*x(2)-(1+global_par_Sti_other_g)*(1+global_par_Sti_other_b)*global_par_k_other*x(2);
	% rateRule: variable = G2
	xdot(10) = (1-global_par_Inh_g)*global_par_k2*x(2)-(1-global_par_Inh_3)*(1-global_par_Inh_b)*global_par_k3*x(3)-(1+global_par_Sti_apo_g)*(1+global_par_Sti_apo_b)*global_par_k_apo*x(3)-(1+global_par_Sti_other_g)*(1+global_par_Sti_other_b)*global_par_k_other*x(3);
	% rateRule: variable = R_apo
	xdot(11) = (1+global_par_Sti_apo_g)*(1+global_par_Sti_apo_b)*global_par_k_apo*(x(1)+x(2)+x(3))-(1+global_par_Sti_apo_g)*(1+global_par_Sti_apo_b)*global_par_f1*global_par_k_apo*x(4);
	% rateRule: variable = R_other
	xdot(12) = (1+global_par_Sti_other_g)*(1+global_par_Sti_other_b)*global_par_k_other*(x(1)+x(2)+x(3))-global_par_k_other*x(5);
	
% Species:   id = G1, name = G1, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = S, name = S, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = G2, name = G2, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = R_apo, name = R_apo, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = R_other, name = R_other, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = R_total, name = R_total, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = R_live, name = R_live, involved in a rule 	xdot(7) = x(7);
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


