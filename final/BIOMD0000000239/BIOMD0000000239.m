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
% Model name = Jiang2007 - GSIS system, Pancreatic Beta Cells
%
% is http://identifiers.org/biomodels.db/MODEL1469251725
% is http://identifiers.org/biomodels.db/BIOMD0000000239
% isDescribedBy http://identifiers.org/pubmed/17514510
%


function main()
%Initial conditions vector
	x0=zeros(59,1);
	x0(1) = 1.12817E-5;
	x0(2) = 6.5939E-4;
	x0(3) = 7.70135E-6;
	x0(4) = 1.90919E-6;
	x0(5) = 2.99109E-4;
	x0(6) = 2.1125E-6;
	x0(7) = 4.22702E-6;
	x0(8) = 2.61149E-6;
	x0(9) = 3.3981E-4;
	x0(10) = 0.0076925;
	x0(11) = 0.0076925;
	x0(12) = 4.0E-6;
	x0(13) = 0.00114;
	x0(14) = 0.00303;
	x0(15) = 2.1E-5;
	x0(16) = 5.0E-4;
	x0(17) = 3.0E-5;
	x0(18) = 2.72E-4;
	x0(19) = 4.2E-4;
	x0(20) = 4.2E-4;
	x0(21) = 0.00449064;
	x0(22) = 1.08367E-4;
	x0(23) = 0.00362057;
	x0(24) = 6.16118E-4;
	x0(25) = 0.00362057;
	x0(26) = 6.16118E-4;
	x0(27) = 0.001025;
	x0(28) = 0.00163;
	x0(29) = 2.72E-4;
	x0(30) = 3.0E-5;
	x0(31) = 0.004;
	x0(32) = 6.5E-5;
	x0(33) = 2.941E-4;
	x0(34) = 0.00295;
	x0(35) = 0.0045;
	x0(36) = 4.5E-4;
	x0(37) = 0.00344;
	x0(38) = 0.00114;
	x0(39) = 0.00303;
	x0(40) = 0.001;
	x0(41) = 3.1E-4;
	x0(42) = 3.2E-4;
	x0(43) = 7.2E-5;
	x0(44) = 0.00101;
	x0(45) = 2.1E-5;
	x0(46) = 5.0E-4;
	x0(47) = 4.0E-6;
	x0(48) = 4.2E-4;
	x0(49) = 4.2E-4;
	x0(50) = 0.0045;
	x0(51) = 4.5E-4;
	x0(52) = 0.0101;
	x0(53) = 7.2E-5;
	x0(54) = 0.0101;
	x0(55) = 7.2E-4;
	x0(56) = 0.026;
	x0(57) = 0.028;
	x0(58) = 0.003;
	x0(59) = 1.1E-4;


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

% Compartment: id = CYTOPLASM, name = cytoplasm, constant
	compartment_CYTOPLASM=1.0;
% Compartment: id = MT_IMS, name = mitochondrial intermembrane space, constant
	compartment_MT_IMS=1.0;
% Compartment: id = MT_IM, name = mitochondrial inner membrane, constant
	compartment_MT_IM=1.0;
% Compartment: id = MATRIX, name = mitochondrial matrix, constant
	compartment_MATRIX=1.0;
% Parameter:   id =  flow, name = flow
	global_par_flow=0.011;

% Reaction: id = GLCflow	% Local Parameter:   id =  Glc_F, name = Glc_F
	reaction_GLCflow_Glc_F=64.941;

	reaction_GLCflow=compartment_CYTOPLASM*(reaction_GLCflow_Glc_F*10^(-3)-x(1))*global_par_flow;

% Reaction: id = LACflow
	reaction_LACflow=compartment_CYTOPLASM*x(9)*global_par_flow;

% Reaction: id = GAPflow
	reaction_GAPflow=compartment_CYTOPLASM*x(4)*global_par_flow;

% Reaction: id = v1, name = glucokinase	% Local Parameter:   id =  V1, name = V1
	reaction_v1_V1=5.0E-4;
	% Local Parameter:   id =  K1GLC, name = K1GLC
	reaction_v1_K1GLC=1.0E-4;
	% Local Parameter:   id =  K1ATP, name = K1ATP
	reaction_v1_K1ATP=6.3E-5;

	reaction_v1=compartment_CYTOPLASM*reaction_v1_V1*x(21)*x(1)/((reaction_v1_K1GLC+x(1))*(reaction_v1_K1ATP+x(21)));

% Reaction: id = v2, name = 6-phosphofructokinase	% Local Parameter:   id =  V2, name = V2
	reaction_v2_V2=0.0015;
	% Local Parameter:   id =  K2, name = K2
	reaction_v2_K2=1.6E-9;
	% Local Parameter:   id =  k2, name = k2
	reaction_v2_k2=0.017;
	% Local Parameter:   id =  K2ATP, name = K2ATP
	reaction_v2_K2ATP=1.0E-5;

	reaction_v2=compartment_CYTOPLASM*reaction_v2_V2*x(21)*x(2)^2/((reaction_v2_K2*(1+reaction_v2_k2*(x(21)/x(8))^2)+x(2)^2)*(reaction_v2_K2ATP+x(21)));

% Reaction: id = v3, name = fructose-bisphosphate aldolase	% Local Parameter:   id =  k3f, name = k3f
	reaction_v3_k3f=1.0;
	% Local Parameter:   id =  k3b, name = k3b
	reaction_v3_k3b=0.05;

	reaction_v3=compartment_CYTOPLASM*(reaction_v3_k3f*x(3)-reaction_v3_k3b*x(4)^2);

% Reaction: id = v4, name = glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  V4, name = V4
	reaction_v4_V4=0.01;
	% Local Parameter:   id =  K4GAP, name = K4GAP
	reaction_v4_K4GAP=0.001;
	% Local Parameter:   id =  K4NAD, name = K4NAD
	reaction_v4_K4NAD=0.001;

	reaction_v4=compartment_CYTOPLASM*reaction_v4_V4*x(23)*x(4)/((reaction_v4_K4GAP+x(4))*(reaction_v4_K4NAD+x(23)));

% Reaction: id = v5, name = bisphosphoglycerate phosphotase (1/2)	% Local Parameter:   id =  k5f, name = k5f
	reaction_v5_k5f=1000.0;
	% Local Parameter:   id =  k5b, name = k5b
	reaction_v5_k5b=500.0;

	reaction_v5=compartment_CYTOPLASM*(reaction_v5_k5f*x(5)*x(22)-reaction_v5_k5b*x(6)*x(21));

% Reaction: id = v6, name = pyruvate kinase	% Local Parameter:   id =  V6, name = V6
	reaction_v6_V6=0.01;
	% Local Parameter:   id =  K6PEP, name = K6PEP
	reaction_v6_K6PEP=2.0E-4;
	% Local Parameter:   id =  K6ADP, name = K6ADP
	reaction_v6_K6ADP=3.0E-4;

	reaction_v6=compartment_CYTOPLASM*reaction_v6_V6*x(22)*x(6)/((reaction_v6_K6PEP+x(6))*(reaction_v6_K6ADP+x(22)));

% Reaction: id = v7, name = lactate dehydrogenase	% Local Parameter:   id =  k8f, name = k8f
	reaction_v7_k8f=1000.0;
	% Local Parameter:   id =  k8b, name = k8b
	reaction_v7_k8b=0.143;

	reaction_v7=compartment_CYTOPLASM*(reaction_v7_k8f*x(24)*x(7)-reaction_v7_k8b*x(23)*x(9));

% Reaction: id = hidden_1	% Local Parameter:   id =  k9f, name = k9f
	reaction_hidden_1_k9f=10000.0;
	% Local Parameter:   id =  k9b, name = k9b
	reaction_hidden_1_k9b=10000.0;

	reaction_hidden_1=compartment_CYTOPLASM*(reaction_hidden_1_k9f*x(8)*x(21)-reaction_hidden_1_k9b*x(22)^2);

% Reaction: id = v8, name = pyruvate carrier	% Local Parameter:   id =  V, name = V
	reaction_v8_V=1.0E-8;
	% Local Parameter:   id =  K, name = K
	reaction_v8_K=1.5E-7;
	% Local Parameter:   id =  v8_PYC, name = PYC
	reaction_v8_v8_PYC=3.3211E-4;

	reaction_v8=compartment_MATRIX*reaction_v8_V*x(7)*reaction_v8_v8_PYC/(reaction_v8_K+x(7));

