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
% Model name = Carbo2013 - Mucosal Immune Response during H.pylori Infection
%
% is http://identifiers.org/biomodels.db/MODEL1307130000
% is http://identifiers.org/biomodels.db/BIOMD0000000480
% isDescribedBy http://identifiers.org/doi/10.1371/journal.pone.0073365
%


function main()
%Initial conditions vector
	x0=zeros(40,1);
	x0(1) = 5.34E-8;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 150000.0;
	x0(6) = 1.0;
	x0(7) = 150000.0;
	x0(8) = 1.0;
	x0(9) = 150000.0;
	x0(10) = 1.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 1000000.0;
	x0(17) = 0.0;
	x0(18) = 1198199.01671451;
	x0(19) = 0.0;
	x0(20) = 1000000.0;
	x0(21) = 5501140.56260765;
	x0(22) = 1000000.0;
	x0(23) = 1198199.01671451;
	x0(24) = 1.0;
	x0(25) = 1.0;
	x0(26) = 10000.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 4501139.56260765;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 1.0E7;
	x0(33) = 4.17752018460542E7;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 5.17752018460542E7;
	x0(39) = 51775.2018460542;
	x0(40) = 1.0;


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

% Compartment: id = c1, name = Lumen, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = Lamina Propia, constant
	compartment_c2=1.0;
% Compartment: id = c4, name = Epithelium, constant
	compartment_c4=1.0;
% Compartment: id = c3, name = Gastric Lymph Node, constant
	compartment_c3=1.0;
% Parameter:   id =  parameter_1, name = vHP
	global_par_parameter_1=0.5;
% Parameter:   id =  parameter_2, name = vHP2
% Parameter:   id =  parameter_3, name = aTreg
	global_par_parameter_3=1.0;
% Parameter:   id =  parameter_4, name = aTh17
	global_par_parameter_4=0.3;
% Parameter:   id =  parameter_5, name = aTh1
% Parameter:   id =  parameter_7, name = kEB
	global_par_parameter_7=1.0E-6;
% Parameter:   id =  parameter_8, name = @eIE
	global_par_parameter_8=0.5;
% Parameter:   id =  parameter_9, name = @eEI
	global_par_parameter_9=1.0;
% Parameter:   id =  parameter_10, name = atreg
	global_par_parameter_10=1.0E-6;
% Parameter:   id =  parameter_11, name = ath1
% Parameter:   id =  parameter_12, name = ath17
	global_par_parameter_12=3.0E-7;
% Parameter:   id =  parameter_13, name = @uT
	global_par_parameter_13=0.143;
% Parameter:   id =  parameter_14, name = @vT
	global_par_parameter_14=0.1;
% Parameter:   id =  parameter_15, name = toemT
% Parameter:   id =  parameter_16, name = tcmT
% Parameter:   id =  parameter_17, name = pt
% Parameter:   id =  parameter_18, name = pT
% Parameter:   id =  parameter_19, name = uHP
	global_par_parameter_19=1.0;
% Parameter:   id =  parameter_20, name = lHP
	global_par_parameter_20=2.0;
% Parameter:   id =  parameter_21, name = @uE
	global_par_parameter_21=1.0;
% Parameter:   id =  parameter_22, name = Stim_emT_Th17
% Parameter:   id =  parameter_23, name = Stim_emT_Th1
% Parameter:   id =  parameter_24, name = Stim_emT_iTreg
% Parameter:   id =  parameter_25, name = Stim_cmT_Th1
% Parameter:   id =  parameter_26, name = Stim_cmT_Th17
% Parameter:   id =  parameter_27, name = Stim_cmT_iTreg
% Parameter:   id =  parameter_28, name = Stim_t_Th1
% Parameter:   id =  parameter_29, name = Stim_t_Th17
% Parameter:   id =  parameter_30, name = Stim_t_iTreg
% Parameter:   id =  parameter_31, name = Bc
	global_par_parameter_31=1000.0;
% Parameter:   id =  parameter_32, name = uCE
	global_par_parameter_32=1.0E-4;
% Parameter:   id =  parameter_33, name = @et
	global_par_parameter_33=100.0;
% Parameter:   id =  parameter_34, name = @ut
	global_par_parameter_34=1.0;
% Parameter:   id =  parameter_35, name = @lt
	global_par_parameter_35=1.0E8;
% Parameter:   id =  parameter_36, name = Bp
	global_par_parameter_36=1.0;
% Parameter:   id =  parameter_37, name = cyto_change
% Parameter:   id =  parameter_38, name = uM1
	global_par_parameter_38=1.0E-4;
% Parameter:   id =  parameter_39, name = Bd
	global_par_parameter_39=1.0;
% Parameter:   id =  parameter_40, name = Br
	global_par_parameter_40=1000.0;
% Parameter:   id =  parameter_41, name = er
	global_par_parameter_41=1000.0;
% Parameter:   id =  parameter_42, name = kTD
	global_par_parameter_42=1.0E-6;
% Parameter:   id =  parameter_44, name = udi_LP
	global_par_parameter_44=1.0;
