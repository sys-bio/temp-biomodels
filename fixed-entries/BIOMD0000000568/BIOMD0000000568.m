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
% Model name = Mueller2015 - Hepatocyte proliferation, T160 phosphorylation of CDK2
%
% is http://identifiers.org/biomodels.db/MODEL1502090000
% is http://identifiers.org/biomodels.db/BIOMD0000000568
% isDescribedBy http://identifiers.org/pubmed/25771250
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 0.415;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.099620260255418;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.020805213622291;
	x0(15) = 0.0409109861876772;
	x0(16) = 0.0337275199303406;
	x0(17) = 0.129299840363777;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 1.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 6.2223;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 1.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0601;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 25.5914;
	x0(39) = 0.0;


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

% Compartment: id = cell, name = Cytoplasm, constant
	compartment_cell=1.0;
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Parameter:   id =  Vnuc, name = Vnuc
	global_par_Vnuc=0.25;
% Parameter:   id =  Vcyto, name = Vcyto
	global_par_Vcyto=12.67;
% Parameter:   id =  perk, name = perk
	global_par_perk=0.00857314138104046;
% Parameter:   id =  nerk, name = nerk
	global_par_nerk=1.14663416967514;
% Parameter:   id =  pakt, name = pakt
	global_par_pakt=0.0348;
% Parameter:   id =  nakt, name = nakt
	global_par_nakt=1.0957;
% Parameter:   id =  aerk, name = aerk
	global_par_aerk=0.16;
% Parameter:   id =  aakt, name = aakt
	global_par_aakt=0.53;
% Parameter:   id =  atf, name = atf
	global_par_atf=0.601288203846636;
% Parameter:   id =  ks_c4, name = ks_c4
	global_par_ks_c4=14298.6715905912;
% Parameter:   id =  kdeg_c4, name = kdeg_c4
	global_par_kdeg_c4=1.01433121526038;
% Parameter:   id =  kdeg_c4gsk3b, name = kdeg_c4gsk3b
	global_par_kdeg_c4gsk3b=0.107637073030656;
% Parameter:   id =  ks_c2myc, name = ks_c2myc
	global_par_ks_c2myc=0.157511710670132;
% Parameter:   id =  ks_c2e2f, name = ks_c2e2f
	global_par_ks_c2e2f=2.19944932286058;
% Parameter:   id =  kdeg_c2c2gsk3b, name = kdeg_c2c2gsk3b
	global_par_kdeg_c2c2gsk3b=5.58835572681068;
% Parameter:   id =  kdeg_c2gsk3b, name = kdeg_c2gsk3b
	global_par_kdeg_c2gsk3b=1.55090179808215E-5;
% Parameter:   id =  kdeg_c2, name = kdeg_c2
	global_par_kdeg_c2=0.225746618767114;
% Parameter:   id =  kdp_c2cak, name = kdp_c2cak
	global_par_kdp_c2cak=101.282119534273;
% Parameter:   id =  kc2cak, name = kc2cak
	global_par_kc2cak=0.316993285134466;
% Parameter:   id =  ks_p21p53, name = ks_p21p53
	global_par_ks_p21p53=3.84136205729286E-6;
% Parameter:   id =  ks_p21e2f, name = ks_p21e2f
	global_par_ks_p21e2f=0.811617200647839;
% Parameter:   id =  kdeg_p21erkskp2, name = kdeg_p21erkskp2
	global_par_kdeg_p21erkskp2=2.82976267377082E-4;
% Parameter:   id =  kdeg_p21c2skp2, name = kdeg_p21c2skp2
	global_par_kdeg_p21c2skp2=0.040108041739907;
% Parameter:   id =  kdeg_p21skp2, name = kdeg_p21skp2
	global_par_kdeg_p21skp2=0.750574831653576;
% Parameter:   id =  kdeg_p21gsk3b, name = kdeg_p21gsk3b
	global_par_kdeg_p21gsk3b=0.00464010657330714;
% Parameter:   id =  kdeg_p21erk, name = kdeg_p21erk
	global_par_kdeg_p21erk=0.736488746268804;
% Parameter:   id =  Kd_p21c4, name = Kd_p21c4
	global_par_Kd_p21c4=99.9965429570432;
% Parameter:   id =  kb_p21c4, name = kb_p21c4
	global_par_kb_p21c4=14.3083360067931;
% Parameter:   id =  Kd_p21c2, name = Kd_p21c2
	global_par_Kd_p21c2=0.0100024233821379;
% Parameter:   id =  kb_p21c2, name = kb_p21c2
	global_par_kb_p21c2=997.938141166465;
% Parameter:   id =  ki, name = ki
	global_par_ki=0.0918326575000322;
% Parameter:   id =  kinh_p21akt, name = kinh_p21akt
	global_par_kinh_p21akt=0.439662894183616;
% Parameter:   id =  ks_e2fe2f, name = ks_e2fe2f
	global_par_ks_e2fe2f=0.459601740303536;
% Parameter:   id =  ks_e2fmyc, name = ks_e2fmyc
	global_par_ks_e2fmyc=2.49174531457788E-6;
% Parameter:   id =  kdege2fplus, name = kdege2fplus
	global_par_kdege2fplus=4.18153340918872E-5;
