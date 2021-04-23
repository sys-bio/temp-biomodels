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
% Model name = Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis
%
% is http://identifiers.org/biomodels.db/MODEL1412010000
% is http://identifiers.org/biomodels.db/BIOMD0000000559
% isDescribedBy http://identifiers.org/pubmed/24885905
%


function main()
%Initial conditions vector
	x0=zeros(89,1);
	x0(1) = 200.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
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
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 8.0;
	x0(54) = 8.0;
	x0(55) = 8.0;
	x0(56) = 0.0;
	x0(57) = 953.0;
	x0(58) = 1650.0;
	x0(59) = 22.0;
	x0(60) = 8.0;
	x0(61) = 8.0;
	x0(62) = 750.0;
	x0(63) = 8.0;
	x0(64) = 8.0;
	x0(65) = 8.0;
	x0(66) = 8.0;
	x0(67) = 8.0;
	x0(68) = 8.0;
	x0(69) = 8.0;
	x0(70) = 8.0;
	x0(71) = 8.0;
	x0(72) = 0.0;
	x0(73) = 1500.0;
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

% Compartment: id = c3, name = Lysosome, constant
	compartment_c3=1.0;
% Compartment: id = c2, name = M/autophagy&OtherLysDegrPath, constant
	compartment_c2=1.0;
% Compartment: id = c1, name = Cytosol, constant
	compartment_c1=1.0;
% Parameter:   id =  k_DisRate, name = k_DisRate
	global_par_k_DisRate=4.999533748E-7;
% Parameter:   id =  k_2merForm, name = k_2merForm
	global_par_k_2merForm=1.462941015E-9;
% Parameter:   id =  k_DopModWTasynLampBind, name = k_DopModWTasynLampBind
	global_par_k_DopModWTasynLampBind=7.6715997E-9;
% Parameter:   id =  k_LampFreeWTasyn, name = k_LampFreeWTasyn
	global_par_k_LampFreeWTasyn=3.044571674E-4;
% Parameter:   id =  k_OligAutophagUptake, name = k_OligAutophagUptake
	global_par_k_OligAutophagUptake=2.39034347E-8;
% Parameter:   id =  k_OligomerForm, name = k_OligomerForm
	global_par_k_OligomerForm=3.350497192E-8;
% Parameter:   id =  k_ProteasomeBind, name = k_ProteasomeBind
	global_par_k_ProteasomeBind=3.424693672E-9;
% Parameter:   id =  k_ProtOligDegr, name = k_ProtOligDegr
	global_par_k_ProtOligDegr=3.70096E-4;
% Parameter:   id =  k_WTasyn1_2merBindOnLamp, name = k_WTasyn1_2merBindOnLamp
	global_par_k_WTasyn1_2merBindOnLamp=6.865455081E-7;
% Parameter:   id =  k_WTOligBindOnLamp, name = k_WTOligBindOnLamp
	global_par_k_WTOligBindOnLamp=4.0E-6;
% Parameter:   id =  Total_Cytosolic_WTASYN_Oligomers, name = Total_Cytosolic_WTASYN_Oligomers
% Parameter:   id =  Total_Cytosolic_WTASYN_Monomer, name = Total_Cytosolic_WTASYN_Monomer
% Parameter:   id =  Total_Cytosolic_WTASYN_Dimer, name = Total_Cytosolic_WTASYN_Dimer
% Parameter:   id =  k_M_autophagyDegr, name = k_M_autophagyDegr
	global_par_k_M_autophagyDegr=0.1;
% assignmentRule: variable = Total_Cytosolic_WTASYN_Dimer
	global_par_Total_Cytosolic_WTASYN_Dimer=x(56)*compartment_c1+x(59)*compartment_c1;
% assignmentRule: variable = Total_Cytosolic_WTASYN_Monomer
	global_par_Total_Cytosolic_WTASYN_Monomer=x(58)*compartment_c1+x(57)*compartment_c1;
% assignmentRule: variable = Total_Cytosolic_WTASYN_Oligomers
	global_par_Total_Cytosolic_WTASYN_Oligomers=x(55)*compartment_c1+x(54)*compartment_c1+x(53)*compartment_c1+x(61)*compartment_c1+x(65)*compartment_c1+x(66)*compartment_c1+x(67)*compartment_c1+x(60)*compartment_c1+x(64)*compartment_c1+x(63)*compartment_c1+x(71)*compartment_c1+x(70)*compartment_c1+x(69)*compartment_c1+x(68)*compartment_c1;

% Reaction: id = re1, name = WTasynSynthesis	% Local Parameter:   id =  k1, name = k1
	reaction_re1_k1=0.0294219;

	reaction_re1=compartment_c1*reaction_re1_k1*const_species_s3;

% Reaction: id = re2, name = DopProduction	% Local Parameter:   id =  k1, name = k1
	reaction_re2_k1=0.0791823;

	reaction_re2=compartment_c1*reaction_re2_k1*const_species_s3;

% Reaction: id = re3, name = 2merForm
	reaction_re3=compartment_c1*global_par_k_2merForm*x(58)^2;

% Reaction: id = re4, name = WTasynDopModification	% Local Parameter:   id =  k1, name = k1
	reaction_re4_k1=6.74768E-7;

	reaction_re4=compartment_c1*reaction_re4_k1*x(58)*x(62);

% Reaction: id = re5, name = WTasynLampBind
	reaction_re5=global_par_k_WTasyn1_2merBindOnLamp*x(58)*x(1);