% Parameter:   id =  parameter_45, name = um
	global_par_parameter_45=1.0;
% Parameter:   id =  parameter_47, name = k_lumen
	global_par_parameter_47=1.0E-6;
% Parameter:   id =  parameter_48, name = k_LP
	global_par_parameter_48=1.0E-6;
% Parameter:   id =  parameter_49, name = @pt_0
	global_par_parameter_49=512.0;
% Parameter:   id =  parameter_50, name = @pT_0
	global_par_parameter_50=128.0;
% Parameter:   id =  parameter_51, name = m_reg
	global_par_parameter_51=0.01;
% Parameter:   id =  parameter_52, name = m_HP
	global_par_parameter_52=0.01;
% Parameter:   id =  parameter_53, name = kGLN
	global_par_parameter_53=1.0E-6;
% Parameter:   id =  parameter_54, name = HP_Ep_Lumen
% Parameter:   id =  parameter_55, name = iDCtoeDC_Lumen
% Parameter:   id =  parameter_56, name = iDCtotDC_Lumen
% Parameter:   id =  parameter_57, name = iDCtoeDC_LP
% Parameter:   id =  parameter_58, name = iDCtotDC_LP
% Parameter:   id =  parameter_59, name = M0toM1_LP
% Parameter:   id =  parameter_60, name = M0toM2_LP
% Parameter:   id =  parameter_61, name = vm
	global_par_parameter_61=1.0;
% Parameter:   id =  parameter_62, name = uMA
	global_par_parameter_62=0.0218776162394955;
% Parameter:   id =  parameter_63, name = n
	global_par_parameter_63=2.0;
% Parameter:   id =  parameter_64, name = T_deactivation
% Parameter:   id =  parameter_43, name = iDC percentage
	global_par_parameter_43=0.01;
% Parameter:   id =  parameter_65, name = lm
	global_par_parameter_65=100000.0;
% Parameter:   id =  parameter_66, name = ld
	global_par_parameter_66=1000000.0;
% Parameter:   id =  parameter_6, name = HP Dose Response
	global_par_parameter_6=1.0E-6;
% Parameter:   id =  parameter_67, name = iTreg NS (rel)
% Parameter:   id =  parameter_68, name = Th1 NS (rel)
% Parameter:   id =  parameter_69, name = Th17 NS (rel)
% Parameter:   id =  parameter_70, name = Stimulation
	global_par_parameter_70=10.0;
% Parameter:   id =  parameter_71, name = iTreg S (rel)
% Parameter:   id =  parameter_72, name = Th1 S (rel)
% Parameter:   id =  parameter_73, name = Th17 S (rel)
% Parameter:   id =  parameter_46, name = @ud
	global_par_parameter_46=0.5;
% Parameter:   id =  parameter_74, name = vLB
	global_par_parameter_74=0.5;
% Parameter:   id =  parameter_75, name = vLB2
% Parameter:   id =  parameter_76, name = k_LB
	global_par_parameter_76=1.0;
% Parameter:   id =  parameter_77, name = iDCtotDC_LB
% Parameter:   id =  parameter_78, name = iDCtoeDC_LB
% Parameter:   id =  parameter_79, name = new_iTreg_GLN
% Parameter:   id =  parameter_80, name = new_Th1_GLN
% Parameter:   id =  parameter_81, name = new_Th17_GLN
% Parameter:   id =  parameter_82, name = new_emT_iTreg
% Parameter:   id =  parameter_83, name = new_emT_Th1
% Parameter:   id =  parameter_84, name = new_emT_Th17
% Parameter:   id =  parameter_85, name = er_i
	global_par_parameter_85=10000.0;
% Parameter:   id =  parameter_86, name = et_i
	global_par_parameter_86=10000.0;
% Parameter:   id =  parameter_87, name = K_r17
	global_par_parameter_87=1.0;
% Parameter:   id =  parameter_88, name = K_17r
	global_par_parameter_88=2.5;
% Parameter:   id =  parameter_89, name = v21
	global_par_parameter_89=2.0;
% Parameter:   id =  parameter_90, name = v12
	global_par_parameter_90=1.0;
% Parameter:   id =  parameter_91, name = ri_I
	global_par_parameter_91=100000.0;
% Parameter:   id =  parameter_92, name = ir_I
	global_par_parameter_92=100000.0;
% Parameter:   id =  parameter_93, name = phi_HP
	global_par_parameter_93=0.001;
% Parameter:   id =  parameter_94, name = uLB
	global_par_parameter_94=0.0714;
% Parameter:   id =  parameter_95, name = ath17LB
	global_par_parameter_95=3.0E-7;
% Parameter:   id =  parameter_96, name = ath1LB
% Parameter:   id =  parameter_97, name = aTh17LB
	global_par_parameter_97=0.3;