% Parameter:   id =  kdeg_e2fbound, name = kdeg_e2fbound
	global_par_kdeg_e2fbound=0.0999954023364359;
% Parameter:   id =  ks_rb, name = ks_rb
	global_par_ks_rb=72.5245257602228;
% Parameter:   id =  ks_rbe2f, name = ks_rbe2f
	global_par_ks_rbe2f=20.0129834334888;
% Parameter:   id =  kdeg_rbp21, name = kdeg_rbp21
	global_par_kdeg_rbp21=0.863570809432207;
% Parameter:   id =  kdeg_rbbound, name = kdeg_rbbound
	global_par_kdeg_rbbound=0.0889964132806627;
% Parameter:   id =  kdegrbplus, name = kdegrbplus
	global_par_kdegrbplus=0.257763482477731;
% Parameter:   id =  kb_rbe2f, name = kb_rbe2f
	global_par_kb_rbe2f=229.976400323907;
% Parameter:   id =  Kd_rb_e2f, name = Kd_rb_e2f
	global_par_Kd_rb_e2f=50.002528361226;
% Parameter:   id =  kb_rbpe2f, name = kb_rbpe2f
	global_par_kb_rbpe2f=182.218452288549;
% Parameter:   id =  Kd_rbp_e2f, name = Kd_rbp_e2f
	global_par_Kd_rbp_e2f=481.484530572552;
% Parameter:   id =  kcatprbc4, name = kcatprbc4
	global_par_kcatprbc4=2797.82326282727;
% Parameter:   id =  kcatp_rbc2, name = kcatp_rbc2
	global_par_kcatp_rbc2=7142308.07232621;
% Parameter:   id =  kcatdp_rbc2, name = kcatdp_rbc2
	global_par_kcatdp_rbc2=0.00313841707547858;
% Parameter:   id =  kcatdp_rbc4, name = kcatdp_rbc4
	global_par_kcatdp_rbc4=2892.0219338341;
% Parameter:   id =  kinh_pp1, name = kinh_pp1
	global_par_kinh_pp1=16634.9400020267;
% Parameter:   id =  Km_dprb, name = Km_dprb
	global_par_Km_dprb=0.118988383643671;
% Parameter:   id =  Km_prb, name = Km_prb
	global_par_Km_prb=2.03458881189349;
% Parameter:   id =  nrb, name = nrb
	global_par_nrb=3.0;
% Parameter:   id =  k_dna, name = k_dna
	global_par_k_dna=0.00949790539669408;
% Parameter:   id =  k_delay, name = k_delay
	global_par_k_delay=23.6658781343201;
% Parameter:   id =  Vratio, name = Vratio
% Parameter:   id =  erk, name = erk
% Parameter:   id =  akt, name = akt
% Parameter:   id =  gsk3b, name = gsk3b
% Parameter:   id =  tf, name = tf
% Parameter:   id =  tfp21, name = tfp21
% Parameter:   id =  kp_c2cak, name = kp_c2cak
% Parameter:   id =  kd_p21c4, name = kd_p21c4
% Parameter:   id =  kd_p21c2, name = kd_p21c2
% Parameter:   id =  kimport, name = kimport
% Parameter:   id =  kdeg_e2ffree, name = kdeg_e2ffree
% Parameter:   id =  kdeg_rbfree, name = kdeg_rbfree
% Parameter:   id =  kd_rbe2f, name = kd_rbe2f
% Parameter:   id =  kd_rbpe2f, name = kd_rbpe2f
% Parameter:   id =  kcatp_rbc4, name = kcatp_rbc4
% Parameter:   id =  scale_TotcycDCDK4, name = scale_TotcycDCDK4
	global_par_scale_TotcycDCDK4=0.5651;
% Parameter:   id =  scale_TotcycECDK2, name = scale_TotcycECDK2
	global_par_scale_TotcycECDK2=0.1889;
% Parameter:   id =  scale_Totp21CDK2, name = scale_Totp21CDK2
	global_par_scale_Totp21CDK2=0.339790715037712;
% Parameter:   id =  scale_TotCDK2T160, name = scale_TotCDK2T160
	global_par_scale_TotCDK2T160=2.728395741944;
% Parameter:   id =  scale_TotRb, name = scale_TotRb
	global_par_scale_TotRb=0.2605;
% Parameter:   id =  scale_PhosRbS788, name = scale_PhosRbS788
	global_par_scale_PhosRbS788=0.673907327042472;
% Parameter:   id =  scale_PhosRbS800, name = scale_PhosRbS800
	global_par_scale_PhosRbS800=0.82377467648995;
% Parameter:   id =  scale_Totp21, name = scale_Totp21
	global_par_scale_Totp21=0.1728;
% Parameter:   id =  scale_TotE2F, name = scale_TotE2F
	global_par_scale_TotE2F=28.7418;
% assignmentRule: variable = ObsCDK2P21_obs
	x(15)=global_par_scale_Totp21CDK2*(global_par_Vnuc*(x(23)+x(21))+global_par_Vcyto*x(5))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsTotE2F_obs
	x(16)=(global_par_scale_TotE2F+global_par_scale_TotRb)*global_par_Vnuc*(x(33)+x(34)+x(32))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = hgf
	x(6)=piecewise(0, time < (-1), piecewise(0, time < 24, 1));
