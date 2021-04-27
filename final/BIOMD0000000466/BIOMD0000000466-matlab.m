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
% Model name = Koo2013 - Shear stress induced eNOS expression - Model 3
%
% is http://identifiers.org/biomodels.db/MODEL1302180005
% is http://identifiers.org/biomodels.db/BIOMD0000000466
% isDescribedBy http://identifiers.org/pubmed/23708369
%


function main()
%Initial conditions vector
	x0=zeros(34,1);
	x0(1) = 0.0;
	x0(2) = 10000.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 50.0;
	x0(6) = 0.006;
	x0(7) = 0.0;
	x0(8) = 10.0;
	x0(9) = 34.98;
	x0(10) = 819.25;
	x0(11) = 18.0;
	x0(12) = 0.605;
	x0(13) = 72.0;
	x0(14) = 57.0;
	x0(15) = 299.706;
	x0(16) = 98.514;
	x0(17) = 157.162;
	x0(18) = 299.997;
	x0(19) = 0.288;
	x0(20) = 1.486;
	x0(21) = 0.616;
	x0(22) = 119.384;
	x0(23) = 0.003;
	x0(24) = 0.0;
	x0(25) = 3.214;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.857;
	x0(29) = 3.23;
	x0(30) = 15.962;
	x0(31) = 5.577;
	x0(32) = 1.193;
	x0(33) = 0.09;
	x0(34) = 0.0;


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
% Compartment: id = c3, name = nucleus, constant
	compartment_c3=1.0;

% Reaction: id = re102	% Local Parameter:   id =  normal, name = normal
	reaction_re102_normal=4.0;
	% Local Parameter:   id =  tf, name = tf
	reaction_re102_tf=60.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re102_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re102_unimol=1.0;
	% Local Parameter:   id =  tiny_num, name = tiny_num
	reaction_re102_tiny_num=1.0E-6;

	reaction_re102=exp(reaction_re102_unity-(x(4)/reaction_re102_tf)^0.35)*reaction_re102_normal*((x(4)+reaction_re102_tiny_num)/reaction_re102_unimol)^(-0.65)*(reaction_re102_unity-(x(4)/reaction_re102_tf)^0.35);

% Reaction: id = re103	% Local Parameter:   id =  normal, name = normal
	reaction_re103_normal=0.026;
	% Local Parameter:   id =  tf, name = tf
	reaction_re103_tf=540.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re103_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re103_unimol=1.0;

	reaction_re103=exp(reaction_re103_unity-(x(4)/reaction_re103_tf)^1.3)*reaction_re103_normal*(x(4)/reaction_re103_unimol)^0.3*(reaction_re103_unity-(x(4)/reaction_re103_tf)^1.3);

% Reaction: id = re104	% Local Parameter:   id =  k3, name = k3
	reaction_re104_k3=0.1;
	% Local Parameter:   id =  kr3, name = kr3
	reaction_re104_kr3=1.0;

	reaction_re104=reaction_re104_k3*x(10)*x(12)-reaction_re104_kr3*x(28);

% Reaction: id = re105	% Local Parameter:   id =  k4, name = k4
	reaction_re105_k4=8.33;
	% Local Parameter:   id =  kr4, name = kr4
	reaction_re105_kr4=5.0;

	reaction_re105=reaction_re105_k4*x(28)*x(11)-reaction_re105_kr4*x(30);

% Reaction: id = re106	% Local Parameter:   id =  k5, name = k5
	reaction_re106_k5=60.0;
	% Local Parameter:   id =  kr5, name = kr5
	reaction_re106_kr5=546.0;

	reaction_re106=reaction_re106_k5*x(29)*x(30)-reaction_re106_kr5*x(31);

% Reaction: id = re107	% Local Parameter:   id =  k6, name = k6
	reaction_re107_k6=2040.0;
	% Local Parameter:   id =  kr6, name = kr6
	reaction_re107_kr6=15700.0;

	reaction_re107=reaction_re107_k6*x(31)-reaction_re107_kr6*x(12)*x(32);

% Reaction: id = re108	% Local Parameter:   id =  V8, name = V8
	reaction_re108_V8=154.0;
	% Local Parameter:   id =  Km8, name = Km8
	reaction_re108_Km8=340.0;

	reaction_re108=reaction_re108_V8*x(17)/(reaction_re108_Km8+x(17));

% Reaction: id = re109	% Local Parameter:   id =  k7, name = k7
	reaction_re109_k7=40.8;

	reaction_re109=reaction_re109_k7*x(32);

% Reaction: id = re110	% Local Parameter:   id =  k25, name = k25
	reaction_re110_k25=0.001;

	reaction_re110=reaction_re110_k25*x(33);

% Reaction: id = re111	% Local Parameter:   id =  k24t1, name = k24t1
	reaction_re111_k24t1=1.2E-4;
	% Local Parameter:   id =  k24t2, name = k24t2
	reaction_re111_k24t2=9.0E-6;

	reaction_re111=reaction_re111_k24t1*x(26)+reaction_re111_k24t2*x(8);

