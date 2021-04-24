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
% Model name = Panteleev2010 - Blood Coagulation: Full Model
%
% isDescribedBy http://identifiers.org/pubmed/20441738
% is http://identifiers.org/biomodels.db/MODEL1808160002
% is http://identifiers.org/biomodels.db/BIOMD0000000740
%


function main()
%Initial conditions vector
	x0=zeros(67,1);
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.005;
	x0(47) = 0.1;
	x0(48) = 10.0;
	x0(49) = 0.0;
	x0(50) = 90.0;
	x0(51) = 0.0;
	x0(52) = 170.0;
	x0(53) = 0.0;
	x0(54) = 1400.0;
	x0(55) = 0.0;
	x0(56) = 7600.0;
	x0(57) = 0.0;
	x0(58) = 0.7;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 30.0;
	x0(63) = 3400.0;
	x0(64) = 2.5;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 60.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.005;
	x0(4) = 0.1;
	x0(5) = 10.0;
	x0(6) = 0.0;
	x0(7) = 90.0;
	x0(8) = 0.0;
	x0(9) = 170.0;
	x0(10) = 0.0;
	x0(11) = 1400.0;
	x0(12) = 0.0;
	x0(13) = 7600.0;
	x0(14) = 0.0;
	x0(15) = 0.7;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 30.0;
	x0(20) = 3400.0;
	x0(21) = 2.5;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 60.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.141353383458647;
	x0(32) = 0.0;
	x0(33) = 0.792569659442725;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 3000.0;
	x0(37) = 40000.0;
	x0(38) = 1100.0;
	x0(39) = 1400.0;
	x0(40) = 88.0;
	x0(41) = 1700.0;
	x0(42) = 346.0;
	x0(43) = 7.5E-5;


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
% Parameter:   id =  k01, name = k01
	global_par_k01=4.2;
% Parameter:   id =  k_01, name = k_01
	global_par_k_01=1.1;
% Parameter:   id =  k02, name = k02
	global_par_k02=0.0014;
% Parameter:   id =  k03, name = k03
	global_par_k03=0.4;
% Parameter:   id =  k04, name = k04
	global_par_k04=15.0;
% Parameter:   id =  K04, name = K04
	global_par_K04=210.0;
% Parameter:   id =  k05, name = k05
	global_par_k05=5.8;
% Parameter:   id =  K05, name = K05
	global_par_K05=200.0;
% Parameter:   id =  k06, name = k06
	global_par_k06=435.0;
% Parameter:   id =  K06, name = K06
	global_par_K06=238.0;
% Parameter:   id =  k07, name = k07
	global_par_k07=0.06;
% Parameter:   id =  K07, name = K07
	global_par_K07=230.0;
% Parameter:   id =  k08, name = k08
	global_par_k08=6350.0;
% Parameter:   id =  K08, name = K08
	global_par_K08=1216.0;
% Parameter:   id =  K09, name = K09
	global_par_K09=278.0;
% Parameter:   id =  K10, name = K10
	global_par_K10=1655.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.052;
% Parameter:   id =  k_11, name = k_11
	global_par_k_11=0.02;
% Parameter:   id =  k12, name = k12
	global_par_k12=45.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.44;
% Parameter:   id =  k14, name = k14
	global_par_k14=5040.0;
% Parameter:   id =  K14, name = K14
	global_par_K14=7200.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=54.0;
% Parameter:   id =  K15, name = K15
	global_par_K15=147.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=14.0;
% Parameter:   id =  K16, name = K16
	global_par_K16=71.7;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.03;
% Parameter:   id =  k18, name = k18
	global_par_k18=2.0E-5;
% Parameter:   id =  k_19, name = k_19
	global_par_k_19=770.0;
% Parameter:   id =  n20, name = n20
	global_par_n20=260.0;
% Parameter:   id =  K20, name = K20
	global_par_K20=2.57;
% Parameter:   id =  n21, name = n21
	global_par_n21=750.0;
% Parameter:   id =  K21, name = K21
	global_par_K21=1.5;
% Parameter:   id =  K22, name = K22
	global_par_K22=150.0;
% Parameter:   id =  K23, name = K23
	global_par_K23=0.118;
% Parameter:   id =  K24, name = K24
	global_par_K24=200.0;
% Parameter:   id =  n25, name = n25
	global_par_n25=16000.0;
% Parameter:   id =  K25, name = K25
	global_par_K25=320.0;
