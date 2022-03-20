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
% Model name = Zake2021 - PBPK model of metformin in mice: single dose intavenous
%
% unknownQualifier http://identifiers.org/biomodels.db/MODEL2103020002
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% unknownQualifier http://identifiers.org/mamo/MAMO_0000203
% isDescribedBy http://identifiers.org/pubmed/33826656
% is http://identifiers.org/biomodels.db/MODEL2103020002
% is http://identifiers.org/biomodels.db/BIOMD0000001039
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 10645.7107463611;
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

% Compartment: id = IntestineLumen, name = IntestineLumen, constant
	compartment_IntestineLumen=0.6;
% Compartment: id = Liver, name = Liver, defined by a Rule
% Compartment: id = KidneyPlasma, name = KidneyPlasma, defined by a Rule
% Compartment: id = Remainder, name = Remainder, defined by a Rule
% Compartment: id = PlasmaVenous, name = PlasmaVenous, defined by a Rule
% Compartment: id = Urine, name = Urine, constant
	compartment_Urine=1.0;
% Compartment: id = Feces, name = Feces, constant
	compartment_Feces=1.0;
% Compartment: id = Heart, name = Heart, defined by a Rule
% Compartment: id = Muscle, name = Muscle, defined by a Rule
% Compartment: id = Brain, name = Brain, defined by a Rule
% Compartment: id = Adipose, name = Adipose, defined by a Rule
% Compartment: id = PlasmaArterial, name = PlasmaArterial, defined by a Rule
% Compartment: id = Lung, name = Lung, defined by a Rule
% Compartment: id = PortalVein, name = PortalVein, defined by a Rule
% Compartment: id = Stomach, name = Stomach, defined by a Rule
% Compartment: id = IntestineEnterocytes, name = IntestineEnterocytes, defined by a Rule
% Compartment: id = KidneyTissue, name = KidneyTissue, defined by a Rule
% Compartment: id = IntestineVascular, name = IntestineVascular, defined by a Rule
% Compartment: id = StomachLumen, name = StomachLumen, constant
	compartment_StomachLumen=0.4;
% Compartment: id = KidneyTubular, name = KidneyTubular, defined by a Rule
% Parameter:   id =  Metformin_Dose_in_Lumen_in_mg, name = Metformin Dose in Lumen in mg
	global_par_Metformin_Dose_in_Lumen_in_mg=0.0;
% Parameter:   id =  Body_Weight, name = Body Weight
	global_par_Body_Weight=27.5;
% Parameter:   id =  Metformin_Dose_in_Plasma_in_mg, name = Metformin Dose in Plasma in mg
	global_par_Metformin_Dose_in_Plasma_in_mg=1.375;
% Parameter:   id =  Cardiac_Output, name = Cardiac Output
	global_par_Cardiac_Output=838.8;
% Parameter:   id =  Ktp_Liver, name = Ktp_Liver
	global_par_Ktp_Liver=5.5;
% Parameter:   id =  Ktp_Brain, name = Ktp_Brain
	global_par_Ktp_Brain=0.8;
% Parameter:   id =  Ktp_Adipose, name = Ktp_Adipose
	global_par_Ktp_Adipose=0.73;
% Parameter:   id =  Ktp_Heart, name = Ktp_Heart
	global_par_Ktp_Heart=2.50008880523789;
% Parameter:   id =  Ktp_Kidney, name = Ktp_Kidney
	global_par_Ktp_Kidney=4.5;
% Parameter:   id =  Ktp_Muscle, name = Ktp_Muscle
	global_par_Ktp_Muscle=4.1;
% Parameter:   id =  Ktp_Remainder, name = Ktp_Remainder
	global_par_Ktp_Remainder=0.8;
% Parameter:   id =  QAdipose, name = QAdipose
% Parameter:   id =  QBrain, name = QBrain
% Parameter:   id =  QHeart, name = QHeart
% Parameter:   id =  QKidney, name = QKidney
% Parameter:   id =  QMuscle, name = QMuscle
% Parameter:   id =  QRemainder, name = QRemainder
% Parameter:   id =  mgLiver, name = mgLiver
% Parameter:   id =  mgIntestineLumen, name = mgIntestineLumen
% Parameter:   id =  mgBrain, name = mgBrain
% Parameter:   id =  mgAdipose, name = mgAdipose
% Parameter:   id =  mgHeart, name = mgHeart
% Parameter:   id =  mgKidneyPlasma, name = mgKidneyPlasma
% Parameter:   id =  mgRemainder, name = mgRemainder
% Parameter:   id =  mgMuscle, name = mgMuscle
% Parameter:   id =  mgPortalVein, name = mgPortalVein
% Parameter:   id =  mgUrine, name = mgUrine
% Parameter:   id =  mgFeces, name = mgFeces
% Parameter:   id =  mgIntestineEnterocytes, name = mgIntestineEnterocytes
% Parameter:   id =  Ktp_Lung, name = Ktp_Lung
	global_par_Ktp_Lung=3.0;