% Reaction: id = v9, name = pyruvate dehydrogenase complex	% Local Parameter:   id =  KmA, name = KmA
	reaction_v9_KmA=2.5E-5;
	% Local Parameter:   id =  KmB, name = KmB
	reaction_v9_KmB=1.3E-5;
	% Local Parameter:   id =  KmC, name = KmC
	reaction_v9_KmC=5.0E-5;
	% Local Parameter:   id =  KmP, name = KmP
	reaction_v9_KmP=5.9E-7;
	% Local Parameter:   id =  KmR, name = KmR
	reaction_v9_KmR=6.9E-7;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v9_Kia=5.5E-4;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v9_Kib=3.0E-4;
	% Local Parameter:   id =  Kic, name = Kic
	reaction_v9_Kic=1.8E-4;
	% Local Parameter:   id =  Kip, name = Kip
	reaction_v9_Kip=6.0E-5;
	% Local Parameter:   id =  Kiq, name = Kiq
	reaction_v9_Kiq=3.5E-5;
	% Local Parameter:   id =  Kir, name = Kir
	reaction_v9_Kir=3.6E-5;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v9_KcF=856.0;
	% Local Parameter:   id =  v9_PDC, name = PDC
	reaction_v9_v9_PDC=3.8617E-7;

	reaction_v9=compartment_MATRIX*reaction_v9_KcF*reaction_v9_v9_PDC*x(27)*x(29)*x(54)/(reaction_v9_KmC*x(27)*x(29)+reaction_v9_KmB*x(27)*x(54)+reaction_v9_KmA*x(29)*x(54)+x(27)*x(29)*x(54)+reaction_v9_KmA*reaction_v9_KmP*reaction_v9_Kib*reaction_v9_Kic/reaction_v9_KmR/reaction_v9_Kip/reaction_v9_Kiq*x(30)*x(55)+reaction_v9_KmC/reaction_v9_Kir*x(27)*x(29)*x(55)+reaction_v9_KmB/reaction_v9_Kiq*x(27)*x(54)*x(30)+reaction_v9_KmA*reaction_v9_KmP*reaction_v9_Kib*reaction_v9_Kic/reaction_v9_KmR/reaction_v9_Kip/reaction_v9_Kia/reaction_v9_Kiq*x(27)*x(30)*x(55));

% Reaction: id = v10, name = citrate synthase	% Local Parameter:   id =  V, name = V
	reaction_v10_V=0.005267;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_v10_Ka=1.18E-5;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_v10_Kb=4.8E-6;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v10_Kia=1.0E-5;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v10_Kib=4.0E-6;
	% Local Parameter:   id =  v10_CS, name = CS
	reaction_v10_v10_CS=3.8617E-7;

	reaction_v10=compartment_MATRIX*reaction_v10_V*x(30)*x(47)*reaction_v10_v10_CS/(x(30)*x(47)+reaction_v10_Ka*x(47)+reaction_v10_Kb*x(30)+reaction_v10_Kia*reaction_v10_Kib);

% Reaction: id = v11, name = aconitase	% Local Parameter:   id =  Ks, name = Ks
	reaction_v11_Ks=5.0E-4;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_v11_Kp=1.1E-4;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v11_KcF=20.47;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v11_KcR=31.44;
	% Local Parameter:   id =  v11_ACO, name = ACO
	reaction_v11_v11_ACO=3.8617E-7;

	reaction_v11=compartment_MATRIX*(reaction_v11_KcF*reaction_v11_Kp*x(48)-reaction_v11_KcR*reaction_v11_Ks*x(49))*reaction_v11_v11_ACO/(reaction_v11_Ks*x(49)+reaction_v11_Kp*x(48)+reaction_v11_Ks*reaction_v11_Kp);

% Reaction: id = v12, name = isocitrate dehydrogenase (NAD+) (alpha/beta/gamma)	% Local Parameter:   id =  KcF, name = KcF
	reaction_v12_KcF=105.0;
	% Local Parameter:   id =  b, name = b
	reaction_v12_b=29.6;
	% Local Parameter:   id =  c, name = c
	reaction_v12_c=2.3E-4;
	% Local Parameter:   id =  d, name = d
	reaction_v12_d=7.8E-5;
	% Local Parameter:   id =  e, name = e
	reaction_v12_e=6.4E-4;
	% Local Parameter:   id =  f, name = f
	reaction_v12_f=3.6E-4;
	% Local Parameter:   id =  v12_IDHa, name = IDHa
	reaction_v12_v12_IDHa=3.8617E-7;

	reaction_v12=compartment_MATRIX*reaction_v12_KcF*reaction_v12_v12_IDHa*(x(49)*x(49)+reaction_v12_b*x(51)*x(49))/(x(49)*x(49)+reaction_v12_c*x(49)+reaction_v12_d*x(51)+reaction_v12_e*x(51)*x(49)+reaction_v12_f);

% Reaction: id = v14, name = oxoglutarate dehydrogenase complex	% Local Parameter:   id =  KmA, name = KmA
	reaction_v14_KmA=2.2E-4;
	% Local Parameter:   id =  KmB, name = KmB
	reaction_v14_KmB=2.5E-5;
	% Local Parameter:   id =  KmC, name = KmC
	reaction_v14_KmC=5.0E-5;
	% Local Parameter:   id =  KmP, name = KmP
	reaction_v14_KmP=3.0E-4;
	% Local Parameter:   id =  KmR, name = KmR
	reaction_v14_KmR=6.0E-4;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v14_Kia=7.2E-4;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v14_Kib=7.4E-4;
	% Local Parameter:   id =  Kic, name = Kic
	reaction_v14_Kic=1.0E-4;
	% Local Parameter:   id =  Kip, name = Kip
	reaction_v14_Kip=1.1E-6;
	% Local Parameter:   id =  Kiq, name = Kiq
	reaction_v14_Kiq=8.1E-5;
	% Local Parameter:   id =  Kir, name = Kir
	reaction_v14_Kir=2.5E-5;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v14_KcF=177.0;
	% Local Parameter:   id =  v14_OGDC, name = OGDC
	reaction_v14_v14_OGDC=3.8617E-7;

	reaction_v14=compartment_MATRIX*reaction_v14_KcF*reaction_v14_v14_OGDC*x(45)*x(29)*x(54)/(reaction_v14_KmC*x(45)*x(29)+reaction_v14_KmB*x(45)*x(54)+reaction_v14_KmA*x(29)*x(54)+x(45)*x(29)*x(54)+reaction_v14_KmA*reaction_v14_KmP*reaction_v14_Kib*reaction_v14_Kic/reaction_v14_KmR/reaction_v14_Kip/reaction_v14_Kiq*x(33)*x(55)+reaction_v14_KmC/reaction_v14_Kir*x(45)*x(29)*x(55)+reaction_v14_KmB/reaction_v14_Kiq*x(45)*x(54)*x(33)+reaction_v14_KmA*reaction_v14_KmP*reaction_v14_Kib*reaction_v14_Kic/reaction_v14_KmR/reaction_v14_Kip/reaction_v14_Kia/reaction_v14_Kiq*x(45)*x(33)*x(55));