% Parameter:   id =  parameter_98, name = aTh1LB
% Parameter:   id =  parameter_99, name = Stim_emT_Th17LB
% Parameter:   id =  parameter_100, name = Stim_emT_Th1LB
% Parameter:   id =  parameter_101, name = Stim_cmT_Th1LB
% Parameter:   id =  parameter_102, name = Stim_cmT_Th17LB
% Parameter:   id =  parameter_103, name = Stim_t_Th1LB
% Parameter:   id =  parameter_104, name = Stim_t_Th17LB
% Parameter:   id =  parameter_105, name = vEC
	global_par_parameter_105=0.0;
% Parameter:   id =  parameter_106, name = Bc2
	global_par_parameter_106=1.0;
% Parameter:   id =  parameter_107, name = k_LP1
	global_par_parameter_107=0.62677;
% Parameter:   id =  ModelValue_3, name = Initial for aTh17
	global_par_ModelValue_3=0.3;
% Parameter:   id =  ModelValue_10, name = Initial for ath17
	global_par_ModelValue_10=3.0E-7;
% assignmentRule: variable = parameter_2
	global_par_parameter_2=1-global_par_parameter_1;
% assignmentRule: variable = parameter_5
	global_par_parameter_5=1-global_par_ModelValue_3;
% assignmentRule: variable = parameter_11
	global_par_parameter_11=1E-6-global_par_ModelValue_10;
% assignmentRule: variable = parameter_16
	global_par_parameter_16=global_par_parameter_13*global_par_parameter_14*0.6;
% assignmentRule: variable = parameter_15
	global_par_parameter_15=global_par_parameter_13*0.4*global_par_parameter_14;
% assignmentRule: variable = species_2
	x(21)=x(10)+x(20)+x(17)+x(29);
% assignmentRule: variable = species_3
	x(22)=x(16)+x(14)+x(15);
% assignmentRule: variable = species_4
	x(23)=x(11)+x(13)+x(12)+x(18);
% assignmentRule: variable = species_6
	x(37)=x(30)+x(31);
% assignmentRule: variable = species_8
	x(38)=x(35)+x(34)+x(36)+x(33)+x(32);
% assignmentRule: variable = species_9
	x(39)=0.01*(x(35)+x(34)+x(36)+(x(32)+x(33))/global_par_parameter_70);
% assignmentRule: variable = parameter_17
	global_par_parameter_17=global_par_parameter_49*1/(1+global_par_parameter_51*x(36));
% assignmentRule: variable = parameter_18
	global_par_parameter_18=global_par_parameter_50*1/(1+global_par_parameter_51*x(12)+global_par_parameter_52*x(19));
% assignmentRule: variable = parameter_22
	global_par_parameter_22=global_par_parameter_4*global_par_parameter_48;
% assignmentRule: variable = parameter_23
	global_par_parameter_23=global_par_parameter_48*global_par_parameter_5;
% assignmentRule: variable = parameter_24
	global_par_parameter_24=global_par_parameter_3*global_par_parameter_48;
% assignmentRule: variable = parameter_25
	global_par_parameter_25=global_par_parameter_5*global_par_parameter_53;
% assignmentRule: variable = parameter_26
	global_par_parameter_26=global_par_parameter_4*global_par_parameter_53;
% assignmentRule: variable = parameter_27
	global_par_parameter_27=global_par_parameter_3*global_par_parameter_53;
% assignmentRule: variable = parameter_28
	global_par_parameter_28=global_par_parameter_11*global_par_parameter_53;
% assignmentRule: variable = parameter_29
	global_par_parameter_29=global_par_parameter_12*global_par_parameter_53;
% assignmentRule: variable = parameter_30
	global_par_parameter_30=global_par_parameter_10*global_par_parameter_53;
% assignmentRule: variable = parameter_37
	global_par_parameter_37=global_par_parameter_7*global_par_parameter_36;
% assignmentRule: variable = parameter_54
	global_par_parameter_54=global_par_parameter_7*global_par_parameter_39;
% assignmentRule: variable = parameter_55
	global_par_parameter_55=global_par_parameter_1*global_par_parameter_107;
% assignmentRule: variable = parameter_56
	global_par_parameter_56=global_par_parameter_2*global_par_parameter_47;
% assignmentRule: variable = parameter_57
	global_par_parameter_57=global_par_parameter_1*global_par_parameter_107;
% assignmentRule: variable = parameter_58
	global_par_parameter_58=global_par_parameter_2*global_par_parameter_48;
% assignmentRule: variable = parameter_59
	global_par_parameter_59=global_par_parameter_1*global_par_parameter_48;
% assignmentRule: variable = parameter_60
	global_par_parameter_60=global_par_parameter_2*global_par_parameter_48;
% assignmentRule: variable = parameter_79
	global_par_parameter_79=global_par_parameter_17*(global_par_parameter_27*x(33)+global_par_parameter_30*x(32))*x(31);
% assignmentRule: variable = parameter_64
	global_par_parameter_64=(1-global_par_parameter_14)*global_par_parameter_13;
% assignmentRule: variable = parameter_67
	global_par_parameter_67=x(36)/x(38);
% assignmentRule: variable = parameter_68
	global_par_parameter_68=x(35)/x(38);
% assignmentRule: variable = parameter_69
	global_par_parameter_69=x(34)/x(38);