% Reaction: id = re112	% Local Parameter:   id =  k9, name = k9
	reaction_re112_k9=0.222;
	% Local Parameter:   id =  Km9, name = Km9
	reaction_re112_Km9=0.181;

	reaction_re112=reaction_re112_k9*x(32)*x(22)/(x(22)+reaction_re112_Km9);

% Reaction: id = re113	% Local Parameter:   id =  V10, name = V10
	reaction_re113_V10=0.289;
	% Local Parameter:   id =  Km10, name = Km10
	reaction_re113_Km10=0.0571;

	reaction_re113=reaction_re113_V10*x(21)/(reaction_re113_Km10+x(21));

% Reaction: id = re114	% Local Parameter:   id =  k11, name = k11
	reaction_re114_k11=0.035;
	% Local Parameter:   id =  Km11, name = Km11
	reaction_re114_Km11=10.0;

	reaction_re114=reaction_re114_k11*x(21)*x(16)/(reaction_re114_Km11+x(16));

% Reaction: id = re115	% Local Parameter:   id =  Km12, name = Km12
	reaction_re115_Km12=8.0;
	% Local Parameter:   id =  V12, name = V12
	reaction_re115_V12=0.125;

	reaction_re115=reaction_re115_V12*x(20)/(reaction_re115_Km12+x(20));

% Reaction: id = re116	% Local Parameter:   id =  k13, name = k13
	reaction_re116_k13=0.005;
	% Local Parameter:   id =  Km13, name = Km13
	reaction_re116_Km13=15.0;

	reaction_re116=reaction_re116_k13*x(20)*x(15)/(reaction_re116_Km13+x(15));

% Reaction: id = re117	% Local Parameter:   id =  Km14, name = Km14
	reaction_re117_Km14=15.0;
	% Local Parameter:   id =  V14, name = V14
	reaction_re117_V14=0.375;

	reaction_re117=reaction_re117_V14*x(19)/(x(19)+reaction_re117_Km14);

% Reaction: id = re118	% Local Parameter:   id =  k17, name = k17
	reaction_re118_k17=0.002;
	% Local Parameter:   id =  Km17, name = Km17
	reaction_re118_Km17=30.0;

	reaction_re118=reaction_re118_k17*x(18)*x(6)/(x(18)+reaction_re118_Km17);

% Reaction: id = re119	% Local Parameter:   id =  Km18, name = Km18
	reaction_re119_Km18=15.0;
	% Local Parameter:   id =  V18, name = V18
	reaction_re119_V18=0.05;

	reaction_re119=reaction_re119_V18*x(23)/(x(23)+reaction_re119_Km18);

% Reaction: id = re120	% Local Parameter:   id =  k26, name = k26
	reaction_re120_k26=2.8E-5;

	reaction_re120=reaction_re120_k26*x(25);

% Reaction: id = re121	% Local Parameter:   id =  V27, name = V27
	reaction_re121_V27=0.02824;
	% Local Parameter:   id =  Km27, name = Km27
	reaction_re121_Km27=16.0;

	reaction_re121=reaction_re121_V27*x(25)/(x(25)+reaction_re121_Km27);

% Reaction: id = re122	% Local Parameter:   id =  unitime, name = unitime
	reaction_re122_unitime=1.0;

	reaction_re122=reaction_re122_unitime;

% Reaction: id = re123	% Local Parameter:   id =  V16, name = V16
	reaction_re123_V16=0.375;
	% Local Parameter:   id =  Km16, name = Km16
	reaction_re123_Km16=15.0;

	reaction_re123=reaction_re123_V16*x(6)/(x(6)+reaction_re123_Km16);

% Reaction: id = re124	% Local Parameter:   id =  k15, name = k15
	reaction_re124_k15=0.005;
	% Local Parameter:   id =  Km15, name = Km15
	reaction_re124_Km15=15.0;

	reaction_re124=reaction_re124_k15*x(19)*x(20)/(reaction_re124_Km15+x(19));

% Reaction: id = re125	% Local Parameter:   id =  V20, name = V20
	reaction_re125_V20=0.05;
	% Local Parameter:   id =  Km20, name = Km20
	reaction_re125_Km20=15.0;

	reaction_re125=reaction_re125_V20*x(7)/(reaction_re125_Km20+x(7));

% Reaction: id = re126	% Local Parameter:   id =  k19, name = k19
	reaction_re126_k19=0.002;
	% Local Parameter:   id =  Km19, name = Km19
	reaction_re126_Km19=30.0;

	reaction_re126=reaction_re126_k19*x(23)*x(6)/(reaction_re126_Km19+x(23));

% Reaction: id = re127	% Local Parameter:   id =  Km21, name = Km21
	reaction_re127_Km21=25.0;
	% Local Parameter:   id =  k21, name = k21
	reaction_re127_k21=4.0E-5;

	reaction_re127=x(7)*x(5)*reaction_re127_k21/(reaction_re127_Km21+x(5));