% Parameter:   id =  mgPlasmaVenous, name = mgPlasmaVenous
% Parameter:   id =  mgPlasmaArterial, name = mgPlasmaArterial
% Parameter:   id =  mgLung, name = mgLung
% Parameter:   id =  mgStomach, name = mgStomach
% Parameter:   id =  QLiverArtery, name = QLiverArtery
% Parameter:   id =  QStomach, name = QStomach
% Parameter:   id =  QPortalVein, name = QPortalVein
% Parameter:   id =  QIntestineVascular, name = QIntestineVascular
% Parameter:   id =  QLiverOut, name = QLiverOut
% Parameter:   id =  Ktp_Stomach, name = Ktp_Stomach
	global_par_Ktp_Stomach=3.20000000001417;
% Parameter:   id =  Ktp_IntestineVascular, name = Ktp_IntestineVascular
	global_par_Ktp_IntestineVascular=4.6;
% Parameter:   id =  mIntestineSum, name = mIntestineSum
% Parameter:   id =  Qgfr, name = Qgfr
	global_par_Qgfr=20.0;
% Parameter:   id =  mKidneySum, name = mKidneySum
% Parameter:   id =  mgKidneyTissues, name = mgKidneyTissues
% Parameter:   id =  mgIntestineVascular, name = mgIntestineVascular
% Parameter:   id =  mgStomachLumen, name = mgStomachLumen
% Parameter:   id =  QPortalVeinOut, name = QPortalVeinOut
% Parameter:   id =  mArterialPlasma__for_kidney, name = mArterialPlasma (for kidney)
% Parameter:   id =  mgKidneyTubular, name = mgKidneyTubular
% Parameter:   id =  mgKidneyTotal, name = mgKidneyTotal
% Parameter:   id =  mgIntestineTotal, name = mgIntestineTotal
% Parameter:   id =  Compartment_10, name = Initial for Adipose
	global_par_Compartment_10=1.925;
% Parameter:   id =  Compartment_9, name = Initial for Brain
	global_par_Compartment_9=0.45375;
% Parameter:   id =  Compartment_6, name = Initial for Feces
	global_par_Compartment_6=1.0;
% Parameter:   id =  Compartment_7, name = Initial for Heart
	global_par_Compartment_7=0.1375;
% Parameter:   id =  Compartment_15, name = Initial for IntestineEnterocytes
	global_par_Compartment_15=0.06875;
% Parameter:   id =  Compartment_0, name = Initial for IntestineLumen
	global_par_Compartment_0=0.6;
% Parameter:   id =  Compartment_17, name = Initial for IntestineVascular
	global_par_Compartment_17=0.627;
% Parameter:   id =  Compartment_2, name = Initial for KidneyPlasma
	global_par_Compartment_2=0.154;
% Parameter:   id =  Compartment_16, name = Initial for KidneyTissue
	global_par_Compartment_16=0.154;
% Parameter:   id =  Compartment_19, name = Initial for KidneyTubular
	global_par_Compartment_19=0.154;
% Parameter:   id =  Compartment_1, name = Initial for Liver
	global_par_Compartment_1=1.50975;
% Parameter:   id =  Compartment_12, name = Initial for Lung
	global_par_Compartment_12=0.20075;
% Parameter:   id =  Compartment_8, name = Initial for Muscle
	global_par_Compartment_8=10.56;
% Parameter:   id =  Compartment_11, name = Initial for PlasmaArterial
	global_par_Compartment_11=0.34375;
% Parameter:   id =  Compartment_4, name = Initial for PlasmaVenous
	global_par_Compartment_4=1.03125;
% Parameter:   id =  Compartment_13, name = Initial for PortalVein
	global_par_Compartment_13=0.1595;
% Parameter:   id =  Compartment_3, name = Initial for Remainder
	global_par_Compartment_3=9.85875;
% Parameter:   id =  Compartment_18, name = Initial for StomachLumen
	global_par_Compartment_18=0.4;
% Parameter:   id =  Compartment_14, name = Initial for Stomach
	global_par_Compartment_14=0.165;
% Parameter:   id =  Compartment_5, name = Initial for Urine
	global_par_Compartment_5=1.0;
% Parameter:   id =  ModelValue_1, name = Initial for Body Weight
	global_par_ModelValue_1=27.5;
% Parameter:   id =  ModelValue_3, name = Initial for Cardiac Output
	global_par_ModelValue_3=838.8;