% assignmentRule: variable = inhp53
	x(7)=piecewise(0, time < (-1), piecewise(0, time < 0, 0));
% assignmentRule: variable = inherk
	x(8)=piecewise(0, time < (-1), piecewise(0, time < 0, 0));
% assignmentRule: variable = inhakt
	x(9)=piecewise(0, time < (-1), piecewise(0, time < 0, 0));
% assignmentRule: variable = inhc4d1
	x(10)=piecewise(0, time < (-1), piecewise(0, time < 0, 0));
% assignmentRule: variable = ObsTotCycECDK2_obs
	x(11)=global_par_scale_TotcycECDK2*(global_par_Vnuc*(x(23)+x(24)+x(22)+x(21))+global_par_Vcyto*(x(1)+x(5)))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsTotCDK2T160_obs
	x(12)=global_par_scale_TotCDK2T160*global_par_Vnuc*(x(22)+x(21))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsTotCycDCDK4_obs
	x(13)=global_par_scale_TotcycDCDK4*(global_par_Vnuc*x(25)+global_par_Vcyto*x(4))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsTotP21_obs
	x(14)=global_par_scale_Totp21*(global_par_Vnuc*(x(23)+x(35)+x(21)+x(25))+global_par_Vcyto*(x(3)+x(4)+x(5)))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsTotRb_obs
	x(17)=global_par_scale_TotRb*global_par_Vnuc*(x(38)+x(33)+x(37)+x(32)+x(36))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsPhosRbS788_obs
	x(18)=global_par_scale_PhosRbS788*global_par_Vnuc*(x(37)+x(32)+x(36))/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsPhosRbS800_obs
	x(19)=global_par_scale_PhosRbS800*global_par_Vnuc*x(36)/(global_par_Vnuc+global_par_Vcyto);
% assignmentRule: variable = ObsDNAContent_obs
	x(20)=2-(x(27)+x(28)+x(29)+x(30)+x(31)+x(39));
% assignmentRule: variable = Vratio
	global_par_Vratio=global_par_Vnuc/global_par_Vcyto;
% assignmentRule: variable = erk
	global_par_erk=(1-x(8))*((1-global_par_aerk)*(global_par_perk^global_par_nerk+1)*x(6)^global_par_nerk/(x(6)^global_par_nerk+global_par_perk^global_par_nerk)+global_par_aerk);
% assignmentRule: variable = akt
	global_par_akt=(1-x(9))*((1-global_par_aakt)*(global_par_pakt^global_par_nakt+1)*x(6)^global_par_nakt/(x(6)^global_par_nakt+global_par_pakt^global_par_nakt)+global_par_aakt);
% assignmentRule: variable = gsk3b
	global_par_gsk3b=1-global_par_akt;
% assignmentRule: variable = tf
	global_par_tf=(1-global_par_atf)*global_par_erk*(1-global_par_gsk3b)+global_par_atf;
% assignmentRule: variable = tfp21
	global_par_tfp21=(1-x(7))*global_par_tf;
% assignmentRule: variable = kp_c2cak
	global_par_kp_c2cak=global_par_kdp_c2cak+global_par_kc2cak;
% assignmentRule: variable = kd_p21c4
	global_par_kd_p21c4=global_par_Kd_p21c4*global_par_kb_p21c4;
% assignmentRule: variable = kd_p21c2
	global_par_kd_p21c2=global_par_Kd_p21c2*global_par_kb_p21c2;
% assignmentRule: variable = kimport
	global_par_kimport=global_par_ki/(1+global_par_kinh_p21akt*global_par_akt);
% assignmentRule: variable = kdeg_e2ffree
	global_par_kdeg_e2ffree=global_par_kdeg_e2fbound+global_par_kdege2fplus;
% assignmentRule: variable = kdeg_rbfree
	global_par_kdeg_rbfree=global_par_kdeg_rbbound+global_par_kdegrbplus;
% assignmentRule: variable = kd_rbe2f
	global_par_kd_rbe2f=global_par_kb_rbe2f*global_par_Kd_rb_e2f;
% assignmentRule: variable = kd_rbpe2f
	global_par_kd_rbpe2f=global_par_kb_rbpe2f*global_par_Kd_rbp_e2f;
