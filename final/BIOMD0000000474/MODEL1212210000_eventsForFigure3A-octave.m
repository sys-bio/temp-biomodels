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
% Model name = Smith2013 - Regulation of Insulin Signalling by Oxidative Stress (with events)
%
% is urn:miriam:biomodels.db:MODEL1212210000
%


function main()
%Initial conditions vector
	x0=zeros(129,1);
	x0(1) = 0.0;
	x0(2) = 90000.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 10000.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 100000.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 100000.0;
	x0(13) = 0.0;
	x0(14) = 1000.0;
	x0(15) = 200000.0;
	x0(16) = 1000000.0;
	x0(17) = 2.0E8;
	x0(18) = 100000.0;
	x0(19) = 0.0;
	x0(20) = 100000.0;
	x0(21) = 0.0;
	x0(22) = 20000.0;
	x0(23) = 0.0;
	x0(24) = 96000.0;
	x0(25) = 4000.0;
	x0(26) = 100000.0;
	x0(27) = 500000.0;
	x0(28) = 0.0;
	x0(29) = 100000.0;
	x0(30) = 0.0;
	x0(31) = 100000.0;
	x0(32) = 0.0;
	x0(33) = 100.0;
	x0(34) = 0.0;
	x0(35) = 41700.0;
	x0(36) = 100.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 100.0;
	x0(40) = 100000.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 100000.0;
	x0(45) = 10000.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 16000.0;
	x0(49) = 16000.0;
	x0(50) = 2000.0;
	x0(51) = 2000.0;
	x0(52) = 100000.0;
	x0(53) = 0.0;
	x0(54) = 100000.0;
	x0(55) = 0.0;
	x0(56) = 1000.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.0;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 1000.0;
	x0(105) = 0.0;
	x0(106) = 1000.0;
	x0(107) = 0.0;
	x0(108) = 1000.0;
	x0(109) = 0.0;
	x0(110) = 1000.0;
	x0(111) = 0.0;
	x0(112) = 1000.0;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 1000.0;
	x0(116) = 0.0;
	x0(117) = 0.0;
	x0(118) = 0.0;
	x0(119) = 0.0;
	x0(120) = 300.0;
	x0(121) = 0.0;
	x0(122) = 0.0;
	x0(123) = 0.0;
	x0(124) = 10.0;
	x0(125) = 1000.0;
	x0(126) = 0.0;
	x0(127) = 1000.0;
	x0(128) = 1000.0;
	x0(129) = 1000.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=8.3E-12;
% Compartment: id = cellsurface, name = cellsurface, constant
	compartment_cellsurface=6.4E-14;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.65E-11;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=5.0E-13;
% Compartment: id = dnabound, name = dnabound, constant
	compartment_dnabound=1.0E-13;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.0E-5;
% Parameter:   id =  kminus1, name = kminus1
	global_par_kminus1=12072.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.2E-5;
% Parameter:   id =  kminus2, name = kminus2
	global_par_kminus2=90000.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=2500.0;
% Parameter:   id =  kminus3, name = kminus3
	global_par_kminus3=2.0E-6;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.033333334;
% Parameter:   id =  kminus4, name = kminus4
	global_par_kminus4=0.3;
% Parameter:   id =  k4prime, name = k4prime
	global_par_k4prime=0.0021;
% Parameter:   id =  kminus4prime, name = kminus4prime
	global_par_kminus4prime=2.1E-4;
% Parameter:   id =  k6, name = k6
	global_par_k6=4.61E-6;
% Parameter:   id =  cellsurf_vol, name = cellsurf_vol
	global_par_cellsurf_vol=1.0;
% Parameter:   id =  cyto_vol, name = cyto_vol
	global_par_cyto_vol=1.0;
% Parameter:   id =  vextracellular, name = vextracellular
	global_par_vextracellular=8.3E-12;
% Parameter:   id =  vcellsurface, name = vcellsurface
	global_par_vcellsurface=6.4E-14;
% Parameter:   id =  vcytoplasm, name = vcytoplasm
	global_par_vcytoplasm=1.65E-11;
% Parameter:   id =  navo, name = navo
	global_par_navo=6.02E23;
% Parameter:   id =  insconc, name = insconc
% Parameter:   id =  k9_basal, name = k9_basal
	global_par_k9_basal=0.13145;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.0055;
% Parameter:   id =  kminus9_basal, name = kminus9_basal
	global_par_kminus9_basal=2.7;
% Parameter:   id =  kminus9, name = kminus9
	global_par_kminus9=0.0014;
% Parameter:   id =  k11, name = k11
	global_par_k11=2.5E-5;
% Parameter:   id =  kminus11, name = kminus11
	global_par_kminus11=1.1878E-6;
% Parameter:   id =  k12, name = k12
	global_par_k12=3.5E-5;
% Parameter:   id =  kminus12, name = kminus12
	global_par_kminus12=1.25E-6;
% Parameter:   id =  kr16a, name = kr16a
	global_par_kr16a=3.33E-4;
% Parameter:   id =  kminusr16a, name = kminusr16a
	global_par_kminusr16a=1.0E-6;
% Parameter:   id =  k13_basal, name = k13_basal
	global_par_k13_basal=0.015;
% Parameter:   id =  k13, name = k13
	global_par_k13=7.5E-6;
% Parameter:   id =  kminus13, name = kminus13
	global_par_kminus13=0.167;
% Parameter:   id =  k14, name = k14
	global_par_k14=110.88;
% Parameter:   id =  kminus14, name = kminus14
	global_par_kminus14=0.001155;
% Parameter:   id =  sc_pip, name = sc_pip
	global_par_sc_pip=1000.0;
% Parameter:   id =  pip3_basal, name = pip3_basal
	global_par_pip3_basal=200.0;
% Parameter:   id =  k30f, name = k30f
	global_par_k30f=0.08;
% Parameter:   id =  k30r, name = k30r
	global_par_k30r=0.005;
% Parameter:   id =  k31f, name = k31f
	global_par_k31f=2.7E-4;
% Parameter:   id =  k31r, name = k31r
	global_par_k31r=0.002;
% Parameter:   id =  k34f, name = k34f
	global_par_k34f=2.0E-5;
% Parameter:   id =  k34r1, name = k34r1
	global_par_k34r1=0.001;
% Parameter:   id =  k34r2, name = k34r2
	global_par_k34r2=0.25;
% Parameter:   id =  k34r3, name = k34r3
	global_par_k34r3=0.001;
% Parameter:   id =  k35f, name = k35f
	global_par_k35f=450.0;
% Parameter:   id =  k35r, name = k35r
	global_par_k35r=0.12;
% Parameter:   id =  k36f, name = k36f
	global_par_k36f=180.0;
% Parameter:   id =  k_ros_perm, name = k_ros_perm
% Parameter:   id =  ros_perm, name = ros_perm
	global_par_ros_perm=7.4E8;
% Parameter:   id =  membrane_area, name = membrane_area
	global_par_membrane_area=6.5E-9;
% Parameter:   id =  k38r, name = k38r
	global_par_k38r=2.0;
% Parameter:   id =  k38f, name = k38f
	global_par_k38f=0.05;
% Parameter:   id =  ros_ext_conc, name = ros_ext_conc
% Parameter:   id =  ros_cyto_conc, name = ros_cyto_conc
% Parameter:   id =  sc_ros, name = sc_ros
	global_par_sc_ros=1000.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=5.8;
% Parameter:   id =  kminus7a, name = kminus7a
	global_par_kminus7a=8.75E-5;
% Parameter:   id =  kminus7b, name = kminus7b
	global_par_kminus7b=2.8E-6;
% Parameter:   id =  k8, name = k8
	global_par_k8=2.6E-6;
% Parameter:   id =  kminus8, name = kminus8
	global_par_kminus8=1.55;
% Parameter:   id =  IRp, name = IRp
	global_par_IRp=90000.0;
% Parameter:   id =  molec_per_fm, name = molec_per_fm
	global_par_molec_per_fm=6.02E8;
% Parameter:   id =  k2psp, name = k2psp
	global_par_k2psp=2.2E-4;
% Parameter:   id =  kcat82, name = kcat82
	global_par_kcat82=3.0;
% Parameter:   id =  Km82, name = Km82
	global_par_Km82=100.0;
% Parameter:   id =  k_irs1_basal_syn, name = k_irs1_basal_syn
	global_par_k_irs1_basal_syn=260.0;
% Parameter:   id =  k_irs1_basal_degr, name = k_irs1_basal_degr
	global_par_k_irs1_basal_degr=0.001;
% Parameter:   id =  k_irs1_polyserp_degr, name = k_irs1_polyserp_degr
	global_par_k_irs1_polyserp_degr=0.01;
% Parameter:   id =  kcat51, name = kcat51
	global_par_kcat51=0.87;
% Parameter:   id =  kcat52, name = kcat52
	global_par_kcat52=6.95;
% Parameter:   id =  Km51, name = Km51
	global_par_Km51=100.0;
% Parameter:   id =  Km52, name = Km52
	global_par_Km52=100.0;
% Parameter:   id =  k42f, name = k42f
	global_par_k42f=5.0E-5;
% Parameter:   id =  k42r, name = k42r
	global_par_k42r=5.0E-7;
% Parameter:   id =  k43f, name = k43f
	global_par_k43f=5.0E-5;
% Parameter:   id =  k43r, name = k43r
	global_par_k43r=5.0E-7;
% Parameter:   id =  alpha_ox, name = alpha_ox
	global_par_alpha_ox=5.0;
% Parameter:   id =  k32f, name = k32f
	global_par_k32f=6.0E-4;
% Parameter:   id =  k32r, name = k32r
	global_par_k32r=4.0E-4;
% Parameter:   id =  rosconc, name = rosconc
% Parameter:   id =  by_jnk_phos_factor, name = by_jnk_phos_factor
	global_par_by_jnk_phos_factor=2.0;
% Parameter:   id =  by_ikk_phos_factor, name = by_ikk_phos_factor
	global_par_by_ikk_phos_factor=3.0;
% assignmentRule: variable = insconc
	global_par_insconc=x(1)*compartment_extracellular/(global_par_navo*global_par_vextracellular);
% assignmentRule: variable = nucleus_Foxo1_tot
	x(113)=(x(57)*compartment_nucleus+x(60)*compartment_nucleus+x(63)*compartment_nucleus+x(66)*compartment_nucleus+x(69)*compartment_nucleus+x(72)*compartment_nucleus+x(75)*compartment_nucleus+x(78)*compartment_nucleus+x(81)*compartment_nucleus+x(84)*compartment_nucleus+x(87)*compartment_nucleus+x(90)*compartment_nucleus+x(93)*compartment_nucleus+x(96)*compartment_nucleus+x(99)*compartment_nucleus+x(102)*compartment_nucleus)/compartment_extracellular;