% Reaction: id = re6, name = AutophagosomeUptakeWTasyn2mer
	reaction_re6=global_par_k_OligAutophagUptake*x(59);

% Reaction: id = re7, name = 3merForm
	reaction_re7=compartment_c1*global_par_k_OligomerForm*x(59)*x(58);

% Reaction: id = re8, name = WTasyn2LampBind
	reaction_re8=global_par_k_WTasyn1_2merBindOnLamp*x(59)*x(1);

% Reaction: id = re9, name = AutophagosomeUptakeWTasyn3mer
	reaction_re9=global_par_k_OligAutophagUptake*x(60);

% Reaction: id = re10, name = 4merForm
	reaction_re10=compartment_c1*global_par_k_OligomerForm*x(60)*x(58);

% Reaction: id = re11, name = 3merProtBind
	reaction_re11=compartment_c1*global_par_k_ProteasomeBind*x(60)*x(73);

% Reaction: id = re12, name = AutophagosomeUptakeWTasyn4mer
	reaction_re12=global_par_k_OligAutophagUptake*x(64);

% Reaction: id = re13, name = 5merForm
	reaction_re13=compartment_c1*global_par_k_OligomerForm*x(64)*x(58);

% Reaction: id = re14, name = 4merProtBind
	reaction_re14=compartment_c1*global_par_k_ProteasomeBind*x(64)*x(73);

% Reaction: id = re15, name = AutophagosomeUptakeWTasyn5mer
	reaction_re15=global_par_k_OligAutophagUptake*x(63);

% Reaction: id = re16, name = 6merForm
	reaction_re16=compartment_c1*global_par_k_OligomerForm*x(63)*x(58);

% Reaction: id = re17, name = 5merProtBind
	reaction_re17=compartment_c1*global_par_k_ProteasomeBind*x(63)*x(73);

% Reaction: id = re18, name = WTasyn5merBindOnLamp
	reaction_re18=global_par_k_WTOligBindOnLamp*x(63)*x(1);

% Reaction: id = re19, name = AutophagosomeUptakeWTasyn6mer
	reaction_re19=global_par_k_OligAutophagUptake*x(71);

% Reaction: id = re20, name = 7merForm
	reaction_re20=compartment_c1*global_par_k_OligomerForm*x(71)*x(58);

% Reaction: id = re21, name = 6merProtBind
	reaction_re21=compartment_c1*global_par_k_ProteasomeBind*x(71)*x(73);

% Reaction: id = re22, name = AutophagosomeUptakeWTasyn7mer
	reaction_re22=global_par_k_OligAutophagUptake*x(70);

% Reaction: id = re23, name = 8merForm
	reaction_re23=compartment_c1*global_par_k_OligomerForm*x(70)*x(58);

% Reaction: id = re24, name = 7merProtBind
	reaction_re24=compartment_c1*global_par_k_ProteasomeBind*x(70)*x(73);

% Reaction: id = re25, name = WTasyn7merBindOnLamp
	reaction_re25=global_par_k_WTOligBindOnLamp*x(70)*x(1);

% Reaction: id = re26, name = AutophagosomeUptakeWTasyn8mer
	reaction_re26=global_par_k_OligAutophagUptake*x(69);

% Reaction: id = re27, name = 9merForm
	reaction_re27=compartment_c1*global_par_k_OligomerForm*x(69)*x(58);

% Reaction: id = re28, name = 8merProtBind
	reaction_re28=compartment_c1*global_par_k_ProteasomeBind*x(69)*x(73);

% Reaction: id = re29, name = 9merProtBind
	reaction_re29=compartment_c1*global_par_k_ProteasomeBind*x(68)*x(73);

% Reaction: id = re30, name = WTasyn9merBindOnLamp
	reaction_re30=global_par_k_WTOligBindOnLamp*x(68)*x(1);

% Reaction: id = re31, name = DopamineDegr	% Local Parameter:   id =  k1, name = k1
	reaction_re31_k1=0.00679501;

	reaction_re31=compartment_c1*reaction_re31_k1*x(62);

% Reaction: id = re32, name = DopMod2merForm
	reaction_re32=compartment_c1*global_par_k_2merForm*x(57)^2;

% Reaction: id = re33, name = DopWTasyn2merFormOnLamp
	reaction_re33=global_par_k_2merForm*x(57)*x(23);

% Reaction: id = re34, name = DopWTasyn7merFormOnLamp
	reaction_re34=global_par_k_OligomerForm*x(57)*x(12);

% Reaction: id = re35, name = DopWTasyn8merFormOnLamp
	reaction_re35=global_par_k_OligomerForm*x(57)*x(11);

% Reaction: id = re36, name = DopWTasyn9merFormOnLamp
	reaction_re36=global_par_k_OligomerForm*x(57)*x(14);

% Reaction: id = re37, name = WTasynLysosUptake	% Local Parameter:   id =  k1, name = k1
	reaction_re37_k1=0.00999558;

	reaction_re37=compartment_c3*reaction_re37_k1*x(4);

% Reaction: id = re38, name = WTasyn2LysosUptake	% Local Parameter:   id =  k1, name = k1
	reaction_re38_k1=0.00995312;

	reaction_re38=compartment_c3*reaction_re38_k1*x(5);

% Reaction: id = re40, name = M/autophagyWTasyn4Degr
	reaction_re40=compartment_c2*global_par_k_M_autophagyDegr*x(36);

% Reaction: id = re41, name = M/autophagyWTasyn8Degr
	reaction_re41=compartment_c2*global_par_k_M_autophagyDegr*x(42);