% assignmentRule: variable = kcatp_rbc4
	global_par_kcatp_rbc4=global_par_kcatprbc4*(1-x(10));

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_cell*Function_for_reaction_1_0(compartment_cell, global_par_ks_c4, global_par_tf);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_cell*Function_for_reaction_2_0(x(34), x(32), compartment_cell, global_par_ks_c2e2f, global_par_ks_c2myc, global_par_tf);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_Nucleus*Function_for_reaction_3_0(x(23), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_cell*Function_for_reaction_4_0(x(1), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_cell*Function_for_reaction_5_0(x(34), compartment_cell, global_par_ks_p21e2f, global_par_ks_p21p53, global_par_tfp21);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_Nucleus*Function_for_reaction_6_0(x(23), compartment_cell, global_par_kd_p21c2);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_Nucleus*Function_for_reaction_7_0(x(34), x(22), x(23), compartment_cell, global_par_erk, global_par_kdeg_p21c2skp2, global_par_kdeg_p21erkskp2, global_par_kdeg_p21skp2);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_Nucleus*Function_for_reaction_8_0(x(34), compartment_cell, global_par_ks_rb, global_par_ks_rbe2f);

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_Nucleus*Function_for_reaction_9_0(x(38), compartment_cell, global_par_kdeg_rbfree);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_Nucleus*Function_for_reaction_10_0(x(33), compartment_cell, global_par_kdeg_rbbound);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_Nucleus*Function_for_reaction_11_0(x(38), x(35), compartment_cell, global_par_kdeg_rbp21);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_Nucleus*Function_for_reaction_12_0(x(35), x(33), compartment_cell, global_par_kdeg_rbp21);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_Nucleus*Function_for_reaction_13_0(x(34), compartment_cell, global_par_ks_e2fe2f, global_par_ks_e2fmyc, global_par_tf);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_Nucleus*Function_for_reaction_14_0(x(33), compartment_cell, global_par_kdeg_e2fbound);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_Nucleus*Function_for_reaction_15_0(x(33), compartment_cell, global_par_kd_rbe2f);

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_Nucleus*Function_for_reaction_16_0(global_par_Km_prb, x(38), x(25), compartment_cell, global_par_kcatp_rbc4, global_par_nrb);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_Nucleus*Function_for_reaction_17_0(global_par_Km_prb, x(33), x(25), compartment_cell, global_par_kcatp_rbc4, global_par_nrb);

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_Nucleus*Function_for_reaction_18_0(x(34), x(22), x(27), compartment_cell, global_par_k_dna);

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_cell*Function_for_reaction_19_0(x(2), compartment_cell, global_par_gsk3b, global_par_kdeg_c4, global_par_kdeg_c4gsk3b);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_Nucleus*Function_for_reaction_20_0(x(24), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_Nucleus*Function_for_reaction_21_0(x(24), compartment_cell, global_par_kp_c2cak);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_cell*Function_for_reaction_22_0(x(2), x(3), compartment_cell, global_par_kb_p21c4);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_cell*Function_for_reaction_23_0(x(3), x(1), compartment_cell, global_par_kb_p21c2);

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_Nucleus*Function_for_reaction_24_0(x(35), x(24), compartment_cell, global_par_kb_p21c2);

% Reaction: id = reaction_25, name = reaction_25
	reaction_reaction_25=Function_for_reaction_25_0(x(3), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_26, name = reaction_26
	reaction_reaction_26=compartment_cell*Function_for_reaction_26_0(x(3), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_27, name = reaction_27
	reaction_reaction_27=compartment_Nucleus*Function_for_reaction_27_0(x(35), compartment_cell, global_par_erk, global_par_gsk3b, global_par_kdeg_p21erk, global_par_kdeg_p21gsk3b);

% Reaction: id = reaction_28, name = reaction_28
	reaction_reaction_28=compartment_cell*Function_for_reaction_28_0(x(3), compartment_cell, global_par_erk, global_par_gsk3b, global_par_kdeg_p21erk, global_par_kdeg_p21gsk3b);

% Reaction: id = reaction_29, name = reaction_29
	reaction_reaction_29=compartment_Nucleus*Function_for_reaction_29_0(x(37), compartment_cell, global_par_kdeg_rbfree);

% Reaction: id = reaction_30, name = reaction_30
	reaction_reaction_30=compartment_Nucleus*Function_for_reaction_30_0(x(32), compartment_cell, global_par_kdeg_rbbound);

% Reaction: id = reaction_31, name = reaction_31
	reaction_reaction_31=compartment_Nucleus*Function_for_reaction_31_0(x(35), x(37), compartment_cell, global_par_kdeg_rbp21);

% Reaction: id = reaction_32, name = reaction_32
	reaction_reaction_32=compartment_Nucleus*Function_for_reaction_32_0(x(35), x(32), compartment_cell, global_par_kdeg_rbp21);

% Reaction: id = reaction_33, name = reaction_33
	reaction_reaction_33=compartment_Nucleus*Function_for_reaction_33_0(x(34), compartment_cell, global_par_kdeg_e2ffree);

% Reaction: id = reaction_34, name = reaction_34
	reaction_reaction_34=compartment_Nucleus*Function_for_reaction_34_0(x(32), compartment_cell, global_par_kdeg_e2fbound);

% Reaction: id = reaction_35, name = reaction_35
	reaction_reaction_35=compartment_Nucleus*Function_for_reaction_35_0(x(38), x(34), compartment_cell, global_par_kb_rbe2f);

% Reaction: id = reaction_36, name = reaction_36
	reaction_reaction_36=compartment_Nucleus*Function_for_reaction_36_0(x(34), x(37), compartment_cell, global_par_kb_rbpe2f);

% Reaction: id = reaction_37, name = reaction_37
	reaction_reaction_37=compartment_Nucleus*Function_for_reaction_37_0(x(32), compartment_cell, global_par_kd_rbpe2f);

% Reaction: id = reaction_38, name = reaction_38
	reaction_reaction_38=compartment_Nucleus*Function_for_reaction_38_0(global_par_Km_prb, x(37), x(22), compartment_cell, global_par_kcatp_rbc2, global_par_nrb);

% Reaction: id = reaction_39, name = reaction_39
	reaction_reaction_39=compartment_Nucleus*Function_for_reaction_39_0(global_par_Km_prb, x(32), x(22), compartment_cell, global_par_kcatp_rbc2, global_par_nrb);

% Reaction: id = reaction_40, name = reaction_40
	reaction_reaction_40=compartment_Nucleus*Function_for_reaction_40_0(global_par_Km_dprb, x(37), x(22), compartment_cell, global_par_kcatdp_rbc4, global_par_kinh_pp1, global_par_nrb);

% Reaction: id = reaction_41, name = reaction_41
	reaction_reaction_41=compartment_Nucleus*Function_for_reaction_41_0(global_par_Km_dprb, x(32), x(22), compartment_cell, global_par_kcatdp_rbc4, global_par_kinh_pp1, global_par_nrb);

% Reaction: id = reaction_42, name = reaction_42
	reaction_reaction_42=compartment_Nucleus*Function_for_reaction_42_0(x(28), compartment_cell, global_par_k_delay);

% Reaction: id = reaction_43, name = reaction_43
	reaction_reaction_43=compartment_cell*Function_for_reaction_43_0(x(4), compartment_cell, global_par_gsk3b, global_par_kdeg_c4, global_par_kdeg_c4gsk3b);

% Reaction: id = reaction_44, name = reaction_44
	reaction_reaction_44=compartment_Nucleus*Function_for_reaction_44_0(x(22), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_45, name = reaction_45
	reaction_reaction_45=compartment_cell*Function_for_reaction_45_0(x(5), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_46, name = reaction_46
	reaction_reaction_46=compartment_Nucleus*Function_for_reaction_46_0(x(22), compartment_cell, global_par_gsk3b, global_par_kdeg_c2c2gsk3b);

% Reaction: id = reaction_47, name = reaction_47
	reaction_reaction_47=compartment_Nucleus*Function_for_reaction_47_0(x(22), compartment_cell, global_par_kdp_c2cak);

% Reaction: id = reaction_48, name = reaction_48
	reaction_reaction_48=compartment_cell*Function_for_reaction_48_0(x(4), compartment_cell, global_par_kd_p21c4);

% Reaction: id = reaction_49, name = reaction_49
	reaction_reaction_49=compartment_Nucleus*Function_for_reaction_49_0(x(35), x(22), compartment_cell, global_par_kb_p21c2);

% Reaction: id = reaction_50, name = reaction_50
	reaction_reaction_50=compartment_cell*Function_for_reaction_50_0(x(5), compartment_cell, global_par_kd_p21c2);

% Reaction: id = reaction_51, name = reaction_51
	reaction_reaction_51=Function_for_reaction_51_0(x(4), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_52, name = reaction_52
	reaction_reaction_52=Function_for_reaction_52_0(x(5), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_53, name = reaction_53
	reaction_reaction_53=compartment_cell*Function_for_reaction_53_0(x(4), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_54, name = reaction_54
	reaction_reaction_54=compartment_cell*Function_for_reaction_54_0(x(5), global_par_Vratio, compartment_cell, global_par_kimport);

% Reaction: id = reaction_55, name = reaction_55
	reaction_reaction_55=compartment_Nucleus*Function_for_reaction_55_0(x(36), compartment_cell, global_par_kdeg_rbfree);

% Reaction: id = reaction_56, name = reaction_56
	reaction_reaction_56=compartment_Nucleus*Function_for_reaction_56_0(x(35), x(36), compartment_cell, global_par_kdeg_rbp21);

% Reaction: id = reaction_57, name = reaction_57
	reaction_reaction_57=compartment_Nucleus*Function_for_reaction_57_0(global_par_Km_dprb, x(22), x(36), compartment_cell, global_par_kcatdp_rbc2, global_par_kinh_pp1, global_par_nrb);

% Reaction: id = reaction_58, name = reaction_58
	reaction_reaction_58=compartment_Nucleus*Function_for_reaction_58_0(x(29), compartment_cell, global_par_k_delay);

% Reaction: id = reaction_59, name = reaction_59
	reaction_reaction_59=compartment_Nucleus*Function_for_reaction_59_0(x(25), compartment_cell, global_par_kdeg_c4);

% Reaction: id = reaction_60, name = reaction_60
	reaction_reaction_60=compartment_Nucleus*Function_for_reaction_60_0(x(21), compartment_cell, global_par_gsk3b, global_par_kdeg_c2, global_par_kdeg_c2gsk3b);

% Reaction: id = reaction_61, name = reaction_61
	reaction_reaction_61=compartment_Nucleus*Function_for_reaction_61_0(x(25), compartment_cell, global_par_kd_p21c4);

% Reaction: id = reaction_62, name = reaction_62
	reaction_reaction_62=compartment_Nucleus*Function_for_reaction_62_0(x(21), compartment_cell, global_par_kd_p21c2);

% Reaction: id = reaction_63, name = reaction_63
	reaction_reaction_63=compartment_Nucleus*Function_for_reaction_63_0(x(34), x(22), x(21), compartment_cell, global_par_erk, global_par_kdeg_p21c2skp2, global_par_kdeg_p21erkskp2, global_par_kdeg_p21skp2);

% Reaction: id = reaction_64, name = reaction_64
	reaction_reaction_64=compartment_Nucleus*Function_for_reaction_64_0(x(34), x(22), x(25), compartment_cell, global_par_erk, global_par_kdeg_p21c2skp2, global_par_kdeg_p21erkskp2, global_par_kdeg_p21skp2);

% Reaction: id = reaction_65, name = reaction_65
	reaction_reaction_65=compartment_Nucleus*Function_for_reaction_65_0(x(30), compartment_cell, global_par_k_delay);

% Reaction: id = reaction_66, name = reaction_66
	reaction_reaction_66=compartment_Nucleus*Function_for_reaction_66_0(x(26), compartment_cell, global_par_gsk3b, global_par_kdeg_c4, global_par_kdeg_c4gsk3b);

% Reaction: id = reaction_67, name = reaction_67
	reaction_reaction_67=compartment_Nucleus*Function_for_reaction_67_0(x(35), x(26), compartment_cell, global_par_kb_p21c4);

% Reaction: id = reaction_68, name = reaction_68
	reaction_reaction_68=compartment_Nucleus*Function_for_reaction_68_0(x(31), compartment_cell, global_par_k_delay);

% Reaction: id = reaction_69, name = reaction_69
	reaction_reaction_69=compartment_Nucleus*Function_for_reaction_69_0(x(39), compartment_cell, global_par_k_delay);

	xdot=zeros(39,1);
	
% Species:   id = S4, name = @cyto::C2E(T160~U,b), affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_50));
	
% Species:   id = S10, name = @cyto::C4D1(b), affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_48));
	
% Species:   id = S12, name = @cyto::p21(b), affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_50));
	
% Species:   id = S19, name = @cyto::C4D1(b!1).p21(b!1), affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_53));
	
% Species:   id = S20, name = @cyto::C2E(T160~U,b!1).p21(b!1), affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_54));
	