% assignmentRule: variable = dnabound_Foxo1_tot
	x(114)=(x(58)*compartment_dnabound+x(61)*compartment_dnabound+x(64)*compartment_dnabound+x(67)*compartment_dnabound+x(70)*compartment_dnabound+x(73)*compartment_dnabound+x(76)*compartment_dnabound+x(79)*compartment_dnabound+x(82)*compartment_dnabound+x(85)*compartment_dnabound+x(88)*compartment_dnabound+x(91)*compartment_dnabound+x(94)*compartment_dnabound+x(97)*compartment_dnabound+x(100)*compartment_dnabound+x(103)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = PI345P3_mol
	x(16)=global_par_sc_pip*x(14)*compartment_cytoplasm/compartment_cytoplasm;
% assignmentRule: variable = PIP2_mol
	x(17)=global_par_sc_pip*x(15)*compartment_cytoplasm/compartment_cytoplasm;
% assignmentRule: variable = Foxo1_Pa0_tot
	x(104)=(x(56)*compartment_cytoplasm+x(57)*compartment_nucleus+x(58)*compartment_dnabound+x(59)*compartment_cytoplasm+x(60)*compartment_nucleus+x(61)*compartment_dnabound+x(62)*compartment_cytoplasm+x(63)*compartment_nucleus+x(64)*compartment_dnabound+x(65)*compartment_cytoplasm+x(66)*compartment_nucleus+x(67)*compartment_dnabound+x(68)*compartment_cytoplasm+x(69)*compartment_nucleus+x(70)*compartment_dnabound+x(71)*compartment_cytoplasm+x(72)*compartment_nucleus+x(73)*compartment_dnabound+x(74)*compartment_cytoplasm+x(75)*compartment_nucleus+x(76)*compartment_dnabound+x(77)*compartment_cytoplasm+x(78)*compartment_nucleus+x(79)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pa1_tot
	x(105)=(x(80)*compartment_cytoplasm+x(81)*compartment_nucleus+x(82)*compartment_dnabound+x(83)*compartment_cytoplasm+x(84)*compartment_nucleus+x(85)*compartment_dnabound+x(86)*compartment_cytoplasm+x(87)*compartment_nucleus+x(88)*compartment_dnabound+x(89)*compartment_cytoplasm+x(90)*compartment_nucleus+x(91)*compartment_dnabound+x(92)*compartment_cytoplasm+x(93)*compartment_nucleus+x(94)*compartment_dnabound+x(95)*compartment_cytoplasm+x(96)*compartment_nucleus+x(97)*compartment_dnabound+x(98)*compartment_cytoplasm+x(99)*compartment_nucleus+x(100)*compartment_dnabound+x(101)*compartment_cytoplasm+x(102)*compartment_nucleus+x(103)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pd0_tot
	x(106)=(x(56)*compartment_cytoplasm+x(57)*compartment_nucleus+x(58)*compartment_dnabound+x(59)*compartment_cytoplasm+x(60)*compartment_nucleus+x(61)*compartment_dnabound+x(62)*compartment_cytoplasm+x(63)*compartment_nucleus+x(64)*compartment_dnabound+x(65)*compartment_cytoplasm+x(66)*compartment_nucleus+x(67)*compartment_dnabound+x(80)*compartment_cytoplasm+x(81)*compartment_nucleus+x(82)*compartment_dnabound+x(83)*compartment_cytoplasm+x(84)*compartment_nucleus+x(85)*compartment_dnabound+x(86)*compartment_cytoplasm+x(87)*compartment_nucleus+x(88)*compartment_dnabound+x(89)*compartment_cytoplasm+x(90)*compartment_nucleus+x(91)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pd1_tot
	x(107)=(x(68)*compartment_cytoplasm+x(69)*compartment_nucleus+x(70)*compartment_dnabound+x(71)*compartment_cytoplasm+x(72)*compartment_nucleus+x(73)*compartment_dnabound+x(74)*compartment_cytoplasm+x(75)*compartment_nucleus+x(76)*compartment_dnabound+x(77)*compartment_cytoplasm+x(78)*compartment_nucleus+x(79)*compartment_dnabound+x(92)*compartment_cytoplasm+x(93)*compartment_nucleus+x(94)*compartment_dnabound+x(95)*compartment_cytoplasm+x(96)*compartment_nucleus+x(97)*compartment_dnabound+x(98)*compartment_cytoplasm+x(99)*compartment_nucleus+x(100)*compartment_dnabound+x(101)*compartment_cytoplasm+x(102)*compartment_nucleus+x(103)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pe0_tot
	x(108)=(x(56)*compartment_cytoplasm+x(57)*compartment_nucleus+x(58)*compartment_dnabound+x(59)*compartment_cytoplasm+x(60)*compartment_nucleus+x(61)*compartment_dnabound+x(68)*compartment_cytoplasm+x(69)*compartment_nucleus+x(70)*compartment_dnabound+x(71)*compartment_cytoplasm+x(72)*compartment_nucleus+x(73)*compartment_dnabound+x(80)*compartment_cytoplasm+x(81)*compartment_nucleus+x(82)*compartment_dnabound+x(83)*compartment_cytoplasm+x(84)*compartment_nucleus+x(85)*compartment_dnabound+x(92)*compartment_cytoplasm+x(93)*compartment_nucleus+x(94)*compartment_dnabound+x(95)*compartment_cytoplasm+x(96)*compartment_nucleus+x(97)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pe1_tot
	x(109)=(x(62)*compartment_cytoplasm+x(63)*compartment_nucleus+x(64)*compartment_dnabound+x(65)*compartment_cytoplasm+x(66)*compartment_nucleus+x(67)*compartment_dnabound+x(74)*compartment_cytoplasm+x(75)*compartment_nucleus+x(76)*compartment_dnabound+x(77)*compartment_cytoplasm+x(78)*compartment_nucleus+x(79)*compartment_dnabound+x(86)*compartment_cytoplasm+x(87)*compartment_nucleus+x(88)*compartment_dnabound+x(89)*compartment_cytoplasm+x(90)*compartment_nucleus+x(91)*compartment_dnabound+x(98)*compartment_cytoplasm+x(99)*compartment_nucleus+x(100)*compartment_dnabound+x(101)*compartment_cytoplasm+x(102)*compartment_nucleus+x(103)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_pUb0_tot
	x(110)=(x(56)*compartment_cytoplasm+x(57)*compartment_nucleus+x(58)*compartment_dnabound+x(62)*compartment_cytoplasm+x(63)*compartment_nucleus+x(64)*compartment_dnabound+x(68)*compartment_cytoplasm+x(69)*compartment_nucleus+x(70)*compartment_dnabound+x(74)*compartment_cytoplasm+x(75)*compartment_nucleus+x(76)*compartment_dnabound+x(80)*compartment_cytoplasm+x(81)*compartment_nucleus+x(82)*compartment_dnabound+x(86)*compartment_cytoplasm+x(87)*compartment_nucleus+x(88)*compartment_dnabound+x(92)*compartment_cytoplasm+x(93)*compartment_nucleus+x(94)*compartment_dnabound+x(98)*compartment_cytoplasm+x(99)*compartment_nucleus+x(100)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_pUb1_tot
	x(111)=(x(59)*compartment_cytoplasm+x(60)*compartment_nucleus+x(61)*compartment_dnabound+x(65)*compartment_cytoplasm+x(66)*compartment_nucleus+x(67)*compartment_dnabound+x(71)*compartment_cytoplasm+x(72)*compartment_nucleus+x(73)*compartment_dnabound+x(77)*compartment_cytoplasm+x(78)*compartment_nucleus+x(79)*compartment_dnabound+x(83)*compartment_cytoplasm+x(84)*compartment_nucleus+x(85)*compartment_dnabound+x(89)*compartment_cytoplasm+x(90)*compartment_nucleus+x(91)*compartment_dnabound+x(95)*compartment_cytoplasm+x(96)*compartment_nucleus+x(97)*compartment_dnabound+x(101)*compartment_cytoplasm+x(102)*compartment_nucleus+x(103)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = cytoplasm_Foxo1_tot
	x(112)=(x(56)*compartment_cytoplasm+x(59)*compartment_cytoplasm+x(62)*compartment_cytoplasm+x(65)*compartment_cytoplasm+x(68)*compartment_cytoplasm+x(71)*compartment_cytoplasm+x(74)*compartment_cytoplasm+x(77)*compartment_cytoplasm+x(80)*compartment_cytoplasm+x(83)*compartment_cytoplasm+x(86)*compartment_cytoplasm+x(89)*compartment_cytoplasm+x(92)*compartment_cytoplasm+x(95)*compartment_cytoplasm+x(98)*compartment_cytoplasm+x(101)*compartment_cytoplasm)/compartment_extracellular;
% assignmentRule: variable = Foxo1_all
	x(115)=(x(112)*compartment_extracellular+x(113)*compartment_extracellular+x(114)*compartment_extracellular)/compartment_extracellular;
% assignmentRule: variable = rosconc
	global_par_rosconc=x(32)*compartment_cytoplasm/(global_par_navo*global_par_vcytoplasm);
% assignmentRule: variable = k_ros_perm
	global_par_k_ros_perm=global_par_ros_perm*global_par_membrane_area;
% assignmentRule: variable = ros_ext_conc
	global_par_ros_ext_conc=global_par_sc_ros*const_species_extracellular_ROS*compartment_extracellular/(global_par_navo*compartment_extracellular);
% assignmentRule: variable = ros_cyto_conc
	global_par_ros_cyto_conc=global_par_sc_ros*x(32)*compartment_cytoplasm/(global_par_navo*compartment_cytoplasm);
% assignmentRule: variable = InR_tot
	x(9)=(x(2)*compartment_cellsurface+x(3)*compartment_cellsurface+x(4)*compartment_cellsurface+x(5)*compartment_cellsurface+x(6)*compartment_cytoplasm+x(7)*compartment_cytoplasm+x(8)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = JNK_plus_JNK_P
	x(49)=(x(48)*compartment_cytoplasm+x(46)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = IKK_plus_IKK_P
	x(51)=(x(50)*compartment_cytoplasm+x(47)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = DUSP_plus_DUSP_ox
	x(54)=(x(52)*compartment_cytoplasm+x(53)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = IRS_total
	x(44)=(x(40)*compartment_cytoplasm+x(41)*compartment_cytoplasm+x(42)*compartment_cytoplasm+x(43)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = PTEN_plus_PTEN_ox
	x(31)=(x(26)*compartment_cytoplasm+x(30)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = NOX_total
	x(39)=(x(36)*compartment_cytoplasm+x(37)*compartment_cytoplasm+x(38)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = PTP1B_plus_PTP1B_ox
	x(29)=(x(12)*compartment_cytoplasm+x(28)*compartment_cytoplasm)/compartment_cytoplasm;
% assignmentRule: variable = InR_bound
	x(10)=(x(5)*compartment_cellsurface+x(4)*compartment_cellsurface+x(3)*compartment_cellsurface)/compartment_cytoplasm;
% assignmentRule: variable = InR_active
	x(11)=(x(5)*compartment_cellsurface+x(4)*compartment_cellsurface)/compartment_cytoplasm;

% Reaction: id = R1f, name = R1f
	reaction_R1f=function_1(x(2), x(1), compartment_cellsurface, compartment_extracellular, global_par_k1);

% Reaction: id = R1r, name = R1r
	reaction_R1r=function_2(x(3), compartment_cellsurface, global_par_kminus1);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_cellsurface*function_3(x(3), compartment_cellsurface, global_par_k3);

% Reaction: id = R3f, name = R3f
	reaction_R3f=function_4(x(1), x(4), compartment_cellsurface, compartment_extracellular, global_par_k2);

% Reaction: id = R3r, name = R3r
	reaction_R3r=function_5(x(5), compartment_cellsurface, global_par_kminus2);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_cellsurface*function_6(x(4), x(12), compartment_cellsurface, compartment_cytoplasm, global_par_kminus3);

% Reaction: id = R5f, name = R5f
	reaction_R5f=function_7(x(2), compartment_cellsurface, global_par_k4);

% Reaction: id = R5r, name = R5r
	reaction_R5r=function_8(compartment_cytoplasm, x(6), global_par_kminus4);

% Reaction: id = R6f, name = R6f
	reaction_R6f=function_9(x(5), compartment_cellsurface, global_par_k4prime);

% Reaction: id = R6r, name = R6r
	reaction_R6r=function_10(compartment_cytoplasm, x(7), global_par_kminus4prime);

% Reaction: id = R7f, name = R7f
	reaction_R7f=function_11(x(4), compartment_cellsurface, global_par_k4prime);

% Reaction: id = R7r, name = R7r
	reaction_R7r=function_12(compartment_cytoplasm, x(8), global_par_kminus4prime);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_cytoplasm*function_13(x(12), compartment_cytoplasm, x(7), global_par_k6);

% Reaction: id = R11, name = R11
	reaction_R11=compartment_cytoplasm*function_14(x(12), compartment_cytoplasm, x(8), global_par_k6);

% Reaction: id = R14f, name = R14f
	reaction_R14f=compartment_cytoplasm*function_15(x(13), x(15), compartment_cytoplasm, global_par_k9, global_par_k9_basal);

% Reaction: id = R14r, name = R14r
	reaction_R14r=compartment_cytoplasm*function_16(x(14), x(26), compartment_cytoplasm, global_par_kminus9, global_par_kminus9_basal);

% Reaction: id = R16f, name = R16f
	reaction_R16f=compartment_cytoplasm*function_17(x(18), x(14), compartment_cytoplasm, global_par_k11, global_par_pip3_basal);

% Reaction: id = R16r, name = R16r
	reaction_R16r=compartment_cytoplasm*function_18(x(19), x(27), compartment_cytoplasm, global_par_kminus11);

% Reaction: id = R16a_f, name = R16a_f
	reaction_R16a_f=compartment_cytoplasm*function_19(x(22), x(19), compartment_cytoplasm, global_par_kr16a);

% Reaction: id = R16a_r, name = R16a_r
	reaction_R16a_r=compartment_cytoplasm*function_20(x(23), x(27), compartment_cytoplasm, global_par_kminusr16a);

% Reaction: id = R17f, name = R17f
	reaction_R17f=compartment_cytoplasm*function_21(x(14), x(20), compartment_cytoplasm, global_par_k12, global_par_pip3_basal);

% Reaction: id = R17r, name = R17r
	reaction_R17r=compartment_cytoplasm*function_22(x(21), x(27), compartment_cytoplasm, global_par_kminus12);

% Reaction: id = R20f, name = R20f
	reaction_R20f=function_23(x(23), compartment_cytoplasm, x(24), global_par_k13, global_par_k13_basal);

% Reaction: id = R20r, name = R20r
	reaction_R20r=function_24(compartment_cellsurface, x(25), global_par_kminus13);

% Reaction: id = R30f, name = R30f
	reaction_R30f=compartment_cytoplasm*function_25(x(12), x(32), compartment_cytoplasm, global_par_k30f);

% Reaction: id = R30r, name = R30r
	reaction_R30r=compartment_cytoplasm*function_26(x(33), x(28), compartment_cytoplasm, global_par_k30r);

% Reaction: id = R31f, name = R31f
	reaction_R31f=compartment_cytoplasm*function_27(x(26), x(32), compartment_cytoplasm, global_par_k31f);

% Reaction: id = R31r, name = R31r
	reaction_R31r=compartment_cytoplasm*function_28(x(33), x(30), compartment_cytoplasm, global_par_k31r);

% Reaction: id = R34f, name = R34f
	reaction_R34f=function_29(x(1), x(36), compartment_cytoplasm, compartment_extracellular, global_par_k34f);

% Reaction: id = R34r1, name = R34r1
	reaction_R34r1=compartment_cytoplasm*function_30(x(37), compartment_cytoplasm, global_par_k34r1);

% Reaction: id = R34r2, name = R34r2
	reaction_R34r2=compartment_cytoplasm*function_31(x(37), compartment_cytoplasm, global_par_k34r2);

% Reaction: id = R34r3, name = R34r3
	reaction_R34r3=compartment_cytoplasm*function_32(x(38), compartment_cytoplasm, global_par_k34r3);

% Reaction: id = R35f, name = R35f
	reaction_R35f=compartment_cytoplasm*function_33(x(37), compartment_cytoplasm, global_par_k35f);

% Reaction: id = R35r, name = R35r
	reaction_R35r=compartment_cytoplasm*function_34(x(32), compartment_cytoplasm, x(35), global_par_k35r);

% Reaction: id = R36f, name = R36f
	reaction_R36f=compartment_cytoplasm*function_35(const_species_Mt, compartment_cytoplasm, global_par_k36f);

% Reaction: id = R37f, name = R37f
	reaction_R37f=function_36(compartment_extracellular, const_species_extracellular_ROS, global_par_k_ros_perm);

% Reaction: id = R37r, name = R37r
	reaction_R37r=function_37(x(32), compartment_cytoplasm, compartment_extracellular, global_par_k_ros_perm);

% Reaction: id = R38f, name = R38f
	reaction_R38f=compartment_cytoplasm*function_38(x(33), x(32), compartment_cytoplasm, global_par_k38f);

% Reaction: id = R38r, name = R38r
	reaction_R38r=compartment_cytoplasm*function_39(x(34), compartment_cytoplasm, global_par_k38r);

% Reaction: id = R12f, name = R12f
	reaction_R12f=compartment_cytoplasm*function_40(x(40), global_par_IRp, x(5), x(4), compartment_cellsurface, global_par_cyto_vol, compartment_cytoplasm, global_par_k7);

% Reaction: id = R12r, name = R12r
	reaction_R12r=compartment_cytoplasm*function_41(x(41), x(12), global_par_cyto_vol, compartment_cytoplasm, global_par_kminus7a);

% Reaction: id = R12_a_f, name = R12_a_f
	reaction_R12_a_f=compartment_cytoplasm*function_42(x(40), x(21), global_par_cyto_vol, compartment_cytoplasm, global_par_k2psp);

% Reaction: id = R12_a_r, name = R12_a_r
	reaction_R12_a_r=compartment_cytoplasm*function_43(x(42), x(27), global_par_cyto_vol, compartment_cytoplasm, global_par_kminus7b);

% Reaction: id = R12_b_f, name = R12_b_f
	reaction_R12_b_f=compartment_cytoplasm*function_44(x(41), x(21), global_par_cyto_vol, compartment_cytoplasm, global_par_k2psp);

% Reaction: id = R12_b_r, name = R12_b_r
	reaction_R12_b_r=compartment_cytoplasm*function_45(x(43), x(27), global_par_cyto_vol, compartment_cytoplasm, global_par_kminus7b);

% Reaction: id = R13f, name = R13f
	reaction_R13f=compartment_cytoplasm*function_46(x(41), x(45), global_par_cyto_vol, compartment_cytoplasm, global_par_k8);

% Reaction: id = R13r, name = R13r
	reaction_R13r=compartment_cytoplasm*function_47(x(13), global_par_cyto_vol, compartment_cytoplasm, global_par_kminus8);

% Reaction: id = R50f, name = R50f
	reaction_R50f=compartment_cytoplasm*function_48(compartment_cytoplasm, global_par_k_irs1_basal_syn);

% Reaction: id = R50r1, name = R50r1
	reaction_R50r1=compartment_cytoplasm*function_49(x(40), compartment_cytoplasm, global_par_k_irs1_basal_degr);

% Reaction: id = R50r2, name = R50r2
	reaction_R50r2=compartment_cytoplasm*function_50(x(41), compartment_cytoplasm, global_par_k_irs1_basal_degr);

% Reaction: id = R50r3, name = R50r3
	reaction_R50r3=compartment_cytoplasm*function_51(x(42), compartment_cytoplasm, global_par_k_irs1_polyserp_degr);

% Reaction: id = R50r4, name = R50r4
	reaction_R50r4=compartment_cytoplasm*function_52(x(43), compartment_cytoplasm, global_par_k_irs1_polyserp_degr);

% Reaction: id = R51f, name = R51f
	reaction_R51f=compartment_cytoplasm*function_53(x(47), x(40), global_par_Km51, compartment_cytoplasm, global_par_kcat51);

% Reaction: id = R52f, name = R52f
	reaction_R52f=compartment_cytoplasm*function_54(x(40), x(46), global_par_Km52, compartment_cytoplasm, global_par_kcat52);

% Reaction: id = R42f, name = R42f
	reaction_R42f=compartment_cytoplasm*function_55(x(48), x(32), global_par_alpha_ox, compartment_cytoplasm, global_par_k42f);

% Reaction: id = R42r, name = R42r
	reaction_R42r=compartment_cytoplasm*function_56(x(52), x(46), compartment_cytoplasm, global_par_k42r);

% Reaction: id = R43f, name = R43f
	reaction_R43f=compartment_cytoplasm*function_57(x(50), x(32), compartment_cytoplasm, global_par_k43f);

% Reaction: id = R43r, name = R43r
	reaction_R43r=compartment_cytoplasm*function_58(x(52), x(47), compartment_cytoplasm, global_par_k43r);

% Reaction: id = R32f, name = R32f
	reaction_R32f=compartment_cytoplasm*function_59(x(52), x(32), compartment_cytoplasm, global_par_k32f);

% Reaction: id = R32r, name = R32r
	reaction_R32r=compartment_cytoplasm*function_60(x(53), x(33), compartment_cytoplasm, global_par_k32r);

% Reaction: id = R100, name = Synthesis	% Local Parameter:   id =  ksynth, name = ksynth
	reaction_R100_ksynth=0.0055;

	reaction_R100=compartment_cytoplasm*function_61(x(120), compartment_cytoplasm, reaction_R100_ksynth);

% Reaction: id = R101, name = transport cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R101_ktr=0.181818181818;

	reaction_R101=function_62(compartment_cytoplasm, x(56), reaction_R101_ktr);

% Reaction: id = R102, name = transport nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R102_ktr=0.055;

	reaction_R102=function_63(reaction_R102_ktr, compartment_nucleus, x(57));

% Reaction: id = R103, name = transport nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R103_ktr=0.25;

	reaction_R103=function_64(reaction_R103_ktr, compartment_nucleus, x(57));

% Reaction: id = R104, name = transport dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R104_ktr=0.125;

	reaction_R104=function_65(compartment_dnabound, x(58), reaction_R104_ktr);

% Reaction: id = R105, name = transport cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R105_ktr=0.181818181818;

	reaction_R105=function_66(compartment_cytoplasm, x(59), reaction_R105_ktr);

% Reaction: id = R106, name = transport nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R106_ktr=0.055;

	reaction_R106=function_67(reaction_R106_ktr, compartment_nucleus, x(60));

% Reaction: id = R107, name = transport nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R107_ktr=0.25;

	reaction_R107=function_68(reaction_R107_ktr, compartment_nucleus, x(60));

% Reaction: id = R108, name = transport dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R108_ktr=0.125;

	reaction_R108=function_69(compartment_dnabound, x(61), reaction_R108_ktr);

% Reaction: id = R109, name = transport cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R109_ktr=1.81818181818;

	reaction_R109=function_70(compartment_cytoplasm, x(62), reaction_R109_ktr);

% Reaction: id = R110, name = transport nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R110_ktr=0.0055;

	reaction_R110=function_71(reaction_R110_ktr, compartment_nucleus, x(63));

% Reaction: id = R111, name = transport nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R111_ktr=0.25;

	reaction_R111=function_72(reaction_R111_ktr, compartment_nucleus, x(63));

% Reaction: id = R112, name = transport dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R112_ktr=0.125;

	reaction_R112=function_73(compartment_dnabound, x(64), reaction_R112_ktr);

% Reaction: id = R113, name = transport cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R113_ktr=1.81818181818;

	reaction_R113=function_74(compartment_cytoplasm, x(65), reaction_R113_ktr);

% Reaction: id = R114, name = transport nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R114_ktr=0.0055;

	reaction_R114=function_75(reaction_R114_ktr, compartment_nucleus, x(66));

% Reaction: id = R115, name = transport nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R115_ktr=0.25;

	reaction_R115=function_76(reaction_R115_ktr, compartment_nucleus, x(66));

% Reaction: id = R116, name = transport dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R116_ktr=0.125;

	reaction_R116=function_77(compartment_dnabound, x(67), reaction_R116_ktr);

% Reaction: id = R117, name = transport cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R117_ktr=0.0909090909091;

	reaction_R117=function_78(compartment_cytoplasm, x(68), reaction_R117_ktr);

% Reaction: id = R118, name = transport nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R118_ktr=0.55;

	reaction_R118=function_79(reaction_R118_ktr, compartment_nucleus, x(69));

% Reaction: id = R119, name = transport nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R119_ktr=0.25;

	reaction_R119=function_80(reaction_R119_ktr, compartment_nucleus, x(69));

% Reaction: id = R120, name = transport dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R120_ktr=0.125;

	reaction_R120=function_81(compartment_dnabound, x(70), reaction_R120_ktr);

% Reaction: id = R121, name = transport cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R121_ktr=0.0909090909091;

	reaction_R121=function_82(compartment_cytoplasm, x(71), reaction_R121_ktr);

% Reaction: id = R122, name = transport nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R122_ktr=0.55;

	reaction_R122=function_83(reaction_R122_ktr, compartment_nucleus, x(72));

% Reaction: id = R123, name = transport nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R123_ktr=0.25;

	reaction_R123=function_84(reaction_R123_ktr, compartment_nucleus, x(72));

% Reaction: id = R124, name = transport dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R124_ktr=0.125;

	reaction_R124=function_85(compartment_dnabound, x(73), reaction_R124_ktr);

% Reaction: id = R125, name = transport cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R125_ktr=0.909090909091;

	reaction_R125=function_86(compartment_cytoplasm, x(74), reaction_R125_ktr);

% Reaction: id = R126, name = transport nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R126_ktr=0.055;

	reaction_R126=function_87(reaction_R126_ktr, compartment_nucleus, x(75));

% Reaction: id = R127, name = transport nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R127_ktr=0.25;

	reaction_R127=function_88(reaction_R127_ktr, compartment_nucleus, x(75));

% Reaction: id = R128, name = transport dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R128_ktr=0.125;

	reaction_R128=function_89(compartment_dnabound, x(76), reaction_R128_ktr);

% Reaction: id = R129, name = transport cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R129_ktr=0.909090909091;

	reaction_R129=function_90(compartment_cytoplasm, x(77), reaction_R129_ktr);

% Reaction: id = R130, name = transport nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R130_ktr=0.055;

	reaction_R130=function_91(reaction_R130_ktr, compartment_nucleus, x(78));

% Reaction: id = R131, name = transport nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R131_ktr=0.25;

	reaction_R131=function_92(reaction_R131_ktr, compartment_nucleus, x(78));

% Reaction: id = R132, name = transport dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R132_ktr=0.125;

	reaction_R132=function_93(compartment_dnabound, x(79), reaction_R132_ktr);

% Reaction: id = R133, name = transport cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R133_ktr=0.0181818181818;

	reaction_R133=function_94(compartment_cytoplasm, x(80), reaction_R133_ktr);

% Reaction: id = R134, name = transport nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R134_ktr=0.55;

	reaction_R134=function_95(reaction_R134_ktr, compartment_nucleus, x(81));

% Reaction: id = R135, name = transport nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R135_ktr=0.125;

	reaction_R135=function_96(reaction_R135_ktr, compartment_nucleus, x(81));

% Reaction: id = R136, name = transport dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R136_ktr=0.125;

	reaction_R136=function_97(compartment_dnabound, x(82), reaction_R136_ktr);

% Reaction: id = R137, name = transport cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R137_ktr=0.0181818181818;

	reaction_R137=function_98(compartment_cytoplasm, x(83), reaction_R137_ktr);

% Reaction: id = R138, name = transport nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R138_ktr=0.55;

	reaction_R138=function_99(reaction_R138_ktr, compartment_nucleus, x(84));

% Reaction: id = R139, name = transport nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R139_ktr=0.125;

	reaction_R139=function_100(reaction_R139_ktr, compartment_nucleus, x(84));

% Reaction: id = R140, name = transport dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R140_ktr=0.125;

	reaction_R140=function_101(compartment_dnabound, x(85), reaction_R140_ktr);

% Reaction: id = R141, name = transport cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R141_ktr=0.181818181818;

	reaction_R141=function_102(compartment_cytoplasm, x(86), reaction_R141_ktr);

% Reaction: id = R142, name = transport nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R142_ktr=0.055;

	reaction_R142=function_103(reaction_R142_ktr, compartment_nucleus, x(87));

% Reaction: id = R143, name = transport nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R143_ktr=0.125;

	reaction_R143=function_104(reaction_R143_ktr, compartment_nucleus, x(87));

% Reaction: id = R144, name = transport dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R144_ktr=0.125;

	reaction_R144=function_105(compartment_dnabound, x(88), reaction_R144_ktr);

% Reaction: id = R145, name = transport cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R145_ktr=0.181818181818;

	reaction_R145=function_106(compartment_cytoplasm, x(89), reaction_R145_ktr);

% Reaction: id = R146, name = transport nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R146_ktr=0.055;

	reaction_R146=function_107(reaction_R146_ktr, compartment_nucleus, x(90));

% Reaction: id = R147, name = transport nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R147_ktr=0.125;

	reaction_R147=function_108(reaction_R147_ktr, compartment_nucleus, x(90));

% Reaction: id = R148, name = transport dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R148_ktr=0.125;

	reaction_R148=function_109(compartment_dnabound, x(91), reaction_R148_ktr);

% Reaction: id = R149, name = transport cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R149_ktr=0.00909090909091;

	reaction_R149=function_110(compartment_cytoplasm, x(92), reaction_R149_ktr);

% Reaction: id = R150, name = transport nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R150_ktr=5.5;

	reaction_R150=function_111(reaction_R150_ktr, compartment_nucleus, x(93));

% Reaction: id = R151, name = transport nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R151_ktr=0.125;

	reaction_R151=function_112(reaction_R151_ktr, compartment_nucleus, x(93));

% Reaction: id = R152, name = transport dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R152_ktr=0.125;

	reaction_R152=function_113(compartment_dnabound, x(94), reaction_R152_ktr);

% Reaction: id = R153, name = transport cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R153_ktr=0.00909090909091;

	reaction_R153=function_114(compartment_cytoplasm, x(95), reaction_R153_ktr);

% Reaction: id = R154, name = transport nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R154_ktr=5.5;

	reaction_R154=function_115(reaction_R154_ktr, compartment_nucleus, x(96));

% Reaction: id = R155, name = transport nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R155_ktr=0.125;

	reaction_R155=function_116(reaction_R155_ktr, compartment_nucleus, x(96));

% Reaction: id = R156, name = transport dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R156_ktr=0.125;

	reaction_R156=function_117(compartment_dnabound, x(97), reaction_R156_ktr);

% Reaction: id = R157, name = transport cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R157_ktr=0.0909090909091;

	reaction_R157=function_118(compartment_cytoplasm, x(98), reaction_R157_ktr);

% Reaction: id = R158, name = transport nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R158_ktr=0.55;

	reaction_R158=function_119(reaction_R158_ktr, compartment_nucleus, x(99));

% Reaction: id = R159, name = transport nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R159_ktr=0.125;

	reaction_R159=function_120(reaction_R159_ktr, compartment_nucleus, x(99));

% Reaction: id = R160, name = transport dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktr, name = ktr
	reaction_R160_ktr=0.125;

	reaction_R160=function_121(compartment_dnabound, x(100), reaction_R160_ktr);

% Reaction: id = R161, name = transport cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R161_ktr=0.0909090909091;

	reaction_R161=function_122(compartment_cytoplasm, x(101), reaction_R161_ktr);

% Reaction: id = R162, name = transport nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R162_ktr=0.55;

	reaction_R162=function_123(reaction_R162_ktr, compartment_nucleus, x(102));

% Reaction: id = R163, name = transport nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R163_ktr=0.125;

	reaction_R163=function_124(reaction_R163_ktr, compartment_nucleus, x(102));

% Reaction: id = R164, name = transport dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktr, name = ktr
	reaction_R164_ktr=0.125;

	reaction_R164=function_125(compartment_dnabound, x(103), reaction_R164_ktr);

% Reaction: id = R165, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R165_kkin=3.0E-4;

	reaction_R165=compartment_cytoplasm*function_126(x(19), compartment_cytoplasm, x(56), reaction_R165_kkin);

% Reaction: id = R166, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R166_kkin=3.0E-4;

	reaction_R166=compartment_nucleus*function_127(x(19), compartment_cytoplasm, reaction_R166_kkin, compartment_nucleus, x(57));

% Reaction: id = R167, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R167_kkin=3.0E-4;

	reaction_R167=compartment_dnabound*function_128(x(19), compartment_cytoplasm, compartment_dnabound, x(58), reaction_R167_kkin);

% Reaction: id = R168, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R168_kkin=3.0E-4;

	reaction_R168=compartment_cytoplasm*function_129(x(19), compartment_cytoplasm, x(59), reaction_R168_kkin);

% Reaction: id = R169, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R169_kkin=3.0E-4;

	reaction_R169=compartment_nucleus*function_130(x(19), compartment_cytoplasm, reaction_R169_kkin, compartment_nucleus, x(60));

% Reaction: id = R170, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R170_kkin=3.0E-4;

	reaction_R170=compartment_dnabound*function_131(x(19), compartment_cytoplasm, compartment_dnabound, x(61), reaction_R170_kkin);

% Reaction: id = R171, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R171_kkin=3.0E-4;

	reaction_R171=compartment_cytoplasm*function_132(x(19), compartment_cytoplasm, x(62), reaction_R171_kkin);

% Reaction: id = R172, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R172_kkin=3.0E-4;

	reaction_R172=compartment_nucleus*function_133(x(19), compartment_cytoplasm, reaction_R172_kkin, compartment_nucleus, x(63));

% Reaction: id = R173, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R173_kkin=3.0E-4;

	reaction_R173=compartment_dnabound*function_134(x(19), compartment_cytoplasm, compartment_dnabound, x(64), reaction_R173_kkin);

% Reaction: id = R174, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R174_kkin=3.0E-4;

	reaction_R174=compartment_cytoplasm*function_135(x(19), compartment_cytoplasm, x(65), reaction_R174_kkin);

% Reaction: id = R175, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R175_kkin=3.0E-4;

	reaction_R175=compartment_nucleus*function_136(x(19), compartment_cytoplasm, reaction_R175_kkin, compartment_nucleus, x(66));

% Reaction: id = R176, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R176_kkin=3.0E-4;

	reaction_R176=compartment_dnabound*function_137(x(19), compartment_cytoplasm, compartment_dnabound, x(67), reaction_R176_kkin);

% Reaction: id = R177, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R177_kkin=3.0E-4;

	reaction_R177=compartment_cytoplasm*function_138(x(19), compartment_cytoplasm, x(68), reaction_R177_kkin);

% Reaction: id = R178, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R178_kkin=3.0E-4;

	reaction_R178=compartment_nucleus*function_139(x(19), compartment_cytoplasm, reaction_R178_kkin, compartment_nucleus, x(69));

% Reaction: id = R179, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R179_kkin=3.0E-4;

	reaction_R179=compartment_dnabound*function_140(x(19), compartment_cytoplasm, compartment_dnabound, x(70), reaction_R179_kkin);

% Reaction: id = R180, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R180_kkin=3.0E-4;

	reaction_R180=compartment_cytoplasm*function_141(x(19), compartment_cytoplasm, x(71), reaction_R180_kkin);

% Reaction: id = R181, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R181_kkin=3.0E-4;

	reaction_R181=compartment_nucleus*function_142(x(19), compartment_cytoplasm, reaction_R181_kkin, compartment_nucleus, x(72));

% Reaction: id = R182, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R182_kkin=3.0E-4;

	reaction_R182=compartment_dnabound*function_143(x(19), compartment_cytoplasm, compartment_dnabound, x(73), reaction_R182_kkin);

% Reaction: id = R183, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R183_kkin=3.0E-4;

	reaction_R183=compartment_cytoplasm*function_144(x(19), compartment_cytoplasm, x(74), reaction_R183_kkin);

% Reaction: id = R184, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R184_kkin=3.0E-4;

	reaction_R184=compartment_nucleus*function_145(x(19), compartment_cytoplasm, reaction_R184_kkin, compartment_nucleus, x(75));

% Reaction: id = R185, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R185_kkin=3.0E-4;

	reaction_R185=compartment_dnabound*function_146(x(19), compartment_cytoplasm, compartment_dnabound, x(76), reaction_R185_kkin);

% Reaction: id = R186, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R186_kkin=3.0E-4;

	reaction_R186=compartment_cytoplasm*function_147(x(19), compartment_cytoplasm, x(77), reaction_R186_kkin);

% Reaction: id = R187, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R187_kkin=3.0E-4;

	reaction_R187=compartment_nucleus*function_148(x(19), compartment_cytoplasm, reaction_R187_kkin, compartment_nucleus, x(78));

% Reaction: id = R188, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 by Akt_P2	% Local Parameter:   id =  kkin, name = kkin
	reaction_R188_kkin=3.0E-4;

	reaction_R188=compartment_dnabound*function_149(x(19), compartment_cytoplasm, compartment_dnabound, x(79), reaction_R188_kkin);

% Reaction: id = R189, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R189_kkin=3.0E-4;

	reaction_R189=compartment_cytoplasm*function_150(x(121), compartment_cytoplasm, x(56), reaction_R189_kkin);

% Reaction: id = R190, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R190_kkin=3.0E-4;

	reaction_R190=compartment_nucleus*function_151(x(121), compartment_cytoplasm, reaction_R190_kkin, compartment_nucleus, x(57));

% Reaction: id = R191, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R191_kkin=3.0E-4;

	reaction_R191=compartment_dnabound*function_152(x(121), compartment_cytoplasm, compartment_dnabound, x(58), reaction_R191_kkin);

% Reaction: id = R192, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R192_kkin=3.0E-4;

	reaction_R192=compartment_cytoplasm*function_153(x(121), compartment_cytoplasm, x(59), reaction_R192_kkin);

% Reaction: id = R193, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R193_kkin=3.0E-4;

	reaction_R193=compartment_nucleus*function_154(x(121), compartment_cytoplasm, reaction_R193_kkin, compartment_nucleus, x(60));

% Reaction: id = R194, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R194_kkin=3.0E-4;

	reaction_R194=compartment_dnabound*function_155(x(121), compartment_cytoplasm, compartment_dnabound, x(61), reaction_R194_kkin);

% Reaction: id = R195, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R195_kkin=3.0E-4;

	reaction_R195=compartment_cytoplasm*function_156(x(121), compartment_cytoplasm, x(62), reaction_R195_kkin);

% Reaction: id = R196, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R196_kkin=3.0E-4;

	reaction_R196=compartment_nucleus*function_157(x(121), compartment_cytoplasm, reaction_R196_kkin, compartment_nucleus, x(63));

% Reaction: id = R197, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R197_kkin=3.0E-4;

	reaction_R197=compartment_dnabound*function_158(x(121), compartment_cytoplasm, compartment_dnabound, x(64), reaction_R197_kkin);

% Reaction: id = R198, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R198_kkin=3.0E-4;

	reaction_R198=compartment_cytoplasm*function_159(x(121), compartment_cytoplasm, x(65), reaction_R198_kkin);

% Reaction: id = R199, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R199_kkin=3.0E-4;

	reaction_R199=compartment_nucleus*function_160(x(121), compartment_cytoplasm, reaction_R199_kkin, compartment_nucleus, x(66));

% Reaction: id = R200, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R200_kkin=3.0E-4;

	reaction_R200=compartment_dnabound*function_161(x(121), compartment_cytoplasm, compartment_dnabound, x(67), reaction_R200_kkin);

% Reaction: id = R201, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R201_kkin=3.0E-4;

	reaction_R201=compartment_cytoplasm*function_162(x(121), compartment_cytoplasm, x(68), reaction_R201_kkin);

% Reaction: id = R202, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R202_kkin=3.0E-4;

	reaction_R202=compartment_nucleus*function_163(x(121), compartment_cytoplasm, reaction_R202_kkin, compartment_nucleus, x(69));

% Reaction: id = R203, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R203_kkin=3.0E-4;

	reaction_R203=compartment_dnabound*function_164(x(121), compartment_cytoplasm, compartment_dnabound, x(70), reaction_R203_kkin);

% Reaction: id = R204, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R204_kkin=3.0E-4;

	reaction_R204=compartment_cytoplasm*function_165(x(121), compartment_cytoplasm, x(71), reaction_R204_kkin);

% Reaction: id = R205, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R205_kkin=3.0E-4;

	reaction_R205=compartment_nucleus*function_166(x(121), compartment_cytoplasm, reaction_R205_kkin, compartment_nucleus, x(72));

% Reaction: id = R206, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R206_kkin=3.0E-4;

	reaction_R206=compartment_dnabound*function_167(x(121), compartment_cytoplasm, compartment_dnabound, x(73), reaction_R206_kkin);

% Reaction: id = R207, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R207_kkin=3.0E-4;

	reaction_R207=compartment_cytoplasm*function_168(x(121), compartment_cytoplasm, x(74), reaction_R207_kkin);

% Reaction: id = R208, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R208_kkin=3.0E-4;

	reaction_R208=compartment_nucleus*function_169(x(121), compartment_cytoplasm, reaction_R208_kkin, compartment_nucleus, x(75));

% Reaction: id = R209, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R209_kkin=3.0E-4;

	reaction_R209=compartment_dnabound*function_170(x(121), compartment_cytoplasm, compartment_dnabound, x(76), reaction_R209_kkin);

% Reaction: id = R210, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R210_kkin=3.0E-4;

	reaction_R210=compartment_cytoplasm*function_171(x(121), compartment_cytoplasm, x(77), reaction_R210_kkin);

% Reaction: id = R211, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R211_kkin=3.0E-4;

	reaction_R211=compartment_nucleus*function_172(x(121), compartment_cytoplasm, reaction_R211_kkin, compartment_nucleus, x(78));

% Reaction: id = R212, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R212_kkin=3.0E-4;

	reaction_R212=compartment_dnabound*function_173(x(121), compartment_cytoplasm, compartment_dnabound, x(79), reaction_R212_kkin);

% Reaction: id = R213, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R213_kdephos=1.0E-6;

	reaction_R213=compartment_cytoplasm*function_174(x(27), compartment_cytoplasm, x(80), reaction_R213_kdephos);

% Reaction: id = R214, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R214_kdephos=1.0E-6;

	reaction_R214=compartment_nucleus*function_175(x(27), compartment_cytoplasm, reaction_R214_kdephos, compartment_nucleus, x(81));

% Reaction: id = R215, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R215_kdephos=1.0E-6;

	reaction_R215=compartment_dnabound*function_176(x(27), compartment_cytoplasm, compartment_dnabound, x(82), reaction_R215_kdephos);

% Reaction: id = R216, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R216_kdephos=1.0E-6;

	reaction_R216=compartment_cytoplasm*function_177(x(27), compartment_cytoplasm, x(83), reaction_R216_kdephos);

% Reaction: id = R217, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R217_kdephos=1.0E-6;

	reaction_R217=compartment_nucleus*function_178(x(27), compartment_cytoplasm, reaction_R217_kdephos, compartment_nucleus, x(84));

% Reaction: id = R218, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R218_kdephos=1.0E-6;

	reaction_R218=compartment_dnabound*function_179(x(27), compartment_cytoplasm, compartment_dnabound, x(85), reaction_R218_kdephos);

% Reaction: id = R219, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R219_kdephos=1.0E-6;

	reaction_R219=compartment_cytoplasm*function_180(x(27), compartment_cytoplasm, x(86), reaction_R219_kdephos);

% Reaction: id = R220, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R220_kdephos=1.0E-6;

	reaction_R220=compartment_nucleus*function_181(x(27), compartment_cytoplasm, reaction_R220_kdephos, compartment_nucleus, x(87));

% Reaction: id = R221, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R221_kdephos=1.0E-6;

	reaction_R221=compartment_dnabound*function_182(x(27), compartment_cytoplasm, compartment_dnabound, x(88), reaction_R221_kdephos);

% Reaction: id = R222, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R222_kdephos=1.0E-6;

	reaction_R222=compartment_cytoplasm*function_183(x(27), compartment_cytoplasm, x(89), reaction_R222_kdephos);

% Reaction: id = R223, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R223_kdephos=1.0E-6;

	reaction_R223=compartment_nucleus*function_184(x(27), compartment_cytoplasm, reaction_R223_kdephos, compartment_nucleus, x(90));

% Reaction: id = R224, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R224_kdephos=1.0E-6;

	reaction_R224=compartment_dnabound*function_185(x(27), compartment_cytoplasm, compartment_dnabound, x(91), reaction_R224_kdephos);

% Reaction: id = R225, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R225_kdephos=1.0E-6;

	reaction_R225=compartment_cytoplasm*function_186(x(27), compartment_cytoplasm, x(92), reaction_R225_kdephos);

% Reaction: id = R226, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R226_kdephos=1.0E-6;

	reaction_R226=compartment_nucleus*function_187(x(27), compartment_cytoplasm, reaction_R226_kdephos, compartment_nucleus, x(93));

% Reaction: id = R227, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R227_kdephos=1.0E-6;

	reaction_R227=compartment_dnabound*function_188(x(27), compartment_cytoplasm, compartment_dnabound, x(94), reaction_R227_kdephos);

% Reaction: id = R228, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R228_kdephos=1.0E-6;

	reaction_R228=compartment_cytoplasm*function_189(x(27), compartment_cytoplasm, x(95), reaction_R228_kdephos);

% Reaction: id = R229, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R229_kdephos=1.0E-6;

	reaction_R229=compartment_nucleus*function_190(x(27), compartment_cytoplasm, reaction_R229_kdephos, compartment_nucleus, x(96));

% Reaction: id = R230, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R230_kdephos=1.0E-6;

	reaction_R230=compartment_dnabound*function_191(x(27), compartment_cytoplasm, compartment_dnabound, x(97), reaction_R230_kdephos);

% Reaction: id = R231, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R231_kdephos=1.0E-6;

	reaction_R231=compartment_cytoplasm*function_192(x(27), compartment_cytoplasm, x(98), reaction_R231_kdephos);

% Reaction: id = R232, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R232_kdephos=1.0E-6;

	reaction_R232=compartment_nucleus*function_193(x(27), compartment_cytoplasm, reaction_R232_kdephos, compartment_nucleus, x(99));

% Reaction: id = R233, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R233_kdephos=1.0E-6;

	reaction_R233=compartment_dnabound*function_194(x(27), compartment_cytoplasm, compartment_dnabound, x(100), reaction_R233_kdephos);

% Reaction: id = R234, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R234_kdephos=1.0E-6;

	reaction_R234=compartment_cytoplasm*function_195(x(27), compartment_cytoplasm, x(101), reaction_R234_kdephos);

% Reaction: id = R235, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R235_kdephos=1.0E-6;

	reaction_R235=compartment_nucleus*function_196(x(27), compartment_cytoplasm, reaction_R235_kdephos, compartment_nucleus, x(102));

% Reaction: id = R236, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R236_kdephos=1.0E-6;

	reaction_R236=compartment_dnabound*function_197(x(27), compartment_cytoplasm, compartment_dnabound, x(103), reaction_R236_kdephos);

% Reaction: id = R237, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R237_kkin=5.0E-5;

	reaction_R237=compartment_cytoplasm*function_198(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(56), reaction_R237_kkin);

% Reaction: id = R238, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R238_kkin=5.0E-5;

	reaction_R238=compartment_nucleus*function_199(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R238_kkin, compartment_nucleus, x(57));

% Reaction: id = R239, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R239_kkin=5.0E-5;

	reaction_R239=compartment_dnabound*function_200(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(58), reaction_R239_kkin);

% Reaction: id = R240, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R240_kkin=5.0E-5;

	reaction_R240=compartment_cytoplasm*function_201(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(59), reaction_R240_kkin);

% Reaction: id = R241, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R241_kkin=5.0E-5;

	reaction_R241=compartment_nucleus*function_202(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R241_kkin, compartment_nucleus, x(60));

% Reaction: id = R242, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R242_kkin=5.0E-5;

	reaction_R242=compartment_dnabound*function_203(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(61), reaction_R242_kkin);

% Reaction: id = R243, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R243_kkin=5.0E-5;

	reaction_R243=compartment_cytoplasm*function_204(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(62), reaction_R243_kkin);

% Reaction: id = R244, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R244_kkin=5.0E-5;

	reaction_R244=compartment_nucleus*function_205(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R244_kkin, compartment_nucleus, x(63));

% Reaction: id = R245, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R245_kkin=5.0E-5;

	reaction_R245=compartment_dnabound*function_206(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(64), reaction_R245_kkin);

% Reaction: id = R246, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R246_kkin=5.0E-5;

	reaction_R246=compartment_cytoplasm*function_207(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(65), reaction_R246_kkin);

% Reaction: id = R247, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R247_kkin=5.0E-5;

	reaction_R247=compartment_nucleus*function_208(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R247_kkin, compartment_nucleus, x(66));

% Reaction: id = R248, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R248_kkin=5.0E-5;

	reaction_R248=compartment_dnabound*function_209(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(67), reaction_R248_kkin);

% Reaction: id = R249, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R249_kdephos=1.0E-6;

	reaction_R249=compartment_cytoplasm*function_210(x(27), compartment_cytoplasm, x(68), reaction_R249_kdephos);

% Reaction: id = R250, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R250_kdephos=1.0E-6;

	reaction_R250=compartment_nucleus*function_211(x(27), compartment_cytoplasm, reaction_R250_kdephos, compartment_nucleus, x(69));

% Reaction: id = R251, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R251_kdephos=1.0E-6;

	reaction_R251=compartment_dnabound*function_212(x(27), compartment_cytoplasm, compartment_dnabound, x(70), reaction_R251_kdephos);

% Reaction: id = R252, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R252_kdephos=1.0E-6;

	reaction_R252=compartment_cytoplasm*function_213(x(27), compartment_cytoplasm, x(71), reaction_R252_kdephos);

% Reaction: id = R253, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R253_kdephos=1.0E-6;

	reaction_R253=compartment_nucleus*function_214(x(27), compartment_cytoplasm, reaction_R253_kdephos, compartment_nucleus, x(72));

% Reaction: id = R254, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R254_kdephos=1.0E-6;

	reaction_R254=compartment_dnabound*function_215(x(27), compartment_cytoplasm, compartment_dnabound, x(73), reaction_R254_kdephos);

% Reaction: id = R255, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R255_kdephos=1.0E-6;

	reaction_R255=compartment_cytoplasm*function_216(x(27), compartment_cytoplasm, x(74), reaction_R255_kdephos);

% Reaction: id = R256, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R256_kdephos=1.0E-6;

	reaction_R256=compartment_nucleus*function_217(x(27), compartment_cytoplasm, reaction_R256_kdephos, compartment_nucleus, x(75));

% Reaction: id = R257, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R257_kdephos=1.0E-6;

	reaction_R257=compartment_dnabound*function_218(x(27), compartment_cytoplasm, compartment_dnabound, x(76), reaction_R257_kdephos);

% Reaction: id = R258, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R258_kdephos=1.0E-6;

	reaction_R258=compartment_cytoplasm*function_219(x(27), compartment_cytoplasm, x(77), reaction_R258_kdephos);

% Reaction: id = R259, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R259_kdephos=1.0E-6;

	reaction_R259=compartment_nucleus*function_220(x(27), compartment_cytoplasm, reaction_R259_kdephos, compartment_nucleus, x(78));

% Reaction: id = R260, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R260_kdephos=1.0E-6;

	reaction_R260=compartment_dnabound*function_221(x(27), compartment_cytoplasm, compartment_dnabound, x(79), reaction_R260_kdephos);

% Reaction: id = R261, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R261_kkin=5.0E-5;

	reaction_R261=compartment_cytoplasm*function_222(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(80), reaction_R261_kkin);

% Reaction: id = R262, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R262_kkin=5.0E-5;

	reaction_R262=compartment_nucleus*function_223(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R262_kkin, compartment_nucleus, x(81));

% Reaction: id = R263, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R263_kkin=5.0E-5;

	reaction_R263=compartment_dnabound*function_224(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(82), reaction_R263_kkin);

% Reaction: id = R264, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R264_kkin=5.0E-5;

	reaction_R264=compartment_cytoplasm*function_225(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(83), reaction_R264_kkin);

% Reaction: id = R265, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R265_kkin=5.0E-5;

	reaction_R265=compartment_nucleus*function_226(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R265_kkin, compartment_nucleus, x(84));

% Reaction: id = R266, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R266_kkin=5.0E-5;

	reaction_R266=compartment_dnabound*function_227(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(85), reaction_R266_kkin);

% Reaction: id = R267, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R267_kkin=5.0E-5;

	reaction_R267=compartment_cytoplasm*function_228(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(86), reaction_R267_kkin);

% Reaction: id = R268, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R268_kkin=5.0E-5;

	reaction_R268=compartment_nucleus*function_229(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R268_kkin, compartment_nucleus, x(87));

% Reaction: id = R269, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R269_kkin=5.0E-5;

	reaction_R269=compartment_dnabound*function_230(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(88), reaction_R269_kkin);

% Reaction: id = R270, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R270_kkin=5.0E-5;

	reaction_R270=compartment_cytoplasm*function_231(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, x(89), reaction_R270_kkin);

% Reaction: id = R271, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R271_kkin=5.0E-5;

	reaction_R271=compartment_nucleus*function_232(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, reaction_R271_kkin, compartment_nucleus, x(90));

% Reaction: id = R272, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 by IKK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R272_kkin=5.0E-5;

	reaction_R272=compartment_dnabound*function_233(x(47), global_par_by_ikk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(91), reaction_R272_kkin);

% Reaction: id = R273, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R273_kdephos=1.0E-6;

	reaction_R273=compartment_cytoplasm*function_234(x(27), compartment_cytoplasm, x(92), reaction_R273_kdephos);

% Reaction: id = R274, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R274_kdephos=1.0E-6;

	reaction_R274=compartment_nucleus*function_235(x(27), compartment_cytoplasm, reaction_R274_kdephos, compartment_nucleus, x(93));

% Reaction: id = R275, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R275_kdephos=1.0E-6;

	reaction_R275=compartment_dnabound*function_236(x(27), compartment_cytoplasm, compartment_dnabound, x(94), reaction_R275_kdephos);

% Reaction: id = R276, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R276_kdephos=1.0E-6;

	reaction_R276=compartment_cytoplasm*function_237(x(27), compartment_cytoplasm, x(95), reaction_R276_kdephos);

% Reaction: id = R277, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R277_kdephos=1.0E-6;

	reaction_R277=compartment_nucleus*function_238(x(27), compartment_cytoplasm, reaction_R277_kdephos, compartment_nucleus, x(96));

% Reaction: id = R278, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R278_kdephos=1.0E-6;

	reaction_R278=compartment_dnabound*function_239(x(27), compartment_cytoplasm, compartment_dnabound, x(97), reaction_R278_kdephos);

% Reaction: id = R279, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R279_kdephos=1.0E-6;

	reaction_R279=compartment_cytoplasm*function_240(x(27), compartment_cytoplasm, x(98), reaction_R279_kdephos);

% Reaction: id = R280, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R280_kdephos=1.0E-6;

	reaction_R280=compartment_nucleus*function_241(x(27), compartment_cytoplasm, reaction_R280_kdephos, compartment_nucleus, x(99));

% Reaction: id = R281, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R281_kdephos=1.0E-6;

	reaction_R281=compartment_dnabound*function_242(x(27), compartment_cytoplasm, compartment_dnabound, x(100), reaction_R281_kdephos);

% Reaction: id = R282, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R282_kdephos=1.0E-6;

	reaction_R282=compartment_cytoplasm*function_243(x(27), compartment_cytoplasm, x(101), reaction_R282_kdephos);

% Reaction: id = R283, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R283_kdephos=1.0E-6;

	reaction_R283=compartment_nucleus*function_244(x(27), compartment_cytoplasm, reaction_R283_kdephos, compartment_nucleus, x(102));

% Reaction: id = R284, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R284_kdephos=1.0E-6;

	reaction_R284=compartment_dnabound*function_245(x(27), compartment_cytoplasm, compartment_dnabound, x(103), reaction_R284_kdephos);

% Reaction: id = R285, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R285_kkin=5.0E-5;

	reaction_R285=compartment_cytoplasm*function_246(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(56), reaction_R285_kkin);

% Reaction: id = R286, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R286_kkin=5.0E-5;

	reaction_R286=compartment_nucleus*function_247(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R286_kkin, compartment_nucleus, x(57));

% Reaction: id = R287, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R287_kkin=5.0E-5;

	reaction_R287=compartment_dnabound*function_248(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(58), reaction_R287_kkin);

% Reaction: id = R288, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R288_kkin=5.0E-5;

	reaction_R288=compartment_cytoplasm*function_249(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(59), reaction_R288_kkin);

% Reaction: id = R289, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R289_kkin=5.0E-5;

	reaction_R289=compartment_nucleus*function_250(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R289_kkin, compartment_nucleus, x(60));

% Reaction: id = R290, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R290_kkin=5.0E-5;

	reaction_R290=compartment_dnabound*function_251(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(61), reaction_R290_kkin);

% Reaction: id = R291, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R291_kdephos=1.0E-6;

	reaction_R291=compartment_cytoplasm*function_252(x(27), compartment_cytoplasm, x(62), reaction_R291_kdephos);

% Reaction: id = R292, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R292_kdephos=1.0E-6;

	reaction_R292=compartment_nucleus*function_253(x(27), compartment_cytoplasm, reaction_R292_kdephos, compartment_nucleus, x(63));

% Reaction: id = R293, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R293_kdephos=1.0E-6;

	reaction_R293=compartment_dnabound*function_254(x(27), compartment_cytoplasm, compartment_dnabound, x(64), reaction_R293_kdephos);

% Reaction: id = R294, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R294_kdephos=1.0E-6;

	reaction_R294=compartment_cytoplasm*function_255(x(27), compartment_cytoplasm, x(65), reaction_R294_kdephos);

% Reaction: id = R295, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R295_kdephos=1.0E-6;

	reaction_R295=compartment_nucleus*function_256(x(27), compartment_cytoplasm, reaction_R295_kdephos, compartment_nucleus, x(66));

% Reaction: id = R296, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R296_kdephos=1.0E-6;

	reaction_R296=compartment_dnabound*function_257(x(27), compartment_cytoplasm, compartment_dnabound, x(67), reaction_R296_kdephos);

% Reaction: id = R297, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R297_kkin=5.0E-5;

	reaction_R297=compartment_cytoplasm*function_258(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(68), reaction_R297_kkin);

% Reaction: id = R298, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R298_kkin=5.0E-5;

	reaction_R298=compartment_nucleus*function_259(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R298_kkin, compartment_nucleus, x(69));

% Reaction: id = R299, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R299_kkin=5.0E-5;

	reaction_R299=compartment_dnabound*function_260(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(70), reaction_R299_kkin);

% Reaction: id = R300, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R300_kkin=5.0E-5;

	reaction_R300=compartment_cytoplasm*function_261(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(71), reaction_R300_kkin);

% Reaction: id = R301, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R301_kkin=5.0E-5;

	reaction_R301=compartment_nucleus*function_262(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R301_kkin, compartment_nucleus, x(72));

% Reaction: id = R302, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R302_kkin=5.0E-5;

	reaction_R302=compartment_dnabound*function_263(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(73), reaction_R302_kkin);

% Reaction: id = R303, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R303_kdephos=1.0E-6;

	reaction_R303=compartment_cytoplasm*function_264(x(27), compartment_cytoplasm, x(74), reaction_R303_kdephos);

% Reaction: id = R304, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R304_kdephos=1.0E-6;

	reaction_R304=compartment_nucleus*function_265(x(27), compartment_cytoplasm, reaction_R304_kdephos, compartment_nucleus, x(75));

% Reaction: id = R305, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R305_kdephos=1.0E-6;

	reaction_R305=compartment_dnabound*function_266(x(27), compartment_cytoplasm, compartment_dnabound, x(76), reaction_R305_kdephos);

% Reaction: id = R306, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R306_kdephos=1.0E-6;

	reaction_R306=compartment_cytoplasm*function_267(x(27), compartment_cytoplasm, x(77), reaction_R306_kdephos);

% Reaction: id = R307, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R307_kdephos=1.0E-6;

	reaction_R307=compartment_nucleus*function_268(x(27), compartment_cytoplasm, reaction_R307_kdephos, compartment_nucleus, x(78));

% Reaction: id = R308, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R308_kdephos=1.0E-6;

	reaction_R308=compartment_dnabound*function_269(x(27), compartment_cytoplasm, compartment_dnabound, x(79), reaction_R308_kdephos);

% Reaction: id = R309, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R309_kkin=5.0E-5;

	reaction_R309=compartment_cytoplasm*function_270(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(80), reaction_R309_kkin);

% Reaction: id = R310, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R310_kkin=5.0E-5;

	reaction_R310=compartment_nucleus*function_271(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R310_kkin, compartment_nucleus, x(81));

% Reaction: id = R311, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R311_kkin=5.0E-5;

	reaction_R311=compartment_dnabound*function_272(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(82), reaction_R311_kkin);

% Reaction: id = R312, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R312_kkin=5.0E-5;

	reaction_R312=compartment_cytoplasm*function_273(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(83), reaction_R312_kkin);

% Reaction: id = R313, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R313_kkin=5.0E-5;

	reaction_R313=compartment_nucleus*function_274(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R313_kkin, compartment_nucleus, x(84));

% Reaction: id = R314, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R314_kkin=5.0E-5;

	reaction_R314=compartment_dnabound*function_275(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(85), reaction_R314_kkin);

% Reaction: id = R315, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R315_kdephos=1.0E-6;

	reaction_R315=compartment_cytoplasm*function_276(x(27), compartment_cytoplasm, x(86), reaction_R315_kdephos);

% Reaction: id = R316, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R316_kdephos=1.0E-6;

	reaction_R316=compartment_nucleus*function_277(x(27), compartment_cytoplasm, reaction_R316_kdephos, compartment_nucleus, x(87));

% Reaction: id = R317, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R317_kdephos=1.0E-6;

	reaction_R317=compartment_dnabound*function_278(x(27), compartment_cytoplasm, compartment_dnabound, x(88), reaction_R317_kdephos);

% Reaction: id = R318, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R318_kdephos=1.0E-6;

	reaction_R318=compartment_cytoplasm*function_279(x(27), compartment_cytoplasm, x(89), reaction_R318_kdephos);

% Reaction: id = R319, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R319_kdephos=1.0E-6;

	reaction_R319=compartment_nucleus*function_280(x(27), compartment_cytoplasm, reaction_R319_kdephos, compartment_nucleus, x(90));

% Reaction: id = R320, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R320_kdephos=1.0E-6;

	reaction_R320=compartment_dnabound*function_281(x(27), compartment_cytoplasm, compartment_dnabound, x(91), reaction_R320_kdephos);

% Reaction: id = R321, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R321_kkin=5.0E-5;

	reaction_R321=compartment_cytoplasm*function_282(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(92), reaction_R321_kkin);

% Reaction: id = R322, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R322_kkin=5.0E-5;

	reaction_R322=compartment_nucleus*function_283(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R322_kkin, compartment_nucleus, x(93));

% Reaction: id = R323, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R323_kkin=5.0E-5;

	reaction_R323=compartment_dnabound*function_284(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(94), reaction_R323_kkin);

% Reaction: id = R324, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R324_kkin=5.0E-5;

	reaction_R324=compartment_cytoplasm*function_285(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, x(95), reaction_R324_kkin);

% Reaction: id = R325, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R325_kkin=5.0E-5;

	reaction_R325=compartment_nucleus*function_286(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, reaction_R325_kkin, compartment_nucleus, x(96));

% Reaction: id = R326, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 by JNK_P	% Local Parameter:   id =  kkin, name = kkin
	reaction_R326_kkin=5.0E-5;

	reaction_R326=compartment_dnabound*function_287(x(46), global_par_by_jnk_phos_factor, compartment_cytoplasm, compartment_dnabound, x(97), reaction_R326_kkin);

% Reaction: id = R327, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R327_kdephos=1.0E-6;

	reaction_R327=compartment_cytoplasm*function_288(x(27), compartment_cytoplasm, x(98), reaction_R327_kdephos);

% Reaction: id = R328, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R328_kdephos=1.0E-6;

	reaction_R328=compartment_nucleus*function_289(x(27), compartment_cytoplasm, reaction_R328_kdephos, compartment_nucleus, x(99));

% Reaction: id = R329, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R329_kdephos=1.0E-6;

	reaction_R329=compartment_dnabound*function_290(x(27), compartment_cytoplasm, compartment_dnabound, x(100), reaction_R329_kdephos);

% Reaction: id = R330, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R330_kdephos=1.0E-6;

	reaction_R330=compartment_cytoplasm*function_291(x(27), compartment_cytoplasm, x(101), reaction_R330_kdephos);

% Reaction: id = R331, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R331_kdephos=1.0E-6;

	reaction_R331=compartment_nucleus*function_292(x(27), compartment_cytoplasm, reaction_R331_kdephos, compartment_nucleus, x(102));

% Reaction: id = R332, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R332_kdephos=1.0E-6;

	reaction_R332=compartment_dnabound*function_293(x(27), compartment_cytoplasm, compartment_dnabound, x(103), reaction_R332_kdephos);

% Reaction: id = R333, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R333_kub=1.0E-6;

	reaction_R333=compartment_cytoplasm*function_294(x(128), compartment_cytoplasm, x(56), reaction_R333_kub);

% Reaction: id = R334, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R334_kub=1.0E-6;

	reaction_R334=compartment_nucleus*function_295(x(128), compartment_cytoplasm, reaction_R334_kub, compartment_nucleus, x(57));

% Reaction: id = R335, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R335_kub=1.0E-6;

	reaction_R335=compartment_dnabound*function_296(x(128), compartment_cytoplasm, compartment_dnabound, x(58), reaction_R335_kub);

% Reaction: id = R336, name = conversion of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R336_kub=1.0E-6;

	reaction_R336=compartment_cytoplasm*function_297(x(128), compartment_cytoplasm, x(62), reaction_R336_kub);

% Reaction: id = R337, name = conversion of nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R337_kub=1.0E-6;

	reaction_R337=compartment_nucleus*function_298(x(128), compartment_cytoplasm, reaction_R337_kub, compartment_nucleus, x(63));

% Reaction: id = R338, name = conversion of dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R338_kub=1.0E-6;

	reaction_R338=compartment_dnabound*function_299(x(128), compartment_cytoplasm, compartment_dnabound, x(64), reaction_R338_kub);

% Reaction: id = R339, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R339_kub=2.2E-5;

	reaction_R339=compartment_cytoplasm*function_300(x(128), compartment_cytoplasm, x(68), reaction_R339_kub);

% Reaction: id = R340, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R340_kub=2.2E-5;

	reaction_R340=compartment_nucleus*function_301(x(128), compartment_cytoplasm, reaction_R340_kub, compartment_nucleus, x(69));

% Reaction: id = R341, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R341_kub=2.2E-5;

	reaction_R341=compartment_dnabound*function_302(x(128), compartment_cytoplasm, compartment_dnabound, x(70), reaction_R341_kub);

% Reaction: id = R342, name = conversion of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R342_kub=2.2E-5;

	reaction_R342=compartment_cytoplasm*function_303(x(128), compartment_cytoplasm, x(74), reaction_R342_kub);

% Reaction: id = R343, name = conversion of nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R343_kub=2.2E-5;

	reaction_R343=compartment_nucleus*function_304(x(128), compartment_cytoplasm, reaction_R343_kub, compartment_nucleus, x(75));

% Reaction: id = R344, name = conversion of dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R344_kub=2.2E-5;

	reaction_R344=compartment_dnabound*function_305(x(128), compartment_cytoplasm, compartment_dnabound, x(76), reaction_R344_kub);

% Reaction: id = R345, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R345_kub=3.0E-6;

	reaction_R345=compartment_cytoplasm*function_306(x(128), compartment_cytoplasm, x(80), reaction_R345_kub);

% Reaction: id = R346, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R346_kub=3.0E-6;

	reaction_R346=compartment_nucleus*function_307(x(128), compartment_cytoplasm, reaction_R346_kub, compartment_nucleus, x(81));

% Reaction: id = R347, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R347_kub=3.0E-6;

	reaction_R347=compartment_dnabound*function_308(x(128), compartment_cytoplasm, compartment_dnabound, x(82), reaction_R347_kub);

% Reaction: id = R348, name = conversion of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R348_kub=3.0E-6;

	reaction_R348=compartment_cytoplasm*function_309(x(128), compartment_cytoplasm, x(86), reaction_R348_kub);

% Reaction: id = R349, name = conversion of nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R349_kub=3.0E-6;

	reaction_R349=compartment_nucleus*function_310(x(128), compartment_cytoplasm, reaction_R349_kub, compartment_nucleus, x(87));

% Reaction: id = R350, name = conversion of dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R350_kub=3.0E-6;

	reaction_R350=compartment_dnabound*function_311(x(128), compartment_cytoplasm, compartment_dnabound, x(88), reaction_R350_kub);

% Reaction: id = R351, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R351_kub=6.6E-5;

	reaction_R351=compartment_cytoplasm*function_312(x(128), compartment_cytoplasm, x(92), reaction_R351_kub);

% Reaction: id = R352, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R352_kub=6.6E-5;

	reaction_R352=compartment_nucleus*function_313(x(128), compartment_cytoplasm, reaction_R352_kub, compartment_nucleus, x(93));

% Reaction: id = R353, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R353_kub=6.6E-5;

	reaction_R353=compartment_dnabound*function_314(x(128), compartment_cytoplasm, compartment_dnabound, x(94), reaction_R353_kub);

% Reaction: id = R354, name = conversion of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 to cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R354_kub=6.6E-5;

	reaction_R354=compartment_cytoplasm*function_315(x(128), compartment_cytoplasm, x(98), reaction_R354_kub);

% Reaction: id = R355, name = conversion of nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 to nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R355_kub=6.6E-5;

	reaction_R355=compartment_nucleus*function_316(x(128), compartment_cytoplasm, reaction_R355_kub, compartment_nucleus, x(99));

% Reaction: id = R356, name = conversion of dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 to dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R356_kub=6.6E-5;

	reaction_R356=compartment_dnabound*function_317(x(128), compartment_cytoplasm, compartment_dnabound, x(100), reaction_R356_kub);

% Reaction: id = R357, name = degradation of cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R357_kdeg=1.0E-4;

	reaction_R357=compartment_cytoplasm*function_318(x(129), compartment_cytoplasm, x(59), reaction_R357_kdeg);

% Reaction: id = R358, name = degradation of cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R358_kdeg=1.0E-4;

	reaction_R358=compartment_cytoplasm*function_319(x(129), compartment_cytoplasm, x(65), reaction_R358_kdeg);

% Reaction: id = R359, name = degradation of cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R359_kdeg=1.0E-4;

	reaction_R359=compartment_cytoplasm*function_320(x(129), compartment_cytoplasm, x(71), reaction_R359_kdeg);

% Reaction: id = R360, name = degradation of cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R360_kdeg=1.0E-4;

	reaction_R360=compartment_cytoplasm*function_321(x(129), compartment_cytoplasm, x(77), reaction_R360_kdeg);

% Reaction: id = R361, name = degradation of cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R361_kdeg=1.0E-4;

	reaction_R361=compartment_cytoplasm*function_322(x(129), compartment_cytoplasm, x(83), reaction_R361_kdeg);

% Reaction: id = R362, name = degradation of cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R362_kdeg=1.0E-4;

	reaction_R362=compartment_cytoplasm*function_323(x(129), compartment_cytoplasm, x(89), reaction_R362_kdeg);

% Reaction: id = R363, name = degradation of cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R363_kdeg=1.0E-4;

	reaction_R363=compartment_cytoplasm*function_324(x(129), compartment_cytoplasm, x(95), reaction_R363_kdeg);

% Reaction: id = R364, name = degradation of cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R364_kdeg=1.0E-4;

	reaction_R364=compartment_cytoplasm*function_325(x(129), compartment_cytoplasm, x(101), reaction_R364_kdeg);

% Reaction: id = R365, name = transcription of InR by dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R365_ktranscr=0.24;

	reaction_R365=function_326(compartment_dnabound, x(58), reaction_R365_ktranscr);

% Reaction: id = R366, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R366_ktranscr=0.95;

	reaction_R366=function_327(compartment_dnabound, x(58), reaction_R366_ktranscr);

% Reaction: id = R367, name = transcription of InR by dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R367_ktranscr=0.24;

	reaction_R367=function_328(compartment_dnabound, x(61), reaction_R367_ktranscr);

% Reaction: id = R368, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R368_ktranscr=0.95;

	reaction_R368=function_329(compartment_dnabound, x(61), reaction_R368_ktranscr);

% Reaction: id = R369, name = transcription of InR by dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R369_ktranscr=0.24;

	reaction_R369=function_330(compartment_dnabound, x(64), reaction_R369_ktranscr);

% Reaction: id = R370, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R370_ktranscr=0.95;

	reaction_R370=function_331(compartment_dnabound, x(64), reaction_R370_ktranscr);

% Reaction: id = R371, name = transcription of InR by dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R371_ktranscr=0.24;

	reaction_R371=function_332(compartment_dnabound, x(67), reaction_R371_ktranscr);

% Reaction: id = R372, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R372_ktranscr=0.95;

	reaction_R372=function_333(compartment_dnabound, x(67), reaction_R372_ktranscr);

% Reaction: id = R373, name = transcription of InR by dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R373_ktranscr=0.24;

	reaction_R373=function_334(compartment_dnabound, x(70), reaction_R373_ktranscr);

% Reaction: id = R374, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R374_ktranscr=0.95;

	reaction_R374=function_335(compartment_dnabound, x(70), reaction_R374_ktranscr);

% Reaction: id = R375, name = transcription of InR by dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R375_ktranscr=0.24;

	reaction_R375=function_336(compartment_dnabound, x(73), reaction_R375_ktranscr);

% Reaction: id = R376, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R376_ktranscr=0.95;

	reaction_R376=function_337(compartment_dnabound, x(73), reaction_R376_ktranscr);

% Reaction: id = R377, name = transcription of InR by dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R377_ktranscr=0.24;

	reaction_R377=function_338(compartment_dnabound, x(76), reaction_R377_ktranscr);

% Reaction: id = R378, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R378_ktranscr=0.95;

	reaction_R378=function_339(compartment_dnabound, x(76), reaction_R378_ktranscr);

% Reaction: id = R379, name = transcription of InR by dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R379_ktranscr=0.24;

	reaction_R379=function_340(compartment_dnabound, x(79), reaction_R379_ktranscr);

% Reaction: id = R380, name = transcription of SOD2 by dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R380_ktranscr=0.95;

	reaction_R380=function_341(compartment_dnabound, x(79), reaction_R380_ktranscr);

% Reaction: id = R381, name = transcription of InR by dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R381_ktranscr=0.24;

	reaction_R381=function_342(compartment_dnabound, x(82), reaction_R381_ktranscr);

% Reaction: id = R382, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R382_ktranscr=0.95;

	reaction_R382=function_343(compartment_dnabound, x(82), reaction_R382_ktranscr);

% Reaction: id = R383, name = transcription of InR by dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R383_ktranscr=0.24;

	reaction_R383=function_344(compartment_dnabound, x(85), reaction_R383_ktranscr);

% Reaction: id = R384, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R384_ktranscr=0.95;

	reaction_R384=function_345(compartment_dnabound, x(85), reaction_R384_ktranscr);

% Reaction: id = R385, name = transcription of InR by dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R385_ktranscr=0.24;

	reaction_R385=function_346(compartment_dnabound, x(88), reaction_R385_ktranscr);

% Reaction: id = R386, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R386_ktranscr=0.95;

	reaction_R386=function_347(compartment_dnabound, x(88), reaction_R386_ktranscr);

% Reaction: id = R387, name = transcription of InR by dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R387_ktranscr=0.24;

	reaction_R387=function_348(compartment_dnabound, x(91), reaction_R387_ktranscr);

% Reaction: id = R388, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R388_ktranscr=0.95;

	reaction_R388=function_349(compartment_dnabound, x(91), reaction_R388_ktranscr);

% Reaction: id = R389, name = transcription of InR by dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R389_ktranscr=0.24;

	reaction_R389=function_350(compartment_dnabound, x(94), reaction_R389_ktranscr);

% Reaction: id = R390, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R390_ktranscr=0.95;

	reaction_R390=function_351(compartment_dnabound, x(94), reaction_R390_ktranscr);

% Reaction: id = R391, name = transcription of InR by dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R391_ktranscr=0.24;

	reaction_R391=function_352(compartment_dnabound, x(97), reaction_R391_ktranscr);

% Reaction: id = R392, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R392_ktranscr=0.95;

	reaction_R392=function_353(compartment_dnabound, x(97), reaction_R392_ktranscr);

% Reaction: id = R393, name = transcription of InR by dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R393_ktranscr=0.24;

	reaction_R393=function_354(compartment_dnabound, x(100), reaction_R393_ktranscr);

% Reaction: id = R394, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R394_ktranscr=0.95;

	reaction_R394=function_355(compartment_dnabound, x(100), reaction_R394_ktranscr);

% Reaction: id = R395, name = transcription of InR by dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R395_ktranscr=0.24;

	reaction_R395=function_356(compartment_dnabound, x(103), reaction_R395_ktranscr);

% Reaction: id = R396, name = transcription of SOD2 by dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R396_ktranscr=0.95;

	reaction_R396=function_357(compartment_dnabound, x(103), reaction_R396_ktranscr);

% Reaction: id = R398, name = export of InR RNA	% Local Parameter:   id =  kexp, name = kexp
	reaction_R398_kexp=0.22;

	reaction_R398=function_359(reaction_R398_kexp, compartment_nucleus, x(116));

% Reaction: id = R399, name = cyto degr of InR RNA	% Local Parameter:   id =  kmdeg, name = kmdeg
	reaction_R399_kmdeg=5.622;

	reaction_R399=compartment_cytoplasm*function_360(compartment_cytoplasm, x(117), reaction_R399_kmdeg);

% Reaction: id = R400, name = translation of InR	% Local Parameter:   id =  ktransl, name = ktransl
	reaction_R400_ktransl=2.46;

	reaction_R400=compartment_cytoplasm*function_361(compartment_cytoplasm, x(117), reaction_R400_ktransl);

% Reaction: id = R401, name = degradation of InR protein	% Local Parameter:   id =  kpdeg, name = kpdeg
	reaction_R401_kpdeg=0.0044;

	reaction_R401=compartment_cytoplasm*function_362(compartment_cytoplasm, x(6), reaction_R401_kpdeg);

% Reaction: id = R403, name = export of SOD2 RNA	% Local Parameter:   id =  kexp, name = kexp
	reaction_R403_kexp=0.22;

	reaction_R403=function_363(reaction_R403_kexp, compartment_nucleus, x(118));

% Reaction: id = R404, name = cyto degr of SOD2 RNA	% Local Parameter:   id =  kmdeg, name = kmdeg
	reaction_R404_kmdeg=5.622;

	reaction_R404=compartment_cytoplasm*function_364(compartment_cytoplasm, x(119), reaction_R404_kmdeg);

% Reaction: id = R405, name = translation of SOD2	% Local Parameter:   id =  ktransl, name = ktransl
	reaction_R405_ktransl=1.23;

	reaction_R405=compartment_cytoplasm*function_365(compartment_cytoplasm, x(119), reaction_R405_ktransl);

% Reaction: id = R406, name = degradation of SOD2 protein	% Local Parameter:   id =  kpdeg, name = kpdeg
	reaction_R406_kpdeg=0.0019;

	reaction_R406=compartment_cytoplasm*function_366(compartment_cytoplasm, x(35), reaction_R406_kpdeg);

% Species:   id = NULL, name = NULL, constant	const_species_NULL=0.0;

% Species:   id = extracellular_ROS, name = extracellular_ROS, constant	const_species_extracellular_ROS=0.0;

% Species:   id = Mt, name = Mt, constant	const_species_Mt=50.0;

% Species:   id = null, name = null, constant	const_species_null=0.0;

%Event: id=event_1
	event_event_1=time > 0;

	if(event_event_1) 
		x(1)=500000;
	end

%Event: id=event_2
	event_event_2=time >= 2785;

	if(event_event_2) 
		x(1)=500000;
	end

%Event: id=event_3
	event_event_3=time > 15;

	if(event_event_3) 
		x(1)=0;
	end

%Event: id=event_4
	event_event_4=time > 2800;

	if(event_event_4) 
		x(1)=0;
	end

	xdot=zeros(129,1);
	
% Species:   id = Ins, name = Ins	xdot(1) = ;
	
% Species:   id = InR, name = InR, affected by kineticLaw
	xdot(2) = (1/(compartment_cellsurface))*((-1.0 * reaction_R1f) + ( 1.0 * reaction_R1r) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5f) + ( 1.0 * reaction_R5r));
	
% Species:   id = Ins_InR, name = Ins_InR, affected by kineticLaw
	xdot(3) = (1/(compartment_cellsurface))*(( 1.0 * reaction_R1f) + (-1.0 * reaction_R1r) + (-1.0 * reaction_R2));
	
% Species:   id = Ins_InR_P, name = Ins_InR_P, affected by kineticLaw
	xdot(4) = (1/(compartment_cellsurface))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3f) + ( 1.0 * reaction_R3r) + (-1.0 * reaction_R4) + (-1.0 * reaction_R7f) + ( 1.0 * reaction_R7r));
	
% Species:   id = Ins_2_InR_P, name = Ins_2_InR_P, affected by kineticLaw
	xdot(5) = (1/(compartment_cellsurface))*(( 1.0 * reaction_R3f) + (-1.0 * reaction_R3r) + (-1.0 * reaction_R6f) + ( 1.0 * reaction_R6r));
	
% Species:   id = cytoplasm_InR, name = cytoplasm_InR, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R5f) + (-1.0 * reaction_R5r) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R400) + (-1.0 * reaction_R401));
	
% Species:   id = cytoplasm_Ins_2_InR_P, name = cytoplasm_Ins_2_InR_P, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R6f) + (-1.0 * reaction_R6r) + (-1.0 * reaction_R10));
	
% Species:   id = cytoplasm_Ins_InR_P, name = cytoplasm_Ins_InR_P, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R7f) + (-1.0 * reaction_R7r) + (-1.0 * reaction_R11));
	
% Species:   id = InR_tot, name = InR_tot, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = InR_bound, name = InR_bound, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = InR_active, name = InR_active, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = PTP1B, name = PTP1B, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R30f) + ( 1.0 * reaction_R30r));
	
% Species:   id = IRS1_TyrP_PI3K, name = IRS1_TyrP_PI3K, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R13f) + (-1.0 * reaction_R13r));
	
% Species:   id = PI345P3, name = PI345P3, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R14f) + (-1.0 * reaction_R14r));
	