% assignmentRule: variable = parameter_71
	global_par_parameter_71=x(36)/x(39);
% assignmentRule: variable = parameter_72
	global_par_parameter_72=x(35)/x(39);
% assignmentRule: variable = parameter_73
	global_par_parameter_73=x(34)/x(39);
% assignmentRule: variable = parameter_75
	global_par_parameter_75=1-global_par_parameter_74;
% assignmentRule: variable = parameter_77
	global_par_parameter_77=global_par_parameter_75*global_par_parameter_76;
% assignmentRule: variable = parameter_78
	global_par_parameter_78=global_par_parameter_74*global_par_parameter_107;
% assignmentRule: variable = parameter_82
	global_par_parameter_82=global_par_parameter_18*global_par_parameter_24*(x(17)+x(15))*x(18);
% assignmentRule: variable = parameter_96
	global_par_parameter_96=1E-6-global_par_parameter_95;
% assignmentRule: variable = parameter_98
	global_par_parameter_98=1-global_par_parameter_97;
% assignmentRule: variable = parameter_100
	global_par_parameter_100=global_par_parameter_48*global_par_parameter_98;
% assignmentRule: variable = parameter_83
	global_par_parameter_83=global_par_parameter_18*(global_par_parameter_23*(x(14)+x(10))*x(18)+x(18)*x(24)*global_par_parameter_100);
% assignmentRule: variable = parameter_99
	global_par_parameter_99=global_par_parameter_48*global_par_parameter_97;
% assignmentRule: variable = parameter_84
	global_par_parameter_84=global_par_parameter_18*(global_par_parameter_22*(x(14)+x(10))*x(18)+x(18)*x(24)*global_par_parameter_99);
% assignmentRule: variable = parameter_101
	global_par_parameter_101=global_par_parameter_53*global_par_parameter_98;
% assignmentRule: variable = parameter_102
	global_par_parameter_102=global_par_parameter_53*global_par_parameter_97;
% assignmentRule: variable = parameter_103
	global_par_parameter_103=global_par_parameter_53*global_par_parameter_96;
% assignmentRule: variable = parameter_80
	global_par_parameter_80=global_par_parameter_17*((global_par_parameter_25*x(33)+global_par_parameter_28*x(32))*x(30)+(x(33)*global_par_parameter_101+x(32)*global_par_parameter_103)*x(40));
% assignmentRule: variable = parameter_104
	global_par_parameter_104=global_par_parameter_95*global_par_parameter_53;
% assignmentRule: variable = parameter_81
	global_par_parameter_81=global_par_parameter_17*((global_par_parameter_26*x(33)+global_par_parameter_29*x(32))*x(30)+x(40)*(x(33)*global_par_parameter_102+x(32)*global_par_parameter_104));

% Reaction: id = re2, name = re055
	reaction_re2=compartment_c4*function_3(x(26), x(1), global_par_parameter_7);

% Reaction: id = re3, name = re066
	reaction_re3=function_3(x(1), x(28), global_par_parameter_7);

% Reaction: id = re4, name = re059
	reaction_re4=compartment_c4*function_1(global_par_parameter_48, x(27), x(11), global_par_parameter_32, x(13), global_par_parameter_32, x(14), global_par_parameter_38);

% Reaction: id = re6, name = re105
	reaction_re6=compartment_c2*global_par_parameter_57*x(20)*x(19);

% Reaction: id = re11, name = re074
	reaction_re11=compartment_c2*function_8(x(18), global_par_parameter_24, x(15), global_par_parameter_24, x(17));

% Reaction: id = re13, name = re063
	reaction_re13=global_par_parameter_55*x(29)*x(1);

% Reaction: id = re15, name = re058
	reaction_re15=compartment_c4*function_1(global_par_parameter_48, x(26), x(11), global_par_parameter_32, x(13), global_par_parameter_32, x(14), global_par_parameter_38);

% Reaction: id = re16, name = re070
	reaction_re16=compartment_c2*function_2(global_par_parameter_61, x(16), x(14), global_par_parameter_63, global_par_parameter_91, x(10), global_par_parameter_91, x(11), global_par_parameter_91, x(13), global_par_parameter_91, x(27), global_par_parameter_106);

% Reaction: id = re17, name = re073
	reaction_re17=compartment_c2*function_4(global_par_parameter_61, x(16), x(15), global_par_parameter_63, global_par_parameter_92, x(12), global_par_parameter_92, x(17), global_par_parameter_92);

% Reaction: id = re18, name = re072
	reaction_re18=compartment_c2*function_2(global_par_parameter_89, x(15), x(11), global_par_parameter_63, global_par_parameter_91, x(14), global_par_parameter_91, x(10), global_par_parameter_91, x(13), global_par_parameter_91, x(27), global_par_parameter_31);

% Reaction: id = re20, name = re077
	reaction_re20=compartment_c2*global_par_parameter_58*x(20)*x(19);

% Reaction: id = re21, name = re078
	reaction_re21=global_par_parameter_9*x(10);