% Parameter:   id =  ModelValue_0, name = Initial for Metformin Dose in Lumen in mg
	global_par_ModelValue_0=0.0;
% Parameter:   id =  ModelValue_37, name = Initial for QIntestineVascular
	global_par_ModelValue_37=113.238;
% Parameter:   id =  ModelValue_34, name = Initial for QLiverArtery
	global_par_ModelValue_34=16.776;
% Parameter:   id =  ModelValue_47, name = Initial for QPortalVeinOut
	global_par_ModelValue_47=180.342;
% Parameter:   id =  ModelValue_36, name = Initial for QPortalVein
	global_par_ModelValue_36=50.328;
% Parameter:   id =  ModelValue_35, name = Initial for QStomach
	global_par_ModelValue_35=16.776;
% assignmentRule: variable = mgUrine
	global_par_mgUrine=129.16*x(10)/compartment_Urine*global_par_Compartment_5/1000000;
% assignmentRule: variable = mgFeces
	global_par_mgFeces=129.16*x(9)/compartment_Feces*global_par_Compartment_6/1000000;
% assignmentRule: variable = Liver
	compartment_Liver=global_par_ModelValue_1*0.0549;
% assignmentRule: variable = KidneyPlasma
	compartment_KidneyPlasma=global_par_ModelValue_1*0.0056;
% assignmentRule: variable = mgKidneyPlasma
	global_par_mgKidneyPlasma=129.16*x(2)/compartment_KidneyPlasma*global_par_Compartment_2/1000000;
% assignmentRule: variable = Remainder
	compartment_Remainder=global_par_ModelValue_1*0.3585;
% assignmentRule: variable = mgRemainder
	global_par_mgRemainder=129.16*x(3)/compartment_Remainder*global_par_Compartment_3/1000000;
% assignmentRule: variable = PlasmaVenous
	compartment_PlasmaVenous=global_par_ModelValue_1*0.0375;
% assignmentRule: variable = Heart
	compartment_Heart=global_par_ModelValue_1*0.005;
% assignmentRule: variable = mgHeart
	global_par_mgHeart=129.16*x(5)/compartment_Heart*global_par_Compartment_7/1000000;
% assignmentRule: variable = Muscle
	compartment_Muscle=global_par_ModelValue_1*0.384;
% assignmentRule: variable = mgMuscle
	global_par_mgMuscle=129.16*x(6)/compartment_Muscle*global_par_Compartment_8/1000000;
% assignmentRule: variable = Brain
	compartment_Brain=global_par_ModelValue_1*0.0165;
% assignmentRule: variable = Adipose
	compartment_Adipose=global_par_ModelValue_1*0.07;
% assignmentRule: variable = mgAdipose
	global_par_mgAdipose=129.16*x(7)/compartment_Adipose*global_par_Compartment_10/1000000;
% assignmentRule: variable = PlasmaArterial
	compartment_PlasmaArterial=global_par_ModelValue_1*0.0125;
% assignmentRule: variable = Lung
	compartment_Lung=global_par_ModelValue_1*0.0073;
% assignmentRule: variable = PortalVein
	compartment_PortalVein=global_par_ModelValue_1*0.0058;
% assignmentRule: variable = mgPortalVein
	global_par_mgPortalVein=129.16*x(14)/compartment_PortalVein*global_par_Compartment_13/1000000;
% assignmentRule: variable = Stomach
	compartment_Stomach=global_par_ModelValue_1*0.006;
% assignmentRule: variable = IntestineEnterocytes
	compartment_IntestineEnterocytes=global_par_ModelValue_1*0.0025;
% assignmentRule: variable = mgIntestineEnterocytes
	global_par_mgIntestineEnterocytes=129.16*x(16)/compartment_IntestineEnterocytes*global_par_Compartment_15/1000000;
% assignmentRule: variable = KidneyTissue
	compartment_KidneyTissue=global_par_ModelValue_1*0.0056;
% assignmentRule: variable = IntestineVascular
	compartment_IntestineVascular=global_par_ModelValue_1*0.0228;
% assignmentRule: variable = KidneyTubular
	compartment_KidneyTubular=global_par_ModelValue_1*0.0056;
% assignmentRule: variable = mKidneySum
	global_par_mKidneySum=(global_par_Compartment_2*x(2)/compartment_KidneyPlasma+global_par_Compartment_16*x(17)/compartment_KidneyTissue+global_par_Compartment_19*x(20)/compartment_KidneyTubular)/(global_par_Compartment_2+global_par_Compartment_16+global_par_Compartment_19);
% assignmentRule: variable = QAdipose
	global_par_QAdipose=global_par_ModelValue_3*0.005;