% Species:   id = PIP2, name = PIP2, affected by kineticLaw
	xdot(15) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R14f) + ( 1.0 * reaction_R14r));
	
% Species:   id = PI345P3_mol, name = PI345P3_mol, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = PIP2_mol, name = PIP2_mol, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(18) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R16f) + ( 1.0 * reaction_R16r));
	
% Species:   id = Akt_P2, name = Akt_P2, affected by kineticLaw
	xdot(19) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R16f) + (-1.0 * reaction_R16r));
	
% Species:   id = PKC, name = PKC, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R17f) + ( 1.0 * reaction_R17r));
	
% Species:   id = PKC_P, name = PKC_P, affected by kineticLaw
	xdot(21) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R17f) + (-1.0 * reaction_R17r));
	
% Species:   id = AS160, name = AS160, affected by kineticLaw
	xdot(22) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R16a_f) + ( 1.0 * reaction_R16a_r));
	
% Species:   id = AS160_P, name = AS160_P, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R16a_f) + (-1.0 * reaction_R16a_r));
	
% Species:   id = cytoplasm_GLUT4, name = cytoplasm_GLUT4, affected by kineticLaw
	xdot(24) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R20f) + ( 1.0 * reaction_R20r));
	
% Species:   id = cellsurface_GLUT4, name = cellsurface_GLUT4, affected by kineticLaw
	xdot(25) = (1/(compartment_cellsurface))*(( 1.0 * reaction_R20f) + (-1.0 * reaction_R20r));
	