% Reaction: id = re22, name = re079
	reaction_re22=global_par_parameter_9*x(17);

% Reaction: id = re23, name = re080
	reaction_re23=compartment_c3*function_8(x(32), global_par_parameter_29, x(30), global_par_parameter_104, x(40));

% Reaction: id = re24, name = re081
	reaction_re24=compartment_c3*function_8(x(32), global_par_parameter_28, x(30), global_par_parameter_103, x(30));

% Reaction: id = re27, name = re082
	reaction_re27=compartment_c3*function_3(x(32), x(31), global_par_parameter_30);

% Reaction: id = re28, name = re083
	reaction_re28=compartment_c3*function_8(x(33), global_par_parameter_26, x(30), global_par_parameter_102, x(40));

% Reaction: id = re29, name = re084
	reaction_re29=compartment_c3*function_8(x(33), global_par_parameter_25, x(30), global_par_parameter_101, x(40));

% Reaction: id = re31, name = re085
	reaction_re31=compartment_c3*function_3(x(33), x(31), global_par_parameter_27);

% Reaction: id = re32, name = re087
	reaction_re32=global_par_parameter_8*x(34);

% Reaction: id = re33, name = re088
	reaction_re33=global_par_parameter_8*x(35);

% Reaction: id = re35, name = re089
	reaction_re35=global_par_parameter_8*x(36);

% Reaction: id = re41, name = re091
	reaction_re41=compartment_c3*function_4(global_par_parameter_87, x(36), x(35), global_par_parameter_63, global_par_parameter_91, x(30), global_par_parameter_91, x(34), global_par_parameter_91);

% Reaction: id = re42, name = re093
	reaction_re42=compartment_c2*function_2(global_par_parameter_87, x(12), x(13), global_par_parameter_63, global_par_parameter_91, x(10), global_par_parameter_91, x(14), global_par_parameter_91, x(11), global_par_parameter_91, x(27), global_par_parameter_31);

% Reaction: id = re43, name = re095
	reaction_re43=compartment_c2*global_par_parameter_15*x(13);

% Reaction: id = re44, name = re096
	reaction_re44=compartment_c2*global_par_parameter_15*x(11);

% Reaction: id = re45, name = re097
	reaction_re45=compartment_c2*global_par_parameter_15*x(12);

% Reaction: id = re46, name = re098
	reaction_re46=global_par_parameter_16*x(13);

% Reaction: id = re47, name = re099
	reaction_re47=global_par_parameter_16*x(11);

% Reaction: id = re49, name = re100
	reaction_re49=global_par_parameter_16*x(12);

% Reaction: id = reaction_1, name = re060
	reaction_reaction_1=compartment_c4*global_par_parameter_21*x(27);

% Reaction: id = reaction_2, name = re057
	reaction_reaction_2=compartment_c4*global_par_parameter_21*x(28);

% Reaction: id = reaction_3, name = re102
	reaction_reaction_3=compartment_c2*function_5(global_par_parameter_20, x(19), global_par_parameter_93);

% Reaction: id = reaction_4, name = re101
	reaction_reaction_4=compartment_c2*global_par_parameter_19*x(19);

% Reaction: id = reaction_5, name = re052
	reaction_reaction_5=compartment_c1*function_5(global_par_parameter_20, x(1), global_par_parameter_93);

% Reaction: id = reaction_6, name = re065
	reaction_reaction_6=compartment_c1*global_par_parameter_19*x(1);

% Reaction: id = reaction_10, name = re103
	reaction_reaction_10=compartment_c2*function_6(x(18), global_par_parameter_23, x(14), global_par_parameter_23, x(10), global_par_parameter_100, x(24));

% Reaction: id = reaction_11, name = re104
	reaction_reaction_11=compartment_c2*function_6(x(18), global_par_parameter_22, x(14), global_par_parameter_22, x(10), global_par_parameter_99, x(24));

% Reaction: id = reaction_12, name = re119
	reaction_reaction_12=compartment_c2*global_par_parameter_64*x(13);

% Reaction: id = reaction_13, name = re106
	reaction_reaction_13=compartment_c3*function_7(global_par_parameter_33, x(30), global_par_parameter_63, global_par_parameter_86, global_par_parameter_35);

% Reaction: id = reaction_14, name = re107
	reaction_reaction_14=compartment_c3*global_par_parameter_34*x(32);

% Reaction: id = reaction_16, name = re061
	reaction_reaction_16=function_3(x(1), x(27), global_par_parameter_37);

% Reaction: id = reaction_17, name = re062
	reaction_reaction_17=global_par_parameter_56*x(29)*x(1);

% Reaction: id = reaction_19, name = re067
	reaction_reaction_19=compartment_c2*function_9(x(19), global_par_parameter_48, global_par_parameter_39, x(27), global_par_parameter_38, x(14));

% Reaction: id = reaction_20, name = re053
	reaction_reaction_20=compartment_c1*function_3(x(1), x(27), global_par_parameter_54);