% assignmentRule: variable = QBrain
	global_par_QBrain=global_par_ModelValue_3*0.033;
% assignmentRule: variable = QHeart
	global_par_QHeart=global_par_ModelValue_3*0.066;
% assignmentRule: variable = QKidney
	global_par_QKidney=global_par_ModelValue_3*0.091;
% assignmentRule: variable = QMuscle
	global_par_QMuscle=global_par_ModelValue_3*0.159;
% assignmentRule: variable = QRemainder
	global_par_QRemainder=global_par_ModelValue_3*0.411;
% assignmentRule: variable = mgLiver
	global_par_mgLiver=129.16*x(1)/compartment_Liver*global_par_Compartment_1/1000000;
% assignmentRule: variable = mgIntestineLumen
	global_par_mgIntestineLumen=129.16*x(11)/compartment_IntestineLumen*global_par_Compartment_0/1000000;
% assignmentRule: variable = mgBrain
	global_par_mgBrain=129.16*x(8)/compartment_Brain*global_par_Compartment_9/1000000;
% assignmentRule: variable = mgKidneyTissues
	global_par_mgKidneyTissues=129.16*global_par_Compartment_16*x(17)/compartment_KidneyTissue/1000000;
% assignmentRule: variable = mgIntestineVascular
	global_par_mgIntestineVascular=129.16*x(18)/compartment_IntestineVascular*global_par_Compartment_17/1000000;
% assignmentRule: variable = mgStomachLumen
	global_par_mgStomachLumen=129.16*x(19)/compartment_StomachLumen*global_par_Compartment_18/1000000;
% assignmentRule: variable = mArterialPlasma__for_kidney
	global_par_mArterialPlasma__for_kidney=x(12)/compartment_PlasmaArterial;
% assignmentRule: variable = mgKidneyTubular
	global_par_mgKidneyTubular=129.16*global_par_Compartment_19*x(20)/compartment_KidneyTubular/1000000;
% assignmentRule: variable = mgKidneyTotal
	global_par_mgKidneyTotal=global_par_mgKidneyPlasma+global_par_mgKidneyTissues+global_par_mgKidneyTubular;
% assignmentRule: variable = mgIntestineTotal
	global_par_mgIntestineTotal=global_par_mgIntestineEnterocytes+global_par_mgIntestineVascular;
% assignmentRule: variable = mgPlasmaVenous
	global_par_mgPlasmaVenous=129.16*x(4)/compartment_PlasmaVenous*global_par_Compartment_4/1000000;
% assignmentRule: variable = mgPlasmaArterial
	global_par_mgPlasmaArterial=129.16*x(12)/compartment_PlasmaArterial*global_par_Compartment_11/1000000;
% assignmentRule: variable = mgLung
	global_par_mgLung=129.16*x(13)/compartment_Lung*global_par_Compartment_12/1000000;
% assignmentRule: variable = mgStomach
	global_par_mgStomach=129.16*x(15)/compartment_Stomach*global_par_Compartment_14/1000000;
% assignmentRule: variable = QLiverArtery
	global_par_QLiverArtery=global_par_ModelValue_3*0.02;
% assignmentRule: variable = QStomach
	global_par_QStomach=global_par_ModelValue_3*0.02;
% assignmentRule: variable = QPortalVein
	global_par_QPortalVein=global_par_ModelValue_3*0.06;
% assignmentRule: variable = QIntestineVascular
	global_par_QIntestineVascular=global_par_ModelValue_3*0.135;
% assignmentRule: variable = QPortalVeinOut
	global_par_QPortalVeinOut=global_par_ModelValue_35+global_par_ModelValue_36+global_par_ModelValue_37;
% assignmentRule: variable = QLiverOut
	global_par_QLiverOut=global_par_ModelValue_47+global_par_ModelValue_34;
% assignmentRule: variable = mIntestineSum
	global_par_mIntestineSum=(x(16)/compartment_IntestineEnterocytes*global_par_Compartment_15+global_par_Compartment_17*x(18)/compartment_IntestineVascular)/(global_par_Compartment_15+global_par_Compartment_17);

% Reaction: id = _03_5__IntestineVascular____PortalVein, name = 03.5. IntestineVascular -> PortalVein
	reaction__03_5__IntestineVascular____PortalVein=Flow_from_organ(global_par_QIntestineVascular, x(18)/compartment_IntestineVascular, global_par_Ktp_IntestineVascular);

% Reaction: id = _06_3__Liver____PlasmaVenous, name = 06.3. Liver -> PlasmaVenous
	reaction__06_3__Liver____PlasmaVenous=Flow_from_organ(global_par_QLiverOut, x(1)/compartment_Liver, global_par_Ktp_Liver);