% Parameter:   id =  K26, name = K26
	global_par_K26=470.0;
% Parameter:   id =  n27, name = n27
	global_par_n27=2700.0;
% Parameter:   id =  K27, name = K27
	global_par_K27=2.9;
% Parameter:   id =  h01, name = h01
	global_par_h01=0.44;
% Parameter:   id =  h02, name = h02
	global_par_h02=6.0;
% Parameter:   id =  h03, name = h03
	global_par_h03=8.2E-6;
% Parameter:   id =  h04, name = h04
	global_par_h04=1.5E-4;
% Parameter:   id =  h05, name = h05
	global_par_h05=4.0E-5;
% Parameter:   id =  h06, name = h06
	global_par_h06=1.36E-5;
% Parameter:   id =  h07, name = h07
	global_par_h07=0.0012;
% Parameter:   id =  h08, name = h08
	global_par_h08=2.2E-5;
% Parameter:   id =  h09, name = h09
	global_par_h09=4.1E-4;
% Parameter:   id =  h10, name = h10
	global_par_h10=1.0E-4;
% Parameter:   id =  h11, name = h11
	global_par_h11=3.0E-6;
% Parameter:   id =  h12, name = h12
	global_par_h12=3.7E-4;
% Parameter:   id =  h13, name = h13
	global_par_h13=6.3E-5;
% Parameter:   id =  h14, name = h14
	global_par_h14=0.35;
% Parameter:   id =  h15, name = h15
	global_par_h15=7.7;
% Parameter:   id =  h16, name = h16
	global_par_h16=1.9E-5;
% Parameter:   id =  h17, name = h17
	global_par_h17=2.6E-5;
% Parameter:   id =  h18, name = h18
	global_par_h18=6.0E-6;
% Parameter:   id =  h19, name = h19
	global_par_h19=0.0054;
% Parameter:   id =  h20, name = h20
	global_par_h20=1.4E-4;
% Parameter:   id =  h21, name = h21
	global_par_h21=6.0E-6;
% Parameter:   id =  h22, name = h22
	global_par_h22=6.0E-6;
% Parameter:   id =  h23, name = h23
	global_par_h23=7.0E-7;
% Parameter:   id =  h24, name = h24
	global_par_h24=3.9E-4;
% Parameter:   id =  quantity, name = quantity
	global_par_quantity=0.0;
% Parameter:   id =  Fibrin_uM, name = Fibrin(uM)
% assignmentRule: variable = X_B
	x(31)=x(9)*x(43)*global_par_n25/(global_par_K25*(1+x(9)/global_par_K25+x(11)/global_par_K26));
% assignmentRule: variable = VIIIa_B_F
	x(28)=x(14)*x(43)*global_par_n21/((global_par_K21+x(14))*(1+x(31)/(x(43)*global_par_K10)*(1+x(42)/global_par_K22)));
% assignmentRule: variable = IIa_F
	x(32)=x(10)/(1+(x(12)+x(13))/global_par_K14);
% assignmentRule: variable = II_B
	x(33)=x(11)*x(43)*global_par_n25/(global_par_K26*(1+x(9)/global_par_K25+x(11)/global_par_K26));
% assignmentRule: variable = Va_B
	x(34)=x(16)*x(43)*global_par_n27/(global_par_K27+x(16));
% assignmentRule: variable = Xa_Va_b
	x(29)=x(8)*x(34)/(global_par_K23*(1+x(42)/global_par_K24+x(8)/global_par_K23)+x(34));
% assignmentRule: variable = Xa_F
	x(30)=x(8)-x(29);
% assignmentRule: variable = VIIa_TF_F
	x(25)=x(1)/(1+x(7)/global_par_K04+x(9)/global_par_K06);
% assignmentRule: variable = Xa_VIIa_TF
	x(26)=global_par_k06/(global_par_K06*global_par_k_19)*x(9)*x(25);
% assignmentRule: variable = IXa_B_F
	x(27)=x(6)*x(43)*global_par_n20/(global_par_K20+x(6));
% assignmentRule: variable = Va_B_F
	x(35)=x(34)-x(29);
% assignmentRule: variable = Fibrin_uM
	global_par_Fibrin_uM=x(12)/1000;