% Reaction: id = v15, name = succinyl-CoA synthetase	% Local Parameter:   id =  KmA, name = KmA
	reaction_v15_KmA=5.0E-6;
	% Local Parameter:   id =  KmB, name = KmB
	reaction_v15_KmB=3.5E-5;
	% Local Parameter:   id =  KmC, name = KmC
	reaction_v15_KmC=4.5E-4;
	% Local Parameter:   id =  KmP, name = KmP
	reaction_v15_KmP=6.0E-4;
	% Local Parameter:   id =  KmQ, name = KmQ
	reaction_v15_KmQ=7.5E-6;
	% Local Parameter:   id =  KmC2, name = KmC2
	reaction_v15_KmC2=4.5E-4;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v15_KmP2=6.0E-4;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v15_Keq=8.375;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v15_Kia=4.0E-4;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v15_Kib=2.0E-5;
	% Local Parameter:   id =  Kic, name = Kic
	reaction_v15_Kic=3.0E-5;
	% Local Parameter:   id =  Kip, name = Kip
	reaction_v15_Kip=0.07;
	% Local Parameter:   id =  Kiq, name = Kiq
	reaction_v15_Kiq=5.0E-6;
	% Local Parameter:   id =  Kir, name = Kir
	reaction_v15_Kir=6.7E-6;
	% Local Parameter:   id =  Kc1, name = Kc1
	reaction_v15_Kc1=100.0;
	% Local Parameter:   id =  Kc2, name = Kc2
	reaction_v15_Kc2=100.0;
	% Local Parameter:   id =  v15_SCS, name = SCS
	reaction_v15_v15_SCS=3.8617E-7;

	reaction_v15=compartment_MATRIX*(x(36)*x(33)*pi-x(34)*x(35)*x(29)/reaction_v15_Keq)*(reaction_v15_Kc1*reaction_v15_v15_SCS+reaction_v15_Kc2*reaction_v15_v15_SCS*(reaction_v15_KmC*x(34)/reaction_v15_KmC2*reaction_v15_Kip+pi/reaction_v15_KmC2))/(reaction_v15_Kia*reaction_v15_KmB*pi+reaction_v15_KmB*x(36)*pi+reaction_v15_KmA*x(33)*pi+reaction_v15_KmC*x(36)*x(33)+x(36)*x(33)*pi+x(36)*x(33)*pi*pi/reaction_v15_KmC2+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_KmC*x(34)/reaction_v15_Kip+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_KmC*x(34)*x(35)/reaction_v15_Kip/reaction_v15_Kiq+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_KmC*x(34)*x(29)/reaction_v15_Kip/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_Kic*x(35)*x(29)/reaction_v15_KmQ/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_KmC*x(34)*x(35)*x(29)/reaction_v15_Kip/reaction_v15_KmQ/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*reaction_v15_KmC*x(34)*x(34)*x(35)*x(29)/reaction_v15_Kip/reaction_v15_KmP2/reaction_v15_KmQ/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*pi*x(35)/reaction_v15_Kiq+reaction_v15_Kia*reaction_v15_KmB*pi*x(29)/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*pi*x(35)*x(29)/reaction_v15_KmQ/reaction_v15_Kir+reaction_v15_Kia*reaction_v15_KmB*pi*x(34)*x(35)*x(29)/reaction_v15_KmP2/reaction_v15_KmQ/reaction_v15_Kir+reaction_v15_KmB*reaction_v15_KmC*x(36)*x(34)/reaction_v15_Kip+reaction_v15_KmA*reaction_v15_KmC*x(33)*x(34)/reaction_v15_Kip+reaction_v15_KmC*x(36)*x(33)*x(34)/reaction_v15_Kip+reaction_v15_KmC*x(36)*x(33)*pi*x(34)/reaction_v15_KmC2/reaction_v15_Kip+reaction_v15_KmA*x(33)*pi*x(35)/reaction_v15_Kiq+reaction_v15_KmB*x(36)*pi*x(29)/reaction_v15_Kir+reaction_v15_KmA*reaction_v15_KmC*x(33)*x(34)*x(35)/reaction_v15_Kip/reaction_v15_Kiq+reaction_v15_KmB*reaction_v15_KmC*x(36)*x(34)*x(29)/reaction_v15_Kip/reaction_v15_Kir);

% Reaction: id = v16, name = succinate dehydrogenase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v16_KmS1=3.0E-5;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v16_KmS2=6.9E-5;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v16_KmP1=3.0E-7;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v16_KmP2=1.5E-6;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v16_KiS1=4.1E-6;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v16_KiP2=5.6E-6;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v16_Keq=0.037;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v16_KcF=69.3;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v16_KcR=1.73;
	% Local Parameter:   id =  v16_SDH, name = SDH
	reaction_v16_v16_SDH=9.9211E-5;

	reaction_v16=compartment_MATRIX*reaction_v16_KcF*reaction_v16_KcR*reaction_v16_v16_SDH*(x(34)*x(56)-x(32)*x(57)/reaction_v16_Keq)/(reaction_v16_KcR*reaction_v16_KmS2*x(34)+reaction_v16_KcR*reaction_v16_KmS1*x(56)+reaction_v16_KcF*reaction_v16_KmP2*x(32)/reaction_v16_Keq+reaction_v16_KcF*reaction_v16_KmP1*x(57)/reaction_v16_Keq+reaction_v16_KcR*x(34)*x(56)+reaction_v16_KcF*reaction_v16_KmP2*x(34)*x(32)/(reaction_v16_Keq*reaction_v16_KiS1)+reaction_v16_KcF*x(32)*x(57)/reaction_v16_Keq+reaction_v16_KcR*reaction_v16_KmS1*x(56)*x(57)/reaction_v16_KiP2);

% Reaction: id = v17, name = fumarase	% Local Parameter:   id =  Kp, name = Kp
	reaction_v17_Kp=2.5E-5;
	% Local Parameter:   id =  Ks, name = Ks
	reaction_v17_Ks=5.0E-6;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v17_KcF=800.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v17_KcR=900.0;
	% Local Parameter:   id =  v17_FM, name = FM
	reaction_v17_v17_FM=3.8617E-7;

	reaction_v17=compartment_MATRIX*(reaction_v17_KcF*reaction_v17_Kp*x(32)-reaction_v17_KcR*reaction_v17_Ks*x(46))*reaction_v17_v17_FM/(reaction_v17_Ks*x(46)+reaction_v17_Kp*x(32)+reaction_v17_Ks*reaction_v17_Kp);

% Reaction: id = v18, name = malate dehydrogenase (mitochondrion)	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v18_KmS1=7.2E-5;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v18_KmS2=1.1E-4;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v18_KmP1=0.0016;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v18_KmP2=1.7E-4;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v18_KiS1=1.1E-5;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v18_KiS2=1.0E-4;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v18_KiP1=0.0071;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v18_KiP2=0.0019;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v18_KcF=0.39;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v18_KcR=0.04;
	% Local Parameter:   id =  v18_MDH, name = MDH
	reaction_v18_v18_MDH=3.8617E-7;

	reaction_v18=compartment_MATRIX*(reaction_v18_KcF*x(46)*x(54)/reaction_v18_KiS1/reaction_v18_KmS2-reaction_v18_KcR*x(47)*x(55)/reaction_v18_KmP1/reaction_v18_KiP2)*reaction_v18_v18_MDH/(1+x(46)/reaction_v18_KiS1+reaction_v18_KmS1*x(54)/reaction_v18_KiS1/reaction_v18_KmS2+reaction_v18_KmP2*x(47)/reaction_v18_KmP1/reaction_v18_KiP2+x(55)/reaction_v18_KiP2+x(46)*x(54)/reaction_v18_KiS1/reaction_v18_KmS2+reaction_v18_KmP2*x(46)*x(47)/reaction_v18_KiS1/reaction_v18_KmP1/reaction_v18_KiP2+reaction_v18_KmS1*x(54)*x(55)/reaction_v18_KiS1/reaction_v18_KmS2/reaction_v18_KiP2+x(47)*x(55)/reaction_v18_KmP1*reaction_v18_KiP2+x(46)*x(54)*x(47)/reaction_v18_KiS1/reaction_v18_KmS2/reaction_v18_KiP1+x(54)*x(47)*x(55)/reaction_v18_KiS2/reaction_v18_KmP1/reaction_v18_KiP2);

% Reaction: id = v20, name = alanine transaminase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v20_KmS1=0.002;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v20_KmS2=4.0E-4;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v20_KmP1=0.032;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v20_KmP2=4.0E-4;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v20_KiS1=0.0087;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v20_KiP2=0.012;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v20_Keq=0.69;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v20_KcF=337.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v20_KcR=0.15;
	% Local Parameter:   id =  v20_AlaTA, name = AlaTA
	reaction_v20_v20_AlaTA=3.8617E-7;

	reaction_v20=compartment_MATRIX*reaction_v20_KcF*reaction_v20_KcR*reaction_v20_v20_AlaTA*(x(37)*x(45)-x(39)*x(27)/reaction_v20_Keq)/(reaction_v20_KcR*reaction_v20_KmS2*x(37)+reaction_v20_KcR*reaction_v20_KmS1*x(45)+reaction_v20_KcF*reaction_v20_KmP2*x(39)/reaction_v20_Keq+reaction_v20_KcF*reaction_v20_KmP1*x(27)/reaction_v20_Keq+reaction_v20_KcR*x(37)*x(45)+reaction_v20_KcF*reaction_v20_KmP2*x(37)*x(39)/(reaction_v20_Keq*reaction_v20_KiS1)+reaction_v20_KcF*x(39)*x(27)/reaction_v20_Keq+reaction_v20_KcR*reaction_v20_KmS1*x(45)*x(27)/reaction_v20_KiP2);