% Reaction: id = re42, name = M/autophagyWTasyn3Degr
	reaction_re42=compartment_c2*global_par_k_M_autophagyDegr*x(39);

% Reaction: id = re43, name = M/autophagyWTasyn2Degr
	reaction_re43=compartment_c2*global_par_k_M_autophagyDegr*x(40);

% Reaction: id = re44, name = M/autophagyWTasyn7Degr
	reaction_re44=compartment_c2*global_par_k_M_autophagyDegr*x(41);

% Reaction: id = re45, name = M/autophagyWTasyn5Degr
	reaction_re45=compartment_c2*global_par_k_M_autophagyDegr*x(37);

% Reaction: id = re46, name = M/autophagyWTasyn6Degr
	reaction_re46=compartment_c2*global_par_k_M_autophagyDegr*x(38);

% Reaction: id = re47, name = AggregForm
	reaction_re47=compartment_c1*global_par_k_OligomerForm*x(68)*x(58);

% Reaction: id = re48, name = DopModAutophagosomeUptake2mer
	reaction_re48=global_par_k_OligAutophagUptake*x(56);

% Reaction: id = re49, name = DopMod3merForm
	reaction_re49=compartment_c1*global_par_k_OligomerForm*x(56)*x(57);

% Reaction: id = re50, name = DopModAutophagosomeUptake3mer
	reaction_re50=global_par_k_OligAutophagUptake*x(55);

% Reaction: id = re51, name = DopMod4merForm
	reaction_re51=compartment_c1*global_par_k_OligomerForm*x(55)*x(57);

% Reaction: id = re52, name = DopMod3merProtBind
	reaction_re52=compartment_c1*global_par_k_ProteasomeBind*x(55)*x(73);

% Reaction: id = re53, name = DopModAutophagosomeUptake4mer
	reaction_re53=global_par_k_OligAutophagUptake*x(54);

% Reaction: id = re54, name = DopMod5merForm
	reaction_re54=compartment_c1*global_par_k_OligomerForm*x(54)*x(57);

% Reaction: id = re55, name = DopMod4merProtBind
	reaction_re55=compartment_c1*global_par_k_ProteasomeBind*x(54)*x(73);

% Reaction: id = re56, name = DopModAutophagosomeUptake5mer
	reaction_re56=global_par_k_OligAutophagUptake*x(53);

% Reaction: id = re57, name = DopMod6merForm
	reaction_re57=compartment_c1*global_par_k_OligomerForm*x(53)*x(57);

% Reaction: id = re58, name = DopMod5merProtBind
	reaction_re58=compartment_c1*global_par_k_ProteasomeBind*x(53)*x(73);

% Reaction: id = re59, name = DopModAutophagosomeUptake6mer
	reaction_re59=global_par_k_OligAutophagUptake*x(61);

% Reaction: id = re60, name = DopMod7merForm
	reaction_re60=compartment_c1*global_par_k_OligomerForm*x(61)*x(57);

% Reaction: id = re61, name = DopMod6merProtBind
	reaction_re61=compartment_c1*global_par_k_ProteasomeBind*x(61)*x(73);

% Reaction: id = re62, name = DopModAutophagosomeUptake7mer
	reaction_re62=global_par_k_OligAutophagUptake*x(65);

% Reaction: id = re63, name = DopMod8merForm
	reaction_re63=compartment_c1*global_par_k_OligomerForm*x(65)*x(57);

% Reaction: id = re64, name = DopMod7merProtBind
	reaction_re64=compartment_c1*global_par_k_ProteasomeBind*x(65)*x(73);

% Reaction: id = re65, name = DopModAutophagosomeUptake8mer
	reaction_re65=global_par_k_OligAutophagUptake*x(66);

% Reaction: id = re66, name = DopMod9merForm
	reaction_re66=compartment_c1*global_par_k_OligomerForm*x(66)*x(57);

% Reaction: id = re67, name = DopMod8merProtBind
	reaction_re67=compartment_c1*global_par_k_ProteasomeBind*x(66)*x(73);

% Reaction: id = re68, name = DopMod9merProtBind
	reaction_re68=compartment_c1*global_par_k_ProteasomeBind*x(67)*x(73);

% Reaction: id = re69, name = WTasyn2merCMADegr	% Local Parameter:   id =  k1, name = k1
	reaction_re69_k1=0.1;

	reaction_re69=compartment_c3*reaction_re69_k1*x(3);

% Reaction: id = re70, name = WTasyn1merCMADegr	% Local Parameter:   id =  k1, name = k1
	reaction_re70_k1=0.1;

	reaction_re70=compartment_c3*reaction_re70_k1*x(2);

% Reaction: id = re71, name = LampFree9merWT
	reaction_re71=global_par_k_LampFreeWTasyn*x(22);

% Reaction: id = re72, name = DopWTasyn3merFormOnLamp
	reaction_re72=global_par_k_OligomerForm*x(8)*x(57);

% Reaction: id = re73, name = DopWTasyn4merFormOnLamp
	reaction_re73=global_par_k_OligomerForm*x(9)*x(57);

% Reaction: id = re74, name = DopWTasyn5merFormOnLamp
	reaction_re74=global_par_k_OligomerForm*x(10)*x(57);

% Reaction: id = re75, name = DopWTasyn6merFormOnLamp
	reaction_re75=global_par_k_OligomerForm*x(13)*x(57);

% Reaction: id = re76, name = LampFree3merWT
	reaction_re76=global_par_k_LampFreeWTasyn*x(16);