% Reaction: id = re128	% Local Parameter:   id =  Km22, name = Km22
	reaction_re128_Km22=5.0;
	% Local Parameter:   id =  V22, name = V22
	reaction_re128_V22=0.002;

	reaction_re128=reaction_re128_V22*x(26)/(x(26)+reaction_re128_Km22);

% Reaction: id = re129	% Local Parameter:   id =  tau, name = tau
	reaction_re129_tau=0.55;
	% Local Parameter:   id =  tc, name = tc
	reaction_re129_tc=3600.0;
	% Local Parameter:   id =  uc, name = uc
	reaction_re129_uc=3600.0;
	% Local Parameter:   id =  delay, name = delay
	reaction_re129_delay=5.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re129_unity=20.0;

	reaction_re129=exp(reaction_re129_tau*(reaction_re129_delay-x(4)/reaction_re129_tc))/(1+2*exp(reaction_re129_tau*(reaction_re129_delay-x(4)/reaction_re129_tc))+exp(2*reaction_re129_tau*(reaction_re129_delay-x(4)/reaction_re129_tc)))/reaction_re129_uc*29.256;

	xdot=zeros(34,1);
	
% Species:   id = s35, name = s35, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_re120);
	
% Species:   id = s37, name = s37, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_re121);
	
% Species:   id = s38, name = pre_time, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re122);
	
% Species:   id = s39, name = Time, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re122);
	
% Species:   id = s42, name = AP-1, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re127) + ( 1.0 * reaction_re128);
	
% Species:   id = s43, name = pp-JNKK, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_re123) + ( 1.0 * reaction_re124);
	
% Species:   id = s44, name = pp-JNK, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re125) + ( 1.0 * reaction_re126);
	
% Species:   id = s49, name = KLF2, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re129);
	
% Species:   id = s51, name = eNOS-Cav-1, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re121);
	
% Species:   id = s91, name = Shc, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_re104) + ( 1.0 * reaction_re108);
	
% Species:   id = s92, name = p-Src, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_re103);
	
% Species:   id = s93, name = p-FAK, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re102) + (-1.0 * reaction_re104) + ( 1.0 * reaction_re107);
	
% Species:   id = s94, name = Src, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_re103);
	
% Species:   id = s95, name = FAK, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_re102);
	
% Species:   id = s96, name = JNKK, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_re116) + ( 1.0 * reaction_re117);
	
% Species:   id = s97, name = MEKK1, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_re114) + ( 1.0 * reaction_re115);
	
% Species:   id = s98, name = p-Shc, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_re108) + ( 1.0 * reaction_re109);
	
% Species:   id = s99, name = JNK, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_re118) + ( 1.0 * reaction_re119);
	
% Species:   id = s100, name = p-JNKK, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_re116) + (-1.0 * reaction_re117) + ( 1.0 * reaction_re123) + (-1.0 * reaction_re124);
	
% Species:   id = s101, name = p-MEKK1, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_re114) + (-1.0 * reaction_re115);
	
% Species:   id = s102, name = Ras:GTP, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_re112) + (-1.0 * reaction_re113);
	
% Species:   id = s103, name = Ras:GDP, affected by kineticLaw
	xdot(22) = (-1.0 * reaction_re112) + ( 1.0 * reaction_re113);
	
% Species:   id = s104, name = p-JNK, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_re118) + (-1.0 * reaction_re119) + ( 1.0 * reaction_re125) + (-1.0 * reaction_re126);
	
% Species:   id = s105, name = KLF2, affected by kineticLaw
	xdot(24) = (-1.0 * reaction_re129);
	
% Species:   id = s106, name = eNOS, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_re110) + (-1.0 * reaction_re120);
	
% Species:   id = s107, name = aAP-1, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_re127) + (-1.0 * reaction_re128);
	
% Species:   id = s108, name = eNOS, affected by kineticLaw
	xdot(27) = (-1.0 * reaction_re111);
	
% Species:   id = s110, name = p-FAK:Shc, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_re104) + (-1.0 * reaction_re105);
	
% Species:   id = s111, name = Grb2:Sos, affected by kineticLaw
	xdot(29) = (-1.0 * reaction_re106) + ( 1.0 * reaction_re109);
	
% Species:   id = s112, name = p-FAK:p-Shc, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_re105) + (-1.0 * reaction_re106);
	
% Species:   id = s113, name = p-FAK:p-Shc:Grb2:Sos, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_re106) + (-1.0 * reaction_re107);
	
% Species:   id = s114, name = p-Shc:Grb2:Sos, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_re107) + (-1.0 * reaction_re109);
	
% Species:   id = s115, name = eNOS, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_re110) + ( 1.0 * reaction_re111);
	
% Species:   id = s119, name = Shear Stress
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
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