% Species:   id = PTEN, name = PTEN, affected by kineticLaw
	xdot(26) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R31f) + ( 1.0 * reaction_R31r));
	
% Species:   id = PP2A, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = PTP1B_ox, name = PTP1B_ox, affected by kineticLaw
	xdot(28) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R30f) + (-1.0 * reaction_R30r));
	
% Species:   id = PTP1B_plus_PTP1B_ox, name = PTP1B_plus_PTP1B_ox, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = PTEN_ox, name = PTEN_ox, affected by kineticLaw
	xdot(30) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R31f) + (-1.0 * reaction_R31r));
	
% Species:   id = PTEN_plus_PTEN_ox, name = PTEN_plus_PTEN_ox, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(32) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R30f) + ( 1.0 * reaction_R30f) + (-1.0 * reaction_R31f) + ( 1.0 * reaction_R31f) + ( 1.0 * reaction_R35f) + (-1.0 * reaction_R35r) + ( 1.0 * reaction_R36f) + ( 1.0 * reaction_R37f) + (-1.0 * reaction_R37r) + (-1.0 * reaction_R32f) + ( 1.0 * reaction_R32f));
	
% Species:   id = GSH, name = GSH, affected by kineticLaw
	xdot(33) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R30r) + ( 1.0 * reaction_R30r) + (-1.0 * reaction_R31r) + ( 1.0 * reaction_R31r) + (-1.0 * reaction_R38f) + ( 1.0 * reaction_R38r) + (-1.0 * reaction_R32r) + ( 1.0 * reaction_R32r));
	