% Species:   id = hgf, name = HGF, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = inhp53, name = inhp53, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = inherk, name = inhERK, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = inhakt, name = inhAKT, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = inhc4d1, name = inhc4d1, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = ObsTotCycECDK2_obs, name = TotCycECDK2, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = ObsTotCDK2T160_obs, name = TotCDK2T160, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = ObsTotCycDCDK4_obs, name = TotCycDCDK4, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = ObsTotP21_obs, name = TotP21, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = ObsCDK2P21_obs, name = CDK2P21, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = ObsTotE2F_obs, name = TotE2F, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = ObsTotRb_obs, name = TotRb, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = ObsPhosRbS788_obs, name = PhosRbS788, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = ObsPhosRbS800_obs, name = PhosRbS800, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = ObsDNAContent_obs, name = DNAContent, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = S23, name = @nuc::C2E(T160~P,b!1).p21(b!1), affected by kineticLaw
	xdot(21) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63));
	
% Species:   id = S18, name = @nuc::C2E(T160~P,b), affected by kineticLaw
	xdot(22) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_62) + ( 1.0 * reaction_reaction_63));
	
% Species:   id = S3, name = @nuc::C2E(T160~U,b!1).p21(b!1), affected by kineticLaw
	xdot(23) = (1/(compartment_Nucleus))*((-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = S13, name = @nuc::C2E(T160~U,b), affected by kineticLaw
	xdot(24) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_47));
	