% Reaction: id = re77, name = LampFree4merWT
	reaction_re77=global_par_k_LampFreeWTasyn*x(17);

% Reaction: id = re78, name = LampFree5merWT
	reaction_re78=global_par_k_LampFreeWTasyn*x(18);

% Reaction: id = re79, name = LampFree6merWT
	reaction_re79=global_par_k_LampFreeWTasyn*x(19);

% Reaction: id = re80, name = LampFree7merWT
	reaction_re80=global_par_k_LampFreeWTasyn*x(20);

% Reaction: id = re81, name = LampFree8merWT
	reaction_re81=global_par_k_LampFreeWTasyn*x(21);

% Reaction: id = re82, name = WTasyn8merBindOnLamp
	reaction_re82=global_par_k_WTOligBindOnLamp*x(21)*x(69);

% Reaction: id = re83, name = WTasyn3merBindOnLamp
	reaction_re83=global_par_k_WTOligBindOnLamp*x(1)*x(60);

% Reaction: id = re84, name = WTasyn4merBindOnLamp
	reaction_re84=global_par_k_WTOligBindOnLamp*x(1)*x(64);

% Reaction: id = re85, name = WTasyn6merBindOnLamp
	reaction_re85=global_par_k_WTOligBindOnLamp*x(1)*x(71);

% Reaction: id = re86, name = DopModWTasynCMAInhibition
	reaction_re86=global_par_k_DopModWTasynLampBind*x(1)*x(57);

% Reaction: id = re87, name = M/autophagyDopModWTasyn4Degr
	reaction_re87=compartment_c2*global_par_k_M_autophagyDegr*x(48);

% Reaction: id = re88, name = M/autophagyDopModWTasyn3Degr
	reaction_re88=compartment_c2*global_par_k_M_autophagyDegr*x(49);

% Reaction: id = re89, name = M/autophagyDopModWTasyn2Degr
	reaction_re89=compartment_c2*global_par_k_M_autophagyDegr*x(52);

% Reaction: id = re90, name = M/autophagyDopModWTasyn5Degr
	reaction_re90=compartment_c2*global_par_k_M_autophagyDegr*x(47);

% Reaction: id = re91, name = M/autophagyDopModWTasyn6Degr
	reaction_re91=compartment_c2*global_par_k_M_autophagyDegr*x(46);

% Reaction: id = re92, name = M/autophagyDopModWTasyn7Degr
	reaction_re92=compartment_c2*global_par_k_M_autophagyDegr*x(45);

% Reaction: id = re93, name = M/autophagyDopModWTasyn8Degr
	reaction_re93=compartment_c2*global_par_k_M_autophagyDegr*x(44);

% Reaction: id = re94, name = WTasyn2merFormOnLamp
	reaction_re94=global_par_k_2merForm*x(58)*x(4);

% Reaction: id = re95, name = WTasyn3merFormOnLamp
	reaction_re95=global_par_k_OligomerForm*x(58)*x(5);

% Reaction: id = re96, name = WTasyn4merFormOnLamp
	reaction_re96=global_par_k_OligomerForm*x(58)*x(16);

% Reaction: id = re97, name = WTasyn5merFormOnLamp
	reaction_re97=global_par_k_OligomerForm*x(58)*x(17);

% Reaction: id = re98, name = WTasyn6merFormOnLamp
	reaction_re98=global_par_k_OligomerForm*x(18)*x(58);

% Reaction: id = re99, name = WTasyn7merFormOnLamp
	reaction_re99=global_par_k_OligomerForm*x(19)*x(58);

% Reaction: id = re100, name = WTasyn8merFormOnLamp
	reaction_re100=global_par_k_OligomerForm*x(58)*x(20);

% Reaction: id = re101, name = WTasyn9merFormOnLamp
	reaction_re101=global_par_k_OligomerForm*x(58)*x(21);

% Reaction: id = re102, name = ProtFree3merWT
	reaction_re102=compartment_c1*global_par_k_ProtOligDegr*x(75);

% Reaction: id = re103, name = ProtFree4merWT
	reaction_re103=compartment_c1*global_par_k_ProtOligDegr*x(76);

% Reaction: id = re104, name = ProtFree5merWT
	reaction_re104=compartment_c1*global_par_k_ProtOligDegr*x(77);

% Reaction: id = re105, name = ProtFree6merWT
	reaction_re105=compartment_c1*global_par_k_ProtOligDegr*x(78);

% Reaction: id = re106, name = ProtFree7merWT
	reaction_re106=compartment_c1*global_par_k_ProtOligDegr*x(79);

% Reaction: id = re107, name = ProtFree8merWT
	reaction_re107=compartment_c1*global_par_k_ProtOligDegr*x(80);

% Reaction: id = re108, name = ProtFree9merWT
	reaction_re108=compartment_c1*global_par_k_ProtOligDegr*x(81);

% Reaction: id = re109, name = ProtFree3merDopWT
	reaction_re109=compartment_c1*global_par_k_ProtOligDegr*x(82);

% Reaction: id = re110, name = ProtFree4merDopWT
	reaction_re110=compartment_c1*global_par_k_ProtOligDegr*x(83);

% Reaction: id = re111, name = ProtFree5merDopWT
	reaction_re111=compartment_c1*global_par_k_ProtOligDegr*x(84);

% Reaction: id = re112, name = ProtFree6merDopWT
	reaction_re112=compartment_c1*global_par_k_ProtOligDegr*x(85);