% Species:   id = GSSG, name = GSSG, affected by kineticLaw
	xdot(34) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R38f) + (-1.0 * reaction_R38r));
	
% Species:   id = cytoplasm_SOD2, name = cytoplasm_SOD2, affected by kineticLaw
	xdot(35) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R35r) + ( 1.0 * reaction_R35r) + ( 1.0 * reaction_R405) + (-1.0 * reaction_R406));
	
% Species:   id = NOX_inact, name = NOX_inact, affected by kineticLaw
	xdot(36) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R34f) + ( 1.0 * reaction_R34r2) + ( 1.0 * reaction_R34r3));
	
% Species:   id = NOX, name = NOX, affected by kineticLaw
	xdot(37) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R34f) + (-1.0 * reaction_R34r1) + (-1.0 * reaction_R34r2) + (-1.0 * reaction_R35f) + ( 1.0 * reaction_R35f));
	
% Species:   id = NOX_deact, name = NOX_deact, affected by kineticLaw
	xdot(38) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R34r1) + (-1.0 * reaction_R34r3));
	
% Species:   id = NOX_total, name = NOX_total, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = IRS1, name = IRS1, affected by kineticLaw
	xdot(40) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R12f) + ( 1.0 * reaction_R12r) + (-1.0 * reaction_R12_a_f) + ( 1.0 * reaction_R12_a_r) + ( 1.0 * reaction_R50f) + (-1.0 * reaction_R50r1) + (-1.0 * reaction_R51f) + (-1.0 * reaction_R52f));
	
