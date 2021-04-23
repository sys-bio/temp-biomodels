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
% Model name = Vizan2013 - TGF pathway long term signaling
%
% is http://identifiers.org/biomodels.db/MODEL1203120000
% is http://identifiers.org/biomodels.db/BIOMD0000000499
% isDescribedBy http://identifiers.org/pubmed/24327760
% is http://identifiers.org/biomodels.db/MODEL1203120000
% is http://identifiers.org/biomodels.db/BIOMD0000000499
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000173
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 4.0;
	x0(31) = 0.87962962962963;
	x0(32) = 1.19430241051863;
	x0(33) = 0.12037037037037;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 1.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 4.0;
	x0(5) = 0.87962962962963;
	x0(6) = 1.19430241051863;
	x0(7) = 0.12037037037037;
	x0(8) = 0.0;
	x0(9) = 0.05;
	x0(10) = 0.558933528122717;
	x0(11) = 0.0;
	x0(12) = 1.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 1.0;
	x0(19) = 1.0;
	x0(20) = 0.0;
	x0(21) = 1.0;
	x0(22) = 0.0;
	x0(23) = 1.0;
	x0(24) = 0.0;
	x0(25) = 0.0703703703703704;
	x0(26) = 0.0;


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

% Compartment: id = compartment_1, name = Cell, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = kd
	global_par_parameter_1=0.32;
% Parameter:   id =  parameter_2, name = kex
	global_par_parameter_2=20.0;
% Parameter:   id =  parameter_3, name = kin
	global_par_parameter_3=9.36;
% Parameter:   id =  parameter_4, name = alpha
	global_par_parameter_4=0.08;
% Parameter:   id =  parameter_5, name = CHX
	global_par_parameter_5=0.0;
% Parameter:   id =  parameter_6, name = kp
	global_par_parameter_6=21.3715;
% Parameter:   id =  parameter_7, name = kdp
	global_par_parameter_7=24.0;
% Parameter:   id =  parameter_8, name = koff
	global_par_parameter_8=60.0;
% Parameter:   id =  parameter_9, name = kon
% Parameter:   id =  parameter_10, name = KDiss
% Parameter:   id =  parameter_11, name = CIF
	global_par_parameter_11=5.7;
% Parameter:   id =  parameter_12, name = D
	global_par_parameter_12=4.0;
% Parameter:   id =  parameter_13, name = a
	global_par_parameter_13=2.27;
% Parameter:   id =  parameter_14, name = S2tot
	global_par_parameter_14=1.0;
% Parameter:   id =  parameter_15, name = S4tot
	global_par_parameter_15=1.0;
% Parameter:   id =  parameter_16, name = rc0
	global_par_parameter_16=0.05;
% Parameter:   id =  parameter_17, name = KSBI
	global_par_parameter_17=0.196565;
% Parameter:   id =  parameter_18, name = k'T
	global_par_parameter_18=100.0;
% Parameter:   id =  parameter_19, name = kex4
% Parameter:   id =  parameter_20, name = Total Nuc S2 for fit
% Parameter:   id =  parameter_21, name = Ktr
% Parameter:   id =  parameter_22, name = k'act
	global_par_parameter_22=24.5383;
% Parameter:   id =  parameter_23, name = Tmax in ng/ml
	global_par_parameter_23=2.0;
% Parameter:   id =  parameter_24, name = TSca
	global_par_parameter_24=2.0;
% Parameter:   id =  parameter_25, name = k'cc
	global_par_parameter_25=0.35;
% Parameter:   id =  parameter_26, name = k'synT
	global_par_parameter_26=0.0;
% Parameter:   id =  parameter_27, name = k'synTbas
	global_par_parameter_27=0.0;
% Parameter:   id =  parameter_28, name = MG132
	global_par_parameter_28=0.0;
% Parameter:   id =  Metabolite_9, name = Initial for S2n
	global_par_Metabolite_9=0.558933528122717;
% assignmentRule: variable = species_16
	x(16)=(global_par_parameter_13+1)*x(2)-global_par_parameter_13*x(17);
% assignmentRule: variable = species_18
	x(18)=x(19)-x(17);
% assignmentRule: variable = parameter_10
	global_par_parameter_10=0.171;
% assignmentRule: variable = parameter_9
	global_par_parameter_9=global_par_parameter_8/global_par_parameter_10;
% assignmentRule: variable = parameter_19
	global_par_parameter_19=global_par_parameter_3;
% assignmentRule: variable = parameter_21
	global_par_parameter_21=global_par_parameter_16/(1-global_par_parameter_16)*(global_par_parameter_4+1)/global_par_parameter_4;
% assignmentRule: variable = species_20
	x(20)=x(8)-2*x(13)-x(17);
% assignmentRule: variable = species_23
	x(23)=x(5)+x(7)+x(24)+x(26);
% assignmentRule: variable = species_25
	x(25)=x(7)*1/(1+global_par_parameter_21);
% assignmentRule: variable = species_9
	x(9)=x(7)*global_par_parameter_21/(1+global_par_parameter_21);
% assignmentRule: variable = species_10
	x(10)=(global_par_parameter_13+1)*(global_par_parameter_14-x(3))-global_par_parameter_13*x(6);
% assignmentRule: variable = species_11
	x(11)=(global_par_parameter_13+1)*x(1)-global_par_parameter_13*x(13);