% Reaction: id = re113, name = ProtFree7merDopWT
	reaction_re113=compartment_c1*global_par_k_ProtOligDegr*x(86);

% Reaction: id = re114, name = ProtFree8merDopWT
	reaction_re114=compartment_c1*global_par_k_ProtOligDegr*x(87);

% Reaction: id = re115, name = ProtFree9merDopWT
	reaction_re115=compartment_c1*global_par_k_ProtOligDegr*x(88);

% Reaction: id = re116, name = WTasynHigherPSCprotInh
	reaction_re116=compartment_c1*global_par_k_ProteasomeBind*x(72)*x(73);

% Reaction: id = re117, name = DopMod9merDis
	reaction_re117=compartment_c1*global_par_k_DisRate*x(67);

% Reaction: id = re118, name = DopMod8merDis
	reaction_re118=compartment_c1*global_par_k_DisRate*x(66);

% Reaction: id = re119, name = DopMod7merDis
	reaction_re119=compartment_c1*global_par_k_DisRate*x(65);

% Reaction: id = re120, name = DopMod6merDis
	reaction_re120=compartment_c1*global_par_k_DisRate*x(61);

% Reaction: id = re121, name = DopMod4merDis
	reaction_re121=compartment_c1*global_par_k_DisRate*x(54);

% Reaction: id = re122, name = DopMod5merDis
	reaction_re122=compartment_c1*global_par_k_DisRate*x(53);

% Reaction: id = re123, name = DopMod3merDis
	reaction_re123=compartment_c1*global_par_k_DisRate*x(55);

% Reaction: id = re124, name = DopMod2merDis
	reaction_re124=compartment_c1*global_par_k_DisRate*x(56);

% Reaction: id = re125, name = 9merDis
	reaction_re125=compartment_c1*global_par_k_DisRate*x(68);

% Reaction: id = re126, name = 8merDis
	reaction_re126=compartment_c1*global_par_k_DisRate*x(69);

% Reaction: id = re127, name = 7merDis
	reaction_re127=compartment_c1*global_par_k_DisRate*x(70);

% Reaction: id = re128, name = 6merDis
	reaction_re128=compartment_c1*global_par_k_DisRate*x(71);

% Reaction: id = re129, name = 5merDis
	reaction_re129=compartment_c1*global_par_k_DisRate*x(63);

% Reaction: id = re130, name = 4merDis
	reaction_re130=compartment_c1*global_par_k_DisRate*x(64);

% Reaction: id = re131, name = 3merDis
	reaction_re131=compartment_c1*global_par_k_DisRate*x(60);

% Reaction: id = re132, name = 2merDis
	reaction_re132=compartment_c1*global_par_k_DisRate*x(59);

% Reaction: id = re133, name = AggregGrowth	% Local Parameter:   id =  k1, name = k1
	reaction_re133_k1=4.90556E-7;

	reaction_re133=compartment_c1*reaction_re133_k1*x(72)*x(58);

% Reaction: id = re134, name = AutophagosomeUptakeWTasyn
	reaction_re134=global_par_k_OligAutophagUptake*x(58);

% Reaction: id = re135, name = M/autophagyWTasyn1Degr
	reaction_re135=compartment_c2*global_par_k_M_autophagyDegr*x(50);

% Reaction: id = re136, name = DopModAutophagosomeUptake
	reaction_re136=global_par_k_OligAutophagUptake*x(57);

% Reaction: id = re137, name = M/autophagyDopModWTasyn1Degr
	reaction_re137=compartment_c2*global_par_k_M_autophagyDegr*x(51);

% Species:   id = s3, name = SOURCE, constant	const_species_s3=1.0;

	xdot=zeros(89,1);
	
% Species:   id = s51, name = Lamp2a, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_re5) + (-1.0 * reaction_re8) + (-1.0 * reaction_re18) + (-1.0 * reaction_re25) + (-1.0 * reaction_re30) + ( 1.0 * reaction_re37) + ( 1.0 * reaction_re38) + ( 1.0 * reaction_re71) + ( 1.0 * reaction_re76) + ( 1.0 * reaction_re77) + ( 1.0 * reaction_re78) + ( 1.0 * reaction_re79) + ( 1.0 * reaction_re80) + ( 1.0 * reaction_re81) + ( 1.0 * reaction_re82) + (-1.0 * reaction_re83) + (-1.0 * reaction_re84) + (-1.0 * reaction_re85) + (-1.0 * reaction_re86);
	
% Species:   id = s52, name = WTasyn, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_re37) + (-1.0 * reaction_re70);
	
% Species:   id = s53, name = WTasyn2, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_re38) + (-1.0 * reaction_re69);
	
% Species:   id = s78, name = WTasyndegr, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re5) + (-1.0 * reaction_re37) + (-1.0 * reaction_re94);
	
% Species:   id = s85, name = WTasyn2degr, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_re8) + (-1.0 * reaction_re38) + ( 1.0 * reaction_re94) + (-1.0 * reaction_re95);
	
% Species:   id = s211, name = WTasyn2merCMADegr, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_re69);
	
% Species:   id = s213, name = WTasynCMADegr, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_re70);
	
% Species:   id = s482, name = DopModWTasyn2merOnLamp, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re33) + (-1.0 * reaction_re72);
	
% Species:   id = s483, name = DopModWTasyn3merOnLamp, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re72) + (-1.0 * reaction_re73);
	
% Species:   id = s484, name = DopModWTasyn4merOnLamp, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re73) + (-1.0 * reaction_re74);
	