% Reaction: id = v21, name = aspartate transaminase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v21_KmS1=9.0E-4;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v21_KmS2=1.0E-4;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v21_KmP1=4.0E-5;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v21_KmP2=0.004;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v21_KiS1=0.002;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v21_KiP2=0.0083;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v21_Keq=6.2;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v21_KcF=300.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v21_KcR=1000.0;
	% Local Parameter:   id =  v21_AspTA, name = AspTA
	reaction_v21_v21_AspTA=3.8617E-7;

	reaction_v21=compartment_MATRIX*reaction_v21_KcF*reaction_v21_KcR*reaction_v21_v21_AspTA*(x(47)*x(39)-x(38)*x(45)/reaction_v21_Keq)/(reaction_v21_KcR*reaction_v21_KmS2*x(47)+reaction_v21_KcR*reaction_v21_KmS1*x(39)+reaction_v21_KcF*reaction_v21_KmP2*x(38)/reaction_v21_Keq+reaction_v21_KcF*reaction_v21_KmP1*x(45)/reaction_v21_Keq+reaction_v21_KcR*x(47)*x(39)+reaction_v21_KcF*reaction_v21_KmP2*x(47)*x(38)/(reaction_v21_Keq*reaction_v21_KiS1)+reaction_v21_KcF*x(38)*x(45)/reaction_v21_Keq+reaction_v21_KcR*reaction_v21_KmS1*x(39)*x(45)/reaction_v21_KiP2);

% Reaction: id = v22, name = aspartate/glutamate carrier	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v22_KiS1=8.0E-5;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v22_KiS2=0.0032;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v22_KiP1=1.8E-4;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v22_KiP2=0.0028;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v22_KcF=10.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v22_KcR=10.0;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_v22_alpha=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_v22_beta=1.0;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_v22_gamma=1.0;
	% Local Parameter:   id =  delta, name = delta
	reaction_v22_delta=1.0;
	% Local Parameter:   id =  v22_AGC, name = AGC
	reaction_v22_v22_AGC=3.3211E-4;

	reaction_v22=compartment_MATRIX*(x(38)*x(14)/reaction_v22_alpha/reaction_v22_KiS1/reaction_v22_KiS2*reaction_v22_KcF-x(39)*x(13)/reaction_v22_beta/reaction_v22_KiP1/reaction_v22_KiP2*reaction_v22_KcR)*reaction_v22_v22_AGC/(1+x(38)/reaction_v22_KiS1+x(14)/reaction_v22_KiS2+x(39)/reaction_v22_KiP1+x(13)/reaction_v22_KiP2+x(38)*x(14)/reaction_v22_alpha/reaction_v22_KiS1/reaction_v22_KiS2+x(39)*x(13)/reaction_v22_beta/reaction_v22_KiP1/reaction_v22_KiP2+x(14)*x(13)/reaction_v22_gamma/reaction_v22_KiS2/reaction_v22_KiP2+x(38)*x(39)/reaction_v22_delta/reaction_v22_KiS1/reaction_v22_KiP1);

% Reaction: id = v24, name = NADH:ubiquinone oxidoreductase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v24_KmS1=9.2E-6;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v24_KmS2=2.6E-4;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v24_KmP1=9.9E-6;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v24_KmP2=5.9E-5;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v24_KiS1=2.1E-8;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v24_KiP2=9.8E-8;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v24_Keq=407.9;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v24_KcF=498.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v24_KcR=229.0;
	% Local Parameter:   id =  v24_Complex_I, name = Complex_I
	reaction_v24_v24_Complex_I=3.3211E-4;

	reaction_v24=compartment_MATRIX*reaction_v24_KcF*reaction_v24_KcR*reaction_v24_v24_Complex_I*(x(55)*x(56)-x(54)*x(57)/reaction_v24_Keq)/(reaction_v24_KcR*reaction_v24_KmS2*x(55)+reaction_v24_KcR*reaction_v24_KmS1*x(56)+reaction_v24_KcF*reaction_v24_KmP2*x(54)/reaction_v24_Keq+reaction_v24_KcF*reaction_v24_KmP1*x(57)/reaction_v24_Keq+reaction_v24_KcR*x(55)*x(56)+reaction_v24_KcF*reaction_v24_KmP2*x(55)*x(54)/(reaction_v24_Keq*reaction_v24_KiS1)+reaction_v24_KcF*x(54)*x(57)/reaction_v24_Keq+reaction_v24_KcR*reaction_v24_KmS1*x(56)*x(57)/reaction_v24_KiP2);

% Reaction: id = v25, name = ubiquinol:cytochrome c oxidoreductase	% Local Parameter:   id =  KmA, name = KmA
	reaction_v25_KmA=2.8E-5;
	% Local Parameter:   id =  KmB, name = KmB
	reaction_v25_KmB=3.0E-6;
	% Local Parameter:   id =  Kb1, name = Kb1
	reaction_v25_Kb1=5.4E-6;
	% Local Parameter:   id =  Kb2, name = Kb2
	reaction_v25_Kb2=5.7E-6;
	% Local Parameter:   id =  Kq1, name = Kq1
	reaction_v25_Kq1=2.8E-6;
	% Local Parameter:   id =  Kq2, name = Kq2
	reaction_v25_Kq2=1.9E-6;
	% Local Parameter:   id =  k8, name = k8
	reaction_v25_k8=622.1;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v25_KcF=426.8;
	% Local Parameter:   id =  v25_Complex_III, name = Complex_III
	reaction_v25_v25_Complex_III=9.963E-9;

	reaction_v25=compartment_MT_IMS*reaction_v25_KcF*reaction_v25_v25_Complex_III*x(57)*x(58)/((reaction_v25_KmA*reaction_v25_Kq2*reaction_v25_Kb2+reaction_v25_KmA*reaction_v25_Kq2*x(58)+reaction_v25_KcF/reaction_v25_k8*reaction_v25_Kq1*x(57)*reaction_v25_Kb1+reaction_v25_KcF/reaction_v25_k8*reaction_v25_Kq1*x(57)*x(58))*x(59)+reaction_v25_KmA*x(58)+reaction_v25_KmB*x(57)+x(57)*x(58));

% Reaction: id = v26, name = cytochrome c oxidase	% Local Parameter:   id =  Ks, name = Ks
	reaction_v26_Ks=1.1E-4;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v26_KcF=9.35E-4;
	% Local Parameter:   id =  v26_Complex_IV, name = Complex_IV
	reaction_v26_v26_Complex_IV=0.002325;

	reaction_v26=compartment_MT_IMS*reaction_v26_KcF*reaction_v26_v26_Complex_IV*x(59)/(reaction_v26_Ks+x(59));

% Reaction: id = v27, name = citrate synthase	% Local Parameter:   id =  V, name = V
	reaction_v27_V=0.004833;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_v27_Ka=5.0E-6;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_v27_Kb=4.5E-6;
	% Local Parameter:   id =  Kc, name = Kc
	reaction_v27_Kc=3.9E-5;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v27_Kia=5.0E-6;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v27_Kib=4.5E-6;
	% Local Parameter:   id =  Kid, name = Kid
	reaction_v27_Kid=0.0043;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v27_Keq=1.8E7;
	% Local Parameter:   id =  v10_CS, name = CS
	reaction_v27_v10_CS=3.8617E-7;

	reaction_v27=compartment_CYTOPLASM*reaction_v27_Kid*reaction_v27_Kc*reaction_v27_V*x(17)*x(12)*reaction_v27_v10_CS/(x(17)*x(12)+reaction_v27_Ka*x(12)+reaction_v27_Kb*x(17)+reaction_v27_Kia*reaction_v27_Kib)/(reaction_v27_Keq*reaction_v27_Kia*reaction_v27_Kb);