% Reaction: id = reaction_24, name = re068
	reaction_reaction_24=compartment_c2*function_10(global_par_parameter_66, global_par_parameter_41, x(27), global_par_parameter_63, global_par_parameter_40, x(14), global_par_parameter_85, x(10), global_par_parameter_85);

% Reaction: id = reaction_27, name = re069
	reaction_reaction_27=compartment_c2*function_10(global_par_parameter_65, global_par_parameter_41, x(14), global_par_parameter_63, global_par_parameter_85, x(27), global_par_parameter_40, x(10), global_par_parameter_85);

% Reaction: id = reaction_31, name = re111
	reaction_reaction_31=compartment_c2*global_par_parameter_44*x(20);

% Reaction: id = reaction_32, name = re112
	reaction_reaction_32=compartment_c2*global_par_parameter_45*x(16);

% Reaction: id = reaction_37, name = re117
	reaction_reaction_37=compartment_c2*global_par_parameter_62*x(14);

% Reaction: id = reaction_38, name = re118
	reaction_reaction_38=compartment_c2*global_par_parameter_62*x(15);

% Reaction: id = reaction_39, name = re120
	reaction_reaction_39=compartment_c2*global_par_parameter_64*x(11);

% Reaction: id = reaction_40, name = re121
	reaction_reaction_40=compartment_c2*global_par_parameter_64*x(12);

% Reaction: id = reaction_7, name = re071
	reaction_reaction_7=compartment_c2*function_4(global_par_parameter_90, x(14), x(12), global_par_parameter_63, global_par_parameter_92, x(15), global_par_parameter_92, x(17), global_par_parameter_92);

% Reaction: id = reaction_8, name = re094
	reaction_reaction_8=compartment_c2*function_4(global_par_parameter_88, x(13), x(12), global_par_parameter_63, global_par_parameter_92, x(17), global_par_parameter_92, x(15), global_par_parameter_92);

% Reaction: id = reaction_9, name = re092
	reaction_reaction_9=compartment_c3*function_11(global_par_parameter_88, x(34), x(36), global_par_parameter_63, global_par_parameter_92, x(31), global_par_parameter_92);

% Reaction: id = reaction_15, name = re122
	reaction_reaction_15=compartment_c2*global_par_parameter_59*x(16)*x(19);

% Reaction: id = reaction_18, name = re123
	reaction_reaction_18=compartment_c2*global_par_parameter_60*x(16)*x(19);

% Reaction: id = reaction_21, name = re116
	reaction_reaction_21=compartment_c3*global_par_parameter_46*x(30);

% Reaction: id = reaction_22, name = re124
	reaction_reaction_22=compartment_c3*global_par_parameter_46*x(31);

% Reaction: id = reaction_23, name = re127	% Local Parameter:   id =  V, name = V
	reaction_reaction_23_V=94.3761;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_23_k=1.35871;

	reaction_reaction_23=function_12(reaction_reaction_23_V, x(20), reaction_reaction_23_k, x(29));

% Reaction: id = reaction_25, name = re128
	reaction_reaction_25=function_3(x(29), x(2), global_par_parameter_77);

% Reaction: id = reaction_26, name = re129
	reaction_reaction_26=function_3(x(29), x(2), global_par_parameter_78);

% Reaction: id = reaction_28, name = re130
	reaction_reaction_28=compartment_c1*global_par_parameter_94*x(2);

% Reaction: id = reaction_41, name = re137
	reaction_reaction_41=global_par_parameter_9*x(24);

% Reaction: id = reaction_42, name = re138
	reaction_reaction_42=compartment_c3*global_par_parameter_46*x(40);

% Reaction: id = reaction_43, name = re139
	reaction_reaction_43=compartment_c4*function_2(global_par_parameter_105, x(26), x(11), global_par_parameter_63, global_par_parameter_91, x(13), global_par_parameter_91, x(10), global_par_parameter_91, x(14), global_par_parameter_91, x(27), global_par_parameter_106);

% Reaction: id = reaction_44, name = re140
	reaction_reaction_44=compartment_c3*global_par_parameter_46*x(40);

% Reaction: id = reaction_45, name = nTh1 creation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_45_k1=0.00260615;

	reaction_reaction_45=reaction_reaction_45_k1*x(32);

% Reaction: id = reaction_46, name = nTh1 trans	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_46_k1=0.105682;

	reaction_reaction_46=compartment_c1*reaction_reaction_46_k1*x(4);

% Reaction: id = reaction_47, name = nTh1_LP deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_47_k1=0.158489;

	reaction_reaction_47=compartment_c1*reaction_reaction_47_k1*x(5);

% Reaction: id = reaction_48, name = nTh1_LP expansion	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_48_k1=0.1;

	reaction_reaction_48=compartment_c1*reaction_reaction_48_k1*x(5);

% Reaction: id = reaction_49, name = nTh1 deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_49_k1=0.107647;

	reaction_reaction_49=compartment_c1*reaction_reaction_49_k1*x(4);

% Reaction: id = reaction_50, name = nTh17 creation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_50_k1=0.00214783;

	reaction_reaction_50=reaction_reaction_50_k1*x(32);