% Species:   id = s489, name = DopModWTasyn7merOnLamp, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_re34) + (-1.0 * reaction_re35);
	
% Species:   id = s490, name = DopModWTasyn6merOnLamp, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_re34) + ( 1.0 * reaction_re75);
	
% Species:   id = s491, name = DopModWTasyn5merOnLamp, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_re74) + (-1.0 * reaction_re75);
	
% Species:   id = s492, name = DopModWTasyn8merOnLamp, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re35) + (-1.0 * reaction_re36);
	
% Species:   id = s493, name = DopModWTasyn9merOnLamp, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_re36);
	
% Species:   id = s494, name = WTasyn3merOnLamp, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_re76) + ( 1.0 * reaction_re83) + ( 1.0 * reaction_re95) + (-1.0 * reaction_re96);
	
% Species:   id = s495, name = WTasyn4merOnLamp, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_re77) + ( 1.0 * reaction_re84) + ( 1.0 * reaction_re96) + (-1.0 * reaction_re97);
	
% Species:   id = s496, name = WTasyn5merOnLamp, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_re18) + (-1.0 * reaction_re78) + ( 1.0 * reaction_re97) + (-1.0 * reaction_re98);
	
% Species:   id = s498, name = WTasyn6merOnLamp, affected by kineticLaw
	xdot(19) = (-1.0 * reaction_re79) + ( 1.0 * reaction_re85) + ( 1.0 * reaction_re98) + (-1.0 * reaction_re99);
	
% Species:   id = s499, name = WTasyn7merOnLamp, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_re25) + (-1.0 * reaction_re80) + ( 1.0 * reaction_re99) + (-1.0 * reaction_re100);
	
% Species:   id = s500, name = WTasyn8merOnLamp, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_re81) + (-1.0 * reaction_re82) + ( 1.0 * reaction_re100) + (-1.0 * reaction_re101);
	
% Species:   id = s501, name = WTasyn9merOnLamp, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_re30) + (-1.0 * reaction_re71) + ( 1.0 * reaction_re101);
	
% Species:   id = s536, name = DopModWTasynOnLamp, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_re33) + ( 1.0 * reaction_re86);
	
% Species:   id = s107, name = WTasyn2merM/Adegr, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_re43) + ( 1.0 * reaction_re135);
	
% Species:   id = s108, name = WTasyn3merM/Adegr, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_re42);
	
% Species:   id = s109, name = WTasyn4merM/Adegrr, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_re40);
	
% Species:   id = s110, name = WTasyn5merM/Adegr, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_re45);
	
% Species:   id = s111, name = WTasyn6merM/Adegr, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_re46);
	
% Species:   id = s112, name = WTasyn7merM/Adegr, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_re44);
	
% Species:   id = s113, name = WTasyn8merM/Adegr, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_re41);
	
% Species:   id = s445, name = DopModWTasyn2merM/Adegr, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_re89) + ( 1.0 * reaction_re137);
	
% Species:   id = s446, name = DopModWTasyn3merM/Adegr, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_re88);
	
% Species:   id = s447, name = DopModWTasyn4merM/Adegr, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_re87);
	
% Species:   id = s448, name = DopModWTasyn6merM/Adegr, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_re90);
	
% Species:   id = s451, name = DopModWTasyn8merM/Adegr, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_re93);
	
% Species:   id = s517, name = WTasyn4, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_re12) + (-1.0 * reaction_re40);
	
% Species:   id = s518, name = WTasyn5, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_re15) + (-1.0 * reaction_re45);
	
% Species:   id = s519, name = WTasyn6, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_re19) + (-1.0 * reaction_re46);
	
% Species:   id = s520, name = WTasyn3, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_re9) + (-1.0 * reaction_re42);
	
% Species:   id = s521, name = WTasyn2, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_re6) + (-1.0 * reaction_re43);
	
% Species:   id = s522, name = WTasyn7, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_re22) + (-1.0 * reaction_re44);
	
% Species:   id = s523, name = WTasyn8, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_re26) + (-1.0 * reaction_re41);
	
% Species:   id = s524, name = DopModWTasyn7merM/Adegr, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_re91) + ( 1.0 * reaction_re92);
	
% Species:   id = s525, name = DopModWTasyn8, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_re65) + (-1.0 * reaction_re93);
	
% Species:   id = s526, name = DopModWTasyn7, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_re62) + (-1.0 * reaction_re92);
	
% Species:   id = s528, name = DopModWTasyn6, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_re59) + (-1.0 * reaction_re91);
	
% Species:   id = s529, name = DopModWTasyn5, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_re56) + (-1.0 * reaction_re90);
	
% Species:   id = s530, name = DopModWTasyn4, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_re53) + (-1.0 * reaction_re87);
	
% Species:   id = s531, name = DopModWTasyn3, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_re50) + (-1.0 * reaction_re88);
	
% Species:   id = s533, name = WTasyn, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_re134) + (-1.0 * reaction_re135);
	
% Species:   id = s535, name = DopModWTasyn, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_re136) + (-1.0 * reaction_re137);
	
% Species:   id = s527, name = DopModWTasyn2, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_re48) + (-1.0 * reaction_re89);
	
% Species:   id = s1, name = DopModWTasyn5, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_re54) + (-1.0 * reaction_re56) + (-1.0 * reaction_re57) + (-1.0 * reaction_re58) + ( 1.0 * reaction_re120) + (-1.0 * reaction_re122);
	