% Reaction: id = _13_2__KidneyPlasma____PlasmaVenous, name = 13.2. KidneyPlasma -> PlasmaVenous
	reaction__13_2__KidneyPlasma____PlasmaVenous=Flow_from_organ(global_par_QKidney, x(2)/compartment_KidneyPlasma, global_par_Ktp_Kidney);

% Reaction: id = _09_2__Muscle____PlasmaVenous, name = 09.2. Muscle -> PlasmaVenous
	reaction__09_2__Muscle____PlasmaVenous=Flow_from_organ(global_par_QMuscle, x(6)/compartment_Muscle, global_par_Ktp_Muscle);

% Reaction: id = _12_2__Remainder____PlasmaVenous, name = 12.2. Remainder -> PlasmaVenous
	reaction__12_2__Remainder____PlasmaVenous=Flow_from_organ(global_par_QRemainder, x(3)/compartment_Remainder, global_par_Ktp_Remainder);

% Reaction: id = _02__IntestineLumen____Feces, name = 02. IntestineLumen -> Feces	% Local Parameter:   id =  k1, name = k1
	reaction__02__IntestineLumen____Feces_k1=0.177684;

	reaction__02__IntestineLumen____Feces=reaction__02__IntestineLumen____Feces_k1*x(11)/compartment_IntestineLumen;

% Reaction: id = _13_1__PlasmaArterial____KidneyPlasma, name = 13.1. PlasmaArterial -> KidneyPlasma
	reaction__13_1__PlasmaArterial____KidneyPlasma=Flow(global_par_QKidney, x(12)/compartment_PlasmaArterial);

% Reaction: id = _09_1__PlasmaArterial____Muscle, name = 09.1. PlasmaArterial -> Muscle
	reaction__09_1__PlasmaArterial____Muscle=Flow(global_par_QMuscle, x(12)/compartment_PlasmaArterial);

% Reaction: id = _12_1__PlasmaArterial____Remainder, name = 12.1. PlasmaArterial -> Remainder
	reaction__12_1__PlasmaArterial____Remainder=Flow(global_par_QRemainder, x(12)/compartment_PlasmaArterial);

% Reaction: id = _13_3__KidneyPlasma____KidneyTubular, name = 13.3. KidneyPlasma -> KidneyTubular
	reaction__13_3__KidneyPlasma____KidneyTubular=Glomerular(global_par_mArterialPlasma__for_kidney, global_par_Qgfr);

% Reaction: id = _06_2__PortalVein____Liver, name = 06.2. PortalVein -> Liver
	reaction__06_2__PortalVein____Liver=Flow(global_par_QPortalVeinOut, x(14)/compartment_PortalVein);

% Reaction: id = _05_1__PlasmaArterial____Stomach, name = 05.1. PlasmaArterial -> Stomach
	reaction__05_1__PlasmaArterial____Stomach=Flow(global_par_QStomach, x(12)/compartment_PlasmaArterial);

% Reaction: id = _05_2__Stomach____PortalVein, name = 05.2. Stomach -> PortalVein
	reaction__05_2__Stomach____PortalVein=Flow_from_organ(global_par_QStomach, x(15)/compartment_Stomach, global_par_Ktp_Stomach);

% Reaction: id = _04__PlasmaArterial____PortalVein, name = 04. PlasmaArterial -> PortalVein
	reaction__04__PlasmaArterial____PortalVein=Flow(global_par_QPortalVein, x(12)/compartment_PlasmaArterial);

% Reaction: id = _03_1__PlasmaArterial____IntestineVascular, name = 03.1. PlasmaArterial -> IntestineVascular
	reaction__03_1__PlasmaArterial____IntestineVascular=Flow(global_par_QIntestineVascular, x(12)/compartment_PlasmaArterial);

% Reaction: id = _06_1__PlasmaArterial____Liver, name = 06.1. PlasmaArterial -> Liver
	reaction__06_1__PlasmaArterial____Liver=Flow(global_par_QLiverArtery, x(12)/compartment_PlasmaArterial);

% Reaction: id = _03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3, name = 03.2. IntestineLumen -> IntestineEnterocytes (PMAT OCT3)	% Local Parameter:   id =  Km, name = Km
	reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3_Km=900.0;
	% Local Parameter:   id =  V, name = V
	reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3_V=1271.0;

	reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3=Henri_Michaelis_Menten__irreversible(x(11)/compartment_IntestineLumen, reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3_Km, reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3_V);