% Species:   id = IRS1_TyrP, name = IRS1_TyrP, affected by kineticLaw
	xdot(41) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R12f) + (-1.0 * reaction_R12r) + (-1.0 * reaction_R12_b_f) + ( 1.0 * reaction_R12_b_r) + (-1.0 * reaction_R13f) + ( 1.0 * reaction_R13r) + (-1.0 * reaction_R50r2));
	
% Species:   id = IRS1_PolySerP, name = IRS1_PolySerP, affected by kineticLaw
	xdot(42) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R12_a_f) + (-1.0 * reaction_R12_a_r) + (-1.0 * reaction_R50r3) + ( 1.0 * reaction_R51f) + ( 1.0 * reaction_R52f));
	
% Species:   id = IRS1_TyrP_PolySerP, name = IRS1_TyrP_PolySerP, affected by kineticLaw
	xdot(43) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R12_b_f) + (-1.0 * reaction_R12_b_r) + (-1.0 * reaction_R50r4));
	
% Species:   id = IRS_total, name = IRS_total, involved in a rule 	xdot(44) = x(44);
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(45) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R13f) + ( 1.0 * reaction_R13r));
	
% Species:   id = JNK_P, name = JNK_P, affected by kineticLaw
	xdot(46) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R42f) + (-1.0 * reaction_R42r));
	
% Species:   id = IKK_P, name = IKK_P, affected by kineticLaw
	xdot(47) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R43f) + (-1.0 * reaction_R43r));
	
% Species:   id = JNK, name = JNK, affected by kineticLaw
	xdot(48) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R42f) + ( 1.0 * reaction_R42r));
	
% Species:   id = JNK_plus_JNK_P, name = JNK_plus_JNK_P, involved in a rule 	xdot(49) = x(49);
	
% Species:   id = IKK, name = IKK, affected by kineticLaw
	xdot(50) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R43f) + ( 1.0 * reaction_R43r));
	
% Species:   id = IKK_plus_IKK_P, name = IKK_plus_IKK_P, involved in a rule 	xdot(51) = x(51);
	
% Species:   id = DUSP, name = DUSP, affected by kineticLaw
	xdot(52) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R32f) + ( 1.0 * reaction_R32r));
	
% Species:   id = DUSP_ox, name = DUSP_ox, affected by kineticLaw
	xdot(53) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R32f) + (-1.0 * reaction_R32r));
	
% Species:   id = DUSP_plus_DUSP_ox, name = DUSP_plus_DUSP_ox, involved in a rule 	xdot(54) = x(54);
	
% Species:   id = degr_Foxo1, name = degr_Foxo1, affected by kineticLaw
	xdot(55) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R357) + ( 1.0 * reaction_R358) + ( 1.0 * reaction_R359) + ( 1.0 * reaction_R360) + ( 1.0 * reaction_R361) + ( 1.0 * reaction_R362) + ( 1.0 * reaction_R363) + ( 1.0 * reaction_R364));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, name = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(56) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R100) + (-1.0 * reaction_R101) + ( 1.0 * reaction_R102) + (-1.0 * reaction_R165) + (-1.0 * reaction_R189) + ( 1.0 * reaction_R213) + (-1.0 * reaction_R237) + ( 1.0 * reaction_R249) + (-1.0 * reaction_R285) + ( 1.0 * reaction_R291) + (-1.0 * reaction_R333));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0, name = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(57) = (1/(compartment_nucleus))*(( 1.0 * reaction_R101) + (-1.0 * reaction_R102) + (-1.0 * reaction_R103) + ( 1.0 * reaction_R104) + (-1.0 * reaction_R166) + (-1.0 * reaction_R190) + ( 1.0 * reaction_R214) + (-1.0 * reaction_R238) + ( 1.0 * reaction_R250) + (-1.0 * reaction_R286) + ( 1.0 * reaction_R292) + (-1.0 * reaction_R334));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, name = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(58) = (1/(compartment_dnabound))*(( 1.0 * reaction_R103) + (-1.0 * reaction_R104) + (-1.0 * reaction_R167) + (-1.0 * reaction_R191) + ( 1.0 * reaction_R215) + (-1.0 * reaction_R239) + ( 1.0 * reaction_R251) + (-1.0 * reaction_R287) + ( 1.0 * reaction_R293) + (-1.0 * reaction_R335));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, name = cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(59) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R105) + ( 1.0 * reaction_R106) + (-1.0 * reaction_R168) + (-1.0 * reaction_R192) + ( 1.0 * reaction_R216) + (-1.0 * reaction_R240) + ( 1.0 * reaction_R252) + (-1.0 * reaction_R288) + ( 1.0 * reaction_R294) + ( 1.0 * reaction_R333) + (-1.0 * reaction_R357));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1, name = nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(60) = (1/(compartment_nucleus))*(( 1.0 * reaction_R105) + (-1.0 * reaction_R106) + (-1.0 * reaction_R107) + ( 1.0 * reaction_R108) + (-1.0 * reaction_R169) + (-1.0 * reaction_R193) + ( 1.0 * reaction_R217) + (-1.0 * reaction_R241) + ( 1.0 * reaction_R253) + (-1.0 * reaction_R289) + ( 1.0 * reaction_R295) + ( 1.0 * reaction_R334));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, name = dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(61) = (1/(compartment_dnabound))*(( 1.0 * reaction_R107) + (-1.0 * reaction_R108) + (-1.0 * reaction_R170) + (-1.0 * reaction_R194) + ( 1.0 * reaction_R218) + (-1.0 * reaction_R242) + ( 1.0 * reaction_R254) + (-1.0 * reaction_R290) + ( 1.0 * reaction_R296) + ( 1.0 * reaction_R335));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, name = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(62) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R109) + ( 1.0 * reaction_R110) + (-1.0 * reaction_R171) + (-1.0 * reaction_R195) + ( 1.0 * reaction_R219) + (-1.0 * reaction_R243) + ( 1.0 * reaction_R255) + ( 1.0 * reaction_R285) + (-1.0 * reaction_R291) + (-1.0 * reaction_R336));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0, name = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(63) = (1/(compartment_nucleus))*(( 1.0 * reaction_R109) + (-1.0 * reaction_R110) + (-1.0 * reaction_R111) + ( 1.0 * reaction_R112) + (-1.0 * reaction_R172) + (-1.0 * reaction_R196) + ( 1.0 * reaction_R220) + (-1.0 * reaction_R244) + ( 1.0 * reaction_R256) + ( 1.0 * reaction_R286) + (-1.0 * reaction_R292) + (-1.0 * reaction_R337));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, name = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(64) = (1/(compartment_dnabound))*(( 1.0 * reaction_R111) + (-1.0 * reaction_R112) + (-1.0 * reaction_R173) + (-1.0 * reaction_R197) + ( 1.0 * reaction_R221) + (-1.0 * reaction_R245) + ( 1.0 * reaction_R257) + ( 1.0 * reaction_R287) + (-1.0 * reaction_R293) + (-1.0 * reaction_R338));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, name = cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(65) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R113) + ( 1.0 * reaction_R114) + (-1.0 * reaction_R174) + (-1.0 * reaction_R198) + ( 1.0 * reaction_R222) + (-1.0 * reaction_R246) + ( 1.0 * reaction_R258) + ( 1.0 * reaction_R288) + (-1.0 * reaction_R294) + ( 1.0 * reaction_R336) + (-1.0 * reaction_R358));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1, name = nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(66) = (1/(compartment_nucleus))*(( 1.0 * reaction_R113) + (-1.0 * reaction_R114) + (-1.0 * reaction_R115) + ( 1.0 * reaction_R116) + (-1.0 * reaction_R175) + (-1.0 * reaction_R199) + ( 1.0 * reaction_R223) + (-1.0 * reaction_R247) + ( 1.0 * reaction_R259) + ( 1.0 * reaction_R289) + (-1.0 * reaction_R295) + ( 1.0 * reaction_R337));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, name = dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(67) = (1/(compartment_dnabound))*(( 1.0 * reaction_R115) + (-1.0 * reaction_R116) + (-1.0 * reaction_R176) + (-1.0 * reaction_R200) + ( 1.0 * reaction_R224) + (-1.0 * reaction_R248) + ( 1.0 * reaction_R260) + ( 1.0 * reaction_R290) + (-1.0 * reaction_R296) + ( 1.0 * reaction_R338));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, name = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(68) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R117) + ( 1.0 * reaction_R118) + (-1.0 * reaction_R177) + (-1.0 * reaction_R201) + ( 1.0 * reaction_R225) + ( 1.0 * reaction_R237) + (-1.0 * reaction_R249) + (-1.0 * reaction_R297) + ( 1.0 * reaction_R303) + (-1.0 * reaction_R339));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0, name = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(69) = (1/(compartment_nucleus))*(( 1.0 * reaction_R117) + (-1.0 * reaction_R118) + (-1.0 * reaction_R119) + ( 1.0 * reaction_R120) + (-1.0 * reaction_R178) + (-1.0 * reaction_R202) + ( 1.0 * reaction_R226) + ( 1.0 * reaction_R238) + (-1.0 * reaction_R250) + (-1.0 * reaction_R298) + ( 1.0 * reaction_R304) + (-1.0 * reaction_R340));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, name = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(70) = (1/(compartment_dnabound))*(( 1.0 * reaction_R119) + (-1.0 * reaction_R120) + (-1.0 * reaction_R179) + (-1.0 * reaction_R203) + ( 1.0 * reaction_R227) + ( 1.0 * reaction_R239) + (-1.0 * reaction_R251) + (-1.0 * reaction_R299) + ( 1.0 * reaction_R305) + (-1.0 * reaction_R341));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, name = cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(71) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R121) + ( 1.0 * reaction_R122) + (-1.0 * reaction_R180) + (-1.0 * reaction_R204) + ( 1.0 * reaction_R228) + ( 1.0 * reaction_R240) + (-1.0 * reaction_R252) + (-1.0 * reaction_R300) + ( 1.0 * reaction_R306) + ( 1.0 * reaction_R339) + (-1.0 * reaction_R359));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1, name = nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(72) = (1/(compartment_nucleus))*(( 1.0 * reaction_R121) + (-1.0 * reaction_R122) + (-1.0 * reaction_R123) + ( 1.0 * reaction_R124) + (-1.0 * reaction_R181) + (-1.0 * reaction_R205) + ( 1.0 * reaction_R229) + ( 1.0 * reaction_R241) + (-1.0 * reaction_R253) + (-1.0 * reaction_R301) + ( 1.0 * reaction_R307) + ( 1.0 * reaction_R340));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, name = dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(73) = (1/(compartment_dnabound))*(( 1.0 * reaction_R123) + (-1.0 * reaction_R124) + (-1.0 * reaction_R182) + (-1.0 * reaction_R206) + ( 1.0 * reaction_R230) + ( 1.0 * reaction_R242) + (-1.0 * reaction_R254) + (-1.0 * reaction_R302) + ( 1.0 * reaction_R308) + ( 1.0 * reaction_R341));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, name = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(74) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R125) + ( 1.0 * reaction_R126) + (-1.0 * reaction_R183) + (-1.0 * reaction_R207) + ( 1.0 * reaction_R231) + ( 1.0 * reaction_R243) + (-1.0 * reaction_R255) + ( 1.0 * reaction_R297) + (-1.0 * reaction_R303) + (-1.0 * reaction_R342));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0, name = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(75) = (1/(compartment_nucleus))*(( 1.0 * reaction_R125) + (-1.0 * reaction_R126) + (-1.0 * reaction_R127) + ( 1.0 * reaction_R128) + (-1.0 * reaction_R184) + (-1.0 * reaction_R208) + ( 1.0 * reaction_R232) + ( 1.0 * reaction_R244) + (-1.0 * reaction_R256) + ( 1.0 * reaction_R298) + (-1.0 * reaction_R304) + (-1.0 * reaction_R343));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, name = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(76) = (1/(compartment_dnabound))*(( 1.0 * reaction_R127) + (-1.0 * reaction_R128) + (-1.0 * reaction_R185) + (-1.0 * reaction_R209) + ( 1.0 * reaction_R233) + ( 1.0 * reaction_R245) + (-1.0 * reaction_R257) + ( 1.0 * reaction_R299) + (-1.0 * reaction_R305) + (-1.0 * reaction_R344));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, name = cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(77) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R129) + ( 1.0 * reaction_R130) + (-1.0 * reaction_R186) + (-1.0 * reaction_R210) + ( 1.0 * reaction_R234) + ( 1.0 * reaction_R246) + (-1.0 * reaction_R258) + ( 1.0 * reaction_R300) + (-1.0 * reaction_R306) + ( 1.0 * reaction_R342) + (-1.0 * reaction_R360));
	