% Species:   id = s2, name = DopModWTasyn4, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_re51) + (-1.0 * reaction_re53) + (-1.0 * reaction_re54) + (-1.0 * reaction_re55) + (-1.0 * reaction_re121) + ( 1.0 * reaction_re122);
	
% Species:   id = s5, name = DopModWTasyn3, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_re49) + (-1.0 * reaction_re50) + (-1.0 * reaction_re51) + (-1.0 * reaction_re52) + ( 1.0 * reaction_re121) + (-1.0 * reaction_re123);
	
% Species:   id = s6, name = DopModWTasyn2, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_re32) + (-1.0 * reaction_re48) + (-1.0 * reaction_re49) + ( 1.0 * reaction_re123) + (-1.0 * reaction_re124);
	
% Species:   id = s7, name = DopModWTasyn, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_re4) + (-2.0 * reaction_re32) + (-1.0 * reaction_re33) + (-1.0 * reaction_re34) + (-1.0 * reaction_re35) + (-1.0 * reaction_re36) + (-1.0 * reaction_re49) + (-1.0 * reaction_re51) + (-1.0 * reaction_re54) + (-1.0 * reaction_re57) + (-1.0 * reaction_re60) + (-1.0 * reaction_re63) + (-1.0 * reaction_re66) + (-1.0 * reaction_re72) + (-1.0 * reaction_re73) + (-1.0 * reaction_re74) + (-1.0 * reaction_re75) + (-1.0 * reaction_re86) + ( 1.0 * reaction_re117) + ( 1.0 * reaction_re118) + ( 1.0 * reaction_re119) + ( 1.0 * reaction_re120) + ( 1.0 * reaction_re121) + ( 1.0 * reaction_re122) + ( 1.0 * reaction_re123) + ( 2.0 * reaction_re124) + (-1.0 * reaction_re136);
	
% Species:   id = s17, name = WTasyn, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_re1) + (-2.0 * reaction_re3) + (-1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re7) + (-1.0 * reaction_re10) + (-1.0 * reaction_re13) + (-1.0 * reaction_re16) + (-1.0 * reaction_re20) + (-1.0 * reaction_re23) + (-1.0 * reaction_re27) + (-1.0 * reaction_re47) + (-1.0 * reaction_re94) + (-1.0 * reaction_re95) + (-1.0 * reaction_re96) + (-1.0 * reaction_re97) + (-1.0 * reaction_re98) + (-1.0 * reaction_re99) + (-1.0 * reaction_re100) + (-1.0 * reaction_re101) + ( 1.0 * reaction_re125) + ( 1.0 * reaction_re126) + ( 1.0 * reaction_re127) + ( 1.0 * reaction_re128) + ( 1.0 * reaction_re129) + ( 1.0 * reaction_re130) + ( 1.0 * reaction_re131) + ( 2.0 * reaction_re132) + (-1.0 * reaction_re133) + (-1.0 * reaction_re134);
	
% Species:   id = s18, name = WTasyn2, affected by kineticLaw
	xdot(59) = ( 1.0 * reaction_re3) + (-1.0 * reaction_re6) + (-1.0 * reaction_re7) + (-1.0 * reaction_re8) + ( 1.0 * reaction_re131) + (-1.0 * reaction_re132);
	
% Species:   id = s20, name = WTasyn3, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_re7) + (-1.0 * reaction_re9) + (-1.0 * reaction_re10) + (-1.0 * reaction_re11) + ( 1.0 * reaction_re76) + (-1.0 * reaction_re83) + ( 1.0 * reaction_re130) + (-1.0 * reaction_re131);
	
% Species:   id = s21, name = DopModWTasyn6, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_re57) + (-1.0 * reaction_re59) + (-1.0 * reaction_re60) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re119) + (-1.0 * reaction_re120);
	
% Species:   id = s22, name = Dopamine, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_re2) + (-1.0 * reaction_re4) + (-1.0 * reaction_re31);
	
% Species:   id = s23, name = WTasyn5, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_re13) + (-1.0 * reaction_re15) + (-1.0 * reaction_re16) + (-1.0 * reaction_re17) + (-1.0 * reaction_re18) + ( 1.0 * reaction_re78) + ( 1.0 * reaction_re128) + (-1.0 * reaction_re129);
	
% Species:   id = s24, name = WTasyn4, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_re10) + (-1.0 * reaction_re12) + (-1.0 * reaction_re13) + (-1.0 * reaction_re14) + ( 1.0 * reaction_re77) + (-1.0 * reaction_re84) + ( 1.0 * reaction_re129) + (-1.0 * reaction_re130);
	
% Species:   id = s25, name = DopModWTasyn7, affected by kineticLaw
	xdot(65) = ( 1.0 * reaction_re60) + (-1.0 * reaction_re62) + (-1.0 * reaction_re63) + (-1.0 * reaction_re64) + ( 1.0 * reaction_re118) + (-1.0 * reaction_re119);
	
% Species:   id = s26, name = DopModWTasyn8, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_re63) + (-1.0 * reaction_re65) + (-1.0 * reaction_re66) + (-1.0 * reaction_re67) + ( 1.0 * reaction_re117) + (-1.0 * reaction_re118);
	
% Species:   id = s27, name = DopModWTasyn9, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_re66) + (-1.0 * reaction_re68) + (-1.0 * reaction_re117);
	
% Species:   id = s29, name = WTasyn9, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_re27) + (-1.0 * reaction_re29) + (-1.0 * reaction_re30) + (-1.0 * reaction_re47) + ( 1.0 * reaction_re71) + (-1.0 * reaction_re125);
	