% Species:   id = S24, name = @nuc::C4D1(b!1).p21(b!1), affected by kineticLaw
	xdot(25) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_67));
	
% Species:   id = S26, name = @nuc::C4D1(b), affected by kineticLaw
	xdot(26) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67));
	
% Species:   id = S5, name = @nuc::dnapre(), affected by kineticLaw
	xdot(27) = (1/(compartment_Nucleus))*((-1.0 * reaction_reaction_18));
	
% Species:   id = S17, name = @nuc::dnapre1(), affected by kineticLaw
	xdot(28) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_42));
	
% Species:   id = S22, name = @nuc::dnapre2(), affected by kineticLaw
	xdot(29) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_58));
	
% Species:   id = S25, name = @nuc::dnapre3(), affected by kineticLaw
	xdot(30) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_65));
	
% Species:   id = S27, name = @nuc::dnapre4(), affected by kineticLaw
	xdot(31) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_68));
	
% Species:   id = S16, name = @nuc::e2f(b!1).rb(S788~P,S800~U,b!1), affected by kineticLaw
	xdot(32) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_41));
	
% Species:   id = S2, name = @nuc::e2f(b!1).rb(S788~U,S800~U,b!1), affected by kineticLaw
	xdot(33) = (1/(compartment_Nucleus))*((-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = S14, name = @nuc::e2f(b), affected by kineticLaw
	xdot(34) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_39));
	
% Species:   id = S11, name = @nuc::p21(b), affected by kineticLaw
	xdot(35) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_60) + ( 1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_67));
	
% Species:   id = S21, name = @nuc::rb(S788~P,S800~P,b), affected by kineticLaw
	xdot(36) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57));
	
% Species:   id = S15, name = @nuc::rb(S788~P,S800~U,b), affected by kineticLaw
	xdot(37) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_36) + ( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_57));
	
% Species:   id = S1, name = @nuc::rb(S788~U,S800~U,b), affected by kineticLaw
	xdot(38) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_40));
	
% Species:   id = S28, name = @nuc::dnapre5(), affected by kineticLaw
	xdot(39) = (1/(compartment_Nucleus))*(( 1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_69));
end

function z=Function_for_reaction_1_0(cell,ks_c4,tf), z=(ks_c4*tf/cell);end