% Reaction: id = v28, name = ATPase complex	% Local Parameter:   id =  V, name = V
	reaction_v28_V=0.075;
	% Local Parameter:   id =  Km, name = Km
	reaction_v28_Km=0.0045;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_v28_Ki=0.047;
	% Local Parameter:   id =  v28_Complex_V, name = Complex_V
	reaction_v28_v28_Complex_V=0.0033211;

	reaction_v28=compartment_MATRIX*reaction_v28_v28_Complex_V*reaction_v28_V*x(51)/(reaction_v28_Km+x(51)+x(51)*x(51)/reaction_v28_Ki);

% Reaction: id = v29, name = aconitase	% Local Parameter:   id =  Ks, name = Ks
	reaction_v29_Ks=5.0E-4;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_v29_Kp=1.1E-4;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v29_KcF=20.47;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v29_KcR=31.44;
	% Local Parameter:   id =  v29_ACO, name = ACO
	reaction_v29_v29_ACO=3.8617E-7;

	reaction_v29=compartment_CYTOPLASM*(reaction_v29_KcF*reaction_v29_Kp*x(20)-reaction_v29_KcR*reaction_v29_Ks*x(19))*reaction_v29_v29_ACO/(reaction_v29_Ks*x(19)+reaction_v29_Kp*x(20)+reaction_v29_Ks*reaction_v29_Kp);

% Reaction: id = v30, name = oxoglutarate carrier	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v30_KiS1=3.0E-4;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v30_KiS2=7.0E-4;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v30_KiP1=0.0014;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v30_KiP2=1.7E-4;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v30_KcF=3.675;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v30_KcR=4.83;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_v30_alpha=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_v30_beta=1.0;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_v30_gamma=1.0;
	% Local Parameter:   id =  delta, name = delta
	reaction_v30_delta=1.0;
	% Local Parameter:   id =  v30_OGC, name = OGC
	reaction_v30_v30_OGC=3.3211E-4;

	reaction_v30=compartment_MATRIX*(x(45)*x(16)/reaction_v30_alpha/reaction_v30_KiS1/reaction_v30_KiS2*reaction_v30_KcF-x(46)*x(15)/reaction_v30_beta/reaction_v30_KiP1/reaction_v30_KiP2*reaction_v30_KcR)*reaction_v30_v30_OGC/(1+x(45)/reaction_v30_KiS1+x(16)/reaction_v30_KiS2+x(46)/reaction_v30_KiP1+x(15)/reaction_v30_KiP2+x(45)*x(16)/reaction_v30_alpha/reaction_v30_KiS1/reaction_v30_KiS2+x(46)*x(15)/reaction_v30_beta/reaction_v30_KiP1/reaction_v30_KiP2+x(16)*x(15)/reaction_v30_gamma/reaction_v30_KiS2/reaction_v30_KiP2+x(45)*x(46)/reaction_v30_delta/reaction_v30_KiS1/reaction_v30_KiP1);

% Reaction: id = v31, name = malate dehydrogenase (cytosol)	% Local Parameter:   id =  k1, name = k1
	reaction_v31_k1=3.4E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_v31_k2=3.5E7;
	% Local Parameter:   id =  k3, name = k3
	reaction_v31_k3=4650.0;
	% Local Parameter:   id =  k4, name = k4
	reaction_v31_k4=214.0;
	% Local Parameter:   id =  kminus1, name = kminus1
	reaction_v31_kminus1=26.0;
	% Local Parameter:   id =  kminus2, name = kminus2
	reaction_v31_kminus2=1400.0;
	% Local Parameter:   id =  kminus3, name = kminus3
	reaction_v31_kminus3=570000.0;
	% Local Parameter:   id =  kminus4, name = kminus4
	reaction_v31_kminus4=260000.0;
	% Local Parameter:   id =  v31_MDH, name = MDH
	reaction_v31_v31_MDH=3.8617E-7;

	reaction_v31=compartment_CYTOPLASM*reaction_v31_v31_MDH*(reaction_v31_k1*reaction_v31_k2*reaction_v31_k3*reaction_v31_k4*x(24)*x(12)-reaction_v31_kminus1*reaction_v31_kminus2*reaction_v31_kminus3*reaction_v31_kminus4*x(16)*x(23))/(reaction_v31_kminus1*(reaction_v31_kminus2+reaction_v31_k3)*reaction_v31_k4+reaction_v31_k1*(reaction_v31_kminus2+reaction_v31_k3)*reaction_v31_k4*x(24)+reaction_v31_kminus1*(reaction_v31_kminus2+reaction_v31_k3)*reaction_v31_kminus4*x(23)+reaction_v31_k2*reaction_v31_k3*reaction_v31_k4*x(12)+reaction_v31_kminus1*reaction_v31_kminus2*reaction_v31_kminus3*x(16)+reaction_v31_k1*reaction_v31_k2*(reaction_v31_k3+reaction_v31_k4)*x(24)*x(12)+(reaction_v31_kminus1+reaction_v31_kminus2)*reaction_v31_kminus3*reaction_v31_kminus4*x(16)*x(23)+reaction_v31_k1+reaction_v31_kminus2+reaction_v31_kminus3*x(24)*x(16)+reaction_v31_k1*reaction_v31_k2*reaction_v31_kminus3*x(24)*x(12)*x(16)+reaction_v31_k2*reaction_v31_k3*reaction_v31_kminus4*x(12)*x(23)+reaction_v31_k2*reaction_v31_kminus3*reaction_v31_kminus4*x(12)*x(16)*x(23));

% Reaction: id = v32, name = aspartate transaminase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v32_KmS1=9.0E-4;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v32_KmS2=1.0E-4;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v32_KmP1=4.0E-5;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v32_KmP2=0.004;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v32_KiS1=0.002;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v32_KiP2=0.0083;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v32_Keq=6.2;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v32_KcF=300.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v32_KcR=1000.0;
	% Local Parameter:   id =  v32_AspTA, name = AspTA
	reaction_v32_v32_AspTA=3.8617E-7;

	reaction_v32=compartment_CYTOPLASM*reaction_v32_KcF*reaction_v32_KcR*reaction_v32_v32_AspTA*(x(13)*x(15)-x(12)*x(14)/reaction_v32_Keq)/(reaction_v32_KcR*reaction_v32_KmS2*x(13)+reaction_v32_KcR*reaction_v32_KmS1*x(15)+reaction_v32_KcF*reaction_v32_KmP2*x(12)/reaction_v32_Keq+reaction_v32_KcF*reaction_v32_KmP1*x(14)/reaction_v32_Keq+reaction_v32_KcR*x(13)*x(15)+reaction_v32_KcF*reaction_v32_KmP2*x(13)*x(12)/(reaction_v32_Keq*reaction_v32_KiS1)+reaction_v32_KcF*x(12)*x(14)/reaction_v32_Keq+reaction_v32_KcR*reaction_v32_KmS1*x(15)*x(14)/reaction_v32_KiP2);

% Reaction: id = v33, name = citrate carrier	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v33_KiS1=1.3E-4;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v33_KiS2=4.4E-4;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v33_KiP1=3.3E-4;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v33_KiP2=4.18E-5;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v33_KcF=5.6;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v33_KcR=3.5;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_v33_alpha=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_v33_beta=1.0;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_v33_gamma=1.0;
	% Local Parameter:   id =  delta, name = delta
	reaction_v33_delta=1.0;
	% Local Parameter:   id =  v33_CIC, name = CIC
	reaction_v33_v33_CIC=3.3211E-4;

	reaction_v33=compartment_MATRIX*(x(20)*x(46)/reaction_v33_alpha/reaction_v33_KiS1/reaction_v33_KiS2*reaction_v33_KcF-x(16)*x(48)/reaction_v33_beta/reaction_v33_KiP1/reaction_v33_KiP2*reaction_v33_KcR)*reaction_v33_v33_CIC/(1+x(20)/reaction_v33_KiS1+x(46)/reaction_v33_KiS2+x(16)/reaction_v33_KiP1+x(48)/reaction_v33_KiP2+x(20)*x(46)/reaction_v33_alpha/reaction_v33_KiS1/reaction_v33_KiS2+x(16)*x(48)/reaction_v33_beta/reaction_v33_KiP1/reaction_v33_KiP2+x(46)*x(48)/reaction_v33_gamma/reaction_v33_KiS2/reaction_v33_KiP2+x(20)*x(16)/reaction_v33_delta/reaction_v33_KiS1/reaction_v33_KiP1);

