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
% Model name = Lee2017 - Paracetamol first-pass metabolism PK model
%
% is http://identifiers.org/biomodels.db/MODEL1803050002
% is http://identifiers.org/biomodels.db/BIOMD0000000947
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(10) = 2500.0;
	x0(11) = 1.0E-15;
	x0(12) = 5.0;
	x0(13) = 1.0E-15;
	x0(14) = 1.0E-15;
	x0(15) = 1.0E-15;
	x0(16) = 1.0E-15;
	x0(17) = 1.0E-15;
	x0(18) = 1.0E-15;
	x0(1) = 2500.0;
	x0(2) = 1.0E-15;
	x0(3) = 5.0;
	x0(4) = 1.0E-15;
	x0(5) = 1.0E-15;
	x0(6) = 1.0E-15;
	x0(7) = 1.0E-15;
	x0(8) = 1.0E-15;
	x0(9) = 1.0E-15;


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

% Compartment: id = Apical, name = Apical, constant
	compartment_Apical=1.0;
% Compartment: id = Caco_2, name = Caco-2, constant
	compartment_Caco_2=1.0;
% Compartment: id = Basolateral___HepG2, name = Basolateral + HepG2, constant
	compartment_Basolateral___HepG2=1.0;
% Parameter:   id =  P_para, name = P_para
	global_par_P_para=103.8;
% Parameter:   id =  Ai, name = Ai
	global_par_Ai=0.33;
% Parameter:   id =  Mp_s_caco, name = Mp_s_caco
	global_par_Mp_s_caco=14.9;
% Parameter:   id =  Mp_g_caco, name = Mp_g_caco
	global_par_Mp_g_caco=17.6;
% Parameter:   id =  V_api, name = V_api
% Parameter:   id =  V_caco, name = V_caco
% Parameter:   id =  Mp_s_HepG2, name = Mp_s_HepG2
	global_par_Mp_s_HepG2=0.35;
% Parameter:   id =  V_basol, name = V_basol
% Parameter:   id =  P_sulf, name = P_sulf
	global_par_P_sulf=49.9;
% Parameter:   id =  P_glu, name = P_glu
	global_par_P_glu=58.9;
% Parameter:   id =  Mp_g_HepG2, name = Mp_g_HepG2
	global_par_Mp_g_HepG2=0.59;
% Parameter:   id =  time_threshold, name = time_threshold
	global_par_time_threshold=6.0;
% assignmentRule: variable = V_api
	global_par_V_api=piecewise(500, time <= global_par_time_threshold, 400);
% assignmentRule: variable = V_caco
	global_par_V_caco=piecewise(0.33, time <= global_par_time_threshold, 0.33);
% assignmentRule: variable = V_basol
	global_par_V_basol=piecewise(380, time <= global_par_time_threshold, 280);
% rateRule: variable = C_para_Apical
x(1) = x(10);
% rateRule: variable = C_para_Caco_2
x(2) = x(11);
% rateRule: variable = C_para__Basolateral___HepG2_
x(3) = x(12);
% rateRule: variable = C_sulf_Apical
x(4) = x(13);
% rateRule: variable = C_sulf_Caco_2
x(5) = x(14);
% rateRule: variable = C_sulf__Basolateral___HepG2_
x(6) = x(15);
% rateRule: variable = C_glu_Apical
x(7) = x(16);
% rateRule: variable = C_glu_Caco_2
x(8) = x(17);
% rateRule: variable = C_glu__Basolateral___HepG2_
x(9) = x(18);

	xdot=zeros(18,1);
	% rateRule: variable = C_para_Apical
	xdot(10) = (-1)*global_par_P_para*global_par_Ai*(x(1)-x(2))/global_par_V_api;
	% rateRule: variable = C_para_Caco_2
	xdot(11) = (global_par_P_para*global_par_Ai*(x(1)-x(2))-global_par_P_para*global_par_Ai*(x(2)-x(3))-global_par_Mp_s_caco*x(2)*global_par_V_caco-global_par_Mp_g_caco*x(2)*global_par_V_caco)/global_par_V_caco;
	% rateRule: variable = C_para__Basolateral___HepG2_
	xdot(12) = (global_par_P_para*global_par_Ai*(x(2)-x(3))-global_par_Mp_s_HepG2*x(3)*global_par_V_basol-global_par_Mp_g_HepG2*x(3)*global_par_V_basol)/global_par_V_basol;
	% rateRule: variable = C_sulf_Apical
	xdot(13) = (-1)*global_par_P_sulf*global_par_Ai*(x(4)-x(5))/global_par_V_api;
	% rateRule: variable = C_sulf_Caco_2
	xdot(14) = (global_par_P_sulf*global_par_Ai*(x(4)-x(5))-global_par_P_sulf*global_par_Ai*(x(5)-x(6))+global_par_Mp_s_caco*x(2)*global_par_V_caco)/global_par_V_caco;
	% rateRule: variable = C_sulf__Basolateral___HepG2_
	xdot(15) = (global_par_P_sulf*global_par_Ai*(x(5)-x(6))+global_par_Mp_s_HepG2*x(3)*global_par_V_basol)/global_par_V_basol;
	% rateRule: variable = C_glu_Apical
	xdot(16) = (-1)*global_par_P_glu*global_par_Ai*(x(7)-x(8))/global_par_V_api;
	% rateRule: variable = C_glu_Caco_2
	xdot(17) = (global_par_P_glu*global_par_Ai*(x(7)-x(8))-global_par_P_glu*global_par_Ai*(x(8)-x(9))+global_par_Mp_g_caco*x(2)*global_par_V_caco)/global_par_V_caco;
	% rateRule: variable = C_glu__Basolateral___HepG2_
	xdot(18) = (global_par_P_glu*global_par_Ai*(x(8)-x(9))+global_par_Mp_g_HepG2*x(3)*global_par_V_basol)/global_par_V_basol;
	
% Species:   id = C_para_Apical, name = C_para, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = C_para_Caco_2, name = C_para, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = C_para__Basolateral___HepG2_, name = C_para, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = C_sulf_Apical, name = C_sulf, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = C_sulf_Caco_2, name = C_sulf, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = C_sulf__Basolateral___HepG2_, name = C_sulf, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = C_glu_Apical, name = C_glu, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = C_glu_Caco_2, name = C_glu, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = C_glu__Basolateral___HepG2_, name = C_glu, involved in a rule 	xdot(9) = x(9);
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