function z=Function_for_reaction_2_0(S14,S16,cell,ks_c2e2f,ks_c2myc,tf), z=((ks_c2myc*tf+ks_c2e2f*(S14+S16))/cell);end

function z=Function_for_reaction_58_0(S22,cell,k_delay), z=(k_delay*S22/cell);end

function z=Function_for_reaction_59_0(S24,cell,kdeg_c4), z=(kdeg_c4*S24/cell);end

function z=Function_for_reaction_3_0(S3,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S3/cell);end

function z=Function_for_reaction_4_0(S4,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S4/cell);end

function z=Function_for_reaction_5_0(S14,cell,ks_p21e2f,ks_p21p53,tfp21), z=((ks_p21p53+ks_p21e2f*S14)*tfp21/cell);end

function z=Function_for_reaction_6_0(S3,cell,kd_p21c2), z=(kd_p21c2*S3/cell);end

function z=Function_for_reaction_7_0(S14,S18,S3,cell,erk,kdeg_p21c2skp2,kdeg_p21erkskp2,kdeg_p21skp2), z=((kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S3/cell);end

function z=Function_for_reaction_8_0(S14,cell,ks_rb,ks_rbe2f), z=((ks_rb+ks_rbe2f*S14)/cell);end

function z=Function_for_reaction_9_0(S1,cell,kdeg_rbfree), z=(kdeg_rbfree*S1/cell);end

function z=Function_for_reaction_10_0(S2,cell,kdeg_rbbound), z=(kdeg_rbbound*S2/cell);end

function z=Function_for_reaction_11_0(S1,S11,cell,kdeg_rbp21), z=(kdeg_rbp21*S11*S1/cell);end

function z=Function_for_reaction_12_0(S11,S2,cell,kdeg_rbp21), z=(kdeg_rbp21*S11*S2/cell);end

function z=Function_for_reaction_13_0(S14,cell,ks_e2fe2f,ks_e2fmyc,tf), z=((ks_e2fe2f*S14+ks_e2fmyc)*tf/cell);end

function z=Function_for_reaction_14_0(S2,cell,kdeg_e2fbound), z=(kdeg_e2fbound*S2/cell);end

function z=Function_for_reaction_15_0(S2,cell,kd_rbe2f), z=(kd_rbe2f*S2/cell);end

function z=Function_for_reaction_16_0(Km_prb,S1,S24,cell,kcatp_rbc4,nrb), z=(kcatp_rbc4*S24*S1^nrb/(Km_prb^nrb+S1^nrb)/cell);end

function z=Function_for_reaction_17_0(Km_prb,S2,S24,cell,kcatp_rbc4,nrb), z=(kcatp_rbc4*S24*S2^nrb/(Km_prb^nrb+S2^nrb)/cell);end

function z=Function_for_reaction_18_0(S14,S18,S5,cell,k_dna), z=(k_dna*S18*S14*S5/cell);end

function z=Function_for_reaction_19_0(S10,cell,gsk3b,kdeg_c4,kdeg_c4gsk3b), z=((kdeg_c4+kdeg_c4gsk3b*gsk3b)*S10/cell);end

function z=Function_for_reaction_20_0(S13,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S13/cell);end

function z=Function_for_reaction_21_0(S13,cell,kp_c2cak), z=(kp_c2cak*S13/cell);end

function z=Function_for_reaction_22_0(S10,S12,cell,kb_p21c4), z=(kb_p21c4*S10*S12/cell);end

function z=Function_for_reaction_23_0(S12,S4,cell,kb_p21c2), z=(kb_p21c2*S4*S12/cell);end

function z=Function_for_reaction_24_0(S11,S13,cell,kb_p21c2), z=(kb_p21c2*S11*S13/cell);end

function z=Function_for_reaction_25_0(S12,Vratio,cell,kimport), z=(kimport/Vratio*S12/cell);end

function z=Function_for_reaction_26_0(S12,Vratio,cell,kimport), z=(kimport*(1-1/Vratio)*S12/cell);end

function z=Function_for_reaction_27_0(S11,cell,erk,gsk3b,kdeg_p21erk,kdeg_p21gsk3b), z=((kdeg_p21gsk3b*gsk3b+kdeg_p21erk*erk)*S11/cell);end

function z=Function_for_reaction_28_0(S12,cell,erk,gsk3b,kdeg_p21erk,kdeg_p21gsk3b), z=((kdeg_p21gsk3b*gsk3b+kdeg_p21erk*erk)*S12/cell);end

function z=Function_for_reaction_29_0(S15,cell,kdeg_rbfree), z=(kdeg_rbfree*S15/cell);end

function z=Function_for_reaction_30_0(S16,cell,kdeg_rbbound), z=(kdeg_rbbound*S16/cell);end

function z=Function_for_reaction_31_0(S11,S15,cell,kdeg_rbp21), z=(kdeg_rbp21*S11*S15/cell);end

function z=Function_for_reaction_32_0(S11,S16,cell,kdeg_rbp21), z=(kdeg_rbp21*S11*S16/cell);end

function z=Function_for_reaction_33_0(S14,cell,kdeg_e2ffree), z=(kdeg_e2ffree*S14/cell);end

function z=Function_for_reaction_34_0(S16,cell,kdeg_e2fbound), z=(kdeg_e2fbound*S16/cell);end

function z=Function_for_reaction_35_0(S1,S14,cell,kb_rbe2f), z=(kb_rbe2f*S1*S14/cell);end

function z=Function_for_reaction_36_0(S14,S15,cell,kb_rbpe2f), z=(kb_rbpe2f*S14*S15/cell);end

function z=Function_for_reaction_37_0(S16,cell,kd_rbpe2f), z=(kd_rbpe2f*S16/cell);end

function z=Function_for_reaction_38_0(Km_prb,S15,S18,cell,kcatp_rbc2,nrb), z=(kcatp_rbc2*S18*S15^nrb/(Km_prb^nrb+S15^nrb)/cell);end

function z=Function_for_reaction_39_0(Km_prb,S16,S18,cell,kcatp_rbc2,nrb), z=(kcatp_rbc2*S18*S16^nrb/(Km_prb^nrb+S16^nrb)/cell);end

function z=Function_for_reaction_40_0(Km_dprb,S15,S18,cell,kcatdp_rbc4,kinh_pp1,nrb), z=(kcatdp_rbc4*S15^nrb/(Km_dprb^nrb+S15^nrb)*1/(1+kinh_pp1*S18)/cell);end

function z=Function_for_reaction_41_0(Km_dprb,S16,S18,cell,kcatdp_rbc4,kinh_pp1,nrb), z=(kcatdp_rbc4*S16^nrb/(Km_dprb^nrb+S16^nrb)*1/(1+kinh_pp1*S18)/cell);end

function z=Function_for_reaction_42_0(S17,cell,k_delay), z=(k_delay*S17/cell);end

function z=Function_for_reaction_43_0(S19,cell,gsk3b,kdeg_c4,kdeg_c4gsk3b), z=((kdeg_c4+kdeg_c4gsk3b*gsk3b)*S19/cell);end

function z=Function_for_reaction_44_0(S18,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S18/cell);end

function z=Function_for_reaction_45_0(S20,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S20/cell);end

function z=Function_for_reaction_46_0(S18,cell,gsk3b,kdeg_c2c2gsk3b), z=(kdeg_c2c2gsk3b*gsk3b*S18/cell);end

function z=Function_for_reaction_47_0(S18,cell,kdp_c2cak), z=(kdp_c2cak*S18/cell);end

function z=Function_for_reaction_48_0(S19,cell,kd_p21c4), z=(kd_p21c4*S19/cell);end

function z=Function_for_reaction_49_0(S11,S18,cell,kb_p21c2), z=(kb_p21c2*S11*S18/cell);end

function z=Function_for_reaction_50_0(S20,cell,kd_p21c2), z=(kd_p21c2*S20/cell);end

function z=Function_for_reaction_51_0(S19,Vratio,cell,kimport), z=(kimport/Vratio*S19/cell);end

function z=Function_for_reaction_52_0(S20,Vratio,cell,kimport), z=(kimport/Vratio*S20/cell);end

function z=Function_for_reaction_53_0(S19,Vratio,cell,kimport), z=(kimport*(1-1/Vratio)*S19/cell);end

function z=Function_for_reaction_54_0(S20,Vratio,cell,kimport), z=(kimport*(1-1/Vratio)*S20/cell);end

function z=Function_for_reaction_55_0(S21,cell,kdeg_rbfree), z=(kdeg_rbfree*S21/cell);end

function z=Function_for_reaction_56_0(S11,S21,cell,kdeg_rbp21), z=(kdeg_rbp21*S11*S21/cell);end

function z=Function_for_reaction_57_0(Km_dprb,S18,S21,cell,kcatdp_rbc2,kinh_pp1,nrb), z=(kcatdp_rbc2*S21^nrb/(Km_dprb^nrb+S21^nrb)*1/(1+kinh_pp1*S18)/cell);end

function z=Function_for_reaction_60_0(S23,cell,gsk3b,kdeg_c2,kdeg_c2gsk3b), z=((kdeg_c2+kdeg_c2gsk3b*gsk3b)*S23/cell);end

function z=Function_for_reaction_61_0(S24,cell,kd_p21c4), z=(kd_p21c4*S24/cell);end

function z=Function_for_reaction_62_0(S23,cell,kd_p21c2), z=(kd_p21c2*S23/cell);end

function z=Function_for_reaction_63_0(S14,S18,S23,cell,erk,kdeg_p21c2skp2,kdeg_p21erkskp2,kdeg_p21skp2), z=((kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S23/cell);end

function z=Function_for_reaction_64_0(S14,S18,S24,cell,erk,kdeg_p21c2skp2,kdeg_p21erkskp2,kdeg_p21skp2), z=((kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S24/cell);end

function z=Function_for_reaction_65_0(S25,cell,k_delay), z=(k_delay*S25/cell);end

function z=Function_for_reaction_66_0(S26,cell,gsk3b,kdeg_c4,kdeg_c4gsk3b), z=((kdeg_c4+kdeg_c4gsk3b*gsk3b)*S26/cell);end

function z=Function_for_reaction_67_0(S11,S26,cell,kb_p21c4), z=(kb_p21c4*S11*S26/cell);end

function z=Function_for_reaction_68_0(S27,cell,k_delay), z=(k_delay*S27/cell);end

function z=Function_for_reaction_69_0(S28,cell,k_delay), z=(k_delay*S28/cell);end

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