% Reaction: id = reaction_51, name = nTh17 trans	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_51_k1=0.11695;

	reaction_reaction_51=compartment_c1*reaction_reaction_51_k1*x(6);

% Reaction: id = reaction_52, name = nTh17_LP deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_52_k1=0.1;

	reaction_reaction_52=compartment_c1*reaction_reaction_52_k1*x(7);

% Reaction: id = reaction_53, name = nTh17 deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_53_k1=0.1;

	reaction_reaction_53=compartment_c1*reaction_reaction_53_k1*x(6);

% Reaction: id = reaction_54, name = nTreg creation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_54_k1=0.00346737;

	reaction_reaction_54=reaction_reaction_54_k1*x(32);

% Reaction: id = reaction_55, name = nTreg trans	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_55_k1=0.1;

	reaction_reaction_55=compartment_c1*reaction_reaction_55_k1*x(8);

% Reaction: id = reaction_56, name = nTreg_LP deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_56_k1=0.1;

	reaction_reaction_56=compartment_c1*reaction_reaction_56_k1*x(9);

% Reaction: id = reaction_57, name = nTreg deg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_57_k1=0.119124;

	reaction_reaction_57=compartment_c1*reaction_reaction_57_k1*x(8);

% Reaction: id = reaction_58, name = Th17 to Treg	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_58_k1=0.167494;

	reaction_reaction_58=compartment_c1*reaction_reaction_58_k1*x(7);

% Species:   id = species_7, name = HP Dose, constant	const_species_species_7=0.0534;

%Event: id=event_1
	event_event_1=time >= 2;

	if(event_event_1) 
		x(1)=x(1)+const_species_species_7*global_par_parameter_6;
		x(2)=x(2)+x(3);
	end

%Event: id=event_2
	event_event_2=time >= 4;

	if(event_event_2) 
		x(1)=x(1)+const_species_species_7*global_par_parameter_6;
		x(2)=x(2)+x(3);
	end

	xdot=zeros(40,1);
	
% Species:   id = s1, name = HP, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*((-1.0 * reaction_re3) + (-1.0 * reaction_re13) + (-1.0 * reaction_reaction_5) + ( 2.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_10, name = LB, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*((-1.0 * reaction_reaction_28));
	
% Species:   id = species_11, name = LB Dose
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = species_12, name = nTh1, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_49));
	
% Species:   id = species_13, name = nTh1_LP, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + ( 2.0 * reaction_reaction_48));
	
% Species:   id = species_14, name = nTh17, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_53));
	
% Species:   id = species_15, name = nTh17_LP, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_58));
	
% Species:   id = species_16, name = nTreg, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_57));
	
% Species:   id = species_17, name = nTreg_LP, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_58));
	
% Species:   id = s9, name = eDC, affected by kineticLaw
	xdot(10) = (1/(compartment_c2))*(( 1.0 * reaction_re6) + ( 1.0 * reaction_re13) + (-1.0 * reaction_re21) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = s13, name = Th1, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*(( 1.0 * reaction_re33) + (-1.0 * reaction_re44) + (-1.0 * reaction_re47) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_30));
	
% Species:   id = s15, name = iTreg, affected by kineticLaw
	xdot(12) = (1/(compartment_c2))*(( 1.0 * reaction_re11) + ( 1.0 * reaction_re35) + (-1.0 * reaction_re42) + (-1.0 * reaction_re45) + (-1.0 * reaction_re49) + (-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_29));
	
% Species:   id = s16, name = Th17, affected by kineticLaw
	xdot(13) = (1/(compartment_c2))*(( 1.0 * reaction_re32) + ( 1.0 * reaction_re42) + (-1.0 * reaction_re43) + (-1.0 * reaction_re46) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_33));
	