% Species:   id = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1, name = nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(78) = (1/(compartment_nucleus))*(( 1.0 * reaction_R129) + (-1.0 * reaction_R130) + (-1.0 * reaction_R131) + ( 1.0 * reaction_R132) + (-1.0 * reaction_R187) + (-1.0 * reaction_R211) + ( 1.0 * reaction_R235) + ( 1.0 * reaction_R247) + (-1.0 * reaction_R259) + ( 1.0 * reaction_R301) + (-1.0 * reaction_R307) + ( 1.0 * reaction_R343));
	
% Species:   id = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, name = dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(79) = (1/(compartment_dnabound))*(( 1.0 * reaction_R131) + (-1.0 * reaction_R132) + (-1.0 * reaction_R188) + (-1.0 * reaction_R212) + ( 1.0 * reaction_R236) + ( 1.0 * reaction_R248) + (-1.0 * reaction_R260) + ( 1.0 * reaction_R302) + (-1.0 * reaction_R308) + ( 1.0 * reaction_R344));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, name = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(80) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R133) + ( 1.0 * reaction_R134) + ( 1.0 * reaction_R165) + ( 1.0 * reaction_R189) + (-1.0 * reaction_R213) + (-1.0 * reaction_R261) + ( 1.0 * reaction_R273) + (-1.0 * reaction_R309) + ( 1.0 * reaction_R315) + (-1.0 * reaction_R345));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0, name = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(81) = (1/(compartment_nucleus))*(( 1.0 * reaction_R133) + (-1.0 * reaction_R134) + (-1.0 * reaction_R135) + ( 1.0 * reaction_R136) + ( 1.0 * reaction_R166) + ( 1.0 * reaction_R190) + (-1.0 * reaction_R214) + (-1.0 * reaction_R262) + ( 1.0 * reaction_R274) + (-1.0 * reaction_R310) + ( 1.0 * reaction_R316) + (-1.0 * reaction_R346));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, name = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, affected by kineticLaw
	xdot(82) = (1/(compartment_dnabound))*(( 1.0 * reaction_R135) + (-1.0 * reaction_R136) + ( 1.0 * reaction_R167) + ( 1.0 * reaction_R191) + (-1.0 * reaction_R215) + (-1.0 * reaction_R263) + ( 1.0 * reaction_R275) + (-1.0 * reaction_R311) + ( 1.0 * reaction_R317) + (-1.0 * reaction_R347));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, name = cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(83) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R137) + ( 1.0 * reaction_R138) + ( 1.0 * reaction_R168) + ( 1.0 * reaction_R192) + (-1.0 * reaction_R216) + (-1.0 * reaction_R264) + ( 1.0 * reaction_R276) + (-1.0 * reaction_R312) + ( 1.0 * reaction_R318) + ( 1.0 * reaction_R345) + (-1.0 * reaction_R361));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1, name = nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(84) = (1/(compartment_nucleus))*(( 1.0 * reaction_R137) + (-1.0 * reaction_R138) + (-1.0 * reaction_R139) + ( 1.0 * reaction_R140) + ( 1.0 * reaction_R169) + ( 1.0 * reaction_R193) + (-1.0 * reaction_R217) + (-1.0 * reaction_R265) + ( 1.0 * reaction_R277) + (-1.0 * reaction_R313) + ( 1.0 * reaction_R319) + ( 1.0 * reaction_R346));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, name = dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, affected by kineticLaw
	xdot(85) = (1/(compartment_dnabound))*(( 1.0 * reaction_R139) + (-1.0 * reaction_R140) + ( 1.0 * reaction_R170) + ( 1.0 * reaction_R194) + (-1.0 * reaction_R218) + (-1.0 * reaction_R266) + ( 1.0 * reaction_R278) + (-1.0 * reaction_R314) + ( 1.0 * reaction_R320) + ( 1.0 * reaction_R347));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, name = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(86) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R141) + ( 1.0 * reaction_R142) + ( 1.0 * reaction_R171) + ( 1.0 * reaction_R195) + (-1.0 * reaction_R219) + (-1.0 * reaction_R267) + ( 1.0 * reaction_R279) + ( 1.0 * reaction_R309) + (-1.0 * reaction_R315) + (-1.0 * reaction_R348));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0, name = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(87) = (1/(compartment_nucleus))*(( 1.0 * reaction_R141) + (-1.0 * reaction_R142) + (-1.0 * reaction_R143) + ( 1.0 * reaction_R144) + ( 1.0 * reaction_R172) + ( 1.0 * reaction_R196) + (-1.0 * reaction_R220) + (-1.0 * reaction_R268) + ( 1.0 * reaction_R280) + ( 1.0 * reaction_R310) + (-1.0 * reaction_R316) + (-1.0 * reaction_R349));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, name = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, affected by kineticLaw
	xdot(88) = (1/(compartment_dnabound))*(( 1.0 * reaction_R143) + (-1.0 * reaction_R144) + ( 1.0 * reaction_R173) + ( 1.0 * reaction_R197) + (-1.0 * reaction_R221) + (-1.0 * reaction_R269) + ( 1.0 * reaction_R281) + ( 1.0 * reaction_R311) + (-1.0 * reaction_R317) + (-1.0 * reaction_R350));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, name = cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(89) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R145) + ( 1.0 * reaction_R146) + ( 1.0 * reaction_R174) + ( 1.0 * reaction_R198) + (-1.0 * reaction_R222) + (-1.0 * reaction_R270) + ( 1.0 * reaction_R282) + ( 1.0 * reaction_R312) + (-1.0 * reaction_R318) + ( 1.0 * reaction_R348) + (-1.0 * reaction_R362));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1, name = nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(90) = (1/(compartment_nucleus))*(( 1.0 * reaction_R145) + (-1.0 * reaction_R146) + (-1.0 * reaction_R147) + ( 1.0 * reaction_R148) + ( 1.0 * reaction_R175) + ( 1.0 * reaction_R199) + (-1.0 * reaction_R223) + (-1.0 * reaction_R271) + ( 1.0 * reaction_R283) + ( 1.0 * reaction_R313) + (-1.0 * reaction_R319) + ( 1.0 * reaction_R349));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, name = dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, affected by kineticLaw
	xdot(91) = (1/(compartment_dnabound))*(( 1.0 * reaction_R147) + (-1.0 * reaction_R148) + ( 1.0 * reaction_R176) + ( 1.0 * reaction_R200) + (-1.0 * reaction_R224) + (-1.0 * reaction_R272) + ( 1.0 * reaction_R284) + ( 1.0 * reaction_R314) + (-1.0 * reaction_R320) + ( 1.0 * reaction_R350));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, name = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(92) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R149) + ( 1.0 * reaction_R150) + ( 1.0 * reaction_R177) + ( 1.0 * reaction_R201) + (-1.0 * reaction_R225) + ( 1.0 * reaction_R261) + (-1.0 * reaction_R273) + (-1.0 * reaction_R321) + ( 1.0 * reaction_R327) + (-1.0 * reaction_R351));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0, name = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(93) = (1/(compartment_nucleus))*(( 1.0 * reaction_R149) + (-1.0 * reaction_R150) + (-1.0 * reaction_R151) + ( 1.0 * reaction_R152) + ( 1.0 * reaction_R178) + ( 1.0 * reaction_R202) + (-1.0 * reaction_R226) + ( 1.0 * reaction_R262) + (-1.0 * reaction_R274) + (-1.0 * reaction_R322) + ( 1.0 * reaction_R328) + (-1.0 * reaction_R352));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, name = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, affected by kineticLaw
	xdot(94) = (1/(compartment_dnabound))*(( 1.0 * reaction_R151) + (-1.0 * reaction_R152) + ( 1.0 * reaction_R179) + ( 1.0 * reaction_R203) + (-1.0 * reaction_R227) + ( 1.0 * reaction_R263) + (-1.0 * reaction_R275) + (-1.0 * reaction_R323) + ( 1.0 * reaction_R329) + (-1.0 * reaction_R353));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, name = cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(95) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R153) + ( 1.0 * reaction_R154) + ( 1.0 * reaction_R180) + ( 1.0 * reaction_R204) + (-1.0 * reaction_R228) + ( 1.0 * reaction_R264) + (-1.0 * reaction_R276) + (-1.0 * reaction_R324) + ( 1.0 * reaction_R330) + ( 1.0 * reaction_R351) + (-1.0 * reaction_R363));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1, name = nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(96) = (1/(compartment_nucleus))*(( 1.0 * reaction_R153) + (-1.0 * reaction_R154) + (-1.0 * reaction_R155) + ( 1.0 * reaction_R156) + ( 1.0 * reaction_R181) + ( 1.0 * reaction_R205) + (-1.0 * reaction_R229) + ( 1.0 * reaction_R265) + (-1.0 * reaction_R277) + (-1.0 * reaction_R325) + ( 1.0 * reaction_R331) + ( 1.0 * reaction_R352));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, name = dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, affected by kineticLaw
	xdot(97) = (1/(compartment_dnabound))*(( 1.0 * reaction_R155) + (-1.0 * reaction_R156) + ( 1.0 * reaction_R182) + ( 1.0 * reaction_R206) + (-1.0 * reaction_R230) + ( 1.0 * reaction_R266) + (-1.0 * reaction_R278) + (-1.0 * reaction_R326) + ( 1.0 * reaction_R332) + ( 1.0 * reaction_R353));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, name = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(98) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R157) + ( 1.0 * reaction_R158) + ( 1.0 * reaction_R183) + ( 1.0 * reaction_R207) + (-1.0 * reaction_R231) + ( 1.0 * reaction_R267) + (-1.0 * reaction_R279) + ( 1.0 * reaction_R321) + (-1.0 * reaction_R327) + (-1.0 * reaction_R354));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0, name = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(99) = (1/(compartment_nucleus))*(( 1.0 * reaction_R157) + (-1.0 * reaction_R158) + (-1.0 * reaction_R159) + ( 1.0 * reaction_R160) + ( 1.0 * reaction_R184) + ( 1.0 * reaction_R208) + (-1.0 * reaction_R232) + ( 1.0 * reaction_R268) + (-1.0 * reaction_R280) + ( 1.0 * reaction_R322) + (-1.0 * reaction_R328) + (-1.0 * reaction_R355));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, name = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, affected by kineticLaw
	xdot(100) = (1/(compartment_dnabound))*(( 1.0 * reaction_R159) + (-1.0 * reaction_R160) + ( 1.0 * reaction_R185) + ( 1.0 * reaction_R209) + (-1.0 * reaction_R233) + ( 1.0 * reaction_R269) + (-1.0 * reaction_R281) + ( 1.0 * reaction_R323) + (-1.0 * reaction_R329) + (-1.0 * reaction_R356));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, name = cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(101) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R161) + ( 1.0 * reaction_R162) + ( 1.0 * reaction_R186) + ( 1.0 * reaction_R210) + (-1.0 * reaction_R234) + ( 1.0 * reaction_R270) + (-1.0 * reaction_R282) + ( 1.0 * reaction_R324) + (-1.0 * reaction_R330) + ( 1.0 * reaction_R354) + (-1.0 * reaction_R364));
	
% Species:   id = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1, name = nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(102) = (1/(compartment_nucleus))*(( 1.0 * reaction_R161) + (-1.0 * reaction_R162) + (-1.0 * reaction_R163) + ( 1.0 * reaction_R164) + ( 1.0 * reaction_R187) + ( 1.0 * reaction_R211) + (-1.0 * reaction_R235) + ( 1.0 * reaction_R271) + (-1.0 * reaction_R283) + ( 1.0 * reaction_R325) + (-1.0 * reaction_R331) + ( 1.0 * reaction_R355));
	
% Species:   id = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, name = dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, affected by kineticLaw
	xdot(103) = (1/(compartment_dnabound))*(( 1.0 * reaction_R163) + (-1.0 * reaction_R164) + ( 1.0 * reaction_R188) + ( 1.0 * reaction_R212) + (-1.0 * reaction_R236) + ( 1.0 * reaction_R272) + (-1.0 * reaction_R284) + ( 1.0 * reaction_R326) + (-1.0 * reaction_R332) + ( 1.0 * reaction_R356));
	
% Species:   id = Foxo1_Pa0_tot, name = Foxo1_Pa0_tot, involved in a rule 	xdot(104) = x(104);
	
% Species:   id = Foxo1_Pa1_tot, name = Foxo1_Pa1_tot, involved in a rule 	xdot(105) = x(105);
	
% Species:   id = Foxo1_Pd0_tot, name = Foxo1_Pd0_tot, involved in a rule 	xdot(106) = x(106);
	
% Species:   id = Foxo1_Pd1_tot, name = Foxo1_Pd1_tot, involved in a rule 	xdot(107) = x(107);
	
% Species:   id = Foxo1_Pe0_tot, name = Foxo1_Pe0_tot, involved in a rule 	xdot(108) = x(108);
	
% Species:   id = Foxo1_Pe1_tot, name = Foxo1_Pe1_tot, involved in a rule 	xdot(109) = x(109);
	
% Species:   id = Foxo1_pUb0_tot, name = Foxo1_pUb0_tot, involved in a rule 	xdot(110) = x(110);
	
% Species:   id = Foxo1_pUb1_tot, name = Foxo1_pUb1_tot, involved in a rule 	xdot(111) = x(111);
	
% Species:   id = cytoplasm_Foxo1_tot, name = cytoplasm_Foxo1_tot, involved in a rule 	xdot(112) = x(112);
	
% Species:   id = nucleus_Foxo1_tot, name = nucleus_Foxo1_tot, involved in a rule 	xdot(113) = x(113);
	
% Species:   id = dnabound_Foxo1_tot, name = dnabound_Foxo1_tot, involved in a rule 	xdot(114) = x(114);
	
% Species:   id = Foxo1_all, name = Foxo1_all, involved in a rule 	xdot(115) = x(115);
	
% Species:   id = nucleus_RNA_InR, name = nucleus_RNA_InR, affected by kineticLaw
	xdot(116) = (1/(compartment_nucleus))*(( 1.0 * reaction_R365) + ( 1.0 * reaction_R367) + ( 1.0 * reaction_R369) + ( 1.0 * reaction_R371) + ( 1.0 * reaction_R373) + ( 1.0 * reaction_R375) + ( 1.0 * reaction_R377) + ( 1.0 * reaction_R379) + ( 1.0 * reaction_R381) + ( 1.0 * reaction_R383) + ( 1.0 * reaction_R385) + ( 1.0 * reaction_R387) + ( 1.0 * reaction_R389) + ( 1.0 * reaction_R391) + ( 1.0 * reaction_R393) + ( 1.0 * reaction_R395) + ( 1.0 * reaction_R397) + (-1.0 * reaction_R398));
	
% Species:   id = cytoplasm_RNA_InR, name = cytoplasm_RNA_InR, affected by kineticLaw
	xdot(117) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R398) + (-1.0 * reaction_R399));
	
% Species:   id = nucleus_RNA_SOD2, name = nucleus_RNA_SOD2, affected by kineticLaw
	xdot(118) = (1/(compartment_nucleus))*(( 1.0 * reaction_R366) + ( 1.0 * reaction_R368) + ( 1.0 * reaction_R370) + ( 1.0 * reaction_R372) + ( 1.0 * reaction_R374) + ( 1.0 * reaction_R376) + ( 1.0 * reaction_R378) + ( 1.0 * reaction_R380) + ( 1.0 * reaction_R382) + ( 1.0 * reaction_R384) + ( 1.0 * reaction_R386) + ( 1.0 * reaction_R388) + ( 1.0 * reaction_R390) + ( 1.0 * reaction_R392) + ( 1.0 * reaction_R394) + ( 1.0 * reaction_R396) + ( 1.0 * reaction_R402) + (-1.0 * reaction_R403));
	
% Species:   id = cytoplasm_RNA_SOD2, name = cytoplasm_RNA_SOD2, affected by kineticLaw
	xdot(119) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R403) + (-1.0 * reaction_R404));
	
% Species:   id = E2F1, name = E2F1
% Warning species is not changed by either rules or reactions
	xdot(120) = ;
	
% Species:   id = SGK, name = SGK
% Warning species is not changed by either rules or reactions
	xdot(121) = ;
	
% Species:   id = CDK2, name = CDK2
% Warning species is not changed by either rules or reactions
	xdot(122) = ;
	
% Species:   id = AMPK, name = AMPK
% Warning species is not changed by either rules or reactions
	xdot(123) = ;
	
% Species:   id = CBPP300, name = CBPP300
% Warning species is not changed by either rules or reactions
	xdot(124) = ;
	
% Species:   id = SIRT1, name = SIRT1
% Warning species is not changed by either rules or reactions
	xdot(125) = ;
	
% Species:   id = E3, name = E3
% Warning species is not changed by either rules or reactions
	xdot(126) = ;
	
% Species:   id = USP7, name = USP7
% Warning species is not changed by either rules or reactions
	xdot(127) = ;
	
% Species:   id = SCF, name = SCF
% Warning species is not changed by either rules or reactions
	xdot(128) = ;
	
% Species:   id = Proteasome, name = Proteasome
% Warning species is not changed by either rules or reactions
	xdot(129) = ;
end

function z=function_358(v), z=(v);end

function z=function_1(InR,Ins,cellsurface,extracellular,k1), z=(k1*Ins*extracellular*InR*cellsurface);end

function z=function_2(Ins_InR,cellsurface,kminus1), z=(kminus1*Ins_InR*cellsurface);end

function z=function_3(Ins_InR,cellsurface,k3), z=(k3*Ins_InR*cellsurface/cellsurface);end

function z=function_4(Ins,Ins_InR_P,cellsurface,extracellular,k2), z=(k2*Ins*extracellular*Ins_InR_P*cellsurface);end

function z=function_5(Ins_2_InR_P,cellsurface,kminus2), z=(kminus2*Ins_2_InR_P*cellsurface);end