% Reaction: id = v34, name = ETF:Q oxidoreductase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v34_KmS1=3.1E-7;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v34_KmS2=3.9E-7;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v34_KmP1=3.2E-7;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v34_KmP2=4.2E-9;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v34_KiS1=3.1E-7;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v34_KiP2=3.0E-7;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v34_Keq=0.66;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v34_KcF=78.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v34_KcR=101.0;
	% Local Parameter:   id =  v34_ETF_QO, name = v34_ETF_QO
	reaction_v34_v34_ETF_QO=3.3211E-5;

	reaction_v34=compartment_MATRIX*reaction_v34_KcF*reaction_v34_KcR*reaction_v34_v34_ETF_QO*(x(41)*x(56)-x(42)*x(57)/reaction_v34_Keq)/(reaction_v34_KcR*reaction_v34_KmS2*x(41)+reaction_v34_KcR*reaction_v34_KmS1*x(56)+reaction_v34_KcF*reaction_v34_KmP2*x(42)/reaction_v34_Keq+reaction_v34_KcF*reaction_v34_KmP1*x(57)/reaction_v34_Keq+reaction_v34_KcR*x(41)*x(56)+reaction_v34_KcF*reaction_v34_KmP2*x(41)*x(42)/(reaction_v34_Keq*reaction_v34_KiS1)+reaction_v34_KcF*x(42)*x(57)/reaction_v34_Keq+reaction_v34_KcR*reaction_v34_KmS1*x(56)*x(57)/reaction_v34_KiP2);

% Reaction: id = v35, name = glutathione reductase	% Local Parameter:   id =  KmS1, name = KmS1
	reaction_v35_KmS1=3.9E-5;
	% Local Parameter:   id =  KmS2, name = KmS2
	reaction_v35_KmS2=1.2E-7;
	% Local Parameter:   id =  KmP1, name = KmP1
	reaction_v35_KmP1=1.08E-6;
	% Local Parameter:   id =  KmP2, name = KmP2
	reaction_v35_KmP2=2.42E-5;
	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v35_KiS1=7.6E-5;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v35_KiS2=2.4E-7;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v35_KiP1=7.53E-5;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v35_KiP2=1.19E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v35_Keq=8.99;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v35_KcF=2.18;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v35_KcR=0.3;
	% Local Parameter:   id =  v35_ACD, name = v35_ACD
	reaction_v35_v35_ACD=3.3211E-5;

	reaction_v35=compartment_MATRIX*reaction_v35_KcF*reaction_v35_KcR*reaction_v35_v35_ACD*(x(43)*x(42)-x(41)*x(44)/reaction_v35_Keq)/(reaction_v35_KcR*reaction_v35_KiS1*reaction_v35_KmS2+reaction_v35_KcR*reaction_v35_KmS2*x(43)+reaction_v35_KcR*reaction_v35_KmS1*x(42)+reaction_v35_KcF*reaction_v35_KmP2*x(41)/reaction_v35_Keq+reaction_v35_KcF*reaction_v35_KmP1*x(44)/reaction_v35_Keq+reaction_v35_KcR*x(43)*x(42)+reaction_v35_KcF*reaction_v35_KmP2*x(43)*x(41)/(reaction_v35_Keq*reaction_v35_KiS1)+reaction_v35_KcF*x(41)*x(44)/reaction_v35_Keq+reaction_v35_KcR*reaction_v35_KmS1*x(42)*x(44)/reaction_v35_KiP2+reaction_v35_KcR*x(43)*x(42)*x(41)/reaction_v35_KiP1+reaction_v35_KcF*x(42)*x(41)*x(44)/(reaction_v35_KiS2*reaction_v35_Keq));

% Reaction: id = v36, name = pyruvate decarboxylase	% Local Parameter:   id =  KmA, name = KmA
	reaction_v36_KmA=1.1E-4;
	% Local Parameter:   id =  KmB, name = KmB
	reaction_v36_KmB=0.00163;
	% Local Parameter:   id =  KmC, name = KmC
	reaction_v36_KmC=3.7E-4;
	% Local Parameter:   id =  KmP, name = KmP
	reaction_v36_KmP=0.016;
	% Local Parameter:   id =  KmQ, name = KmQ
	reaction_v36_KmQ=2.4E-4;
	% Local Parameter:   id =  KmR, name = KmR
	reaction_v36_KmR=5.1E-5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v36_Keq=9.0;
	% Local Parameter:   id =  Kia, name = Kia
	reaction_v36_Kia=1.5E-4;
	% Local Parameter:   id =  Kib, name = Kib
	reaction_v36_Kib=0.0016;
	% Local Parameter:   id =  Kic, name = Kic
	reaction_v36_Kic=1.3E-4;
	% Local Parameter:   id =  Kip, name = Kip
	reaction_v36_Kip=0.0079;
	% Local Parameter:   id =  Kiq, name = Kiq
	reaction_v36_Kiq=1.9E-4;
	% Local Parameter:   id =  Kir, name = Kir
	reaction_v36_Kir=2.4E-4;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v36_KcF=200.0;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v36_KcR=20.0;
	% Local Parameter:   id =  v36_PC, name = PC
	reaction_v36_v36_PC=3.8617E-7;

	reaction_v36=compartment_MATRIX*reaction_v36_KcF*reaction_v36_KcR*reaction_v36_v36_PC*(x(50)*x(28)*x(27)-pi*x(51)*x(47)/reaction_v36_Keq)/(reaction_v36_Kia*reaction_v36_KmB*reaction_v36_KcR*x(27)+reaction_v36_KmC*reaction_v36_KcR*x(50)*x(28)+reaction_v36_KmA*reaction_v36_KcR*x(28)*x(27)+reaction_v36_KmB*reaction_v36_KcR*x(50)*x(27)+reaction_v36_KcR*x(50)*x(28)*x(27)+reaction_v36_Kip*reaction_v36_KmQ*reaction_v36_KcF*x(47)/reaction_v36_Keq+reaction_v36_KmQ*reaction_v36_KcF*pi*x(47)/reaction_v36_Keq+reaction_v36_KmP*reaction_v36_KcF*x(51)*x(47)/reaction_v36_Keq+reaction_v36_KmR*reaction_v36_KcF*pi*x(51)/reaction_v36_Keq+reaction_v36_KcF*pi*x(51)*x(47)/reaction_v36_Keq+reaction_v36_Kia*reaction_v36_KmB*reaction_v36_KcR*x(27)*pi/reaction_v36_Kip+reaction_v36_Kia*reaction_v36_KmB*reaction_v36_KcR*x(27)*x(51)/reaction_v36_Kia+reaction_v36_Kiq*reaction_v36_KmP*reaction_v36_KcF*x(28)*x(47)/reaction_v36_Kib/reaction_v36_Keq+reaction_v36_Kia*reaction_v36_KmP*reaction_v36_KcF*x(50)*x(47)/reaction_v36_Kia/reaction_v36_Keq+reaction_v36_KmA*reaction_v36_KcR*x(50)*x(28)*x(47)/reaction_v36_Kir+reaction_v36_KmR*reaction_v36_KcF*x(27)*pi*x(51)/reaction_v36_Kic/reaction_v36_Keq+reaction_v36_KmA*reaction_v36_KcR*x(28)*x(27)*x(51)/reaction_v36_Kiq+reaction_v36_KmA*reaction_v36_KcR*x(28)*x(27)*pi/reaction_v36_Kip+reaction_v36_KmP*reaction_v36_KcF*x(28)*x(51)*x(47)/reaction_v36_Kib/reaction_v36_Keq+reaction_v36_KmQ*reaction_v36_KcF*x(28)*pi*x(47)/reaction_v36_Kib/reaction_v36_Keq);

% Reaction: id = v37, name = glycerol-3-phosphate dehydrogenase (FAD dependent)	% Local Parameter:   id =  K, name = K
	reaction_v37_K=3.4E-5;
	% Local Parameter:   id =  V, name = V
	reaction_v37_V=3.99E-8;
	% Local Parameter:   id =  v37_GUT2P, name = Glycerol-3-phosphate dehydrogenase
	reaction_v37_v37_GUT2P=0.001;

	reaction_v37=compartment_CYTOPLASM*reaction_v37_V*reaction_v37_v37_GUT2P*x(10)/(reaction_v37_K+x(10));