% Reaction: id = _03_4__IntestineLumen____IntestineVascular__Saturable, name = 03.4. IntestineLumen -> IntestineVascular (Saturable)	% Local Parameter:   id =  Km, name = Km
	reaction__03_4__IntestineLumen____IntestineVascular__Saturable_Km=60.0;
	% Local Parameter:   id =  V, name = V
	reaction__03_4__IntestineLumen____IntestineVascular__Saturable_V=19.2;

	reaction__03_4__IntestineLumen____IntestineVascular__Saturable=Henri_Michaelis_Menten__irreversible(x(11)/compartment_IntestineLumen, reaction__03_4__IntestineLumen____IntestineVascular__Saturable_Km, reaction__03_4__IntestineLumen____IntestineVascular__Saturable_V);

% Reaction: id = _03_3__IntestineEnterocytes____IntestineVascular__OCT1, name = 03.3. IntestineEnterocytes -> IntestineVascular (OCT1)	% Local Parameter:   id =  Km, name = Km
	reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1_Km=12300.0;
	% Local Parameter:   id =  V, name = V
	reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1_V=495.0;

	reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1=Henri_Michaelis_Menten__irreversible(x(16)/compartment_IntestineEnterocytes, reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1_Km, reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1_V);

% Reaction: id = _13_4__KidneyPlasma____KidneyTissue, name = 13.4. KidneyPlasma -> KidneyTissue	% Local Parameter:   id =  Km, name = Km
	reaction__13_4__KidneyPlasma____KidneyTissue_Km=1380.0;
	% Local Parameter:   id =  V, name = V
	reaction__13_4__KidneyPlasma____KidneyTissue_V=87339.5;

	reaction__13_4__KidneyPlasma____KidneyTissue=Henri_Michaelis_Menten__irreversible(x(2)/compartment_KidneyPlasma, reaction__13_4__KidneyPlasma____KidneyTissue_Km, reaction__13_4__KidneyPlasma____KidneyTissue_V);

% Reaction: id = _13_5__KidneyTissue____KidneyTubular, name = 13.5. KidneyTissue -> KidneyTubular	% Local Parameter:   id =  Km, name = Km
	reaction__13_5__KidneyTissue____KidneyTubular_Km=230.0;
	% Local Parameter:   id =  V, name = V
	reaction__13_5__KidneyTissue____KidneyTubular_V=3000.0;

	reaction__13_5__KidneyTissue____KidneyTubular=Henri_Michaelis_Menten__irreversible(x(17)/compartment_KidneyTissue, reaction__13_5__KidneyTissue____KidneyTubular_Km, reaction__13_5__KidneyTissue____KidneyTubular_V);

% Reaction: id = _01__StomachLumen_____IntestineLumen, name = 01. StomachLumen  -> IntestineLumen	% Local Parameter:   id =  k1, name = k1
	reaction__01__StomachLumen_____IntestineLumen_k1=3.16214;

	reaction__01__StomachLumen_____IntestineLumen=reaction__01__StomachLumen_____IntestineLumen_k1*x(19)/compartment_StomachLumen;

% Reaction: id = _07_2__Lung____PlasmaArterial, name = 07.2. Lung -> PlasmaArterial
	reaction__07_2__Lung____PlasmaArterial=Flow_from_organ(global_par_Cardiac_Output, x(13)/compartment_Lung, global_par_Ktp_Lung);

% Reaction: id = _07_1__PlasmaVenous____Lung, name = 07.1. PlasmaVenous -> Lung
	reaction__07_1__PlasmaVenous____Lung=Flow(global_par_Cardiac_Output, x(4)/compartment_PlasmaVenous);

% Reaction: id = _08_2__Brain____PlasmaVenous, name = 08.2. Brain -> PlasmaVenous
	reaction__08_2__Brain____PlasmaVenous=Flow_from_organ(global_par_QBrain, x(8)/compartment_Brain, global_par_Ktp_Brain);

% Reaction: id = _08_1__PlasmaArterial____Brain, name = 08.1. PlasmaArterial -> Brain
	reaction__08_1__PlasmaArterial____Brain=Flow(global_par_QBrain, x(12)/compartment_PlasmaArterial);

% Reaction: id = _11_2__Heart____PlasmaVenous, name = 11.2. Heart -> PlasmaVenous
	reaction__11_2__Heart____PlasmaVenous=Flow_from_organ(global_par_QHeart, x(5)/compartment_Heart, global_par_Ktp_Heart);

% Reaction: id = _11_1__PlasmaArterial____Heart, name = 11.1. PlasmaArterial -> Heart
	reaction__11_1__PlasmaArterial____Heart=Flow(global_par_QHeart, x(12)/compartment_PlasmaArterial);

% Reaction: id = _10_2__Adipose____PlasmaVenous, name = 10.2. Adipose -> PlasmaVenous
	reaction__10_2__Adipose____PlasmaVenous=Flow_from_organ(global_par_QAdipose, x(7)/compartment_Adipose, global_par_Ktp_Adipose);