% Species:   id = s19, name = M1, affected by kineticLaw
	xdot(14) = (1/(compartment_c2))*(( 1.0 * reaction_re16) + ( 1.0 * reaction_re18) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = s21, name = M2, affected by kineticLaw
	xdot(15) = (1/(compartment_c2))*(( 1.0 * reaction_re17) + (-1.0 * reaction_re18) + (-1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_18));
	
% Species:   id = s22, name = M0, affected by kineticLaw
	xdot(16) = (1/(compartment_c2))*((-1.0 * reaction_re16) + (-1.0 * reaction_re17) + ( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_18));
	
% Species:   id = s25, name = tDC, affected by kineticLaw
	xdot(17) = (1/(compartment_c2))*(( 1.0 * reaction_re20) + (-1.0 * reaction_re22) + ( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_25));
	
% Species:   id = s17, name = emT, affected by kineticLaw
	xdot(18) = (1/(compartment_c2))*((-1.0 * reaction_re11) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re44) + ( 1.0 * reaction_re45) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = s6, name = HP, affected by kineticLaw
	xdot(19) = (1/(compartment_c2))*(( 1.0 * reaction_re3) + (-1.0 * reaction_re6) + (-1.0 * reaction_re20) + (-1.0 * reaction_reaction_3) + ( 2.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_1, name = iDC, affected by kineticLaw
	xdot(20) = (1/(compartment_c2))*((-1.0 * reaction_re6) + (-1.0 * reaction_re20) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_2, name = TotalDC, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = species_3, name = TotalM, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = species_4, name = TotalT, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = species_18, name = eDCLB, affected by kineticLaw
	xdot(24) = (1/(compartment_c2))*((-1.0 * reaction_reaction_41));
	
% Species:   id = species_19, name = pEC
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = s2, name = E, affected by kineticLaw
	xdot(26) = (1/(compartment_c4))*((-1.0 * reaction_re2) + (-1.0 * reaction_re15) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_43));
	
% Species:   id = s3, name = Ep, affected by kineticLaw
	xdot(27) = (1/(compartment_c4))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re4) + (-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = species_5, name = Edead, affected by kineticLaw
	xdot(28) = (1/(compartment_c4))*(( 1.0 * reaction_re4) + ( 1.0 * reaction_re15) + (-1.0 * reaction_reaction_2));
	
% Species:   id = s4, name = iDC, affected by kineticLaw
	xdot(29) = (1/(compartment_c4))*((-1.0 * reaction_re13) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = s26, name = eDC, affected by kineticLaw
	xdot(30) = (1/(compartment_c3))*(( 1.0 * reaction_re21) + (-1.0 * reaction_reaction_21));
	
% Species:   id = s27, name = tDC, affected by kineticLaw
	xdot(31) = (1/(compartment_c3))*(( 1.0 * reaction_re22) + (-1.0 * reaction_reaction_22));
	
% Species:   id = s28, name = nT, affected by kineticLaw
	xdot(32) = (1/(compartment_c3))*((-1.0 * reaction_re23) + (-1.0 * reaction_re24) + (-1.0 * reaction_re27) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_54));
	
% Species:   id = s29, name = cmT, affected by kineticLaw
	xdot(33) = (1/(compartment_c3))*((-1.0 * reaction_re28) + (-1.0 * reaction_re29) + (-1.0 * reaction_re31) + ( 1.0 * reaction_re46) + ( 1.0 * reaction_re47) + ( 1.0 * reaction_re49));
	
% Species:   id = s30, name = Th17, affected by kineticLaw
	xdot(34) = (1/(compartment_c3))*(( 1.0 * reaction_re23) + ( 1.0 * reaction_re28) + (-1.0 * reaction_re32) + ( 1.0 * reaction_re41) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_36));
	
% Species:   id = s31, name = Th1, affected by kineticLaw
	xdot(35) = (1/(compartment_c3))*(( 1.0 * reaction_re24) + ( 1.0 * reaction_re29) + (-1.0 * reaction_re33) + ( 1.0 * reaction_reaction_35));
	
% Species:   id = s33, name = iTreg, affected by kineticLaw
	xdot(36) = (1/(compartment_c3))*(( 1.0 * reaction_re27) + ( 1.0 * reaction_re31) + (-1.0 * reaction_re35) + (-1.0 * reaction_re41) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_34));
	
% Species:   id = species_6, name = TotalDC, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = species_8, name = TotalT, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = species_9, name = TotalT-s, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = species_20, name = eDCLB, affected by kineticLaw
	xdot(40) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_44));
end

function z=function_13(v), z=(v);end

function z=function_1(Vf,r1,A1,n1,A2,n2,A3,n3), z=(Vf*r1*(n1*A1+n2*A2+n3*A3));end

function z=function_3(substrate,a1,k1), z=(substrate*a1*k1);end

function z=function_8(substrate,k1,a1,k2,a2), z=(substrate*(k1*a1+k2*a2));end

function z=function_10(c,k,A,n,kA,B,kB,C,kC), z=(c+k*(A^n/(A^n+kA^n)+B^n/(B^n+kB^n)+C^n/(C^n+kC^n)));end

function z=function_7(k,A,n,kA,c), z=(c+k*A^n/(A^n+kA^n));end

function z=function_2(k,substrate,A,n,kA,B,kB,C,kC,D,kD,E,kE), z=(k*substrate*(A^n/(A^n+kA^n)+B^n/(B^n+kB^n)+C^n/(C^n+kC^n)+D^n/(D^n+kD^n)+E^n/(E^n+kE^n)));end

function z=function_4(k,substrate,A,n,kA,B,kB,C,kC), z=(k*substrate*(A^n/(A^n+kA^n)+B^n/(B^n+kB^n)+C^n/(C^n+kC^n)));end

function z=function_11(k,substrate,A,n,kA,B,kB), z=(k*substrate*(A^n/(A^n+kA^n)+B^n/(B^n+kB^n)));end

function z=function_5(k,sub,c), z=(k*sub/(c+sub));end

function z=function_12(V,s,k,P), z=(V*(s-k*P));end

function z=function_9(substrate,k,k1,a1,k2,a2), z=(substrate*k*(k1*a1+k2*a2));end

function z=function_6(substrate,k1,a1,k2,a2,k3,a3), z=(substrate*(k1*a1+k2*a2+k3*a3));end

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