% assignmentRule: variable = species_12
	x(12)=(global_par_parameter_13+1)*global_par_parameter_15-global_par_parameter_13*x(19);
% assignmentRule: variable = species_21
	x(21)=x(12)-x(16);
% assignmentRule: variable = species_14
	x(14)=(global_par_parameter_13+1)*x(3)-global_par_parameter_13*x(8);
% assignmentRule: variable = species_15
	x(15)=x(14)-2*x(11)-x(16);
% assignmentRule: variable = parameter_20
	global_par_parameter_20=(x(10)+x(14))/global_par_Metabolite_9;
% rateRule: variable = species_1
x(1) = x(27);
% rateRule: variable = species_2
x(2) = x(28);
% rateRule: variable = species_3
x(3) = x(29);
% rateRule: variable = species_4
x(4) = x(30);
% rateRule: variable = species_5
x(5) = x(31);
% rateRule: variable = species_6
x(6) = x(32);
% rateRule: variable = species_7
x(7) = x(33);
% rateRule: variable = species_8
x(8) = x(34);
% rateRule: variable = species_13
x(13) = x(35);
% rateRule: variable = species_17
x(17) = x(36);
% rateRule: variable = species_19
x(19) = x(37);
% rateRule: variable = species_24
x(24) = x(38);
% rateRule: variable = species_26
x(26) = x(39);

	xdot=zeros(39,1);
	% rateRule: variable = species_1
	xdot(27) = 1/(1+global_par_parameter_13)*(global_par_parameter_9*(global_par_parameter_13*x(20)^2+x(15)^2)-global_par_parameter_8*(global_par_parameter_13*x(13)+x(11)));
	% rateRule: variable = species_2
	xdot(28) = 1/(global_par_parameter_13+1)*(global_par_parameter_9*(global_par_parameter_13*x(18)*x(20)+x(15)*x(21))-global_par_parameter_8*(global_par_parameter_13*x(17)+x(16)));
	% rateRule: variable = species_3
	xdot(29) = 1/(1+global_par_parameter_13)*(global_par_parameter_13*global_par_parameter_6*x(26)*global_par_parameter_17/(global_par_parameter_17+x(22))*x(6)-global_par_parameter_7*x(15));
	% rateRule: variable = species_4
	xdot(30) = global_par_parameter_1*(global_par_parameter_27+global_par_parameter_26*x(16)-(global_par_parameter_18*x(9)+global_par_parameter_25)*x(4));
	% rateRule: variable = species_5
	xdot(31) = global_par_parameter_1*((1-global_par_parameter_5)*(1-global_par_parameter_16)-(global_par_parameter_4+(1-global_par_parameter_28))*x(5));
	% rateRule: variable = species_6
	xdot(32) = global_par_parameter_2*x(10)-(global_par_parameter_3+global_par_parameter_6*x(26)*global_par_parameter_17/(global_par_parameter_17+x(22)))*x(6);
	% rateRule: variable = species_7
	xdot(33) = global_par_parameter_1*(global_par_parameter_4*x(5)-(1-global_par_parameter_28)*x(25)-global_par_parameter_18*x(4)*x(9));
	% rateRule: variable = species_8
	xdot(34) = global_par_parameter_6*x(26)*global_par_parameter_17/(global_par_parameter_17+x(22))*x(6)+global_par_parameter_2*x(15)-global_par_parameter_3*(x(20)+global_par_parameter_11*(x(17)+2*x(13)));
	% rateRule: variable = species_13
	xdot(35) = global_par_parameter_9*x(20)^2-(global_par_parameter_8+global_par_parameter_3*global_par_parameter_11)*x(13);
	% rateRule: variable = species_17
	xdot(36) = global_par_parameter_9*x(18)*x(20)-(global_par_parameter_8+global_par_parameter_3*global_par_parameter_11)*x(17);
	% rateRule: variable = species_19
	xdot(37) = global_par_parameter_19*x(21)-global_par_parameter_3*(x(18)+global_par_parameter_11*x(17));
	% rateRule: variable = species_24
	xdot(38) = global_par_parameter_1*(global_par_parameter_18*x(4)*x(9)-(global_par_parameter_22+global_par_parameter_12*(1-global_par_parameter_28))*x(24));
	% rateRule: variable = species_26
	xdot(39) = global_par_parameter_1*(global_par_parameter_22*x(24)-global_par_parameter_12*(1-global_par_parameter_28)*x(26));
	
% Species:   id = species_1, name = S22, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = species_2, name = S24, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = species_3, name = pS2tot, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = species_4, name = TGF, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = species_5, name = R, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = species_6, name = S2c, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = species_7, name = Rcom, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = species_8, name = pS2c, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = species_9, name = Rcom_S, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = species_10, name = S2n, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = species_11, name = S22n, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = species_12, name = S4n, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = species_13, name = S22c, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = species_14, name = pS2n, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = species_15, name = pS2fn, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = species_16, name = S24n, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = species_17, name = S24c, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = species_18, name = S4fc, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = species_19, name = S4c, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = species_20, name = pS2fc, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = species_21, name = S4fn, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = species_22, name = SBI
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
	
% Species:   id = species_23, name = Rtot, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = species_24, name = RT, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = species_25, name = Rcom_I, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = species_26, name = Ract, involved in a rule 	xdot(26) = x(26);
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