% Reaction: id = v38, name = glycerol-3-phosphate dehydrogenase (NAD+ dependent)	% Local Parameter:   id =  K, name = K
	reaction_v38_K=34.0;
	% Local Parameter:   id =  V, name = V
	reaction_v38_V=0.0399;
	% Local Parameter:   id =  v38_GUT2P, name = Glycerol-3-phosphate dehydrogenase
	reaction_v38_v38_GUT2P=0.001;

	reaction_v38=compartment_CYTOPLASM*reaction_v38_V*reaction_v38_v38_GUT2P*x(24)/(reaction_v38_K+x(24));

% Reaction: id = v40, name = ATP/ADP carrier	% Local Parameter:   id =  V, name = V
	reaction_v40_V=0.1667;
	% Local Parameter:   id =  K, name = K
	reaction_v40_K=0.012;
	% Local Parameter:   id =  v40_AAC, name = AAC
	reaction_v40_v40_AAC=3.3211E-4;

	reaction_v40=compartment_MATRIX*reaction_v40_V*reaction_v40_v40_AAC*x(22)/(reaction_v40_K+x(22));

% Reaction: id = v41, name = cytosolic isocitrate dehydrogenase	% Local Parameter:   id =  phi0, name = phi0
	reaction_v41_phi0=0.051;
	% Local Parameter:   id =  phi1, name = phi1
	reaction_v41_phi1=9.5E-8;
	% Local Parameter:   id =  phi2, name = phi2
	reaction_v41_phi2=9.6E-7;
	% Local Parameter:   id =  phi12, name = phi12
	reaction_v41_phi12=9.0E-8;
	% Local Parameter:   id =  phir0, name = phir0
	reaction_v41_phir0=0.066;
	% Local Parameter:   id =  phir1, name = phir1
	reaction_v41_phir1=3.7E-7;
	% Local Parameter:   id =  phir2, name = phir2
	reaction_v41_phir2=2.9E-5;
	% Local Parameter:   id =  phir3, name = phir3
	reaction_v41_phir3=2.5E-4;
	% Local Parameter:   id =  phir12, name = phir12
	reaction_v41_phir12=6.0E-12;
	% Local Parameter:   id =  phir13, name = phir13
	reaction_v41_phir13=1.3E-10;
	% Local Parameter:   id =  phir23, name = phir23
	reaction_v41_phir23=9.4E-8;
	% Local Parameter:   id =  phir123, name = phir123
	reaction_v41_phir123=4.6E-14;
	% Local Parameter:   id =  v41_IDHc, name = IDHc
	reaction_v41_v41_IDHc=3.8617E-7;

	reaction_v41=compartment_CYTOPLASM*reaction_v41_v41_IDHc*(x(19)*x(25)/(reaction_v41_phi0*x(19)*x(25)+reaction_v41_phi1*x(25)+reaction_v41_phi2*x(19)+reaction_v41_phi12)-x(15)*x(26)*x(28)/(reaction_v41_phir0*x(15)*x(26)*x(28)+reaction_v41_phir1*x(26)*x(28)+reaction_v41_phir2*x(15)*x(28)+reaction_v41_phir3*x(15)*x(26)+reaction_v41_phir12*x(28)+reaction_v41_phir13*x(26)+reaction_v41_phir23*x(15)+reaction_v41_phir123));

% Reaction: id = v42, name = citrate carrier	% Local Parameter:   id =  KiS1, name = KiS1
	reaction_v42_KiS1=1.3E-4;
	% Local Parameter:   id =  KiS2, name = KiS2
	reaction_v42_KiS2=4.4E-4;
	% Local Parameter:   id =  KiP1, name = KiP1
	reaction_v42_KiP1=3.3E-4;
	% Local Parameter:   id =  KiP2, name = KiP2
	reaction_v42_KiP2=4.18E-5;
	% Local Parameter:   id =  KcF, name = KcF
	reaction_v42_KcF=5.6;
	% Local Parameter:   id =  KcR, name = KcR
	reaction_v42_KcR=3.5;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_v42_alpha=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_v42_beta=1.0;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_v42_gamma=1.0;
	% Local Parameter:   id =  delta, name = delta
	reaction_v42_delta=1.0;
	% Local Parameter:   id =  v42_CIC, name = CIC
	reaction_v42_v42_CIC=3.3211E-4;

	reaction_v42=compartment_MATRIX*(x(19)*x(46)/reaction_v42_alpha/reaction_v42_KiS1/reaction_v42_KiS2*reaction_v42_KcF-x(16)*x(49)/reaction_v42_beta/reaction_v42_KiP1/reaction_v42_KiP2*reaction_v42_KcR)*reaction_v42_v42_CIC/(1+x(19)/reaction_v42_KiS1+x(46)/reaction_v42_KiS2+x(16)/reaction_v42_KiP1+x(49)/reaction_v42_KiP2+x(19)*x(46)/reaction_v42_alpha/reaction_v42_KiS1/reaction_v42_KiS2+x(16)*x(49)/reaction_v42_beta/reaction_v42_KiP1/reaction_v42_KiP2+x(46)*x(49)/reaction_v42_gamma/reaction_v42_KiS2/reaction_v42_KiP2+x(19)*x(16)/reaction_v42_delta/reaction_v42_KiS1/reaction_v42_KiP1);

% Reaction: id = v43, name = ATP/ADP carrier	% Local Parameter:   id =  V, name = V
	reaction_v43_V=1.11667;
	% Local Parameter:   id =  K, name = K
	reaction_v43_K=0.005;
	% Local Parameter:   id =  v43_AAC, name = AAC
	reaction_v43_v43_AAC=3.3211E-4;

	reaction_v43=compartment_MATRIX*reaction_v43_V*reaction_v43_v43_AAC*x(50)/(reaction_v43_K+x(50));

% Reaction: id = v39, name = malate dehydrogenase (oxaloacetate-decarboxylating) (NADP+)	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_v39_Kcat=0.333;
	% Local Parameter:   id =  Kmal, name = Kmal
	reaction_v39_Kmal=1.25E-4;
	% Local Parameter:   id =  Knadp, name = Knadp
	reaction_v39_Knadp=0.011;
	% Local Parameter:   id =  v39_MDH, name = MDH
	reaction_v39_v39_MDH=3.8617E-7;

	reaction_v39=compartment_CYTOPLASM*reaction_v39_v39_MDH*reaction_v39_Kcat*x(16)*x(25)/((reaction_v39_Kmal+x(16))*(reaction_v39_Knadp+x(25)));

% Reaction: id = v44, name = malate dehydrogenase (oxaloacetate-decarboxylating) (NADP+)	% Local Parameter:   id =  Kcat, name = Kcat
	reaction_v44_Kcat=130.5;
	% Local Parameter:   id =  Km, name = Km
	reaction_v44_Km=0.01295;
	% Local Parameter:   id =  v44_MDH, name = MDH
	reaction_v44_v44_MDH=3.8617E-7;

	reaction_v44=compartment_MATRIX*reaction_v44_v44_MDH*reaction_v44_Kcat*x(46)/(reaction_v44_Km+x(46));

	xdot=zeros(59,1);
	
% Species:   id = GLC, name = glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_GLCflow) + (-1.0 * reaction_v1));
	
% Species:   id = F6P, name = fructose-6-phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = FBP, name = fructose-1,6-bisphosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = GAP, name = glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_GAPflow) + ( 2.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = DPG, name = 1,2-bisphospho-D-glycerate, affected by kineticLaw
	xdot(5) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = PEP, name = phosphoenolpyruvate, affected by kineticLaw
	xdot(6) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = PYR_cyt, name = pyruvate, affected by kineticLaw
	xdot(7) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v39));
	
% Species:   id = AMP, name = adenine monophosphate, affected by kineticLaw
	xdot(8) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_hidden_1));
	
% Species:   id = LAC, name = lactate, affected by kineticLaw
	xdot(9) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_LACflow) + ( 1.0 * reaction_v7));
	
% Species:   id = G3P, name = glycerol-3-phosphate, affected by kineticLaw
	xdot(10) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v37) + ( 1.0 * reaction_v38));
	
% Species:   id = DHAP, name = dihydrohxyacetone-phosphate, affected by kineticLaw
	xdot(11) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v37) + (-1.0 * reaction_v38));
	
% Species:   id = OXA_cyt, name = oxaloacetate, affected by kineticLaw
	xdot(12) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v27) + (-1.0 * reaction_v31) + ( 1.0 * reaction_v32));
	