% Reaction: id = _10_1__PlasmaArterial____Adipose, name = 10.1. PlasmaArterial -> Adipose
	reaction__10_1__PlasmaArterial____Adipose=Flow(global_par_QAdipose, x(12)/compartment_PlasmaArterial);

% Reaction: id = _13_6__KidneyTubular____UrineExternal, name = 13.6. KidneyTubular -> UrineExternal	% Local Parameter:   id =  k1, name = k1
	reaction__13_6__KidneyTubular____UrineExternal_k1=1.6;

	reaction__13_6__KidneyTubular____UrineExternal=reaction__13_6__KidneyTubular____UrineExternal_k1*x(20)/compartment_KidneyTubular;

% Reaction: id = _03_6__IntestineLumen____IntestineEnterocytes__Diffusion, name = 03.6. IntestineLumen -> IntestineEnterocytes (Diffusion)	% Local Parameter:   id =  k1, name = k1
	reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion_k1=0.14;
	% Local Parameter:   id =  k2, name = k2
	reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion_k2=0.14;

	reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion=reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion_k1*x(11)/compartment_IntestineLumen-reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion_k2*x(16)/compartment_IntestineEnterocytes;

% Reaction: id = _03_7__IntestineLumen____IntestineVascular__Diffusion, name = 03.7. IntestineLumen -> IntestineVascular (Diffusion)	% Local Parameter:   id =  k1, name = k1
	reaction__03_7__IntestineLumen____IntestineVascular__Diffusion_k1=0.26;
	% Local Parameter:   id =  k2, name = k2
	reaction__03_7__IntestineLumen____IntestineVascular__Diffusion_k2=0.26;

	reaction__03_7__IntestineLumen____IntestineVascular__Diffusion=reaction__03_7__IntestineLumen____IntestineVascular__Diffusion_k1*x(11)/compartment_IntestineLumen-reaction__03_7__IntestineLumen____IntestineVascular__Diffusion_k2*x(18)/compartment_IntestineVascular;

%Event: id=Oral_at_0_001
	event_Oral_at_0_001=time > 0.001;

	if(event_Oral_at_0_001) 
		x(19)=(1000000*global_par_ModelValue_0/(129.16*global_par_Compartment_18)+x(19)/compartment_StomachLumen)*compartment_StomachLumen;
	end

	xdot=zeros(20,1);
	
% Species:   id = mLiver, name = mLiver, affected by kineticLaw
	xdot(1) = (-1.0 * reaction__06_3__Liver____PlasmaVenous) + ( 1.0 * reaction__06_2__PortalVein____Liver) + ( 1.0 * reaction__06_1__PlasmaArterial____Liver);
	
% Species:   id = mKidneyPlasma, name = mKidneyPlasma, affected by kineticLaw
	xdot(2) = (-1.0 * reaction__13_2__KidneyPlasma____PlasmaVenous) + ( 1.0 * reaction__13_1__PlasmaArterial____KidneyPlasma) + (-1.0 * reaction__13_3__KidneyPlasma____KidneyTubular) + (-1.0 * reaction__13_4__KidneyPlasma____KidneyTissue);
	
% Species:   id = mRemainder, name = mRemainder, affected by kineticLaw
	xdot(3) = (-1.0 * reaction__12_2__Remainder____PlasmaVenous) + ( 1.0 * reaction__12_1__PlasmaArterial____Remainder);
	
% Species:   id = mPlasmaVenous, name = mPlasmaVenous, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction__06_3__Liver____PlasmaVenous) + ( 1.0 * reaction__13_2__KidneyPlasma____PlasmaVenous) + ( 1.0 * reaction__09_2__Muscle____PlasmaVenous) + ( 1.0 * reaction__12_2__Remainder____PlasmaVenous) + (-1.0 * reaction__07_1__PlasmaVenous____Lung) + ( 1.0 * reaction__08_2__Brain____PlasmaVenous) + ( 1.0 * reaction__11_2__Heart____PlasmaVenous) + ( 1.0 * reaction__10_2__Adipose____PlasmaVenous);
	
% Species:   id = mHeart, name = mHeart, affected by kineticLaw
	xdot(5) = (-1.0 * reaction__11_2__Heart____PlasmaVenous) + ( 1.0 * reaction__11_1__PlasmaArterial____Heart);
	
% Species:   id = mMuscle, name = mMuscle, affected by kineticLaw
	xdot(6) = (-1.0 * reaction__09_2__Muscle____PlasmaVenous) + ( 1.0 * reaction__09_1__PlasmaArterial____Muscle);
	
