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
% Model name = Rosas2015 - Caffeine-induced luminal SR calcium changes
%
% is http://identifiers.org/biomodels.db/MODEL1406180001
% is http://identifiers.org/biomodels.db/BIOMD0000000601
% isDescribedBy http://identifiers.org/pubmed/26390403
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.00165;
	x0(2) = 7.8E-6;
	x0(3) = 7.5E-6;
	x0(4) = 7.5E-8;
	x0(5) = 0.0;


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

% Compartment: id = mw0dac359a_a4cd_40bf_97a0_45006cef2a7c, name = SR, constant
	compartment_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c=0.052;
% Compartment: id = mw44539b83_caa2_4da5_bae0_a8dcf7439431, name = cytoplasm, constant
	compartment_mw44539b83_caa2_4da5_bae0_a8dcf7439431=1.0;
% Parameter:   id =  parameter_1, name = a
	global_par_parameter_1=35.0;
% Parameter:   id =  parameter_2, name = b
	global_par_parameter_2=65.0;
% Parameter:   id =  parameter_3, name = c
	global_par_parameter_3=1.125E-5;
% Parameter:   id =  parameter_4, name = Ca_i_basal
	global_par_parameter_4=7.5E-6;
% Parameter:   id =  parameter_5, name = gamma
	global_par_parameter_5=0.052;
% Parameter:   id =  parameter_6, name = nv
	global_par_parameter_6=1.7;
% Parameter:   id =  parameter_7, name = Ks
	global_par_parameter_7=3.0E-7;
% Parameter:   id =  parameter_8, name = ns
	global_par_parameter_8=2.0;
% Parameter:   id =  parameter_9, name = B
	global_par_parameter_9=100.0;
% Parameter:   id =  parameter_10, name = nf
	global_par_parameter_10=1.8;
% Parameter:   id =  parameter_11, name = kf
	global_par_parameter_11=4000.0;
% Parameter:   id =  parameter_14, name = KR
	global_par_parameter_14=1.515E-4;
% Parameter:   id =  parameter_15, name = csq
	global_par_parameter_15=10.0;
% Parameter:   id =  parameter_22, name = KC
% Parameter:   id =  parameter_23, name = Po
% Parameter:   id =  parameter_24, name = PE
% Parameter:   id =  parameter_25, name = Ca_SR_basal
	global_par_parameter_25=1.5E-4;
% Parameter:   id =  parameter_26, name = Xi
% assignmentRule: variable = parameter_24
	global_par_parameter_24=global_par_parameter_15*(global_par_parameter_14-global_par_parameter_25);
% assignmentRule: variable = parameter_26
	global_par_parameter_26=x(1)+global_par_parameter_24+global_par_parameter_14;
% assignmentRule: variable = mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6
	x(4)=x(3)/global_par_parameter_9;
% assignmentRule: variable = mw447078ee_8bc8_4358_abcd_ade10dba93b0
	x(2)=(global_par_parameter_26-(global_par_parameter_26^2-4*x(1)*global_par_parameter_14)^(1/2))/2;
% assignmentRule: variable = parameter_22
	global_par_parameter_22=(global_par_parameter_2*global_par_parameter_5^global_par_parameter_6*(global_par_parameter_4/global_par_parameter_9)^global_par_parameter_10*(global_par_parameter_25-global_par_parameter_4/global_par_parameter_9)*((global_par_parameter_4/global_par_parameter_9)^global_par_parameter_8+global_par_parameter_7^global_par_parameter_8)/(global_par_parameter_3*(global_par_parameter_4/global_par_parameter_9)^global_par_parameter_8)-(global_par_parameter_4/global_par_parameter_9)^global_par_parameter_10)^(1/global_par_parameter_10);
% assignmentRule: variable = parameter_23
	global_par_parameter_23=(x(4)*(1+global_par_parameter_11*x(5)))^global_par_parameter_10/(global_par_parameter_22^global_par_parameter_10+(x(4)*(1+global_par_parameter_11*x(5)))^global_par_parameter_10);

% Reaction: id = mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f, name = J3
	reaction_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f=global_par_parameter_3*x(4)^global_par_parameter_8/(global_par_parameter_7^global_par_parameter_8+x(4)^global_par_parameter_8);

% Reaction: id = mw18c30692_65ff_4c7a_b820_079f8ddd9b33, name = J2
	reaction_mw18c30692_65ff_4c7a_b820_079f8ddd9b33=global_par_parameter_2*global_par_parameter_5^global_par_parameter_6*global_par_parameter_23*(x(2)-x(4));

% Reaction: id = mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527, name = J1
	reaction_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527=compartment_mw44539b83_caa2_4da5_bae0_a8dcf7439431*global_par_parameter_1*(x(4)-global_par_parameter_4/global_par_parameter_9)/compartment_mw44539b83_caa2_4da5_bae0_a8dcf7439431;

%Event: id=Caff_ON
	event_Caff_ON=time > 10;

	if(event_Caff_ON) 
		x(5)=0.02;
	end

%Event: id=Caff_OFF
	event_Caff_OFF=time > 15;

	if(event_Caff_OFF) 
		x(5)=0;
	end

	xdot=zeros(5,1);
	
% Species:   id = mwd805cc43_4a96_472f_a894_c119a6aa895f, name = Ca_SR_Total, affected by kineticLaw
	xdot(1) = (1/(compartment_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c))*(( 1.0 * reaction_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f) + (-1.0 * reaction_mw18c30692_65ff_4c7a_b820_079f8ddd9b33));
	
% Species:   id = mw447078ee_8bc8_4358_abcd_ade10dba93b0, name = Ca_SR, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = mw40a96ef6_32da_46d1_9712_4f53f60bad43, name = Ca_i_Total, affected by kineticLaw
	xdot(3) = (1/(compartment_mw44539b83_caa2_4da5_bae0_a8dcf7439431))*((-1.0 * reaction_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f) + ( 1.0 * reaction_mw18c30692_65ff_4c7a_b820_079f8ddd9b33) + (-1.0 * reaction_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527));
	
% Species:   id = mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6, name = Ca_i, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = mw168e0d8a_b9f7_4d4c_b437_a81206c5d381, name = caff
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
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