% Species:   id = Asp_cyt, name = aspartate, affected by kineticLaw
	xdot(13) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v22) + (-1.0 * reaction_v32));
	
% Species:   id = Glu_cyt, name = glutamate, affected by kineticLaw
	xdot(14) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v22) + ( 1.0 * reaction_v32));
	
% Species:   id = OG_cyt, name = oxoglutarate, affected by kineticLaw
	xdot(15) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v30) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v41));
	
% Species:   id = Mal_cyt, name = malate, affected by kineticLaw
	xdot(16) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v30) + ( 1.0 * reaction_v31) + ( 1.0 * reaction_v33) + ( 1.0 * reaction_v42) + (-1.0 * reaction_v39));
	
% Species:   id = Acetyl_CoA_cyt, name = acetyl CoA, affected by kineticLaw
	xdot(17) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v27));
	
% Species:   id = CoA_cyt, name = coenzyme A, affected by kineticLaw
	xdot(18) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v27));
	
% Species:   id = IsoCitcyt, name = isocitrate, affected by kineticLaw
	xdot(19) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v29) + (-1.0 * reaction_v41) + (-1.0 * reaction_v42));
	
% Species:   id = Cit_cyt, name = citrate, affected by kineticLaw
	xdot(20) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v27) + (-1.0 * reaction_v29) + (-1.0 * reaction_v33));
	
% Species:   id = ATP_cyt, name = adenine triphosphate, affected by kineticLaw
	xdot(21) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v6) + (-1.0 * reaction_hidden_1) + ( 1.0 * reaction_v43));
	
% Species:   id = ADP_cyt, name = adenine diphosphate, affected by kineticLaw
	xdot(22) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v1) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v5) + (-1.0 * reaction_v6) + ( 2.0 * reaction_hidden_1) + (-1.0 * reaction_v40));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(23) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v4) + ( 1.0 * reaction_v7) + ( 1.0 * reaction_v31) + ( 1.0 * reaction_v38));
	
% Species:   id = NADH_cyt, name = NADH, affected by kineticLaw
	xdot(24) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v7) + (-1.0 * reaction_v31) + (-1.0 * reaction_v38));
	
% Species:   id = NADP_cyt, name = NADP, affected by kineticLaw
	xdot(25) = (1/(compartment_CYTOPLASM))*((-1.0 * reaction_v41) + (-1.0 * reaction_v39));
	
% Species:   id = NADPH_cyt, name = NADPH, affected by kineticLaw
	xdot(26) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_v41) + ( 1.0 * reaction_v39));
	
% Species:   id = Pyr, name = pyruvate, affected by kineticLaw
	xdot(27) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v20) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v44));
	
% Species:   id = CO2, name = carbon dioxide, affected by kineticLaw
	xdot(28) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v9) + ( 1.0 * reaction_v14) + (-1.0 * reaction_v36));
	
% Species:   id = CoA, name = coenzyme A, affected by kineticLaw
	xdot(29) = (1/(compartment_MATRIX))*((-1.0 * reaction_v9) + ( 1.0 * reaction_v10) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v15));
	
% Species:   id = Acetyl_CoA, name = acetyl CoA, affected by kineticLaw
	xdot(30) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = Pi, name = phosphate, affected by kineticLaw
	xdot(31) = (1/(compartment_MATRIX))*((-1.0 * reaction_v15) + (-1.0 * reaction_v28) + ( 1.0 * reaction_v36));
	
% Species:   id = Fum, name = fumarate, affected by kineticLaw
	xdot(32) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v16) + (-1.0 * reaction_v17));
	
% Species:   id = SCoA, name = succinyl-CoA, affected by kineticLaw
	xdot(33) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v14) + (-1.0 * reaction_v15));
	
% Species:   id = Suc, name = succinate, affected by kineticLaw
	xdot(34) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v16));
	
% Species:   id = GTP, name = guanosine triphosphate, affected by kineticLaw
	xdot(35) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v15));
	
% Species:   id = GDP, name = guanosine diphosphate, affected by kineticLaw
	xdot(36) = (1/(compartment_MATRIX))*((-1.0 * reaction_v15));
	
% Species:   id = Ala, name = slanine, affected by kineticLaw
	xdot(37) = (1/(compartment_MATRIX))*((-1.0 * reaction_v20));
	
% Species:   id = Asp, name = aspartate, affected by kineticLaw
	xdot(38) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = Glu, name = glutamate, affected by kineticLaw
	xdot(39) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + ( 1.0 * reaction_v22));
	
% Species:   id = H2O, name = water, affected by kineticLaw
	xdot(40) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v28));
	
% Species:   id = ETFred, name = electron transfer flavoprotein (reduced form), affected by kineticLaw
	xdot(41) = (1/(compartment_MATRIX))*((-1.0 * reaction_v34) + ( 1.0 * reaction_v35));
	
% Species:   id = ETFox, name = electron transfer flavoprotein (oxidised form), affected by kineticLaw
	xdot(42) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v34) + (-1.0 * reaction_v35));
	
% Species:   id = FADH2, name = FADH2, affected by kineticLaw
	xdot(43) = (1/(compartment_MATRIX))*((-1.0 * reaction_v35) + ( 1.0 * reaction_v37));
	
% Species:   id = FAD, name = FAD, affected by kineticLaw
	xdot(44) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v35) + (-1.0 * reaction_v37));
	
% Species:   id = OG, name = oxoglutarate, affected by kineticLaw
	xdot(45) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v12) + (-1.0 * reaction_v14) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v30));
	
% Species:   id = Mal, name = malate, affected by kineticLaw
	xdot(46) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + ( 1.0 * reaction_v30) + (-1.0 * reaction_v33) + (-1.0 * reaction_v42) + (-1.0 * reaction_v44));
	
% Species:   id = OXA, name = oxaloacetate, affected by kineticLaw
	xdot(47) = (1/(compartment_MATRIX))*((-1.0 * reaction_v10) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v21) + ( 1.0 * reaction_v36));
	
% Species:   id = Cit, name = citrate, affected by kineticLaw
	xdot(48) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v11) + ( 1.0 * reaction_v33));
	
% Species:   id = IsoCit, name = isocitrate, affected by kineticLaw
	xdot(49) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12) + ( 1.0 * reaction_v42));
	
% Species:   id = ATP, name = adenine triphosphate, affected by kineticLaw
	xdot(50) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v28) + (-1.0 * reaction_v36) + (-1.0 * reaction_v43));
	
% Species:   id = ADP, name = adenine diphosphate, affected by kineticLaw
	xdot(51) = (1/(compartment_MATRIX))*((-1.0 * reaction_v28) + ( 1.0 * reaction_v36) + ( 1.0 * reaction_v40));
	
% Species:   id = NADP_p, name = NADP+, affected by kineticLaw
	xdot(52) = (1/(compartment_MATRIX))*((-1.0 * reaction_v44));
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(53) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v44));
	
% Species:   id = NAD_p, name = NAD+, affected by kineticLaw
	xdot(54) = (1/(compartment_MATRIX))*((-1.0 * reaction_v9) + (-1.0 * reaction_v12) + (-1.0 * reaction_v14) + (-1.0 * reaction_v18) + ( 1.0 * reaction_v24));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(55) = (1/(compartment_MATRIX))*(( 1.0 * reaction_v9) + ( 1.0 * reaction_v12) + ( 1.0 * reaction_v14) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v24));
	
% Species:   id = Q, name = ubiquinone, affected by kineticLaw
	xdot(56) = (1/(compartment_MT_IMS))*((-1.0 * reaction_v16) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v25) + (-1.0 * reaction_v34));
	
% Species:   id = QH2, name = ubiquinol, affected by kineticLaw
	xdot(57) = (1/(compartment_MT_IMS))*(( 1.0 * reaction_v16) + ( 1.0 * reaction_v24) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v34));
	
% Species:   id = Cytc3p, name = ferrocytochrome c, affected by kineticLaw
	xdot(58) = (1/(compartment_MT_IMS))*((-2.0 * reaction_v25) + ( 1.0 * reaction_v26));
	
% Species:   id = Cytc2p, name = ferricytochrome c, affected by kineticLaw
	xdot(59) = (1/(compartment_MT_IMS))*(( 2.0 * reaction_v25) + (-1.0 * reaction_v26));
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