% rateRule: variable = VIIa_TF
x(1) = x(44);
% rateRule: variable = VII_TF
x(2) = x(45);
% rateRule: variable = TF
x(3) = x(46);
% rateRule: variable = VIIa
x(4) = x(47);
% rateRule: variable = VII
x(5) = x(48);
% rateRule: variable = IXa
x(6) = x(49);
% rateRule: variable = IX
x(7) = x(50);
% rateRule: variable = Xa
x(8) = x(51);
% rateRule: variable = X
x(9) = x(52);
% rateRule: variable = IIa
x(10) = x(53);
% rateRule: variable = II
x(11) = x(54);
% rateRule: variable = fibrin
x(12) = x(55);
% rateRule: variable = fibrinogen
x(13) = x(56);
% rateRule: variable = VIIIa
x(14) = x(57);
% rateRule: variable = VIII
x(15) = x(58);
% rateRule: variable = Va
x(16) = x(59);
% rateRule: variable = V
x(17) = x(60);
% rateRule: variable = XIa
x(18) = x(61);
% rateRule: variable = XI
x(19) = x(62);
% rateRule: variable = AT_III
x(20) = x(63);
% rateRule: variable = TFPI
x(21) = x(64);
% rateRule: variable = Xa_TFPI
x(22) = x(65);
% rateRule: variable = APC
x(23) = x(66);
% rateRule: variable = PC
x(24) = x(67);

	xdot=zeros(67,1);
	% rateRule: variable = VIIa_TF
	xdot(44) = global_par_k01*x(4)*x(3)-global_par_k_01*x(25)+global_par_k02*x(2)*x(32)+global_par_k03*x(2)*x(30)-global_par_h01*x(25)*x(22)-global_par_h02*x(26)*x(21);
	% rateRule: variable = VII_TF
	xdot(45) = global_par_k01*x(5)*x(3)-global_par_k_01*x(2)-global_par_k02*x(2)*x(32)-global_par_k03*x(2)*x(30);
	% rateRule: variable = TF
	xdot(46) = -(global_par_k01*x(4)*x(3)-global_par_k_01*x(25))-(global_par_k01*x(5)*x(3)-global_par_k_01*x(2));
	% rateRule: variable = VIIa
	xdot(47) = -(global_par_k01*x(4)*x(3)-global_par_k_01*x(25))+global_par_k02*x(5)*x(32);
	% rateRule: variable = VII
	xdot(48) = -(global_par_k01*x(5)*x(3)-global_par_k_01*x(2))-global_par_k02*x(5)*x(32);
	% rateRule: variable = IXa
	xdot(49) = global_par_k04/global_par_K04*x(7)*x(25)+global_par_k05*x(7)*x(18)/(global_par_K05+x(7))-global_par_h03*x(22)*x(6);
	% rateRule: variable = IX
	xdot(50) = (-global_par_k04/global_par_K04)*x(7)*x(25)-global_par_k05*x(7)*x(18)/(global_par_K05+x(7));
	% rateRule: variable = Xa
	xdot(51) = global_par_k06/global_par_K06*x(9)*x(25)+global_par_k07*x(27)*x(31)/(x(43)*global_par_K07)+global_par_k08*x(27)*x(28)*x(31)/(x(43)^2*global_par_K09*global_par_k08)-(global_par_k11*x(30)*x(21)-global_par_k_11*x(22))-(global_par_h04*x(20)+global_par_h05*x(36)+global_par_h06*x(37)+global_par_h07*x(40))*x(30)-global_par_h08*x(20)*x(29);
	% rateRule: variable = X
	xdot(52) = (-global_par_k06/global_par_K06)*x(9)*x(25)-global_par_k07*x(27)*x(31)/(x(43)*global_par_K07)-global_par_k08*x(27)*x(28)*x(31)/(x(43)^2*global_par_K09*global_par_k08);
	% rateRule: variable = IIa
	xdot(53) = global_par_k12*x(43)*x(30)*x(11)+global_par_k13*x(29)*x(33)/x(43)-(global_par_h09*x(20)+global_par_h10*x(36)+global_par_h11*x(37)+global_par_h12*x(40)+global_par_h13*x(39))*x(32);
	% rateRule: variable = II
	xdot(54) = (-global_par_k12)*x(43)*x(30)*x(11)-global_par_k13*x(29)*x(33)/x(43);
	% rateRule: variable = fibrin
	xdot(55) = global_par_k14/global_par_K14*x(13)*x(32);
	% rateRule: variable = fibrinogen
	xdot(56) = (-global_par_k14/global_par_K14)*x(13)*x(32);
	% rateRule: variable = VIIIa
	xdot(57) = global_par_k15*x(15)*x(32)/(global_par_K15+x(32))-global_par_h14*x(14);
	% rateRule: variable = VIII
	xdot(58) = (-global_par_k15)*x(15)*x(32)/(global_par_K15+x(32));
	% rateRule: variable = Va
	xdot(59) = global_par_k16*x(17)*x(32)/(global_par_K16+x(32))-global_par_h15*x(23)*x(35);
	% rateRule: variable = V
	xdot(60) = (-global_par_k16)*x(17)*x(32)/(global_par_K16+x(32));
	% rateRule: variable = XIa
	xdot(61) = global_par_k17*x(43)*x(19)*x(32)-(global_par_h16*x(20)+global_par_h17*x(38)+global_par_h18*x(37)+global_par_h19*x(40)+global_par_h20*x(41))*x(18);
	% rateRule: variable = XI
	xdot(62) = (-global_par_k17)*x(43)*x(19)*x(32);
	% rateRule: variable = AT_III
	xdot(63) = (-(global_par_h03*x(6)+global_par_h04*x(30)+global_par_h08*x(29)+global_par_h09*x(32)+global_par_h16*x(18)))*x(20);
	% rateRule: variable = TFPI
	xdot(64) = -(global_par_k11*x(30)*x(21)-global_par_k_11*x(22))-global_par_h02*x(26)*x(21);
	% rateRule: variable = Xa_TFPI
	xdot(65) = global_par_k11*x(30)*x(21)-global_par_k_11*x(22)-global_par_h01*x(25)*x(22);
	% rateRule: variable = APC
	xdot(66) = global_par_k18*x(24)*x(32)-(global_par_h21*x(36)+global_par_h22*x(38)+global_par_h23*x(37)+global_par_h24*x(40))*x(23);
	% rateRule: variable = PC
	xdot(67) = (-global_par_k18)*x(24)*x(32);
	