% Species:   id = mAdipose, name = mAdipose, affected by kineticLaw
	xdot(7) = (-1.0 * reaction__10_2__Adipose____PlasmaVenous) + ( 1.0 * reaction__10_1__PlasmaArterial____Adipose);
	
% Species:   id = mBrain, name = mBrain, affected by kineticLaw
	xdot(8) = (-1.0 * reaction__08_2__Brain____PlasmaVenous) + ( 1.0 * reaction__08_1__PlasmaArterial____Brain);
	
% Species:   id = mFeces, name = mFeces, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction__02__IntestineLumen____Feces);
	
% Species:   id = mUrine, name = mUrine, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction__13_6__KidneyTubular____UrineExternal);
	
% Species:   id = mIntestineLumen, name = mIntestineLumen, affected by kineticLaw
	xdot(11) = (-1.0 * reaction__02__IntestineLumen____Feces) + (-1.0 * reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3) + (-1.0 * reaction__03_4__IntestineLumen____IntestineVascular__Saturable) + ( 1.0 * reaction__01__StomachLumen_____IntestineLumen) + (-1.0 * reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion) + (-1.0 * reaction__03_7__IntestineLumen____IntestineVascular__Diffusion);
	
% Species:   id = mPlasmaArterial, name = mPlasmaArterial, affected by kineticLaw
	xdot(12) = (-1.0 * reaction__13_1__PlasmaArterial____KidneyPlasma) + (-1.0 * reaction__09_1__PlasmaArterial____Muscle) + (-1.0 * reaction__12_1__PlasmaArterial____Remainder) + (-1.0 * reaction__05_1__PlasmaArterial____Stomach) + (-1.0 * reaction__04__PlasmaArterial____PortalVein) + (-1.0 * reaction__03_1__PlasmaArterial____IntestineVascular) + (-1.0 * reaction__06_1__PlasmaArterial____Liver) + ( 1.0 * reaction__07_2__Lung____PlasmaArterial) + (-1.0 * reaction__08_1__PlasmaArterial____Brain) + (-1.0 * reaction__11_1__PlasmaArterial____Heart) + (-1.0 * reaction__10_1__PlasmaArterial____Adipose);
	
% Species:   id = mLung, name = mLung, affected by kineticLaw
	xdot(13) = (-1.0 * reaction__07_2__Lung____PlasmaArterial) + ( 1.0 * reaction__07_1__PlasmaVenous____Lung);
	
% Species:   id = mPortalVein, name = mPortalVein, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction__03_5__IntestineVascular____PortalVein) + (-1.0 * reaction__06_2__PortalVein____Liver) + ( 1.0 * reaction__05_2__Stomach____PortalVein) + ( 1.0 * reaction__04__PlasmaArterial____PortalVein);
	
% Species:   id = mStomach, name = mStomach, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction__05_1__PlasmaArterial____Stomach) + (-1.0 * reaction__05_2__Stomach____PortalVein);
	
% Species:   id = mIntestineEnterocytes, name = mIntestineEnterocytes, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction__03_2__IntestineLumen____IntestineEnterocytes__PMAT_OCT3) + (-1.0 * reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1) + ( 1.0 * reaction__03_6__IntestineLumen____IntestineEnterocytes__Diffusion);
	
% Species:   id = mKidneyTissue, name = mKidneyTissue, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction__13_4__KidneyPlasma____KidneyTissue) + (-1.0 * reaction__13_5__KidneyTissue____KidneyTubular);
	
% Species:   id = mIntestineVascular, name = mIntestineVascular, affected by kineticLaw
	xdot(18) = (-1.0 * reaction__03_5__IntestineVascular____PortalVein) + ( 1.0 * reaction__03_1__PlasmaArterial____IntestineVascular) + ( 1.0 * reaction__03_4__IntestineLumen____IntestineVascular__Saturable) + ( 1.0 * reaction__03_3__IntestineEnterocytes____IntestineVascular__OCT1) + ( 1.0 * reaction__03_7__IntestineLumen____IntestineVascular__Diffusion);
	
% Species:   id = mStomachLumen, name = mStomachLumen, affected by kineticLaw
	xdot(19) = (-1.0 * reaction__01__StomachLumen_____IntestineLumen);
	
% Species:   id = mKidneyTubular, name = mKidneyTubular, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction__13_3__KidneyPlasma____KidneyTubular) + ( 1.0 * reaction__13_5__KidneyTissue____KidneyTubular) + (-1.0 * reaction__13_6__KidneyTubular____UrineExternal);
end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Glomerular(S,Flow), z=(S*Flow());end

function z=Flow(Q,S), z=(Q*S);end

function z=Flow_from_organ(Q,S,Ktp), z=(Q*S/Ktp);end

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