% Species:   id = s30, name = WTasyn8, affected by kineticLaw
	xdot(69) = ( 1.0 * reaction_re23) + (-1.0 * reaction_re26) + (-1.0 * reaction_re27) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re81) + (-1.0 * reaction_re82) + ( 1.0 * reaction_re125) + (-1.0 * reaction_re126);
	
% Species:   id = s31, name = WTasyn7, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_re20) + (-1.0 * reaction_re22) + (-1.0 * reaction_re23) + (-1.0 * reaction_re24) + (-1.0 * reaction_re25) + ( 1.0 * reaction_re80) + ( 1.0 * reaction_re126) + (-1.0 * reaction_re127);
	
% Species:   id = s32, name = WTasyn6, affected by kineticLaw
	xdot(71) = ( 1.0 * reaction_re16) + (-1.0 * reaction_re19) + (-1.0 * reaction_re20) + (-1.0 * reaction_re21) + ( 1.0 * reaction_re79) + (-1.0 * reaction_re85) + ( 1.0 * reaction_re127) + (-1.0 * reaction_re128);
	
% Species:   id = s33, name = HigherWTasynSPC, affected by kineticLaw
	xdot(72) = ( 1.0 * reaction_re47) + (-1.0 * reaction_re116) + (-1.0 * reaction_re133) + ( 1.0 * reaction_re133);
	
% Species:   id = s35, name = Proteasome, affected by kineticLaw
	xdot(73) = (-1.0 * reaction_re11) + (-1.0 * reaction_re14) + (-1.0 * reaction_re17) + (-1.0 * reaction_re21) + (-1.0 * reaction_re24) + (-1.0 * reaction_re28) + (-1.0 * reaction_re29) + (-1.0 * reaction_re52) + (-1.0 * reaction_re55) + (-1.0 * reaction_re58) + (-1.0 * reaction_re61) + (-1.0 * reaction_re64) + (-1.0 * reaction_re67) + (-1.0 * reaction_re68) + ( 1.0 * reaction_re102) + ( 1.0 * reaction_re103) + ( 1.0 * reaction_re104) + ( 1.0 * reaction_re105) + ( 1.0 * reaction_re106) + ( 1.0 * reaction_re107) + ( 1.0 * reaction_re108) + ( 1.0 * reaction_re109) + ( 1.0 * reaction_re110) + ( 1.0 * reaction_re111) + ( 1.0 * reaction_re112) + ( 1.0 * reaction_re113) + ( 1.0 * reaction_re114) + ( 1.0 * reaction_re115) + (-1.0 * reaction_re116);
	
% Species:   id = s200, name = Dopamine_degraded, affected by kineticLaw
	xdot(74) = ( 1.0 * reaction_re31);
	
% Species:   id = s381, name = ProtWTasyn3, affected by kineticLaw
	xdot(75) = ( 1.0 * reaction_re11) + (-1.0 * reaction_re102);
	
% Species:   id = s383, name = ProtWTasyn4, affected by kineticLaw
	xdot(76) = ( 1.0 * reaction_re14) + (-1.0 * reaction_re103);
	
% Species:   id = s385, name = ProtWTasyn5, affected by kineticLaw
	xdot(77) = ( 1.0 * reaction_re17) + (-1.0 * reaction_re104);
	
% Species:   id = s387, name = ProtWTasyn6, affected by kineticLaw
	xdot(78) = ( 1.0 * reaction_re21) + (-1.0 * reaction_re105);
	
% Species:   id = s389, name = ProtWTasyn7, affected by kineticLaw
	xdot(79) = ( 1.0 * reaction_re24) + (-1.0 * reaction_re106);
	
% Species:   id = s391, name = ProtWTasyn8, affected by kineticLaw
	xdot(80) = ( 1.0 * reaction_re28) + (-1.0 * reaction_re107);
	
% Species:   id = s393, name = ProtWTasyn9, affected by kineticLaw
	xdot(81) = ( 1.0 * reaction_re29) + (-1.0 * reaction_re108);
	
% Species:   id = s473, name = ProtDopModWTasyn3, affected by kineticLaw
	xdot(82) = ( 1.0 * reaction_re52) + (-1.0 * reaction_re109);
	
% Species:   id = s474, name = ProtDopModWTasyn4, affected by kineticLaw
	xdot(83) = ( 1.0 * reaction_re55) + (-1.0 * reaction_re110);
	
% Species:   id = s475, name = ProtDopModWTasyn5, affected by kineticLaw
	xdot(84) = ( 1.0 * reaction_re58) + (-1.0 * reaction_re111);
	
% Species:   id = s476, name = ProtDopModWTasyn6, affected by kineticLaw
	xdot(85) = ( 1.0 * reaction_re61) + (-1.0 * reaction_re112);
	
% Species:   id = s477, name = ProtDopModWTasyn7, affected by kineticLaw
	xdot(86) = ( 1.0 * reaction_re64) + (-1.0 * reaction_re113);
	
% Species:   id = s478, name = ProtDopModWTasyn8, affected by kineticLaw
	xdot(87) = ( 1.0 * reaction_re67) + (-1.0 * reaction_re114);
	
% Species:   id = s479, name = ProtDopModWTasyn9, affected by kineticLaw
	xdot(88) = ( 1.0 * reaction_re68) + (-1.0 * reaction_re115);
	
% Species:   id = s502, name = ProtWTasynHigherSPC, affected by kineticLaw
	xdot(89) = ( 1.0 * reaction_re116);
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