function z=function_172(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_173(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_174(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_175(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_176(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_6(Ins_InR_P,PTP1B,cellsurface,cytoplasm,kminus3), z=(kminus3*PTP1B*cytoplasm*Ins_InR_P*cellsurface/cellsurface);end

function z=function_7(InR,cellsurface,k4), z=(k4*InR*cellsurface);end

function z=function_8(cytoplasm,cytoplasm_InR,kminus4), z=(kminus4*cytoplasm_InR*cytoplasm);end

function z=function_9(Ins_2_InR_P,cellsurface,k4prime), z=(k4prime*Ins_2_InR_P*cellsurface);end

function z=function_10(cytoplasm,cytoplasm_Ins_2_InR_P,kminus4prime), z=(kminus4prime*cytoplasm_Ins_2_InR_P*cytoplasm);end

function z=function_11(Ins_InR_P,cellsurface,k4prime), z=(k4prime*Ins_InR_P*cellsurface);end

function z=function_12(cytoplasm,cytoplasm_Ins_InR_P,kminus4prime), z=(kminus4prime*cytoplasm_Ins_InR_P*cytoplasm);end

function z=function_13(PTP1B,cytoplasm,cytoplasm_Ins_2_InR_P,k6), z=(k6*PTP1B*cytoplasm*cytoplasm_Ins_2_InR_P*cytoplasm/cytoplasm);end

function z=function_14(PTP1B,cytoplasm,cytoplasm_Ins_InR_P,k6), z=(k6*PTP1B*cytoplasm*cytoplasm_Ins_InR_P*cytoplasm/cytoplasm);end

function z=function_15(IRS1_TyrP_PI3K,PIP2,cytoplasm,k9,k9_basal), z=((k9_basal+k9*IRS1_TyrP_PI3K*cytoplasm)*PIP2*cytoplasm/cytoplasm);end

function z=function_16(PI345P3,PTEN,cytoplasm,kminus9,kminus9_basal), z=((kminus9_basal+kminus9*PTEN*cytoplasm)*PI345P3*cytoplasm/cytoplasm);end

function z=function_17(Akt,PI345P3,cytoplasm,k11,pip3_basal,k11*Akt*cytoplasm*piecewise(PI345P3*cytoplasm-pip3_basal), z=((PI345P3*cytoplasm) > pip3_basal,0)/cytoplasm);end

function z=function_18(Akt_P2,PP2A,cytoplasm,kminus11), z=(kminus11*PP2A*cytoplasm*Akt_P2*cytoplasm/cytoplasm);end

function z=function_19(AS160,Akt_P2,cytoplasm,kr16a), z=(kr16a*Akt_P2*cytoplasm*AS160*cytoplasm/cytoplasm);end

function z=function_20(AS160_P,PP2A,cytoplasm,kminusr16a), z=(kminusr16a*PP2A*cytoplasm*AS160_P*cytoplasm/cytoplasm);end

function z=function_21(PI345P3,PKC,cytoplasm,k12,pip3_basal,k12*PKC*cytoplasm*piecewise(PI345P3*cytoplasm-pip3_basal), z=((PI345P3*cytoplasm) > pip3_basal,0)/cytoplasm);end

function z=function_22(PKC_P,PP2A,cytoplasm,kminus12), z=(kminus12*PP2A*cytoplasm*PKC_P*cytoplasm/cytoplasm);end

function z=function_23(AS160_P,cytoplasm,cytoplasm_GLUT4,k13,k13_basal), z=((k13_basal+k13*AS160_P*cytoplasm)*cytoplasm_GLUT4*cytoplasm);end

function z=function_24(cellsurface,cellsurface_GLUT4,kminus13), z=(kminus13*cellsurface_GLUT4*cellsurface);end

function z=function_25(PTP1B,ROS,cytoplasm,k30f), z=(k30f*PTP1B*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_26(GSH,PTP1B_ox,cytoplasm,k30r), z=(k30r*PTP1B_ox*cytoplasm*GSH*cytoplasm/cytoplasm);end

function z=function_27(PTEN,ROS,cytoplasm,k31f), z=(k31f*PTEN*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_28(GSH,PTEN_ox,cytoplasm,k31r), z=(k31r*PTEN_ox*cytoplasm*GSH*cytoplasm/cytoplasm);end

function z=function_29(Ins,NOX_inact,cytoplasm,extracellular,k34f), z=(k34f*NOX_inact*cytoplasm*Ins*extracellular);end

function z=function_30(NOX,cytoplasm,k34r1), z=(k34r1*NOX*cytoplasm*NOX*cytoplasm/cytoplasm);end

function z=function_31(NOX,cytoplasm,k34r2), z=(k34r2*NOX*cytoplasm/cytoplasm);end

function z=function_32(NOX_deact,cytoplasm,k34r3), z=(k34r3*NOX_deact*cytoplasm*NOX_deact*cytoplasm/cytoplasm);end

function z=function_33(NOX,cytoplasm,k35f), z=(k35f*NOX*cytoplasm/cytoplasm);end

function z=function_34(ROS,cytoplasm,cytoplasm_SOD2,k35r), z=(k35r*ROS*cytoplasm*cytoplasm_SOD2*cytoplasm/cytoplasm);end

function z=function_35(Mt,cytoplasm,k36f), z=(k36f*Mt*cytoplasm/cytoplasm);end

function z=function_36(extracellular,extracellular_ROS,k_ros_perm), z=(k_ros_perm*extracellular_ROS*extracellular);end

function z=function_37(ROS,cytoplasm,extracellular,k_ros_perm), z=(k_ros_perm*extracellular/cytoplasm*ROS*cytoplasm);end

function z=function_38(GSH,ROS,cytoplasm,k38f), z=(k38f*GSH*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_39(GSSG,cytoplasm,k38r), z=(k38r*GSSG*cytoplasm/cytoplasm);end

function z=function_40(IRS1,IRp,Ins_2_InR_P,Ins_InR_P,cellsurface,cyto_vol,cytoplasm,k7), z=(cyto_vol*k7*IRS1*cytoplasm*(Ins_2_InR_P*cellsurface+Ins_InR_P*cellsurface)/IRp/cytoplasm);end

function z=function_41(IRS1_TyrP,PTP1B,cyto_vol,cytoplasm,kminus7a), z=(cyto_vol*kminus7a*PTP1B*cytoplasm*IRS1_TyrP*cytoplasm/cytoplasm);end

function z=function_42(IRS1,PKC_P,cyto_vol,cytoplasm,k2psp), z=(cyto_vol*k2psp*IRS1*cytoplasm*PKC_P*cytoplasm/cytoplasm);end

function z=function_43(IRS1_PolySerP,PP2A,cyto_vol,cytoplasm,kminus7b), z=(cyto_vol*kminus7b*PP2A*cytoplasm*IRS1_PolySerP*cytoplasm/cytoplasm);end

function z=function_44(IRS1_TyrP,PKC_P,cyto_vol,cytoplasm,k2psp), z=(cyto_vol*k2psp*IRS1_TyrP*cytoplasm*PKC_P*cytoplasm/cytoplasm);end

function z=function_45(IRS1_TyrP_PolySerP,PP2A,cyto_vol,cytoplasm,kminus7b), z=(cyto_vol*kminus7b*PP2A*cytoplasm*IRS1_TyrP_PolySerP*cytoplasm/cytoplasm);end

function z=function_46(IRS1_TyrP,PI3K,cyto_vol,cytoplasm,k8), z=(cyto_vol*k8*IRS1_TyrP*cytoplasm*PI3K*cytoplasm/cytoplasm);end

function z=function_47(IRS1_TyrP_PI3K,cyto_vol,cytoplasm,kminus8), z=(cyto_vol*kminus8*IRS1_TyrP_PI3K*cytoplasm/cytoplasm);end

function z=function_48(cytoplasm,k_irs1_basal_syn), z=(k_irs1_basal_syn/cytoplasm);end

function z=function_49(IRS1,cytoplasm,k_irs1_basal_degr), z=(IRS1*cytoplasm*k_irs1_basal_degr/cytoplasm);end

function z=function_50(IRS1_TyrP,cytoplasm,k_irs1_basal_degr), z=(IRS1_TyrP*cytoplasm*k_irs1_basal_degr/cytoplasm);end

function z=function_51(IRS1_PolySerP,cytoplasm,k_irs1_polyserp_degr), z=(IRS1_PolySerP*cytoplasm*k_irs1_polyserp_degr/cytoplasm);end

function z=function_52(IRS1_TyrP_PolySerP,cytoplasm,k_irs1_polyserp_degr), z=(IRS1_TyrP_PolySerP*cytoplasm*k_irs1_polyserp_degr/cytoplasm);end

function z=function_53(IKK_P,IRS1,Km51,cytoplasm,kcat51), z=(kcat51*IRS1*cytoplasm*IKK_P*cytoplasm/(Km51+IRS1*cytoplasm)/cytoplasm);end

function z=function_54(IRS1,JNK_P,Km52,cytoplasm,kcat52), z=(kcat52*IRS1*cytoplasm*JNK_P*cytoplasm/(Km52+IRS1*cytoplasm)/cytoplasm);end

function z=function_55(JNK,ROS,alpha_ox,cytoplasm,k42f), z=(k42f*alpha_ox*JNK*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_56(DUSP,JNK_P,cytoplasm,k42r), z=(k42r*JNK_P*cytoplasm*DUSP*cytoplasm/cytoplasm);end

function z=function_57(IKK,ROS,cytoplasm,k43f), z=(k43f*IKK*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_58(DUSP,IKK_P,cytoplasm,k43r), z=(k43r*IKK_P*cytoplasm*DUSP*cytoplasm/cytoplasm);end

function z=function_59(DUSP,ROS,cytoplasm,k32f), z=(k32f*DUSP*cytoplasm*ROS*cytoplasm/cytoplasm);end

function z=function_60(DUSP_ox,GSH,cytoplasm,k32r), z=(k32r*DUSP_ox*cytoplasm*GSH*cytoplasm/cytoplasm);end

function z=function_61(E2F1,cytoplasm,ksynth), z=(E2F1*cytoplasm*ksynth/cytoplasm);end

function z=function_62(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*ktr);end

function z=function_63(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*ktr);end

function z=function_64(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*ktr);end

function z=function_65(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktr);end

function z=function_66(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*ktr);end

function z=function_67(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*ktr);end

function z=function_68(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*ktr);end

function z=function_69(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktr);end

function z=function_70(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*ktr);end

function z=function_71(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*ktr);end

function z=function_72(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*ktr);end

function z=function_73(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktr);end

function z=function_74(cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*ktr);end

function z=function_75(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*ktr);end

function z=function_76(ktr,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*ktr);end

function z=function_77(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktr);end

function z=function_78(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*ktr);end

function z=function_79(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*ktr);end

function z=function_80(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*ktr);end

function z=function_81(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktr);end

function z=function_82(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*ktr);end

function z=function_83(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*ktr);end

function z=function_84(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*ktr);end

function z=function_85(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktr);end

function z=function_86(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*ktr);end

function z=function_87(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*ktr);end

function z=function_88(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*ktr);end

function z=function_89(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktr);end

function z=function_90(cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*ktr);end

function z=function_91(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*ktr);end

function z=function_92(ktr,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*ktr);end

function z=function_93(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktr);end

function z=function_94(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*ktr);end

function z=function_95(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*ktr);end

function z=function_96(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*ktr);end

function z=function_97(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktr);end

function z=function_98(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*ktr);end

function z=function_99(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*ktr);end

function z=function_100(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*ktr);end

function z=function_101(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktr);end

function z=function_102(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*ktr);end

function z=function_103(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*ktr);end

function z=function_104(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*ktr);end

function z=function_105(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktr);end

function z=function_106(cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*ktr);end

function z=function_107(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*ktr);end

function z=function_108(ktr,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*ktr);end

function z=function_109(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktr);end

function z=function_110(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*ktr);end

function z=function_111(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*ktr);end

function z=function_112(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*ktr);end

function z=function_113(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktr);end

function z=function_114(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*ktr);end

function z=function_115(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*ktr);end

function z=function_116(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*ktr);end

function z=function_117(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktr);end

function z=function_118(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*ktr);end

function z=function_119(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*ktr);end

function z=function_120(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*ktr);end

function z=function_121(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktr);end

function z=function_122(cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*ktr);end

function z=function_123(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*ktr);end

function z=function_124(ktr,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*ktr);end

function z=function_125(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktr);end

function z=function_126(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_127(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_128(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_129(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_130(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_131(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_132(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_133(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_134(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_135(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_136(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_137(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_138(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_139(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_140(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_141(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_142(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_143(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_144(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_145(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_146(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_147(Akt_P2,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*Akt_P2*cytoplasm*kkin/cytoplasm);end

function z=function_148(Akt_P2,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*Akt_P2*cytoplasm*kkin/nucleus);end

function z=function_149(Akt_P2,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*Akt_P2*cytoplasm*kkin/dnabound);end

function z=function_150(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_151(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_152(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_153(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_154(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_155(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_156(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_157(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_158(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_159(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_160(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_161(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_162(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_163(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_164(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_165(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_166(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_167(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_168(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_169(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*SGK*cytoplasm*kkin/nucleus);end

function z=function_170(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*SGK*cytoplasm*kkin/dnabound);end

function z=function_171(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=function_177(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_178(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_179(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_180(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_181(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_182(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_183(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_184(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_185(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_186(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_187(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_188(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_189(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_190(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_191(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_192(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_193(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_194(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_195(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_196(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_197(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_198(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_199(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_200(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_201(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_202(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_203(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_204(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_205(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_206(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_207(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_208(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_209(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_210(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_211(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_212(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_213(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_214(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_215(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_216(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_217(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_218(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_219(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_220(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_221(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_222(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_223(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_224(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_225(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_226(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_227(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_228(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_229(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_230(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_231(IKK_P,by_ikk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/cytoplasm);end

function z=function_232(IKK_P,by_ikk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/nucleus);end

function z=function_233(IKK_P,by_ikk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*IKK_P*cytoplasm*by_ikk_phos_factor*kkin/dnabound);end

function z=function_234(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_235(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_236(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_237(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_238(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_239(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_240(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_241(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_242(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_243(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_244(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_245(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_246(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_247(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_248(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_249(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_250(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_251(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_252(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_253(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_254(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_255(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_256(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_257(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_258(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_259(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_260(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_261(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_262(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_263(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_264(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_265(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_266(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_267(PP2A,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_268(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_269(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_270(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_271(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_272(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_273(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_274(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_275(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_276(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_277(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_278(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_279(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_280(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_281(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_282(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_283(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_284(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kkin), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_285(JNK_P,by_jnk_phos_factor,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/cytoplasm);end

function z=function_286(JNK_P,by_jnk_phos_factor,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1*nucleus*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/nucleus);end

function z=function_287(JNK_P,by_jnk_phos_factor,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,kkin), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*JNK_P*cytoplasm*by_jnk_phos_factor*kkin/dnabound);end

function z=function_288(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_289(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_290(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_291(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=function_292(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1*nucleus*PP2A*cytoplasm*kdephos/nucleus);end

function z=function_293(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*PP2A*cytoplasm*kdephos/dnabound);end

function z=function_294(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_295(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_296(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,kub), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_297(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_298(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_299(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,kub), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_300(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_301(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_302(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,kub), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_303(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_304(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_305(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,kub), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_306(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_307(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_308(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,kub), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_309(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_310(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_311(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,kub), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_312(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_313(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_314(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,kub), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_315(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=function_316(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0), z=(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0*nucleus*SCF*cytoplasm*kub/nucleus);end

function z=function_317(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,kub), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*SCF*cytoplasm*kub/dnabound);end

function z=function_318(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_319(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_320(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_321(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_322(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_323(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_324(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_325(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=function_326(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktranscr);end

function z=function_327(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0*dnabound*ktranscr);end

function z=function_328(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktranscr);end

function z=function_329(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1*dnabound*ktranscr);end

function z=function_330(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktranscr);end

function z=function_331(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0*dnabound*ktranscr);end

function z=function_332(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktranscr);end

function z=function_333(dnabound,dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1*dnabound*ktranscr);end

function z=function_334(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktranscr);end

function z=function_335(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0*dnabound*ktranscr);end

function z=function_336(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktranscr);end

function z=function_337(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1*dnabound*ktranscr);end

function z=function_338(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktranscr);end

function z=function_339(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0*dnabound*ktranscr);end

function z=function_340(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktranscr);end

function z=function_341(dnabound,dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1*dnabound*ktranscr);end

function z=function_342(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktranscr);end

function z=function_343(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0*dnabound*ktranscr);end

function z=function_344(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktranscr);end

function z=function_345(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1*dnabound*ktranscr);end

function z=function_346(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktranscr);end

function z=function_347(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0*dnabound*ktranscr);end

function z=function_348(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktranscr);end

function z=function_349(dnabound,dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1*dnabound*ktranscr);end

function z=function_350(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktranscr);end

function z=function_351(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0*dnabound*ktranscr);end

function z=function_352(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktranscr);end

function z=function_353(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1*dnabound*ktranscr);end

function z=function_354(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktranscr);end

function z=function_355(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0*dnabound*ktranscr);end

function z=function_356(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktranscr);end

function z=function_357(dnabound,dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1*dnabound*ktranscr);end

function z=function_359(kexp,nucleus,nucleus_RNA_InR), z=(nucleus_RNA_InR*nucleus*kexp);end

function z=function_360(cytoplasm,cytoplasm_RNA_InR,kmdeg), z=(cytoplasm_RNA_InR*cytoplasm*kmdeg/cytoplasm);end

function z=function_361(cytoplasm,cytoplasm_RNA_InR,ktransl), z=(cytoplasm_RNA_InR*cytoplasm*ktransl/cytoplasm);end

function z=function_362(cytoplasm,cytoplasm_InR,kpdeg), z=(cytoplasm_InR*cytoplasm*kpdeg/cytoplasm);end

function z=function_363(kexp,nucleus,nucleus_RNA_SOD2), z=(nucleus_RNA_SOD2*nucleus*kexp);end

function z=function_364(cytoplasm,cytoplasm_RNA_SOD2,kmdeg), z=(cytoplasm_RNA_SOD2*cytoplasm*kmdeg/cytoplasm);end

function z=function_365(cytoplasm,cytoplasm_RNA_SOD2,ktransl), z=(cytoplasm_RNA_SOD2*cytoplasm*ktransl/cytoplasm);end

function z=function_366(cytoplasm,cytoplasm_SOD2,kpdeg), z=(cytoplasm_SOD2*cytoplasm*kpdeg/cytoplasm);end

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