% Species:   id = VIIa_TF, name = VIIa-TF, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = VII_TF, name = VII-TF, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = TF, name = TF, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = VIIa, name = VIIa, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = VII, name = VII, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = IXa, name = IXa, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = IX, name = IX, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = Xa, name = Xa, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = X, name = X, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = IIa, name = IIa, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = II, name = II, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = fibrin, name = fibrin, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = fibrinogen, name = fibrinogen, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = VIIIa, name = VIIIa, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = VIII, name = VIII, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Va, name = Va, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = V, name = V, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = XIa, name = XIa, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = XI, name = XI, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = AT_III, name = AT-III, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = TFPI, name = TFPI, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = Xa_TFPI, name = Xa-TFPI, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = APC, name = APC, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = PC, name = PC, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = VIIa_TF_F, name = VIIa-TF^F, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = Xa_VIIa_TF, name = Xa-VIIa-TF, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = IXa_B_F, name = IXa^B^F, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = VIIIa_B_F, name = VIIIa^B^F, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = Xa_Va_b, name = Xa-Va^b, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = Xa_F, name = Xa^F, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = X_B, name = X^B, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = IIa_F, name = IIa^F, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = II_B, name = II^B, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = Va_B, name = Va^B, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = Va_B_F, name = Va^B^F, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = alpha2_macroglobulin, name = alpha2-macroglobulin
% Warning species is not changed by either rules or reactions
	xdot(36) = ;
	
% Species:   id = alpha1_antitrypsin, name = alpha1-antitrypsin
% Warning species is not changed by either rules or reactions
	xdot(37) = ;
	
% Species:   id = alpha2_antiplasmin, name = alpha2-antiplasmin
% Warning species is not changed by either rules or reactions
	xdot(38) = ;
	
% Species:   id = heparin_cofactor2, name = heparin-cofactor2
% Warning species is not changed by either rules or reactions
	xdot(39) = ;
	
% Species:   id = ProteinC_Inhibitor, name = ProteinC-Inhibitor
% Warning species is not changed by either rules or reactions
	xdot(40) = ;
	
% Species:   id = C1_inhibitor, name = C1-inhibitor
% Warning species is not changed by either rules or reactions
	xdot(41) = ;
	
% Species:   id = ProteinS_inhibitor, name = ProteinS-inhibitor
% Warning species is not changed by either rules or reactions
	xdot(42) = ;
	
% Species:   id = Phospholipid, name = Phospholipid
% Warning species is not changed by either rules or reactions
	xdot(43) = ;
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


