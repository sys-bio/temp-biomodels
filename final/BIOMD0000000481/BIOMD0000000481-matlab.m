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
% Model name = St?tzel2012 - Bovine estrous cycle, synchronization with prostaglandin F2?
%
% is http://identifiers.org/biomodels.db/MODEL1308100000
% is http://identifiers.org/biomodels.db/BIOMD0000000481
% isDescribedBy http://identifiers.org/pubmed/22980082
% isDerivedFrom http://identifiers.org/pubmed/21377476
% isDerivedFrom http://identifiers.org/pubmed/22118087
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(17) = 0.0;
	x0(1) = 0.219992404098564;
	x0(2) = 2.25000957482152;
	x0(3) = 0.00633682772990623;
	x0(4) = 0.740638780629751;
	x0(5) = 0.00579108659591004;
	x0(6) = 0.0168604631992291;
	x0(7) = 0.0286570978235457;
	x0(8) = 0.314393628471893;
	x0(9) = 0.163690728507925;
	x0(10) = 0.120192549532403;
	x0(11) = 0.493710210684922;
	x0(12) = 0.111730059223483;
	x0(13) = 5.83626691122778E-5;
	x0(14) = 3.62064120302475E-4;
	x0(15) = 0.133415086647186;
	x0(16) = 0.0;


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
% Parameter:   id =  par2, name = k_G
	global_par_par2=2.75;
% Parameter:   id =  par1, name = GnRH_max
	global_par_par1=16.0;
% Parameter:   id =  par3, name = h_P4&E2_G
	global_par_par3=2.05;
% Parameter:   id =  par4, name = T_E2_G1
	global_par_par4=0.0972;
% Parameter:   id =  par5, name = T_p4_G1
	global_par_par5=0.35;
% Parameter:   id =  par6, name = h_p4_G2
	global_par_par6=1.91;
% Parameter:   id =  par7, name = T_p4_G2
	global_par_par7=0.252;
% Parameter:   id =  par8, name = h_e2_g2
	global_par_par8=0.99;
% Parameter:   id =  par9, name = T_e2_g2
	global_par_par9=0.648;
% Parameter:   id =  par10, name = cl_G
	global_par_par10=1.63;
% Parameter:   id =  par21, name = h_inh_fsh
	global_par_par21=4.21;
% Parameter:   id =  par22, name = T_inh_fsh
	global_par_par22=0.118;
% Parameter:   id =  par23, name = h_p4_fsh
	global_par_par23=0.293;
% Parameter:   id =  par24, name = T_p4_fsh
	global_par_par24=0.152;
% Parameter:   id =  par25, name = h_e2_fsh
	global_par_par25=0.396;
% Parameter:   id =  par26, name = T_e2_fsh
	global_par_par26=0.312;
% Parameter:   id =  par27, name = h_gnrh_fsh
	global_par_par27=1.23;
% Parameter:   id =  par28, name = T_gnrh_fsh
	global_par_par28=0.0708;
% Parameter:   id =  par29, name = cl_fsh
	global_par_par29=2.73;
% Parameter:   id =  par30, name = b_fsh
	global_par_par30=0.948;
% Parameter:   id =  par31, name = h_e2_lh
	global_par_par31=0.376;
% Parameter:   id =  par32, name = T_e2_lh
	global_par_par32=0.243;
% Parameter:   id =  par33, name = h_p4_lh
	global_par_par33=2.71;
% Parameter:   id =  par34, name = T_p4_lh
	global_par_par34=0.0269;
% Parameter:   id =  par35, name = h_gnrh_lh
	global_par_par35=2.22;
% Parameter:   id =  par36, name = T_gnrh_lh
	global_par_par36=0.69;
% Parameter:   id =  par37, name = b_lh
	global_par_par37=0.0141;
% Parameter:   id =  par38, name = cl_lh
	global_par_par38=12.0;
% Parameter:   id =  par41, name = h_fsh_foll
	global_par_par41=0.562;
% Parameter:   id =  par42, name = T_fsh_foll
	global_par_par42=0.57;
% Parameter:   id =  par43, name = T_foll_fsh
	global_par_par43=0.22;
% Parameter:   id =  par45, name = h_p4_fsh_2
	global_par_par45=1.1;
% Parameter:   id =  par46, name = T_p4_foll
	global_par_par46=0.126;
% Parameter:   id =  par47, name = h_lh_foll
	global_par_par47=3.49;
% Parameter:   id =  par48, name = T_lh_Foll
	global_par_par48=0.171;
% Parameter:   id =  par56, name = h_enz_pgf
	global_par_par56=53.91;
% Parameter:   id =  par57, name = T_enz_pgf
	global_par_par57=1.43;
% Parameter:   id =  par58, name = T_ot_pgf
	global_par_par58=1.087;
% Parameter:   id =  par59, name = cl_pgf
	global_par_par59=1.23;
% Parameter:   id =  par62, name = SF_CL
	global_par_par62=0.2;
% Parameter:   id =  par63, name = h_cl_cl
	global_par_par63=0.0353;
% Parameter:   id =  par64, name = T_cl_cl
	global_par_par64=0.1;
% Parameter:   id =  par65, name = h_iof_cl
	global_par_par65=41.39;
% Parameter:   id =  par66, name = T_iof_cl
	global_par_par66=1.32;
% Parameter:   id =  par71, name = k_cl_p4
	global_par_par71=2.25;
% Parameter:   id =  par72, name = cl_p4
	global_par_par72=1.41;
% Parameter:   id =  par76, name = k_foll_e2
	global_par_par76=2.19;
% Parameter:   id =  par77, name = cl_e2
	global_par_par77=1.23;
% Parameter:   id =  par81, name = k_foll_inh
	global_par_par81=1.41;
% Parameter:   id =  par82, name = cl_inh
	global_par_par82=0.475;
% Parameter:   id =  par86, name = h_p4_enz
	global_par_par86=3.58;
% Parameter:   id =  par87, name = T_p4_enz
	global_par_par87=0.77;
% Parameter:   id =  par89, name = cl_enz
	global_par_par89=2.98;
% Parameter:   id =  par91, name = h_e2cl_ot
	global_par_par91=1.59;
% Parameter:   id =  par92, name = T_e2_ot
	global_par_par92=0.143;
% Parameter:   id =  par94, name = cl_ot
	global_par_par94=0.644;
% Parameter:   id =  par95, name = h_pg_iof
	global_par_par95=39.68;
% Parameter:   id =  par96, name = T_pg_ot
	global_par_par96=1.22;
% Parameter:   id =  par97, name = T_cl_iof
	global_par_par97=0.6;
% Parameter:   id =  par98, name = cl_iof
	global_par_par98=0.298;
% Parameter:   id =  parameter_1, name = D
	global_par_parameter_1=3.7;
% Parameter:   id =  parameter_2, name = beta
	global_par_parameter_2=100.0;
% Parameter:   id =  parameter_3, name = c_PGF_syn
	global_par_parameter_3=5.5;
% Parameter:   id =  parameter_4, name = t_mod
% Parameter:   id =  parameter_5, name = t_D
	global_par_parameter_5=0.0;
% Parameter:   id =  parameter_6, name = Total_PGF_2alpha
% Parameter:   id =  parameter_7, name = quantity_1
	global_par_parameter_7=0.0;
% Parameter:   id =  ModelValue_60, name = Initial for D
	global_par_ModelValue_60=3.7;
% Parameter:   id =  ModelValue_61, name = Initial for beta
	global_par_ModelValue_61=100.0;
% assignmentRule: variable = parameter_4
	global_par_parameter_4=piecewise(time-global_par_parameter_5, time > global_par_parameter_5, 0);
% assignmentRule: variable = parameter_6
	global_par_parameter_6=x(14)+x(16);
% rateRule: variable = species_1
x(16) = x(17);

% Reaction: id = re1, name = re1
	reaction_re1=compartment_default*function_1(x(1), x(2), compartment_default, global_par_par35, global_par_par36, global_par_par37);

% Reaction: id = re2, name = re2
	reaction_re2=compartment_default*function_2(x(9), x(5), x(1), x(10), compartment_default, global_par_par23, global_par_par24, global_par_par25, global_par_par26, global_par_par27, global_par_par28, global_par_par30);

% Reaction: id = re3, name = re3
	reaction_re3=compartment_default*function_3(x(9), x(4), x(10), compartment_default, global_par_par3, global_par_par4, global_par_par5, global_par_par6, global_par_par7);

% Reaction: id = re4, name = re4
	reaction_re4=compartment_default*function_4(x(8), x(7), x(3), compartment_default, global_par_par47, global_par_par48, global_par_par62, global_par_par63, global_par_par64);

% Reaction: id = re5, name = re5
	reaction_re5=compartment_default*function_5(x(4), compartment_default, global_par_par1, global_par_par2);

% Reaction: id = re6, name = re6
	reaction_re6=compartment_default*function_6(x(7), compartment_default, global_par_par76);

% Reaction: id = re7, name = re7
	reaction_re7=compartment_default*function_7(x(8), compartment_default, global_par_par71);

% Reaction: id = re8, name = re8
	reaction_re8=compartment_default*function_8(x(7), compartment_default, global_par_par81);

% Reaction: id = re9, name = re9
	reaction_re9=compartment_default*function_9(x(8), x(9), compartment_default, global_par_par91, global_par_par92);

% Reaction: id = re10, name = re10
	reaction_re10=compartment_default*function_10(x(10), compartment_default, global_par_par86, global_par_par87);

% Reaction: id = re11, name = re11
	reaction_re11=compartment_default*function_11(x(13), x(12), compartment_default, global_par_par56, global_par_par57, global_par_par58);

% Reaction: id = re12, name = re12
	reaction_re12=compartment_default*function_12(x(1), compartment_default, global_par_par10);

% Reaction: id = re13, name = re13
	reaction_re13=compartment_default*function_13(x(3), compartment_default, global_par_par38);

% Reaction: id = re14, name = re14
	reaction_re14=compartment_default*function_14(x(6), compartment_default, global_par_par29);

% Reaction: id = re15, name = re15
	reaction_re15=compartment_default*function_15(x(10), compartment_default, global_par_par72);

% Reaction: id = re16, name = re16
	reaction_re16=compartment_default*function_16(x(9), compartment_default, global_par_par77);

% Reaction: id = re17, name = re17
	reaction_re17=compartment_default*function_17(x(11), compartment_default, global_par_par82);

% Reaction: id = re18, name = re18
	reaction_re18=compartment_default*function_18(x(12), compartment_default, global_par_par94);

% Reaction: id = re19, name = re19
	reaction_re19=compartment_default*function_19(x(13), compartment_default, global_par_par89);

% Reaction: id = re20, name = re20
	reaction_re20=compartment_default*function_20(x(14), compartment_default, global_par_par59);

% Reaction: id = re21, name = re21
	reaction_re21=compartment_default*function_21(x(15), compartment_default, global_par_par98);

% Reaction: id = re22, name = l
	reaction_re22=compartment_default*function_22(x(7), x(3), x(10), compartment_default, global_par_par45, global_par_par46, global_par_par47, global_par_par48);

% Reaction: id = re23, name = re23
	reaction_re23=compartment_default*function_23(x(8), x(15), compartment_default, global_par_par65, global_par_par66);

% Reaction: id = re24, name = re24
	reaction_re24=compartment_default*function_24(x(9), x(10), compartment_default, global_par_par31, global_par_par32, global_par_par33, global_par_par34);

% Reaction: id = re25, name = re25
	reaction_re25=compartment_default*function_25(x(11), compartment_default, global_par_par21, global_par_par22);

% Reaction: id = re26, name = re26
	reaction_re26=compartment_default*function_26(x(9), x(4), x(10), compartment_default, global_par_par3, global_par_par4, global_par_par5, global_par_par6, global_par_par7, global_par_par8, global_par_par9);

% Reaction: id = re27, name = re27
	reaction_re27=compartment_default*function_27(x(6), x(7), compartment_default, global_par_par41, global_par_par42, global_par_par43);

% Reaction: id = re28, name = re28
	reaction_re28=compartment_default*function_28(x(8), x(14), compartment_default, global_par_par95, global_par_par96, global_par_par97);

% Species:   id = src_GnRH, name = src_GnRH, constant	const_species_src_GnRH=0.0;

% Species:   id = src_E2, name = src_E2, constant	const_species_src_E2=0.0;

% Species:   id = src_P4, name = src_P4, constant	const_species_src_P4=0.0;

% Species:   id = src_Inh, name = src_Inh, constant	const_species_src_Inh=0.0;

% Species:   id = src_OT, name = src_OT, constant	const_species_src_OT=0.0;

% Species:   id = src_Enz, name = src_Enz, constant	const_species_src_Enz=0.0;

% Species:   id = src_PGF, name = src_PGF, constant	const_species_src_PGF=0.0;

% Species:   id = src_LH, name = src_LH, constant	const_species_src_LH=0.0;

% Species:   id = src_FSH, name = src_FSH, constant	const_species_src_FSH=0.0;

% Species:   id = snk_GnRH_Hyp, name = snk_GnRH_Hyp, constant	const_species_snk_GnRH_Hyp=0.0;

% Species:   id = src_GnRH_Pit, name = src_GnRH_Pit, constant	const_species_src_GnRH_Pit=0.0;

% Species:   id = src_Foll, name = src_Foll, constant	const_species_src_Foll=0.0;

% Species:   id = src_IOF, name = src_IOF, constant	const_species_src_IOF=0.0;

% Species:   id = src_CL, name = src_CL, constant	const_species_src_CL=0.0;

% Species:   id = snk_Inh, name = snk_Inh, constant	const_species_snk_Inh=0.0;

% Species:   id = snk_P4, name = snk_P4, constant	const_species_snk_P4=0.0;

% Species:   id = snk_E2, name = snk_E2, constant	const_species_snk_E2=0.0;

% Species:   id = snk_GnRH_Pit, name = snk_GnRH_Pit, constant	const_species_snk_GnRH_Pit=0.0;

% Species:   id = snk_LH, name = snk_LH, constant	const_species_snk_LH=0.0;

% Species:   id = snk_FSH, name = snk_FSH, constant	const_species_snk_FSH=0.0;

% Species:   id = snk_IOF, name = snk_IOF, constant	const_species_snk_IOF=0.0;

% Species:   id = snk_CL, name = snk_CL, constant	const_species_snk_CL=0.0;

% Species:   id = snk_Enz, name = snk_Enz, constant	const_species_snk_Enz=0.0;

% Species:   id = snk_OT, name = snk_OT, constant	const_species_snk_OT=0.0;

% Species:   id = snk_PGF, name = snk_PGF, constant	const_species_snk_PGF=0.0;

% Species:   id = snk_Foll, name = snk_Foll, constant	const_species_snk_Foll=0.0;

	xdot=zeros(17,1);
	% rateRule: variable = species_1
	xdot(17) = global_par_ModelValue_60*global_par_ModelValue_61*global_par_ModelValue_61*global_par_parameter_4*exp((-global_par_ModelValue_61)*global_par_parameter_4)-global_par_parameter_3*x(16);
	
% Species:   id = GnRH_Pit, name = GnRH_Pit, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re12) + ( 1.0 * reaction_re26));
	
% Species:   id = LH_Pit, name = LH_Pit, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re24));
	
% Species:   id = LH_Bld, name = LH_Bld, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re13));
	
% Species:   id = GnRH_Hyp, name = GnRH_Hyp, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re3) + ( 1.0 * reaction_re5));
	
% Species:   id = FSH_Pit, name = FSH_Pit, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_re2) + ( 1.0 * reaction_re25));
	
% Species:   id = FSH_Bld, name = FSH_Bld, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re14));
	
% Species:   id = Foll, name = Foll, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re22) + ( 1.0 * reaction_re27));
	
% Species:   id = CL, name = CL, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re23));
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re6) + (-1.0 * reaction_re16));
	
% Species:   id = P4, name = P4, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re7) + (-1.0 * reaction_re15));
	
% Species:   id = Inh, name = Inh, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re8) + (-1.0 * reaction_re17));
	
% Species:   id = OT, name = OT, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re18));
	
% Species:   id = Enz, name = Enz, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re10) + (-1.0 * reaction_re19));
	
% Species:   id = PGF, name = PGF, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re20));
	
% Species:   id = IOF, name = IOF, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*((-1.0 * reaction_re21) + ( 1.0 * reaction_re28));
	
% Species:   id = species_1, name = PGF_syn, involved in a rule 	xdot(16) = x(16);
end

function z=function_1(GnRH_Pit,LH_Pit,default,par35,par36,par37), z=((par37+par35*(GnRH_Pit*default)^5/((GnRH_Pit*default)^5+par36^5))*LH_Pit*default/default);end

function z=function_2(E2,FSH_Pit,GnRH_Pit,P4,default,par23,par24,par25,par26,par27,par28,par30), z=((par30+par23*(P4*default)^2/((P4*default)^2+par24^2)+par25*par26^2/((E2*default)^2+par26^2)+par27*GnRH_Pit*default/(par28+GnRH_Pit*default))*FSH_Pit*default/default);end

function z=function_3(E2,GnRH_Hyp,P4,default,par3,par4,par5,par6,par7), z=((par3*(par5^2/(par5^2+(P4*default)^2)+par4^2/(par4^2+(E2*default)^2)-par5^2/(par5^2+(P4*default)^2)*par4^2/(par4^2+(E2*default)^2))+par6*par7^2/((P4*default)^2+par7^2))*GnRH_Hyp*default/default);end

function z=function_4(CL,Foll,LH_Bld,default,par47,par48,par62,par63,par64), z=((par62*par47*(LH_Bld*default)^2/((LH_Bld*default)^2+par48^2)*Foll*default+par63*(CL*default)^2/((CL*default)^2+par64^2))/default);end

function z=function_5(GnRH_Hyp,default,par1,par2), z=(par2*(1-GnRH_Hyp*default/par1)/default);end

function z=function_6(Foll,default,par76), z=(par76*(Foll*default)^2/default);end

function z=function_7(CL,default,par71), z=(par71*(CL*default)^2/default);end

function z=function_8(Foll,default,par81), z=(par81*(Foll*default)^2/default);end

function z=function_9(CL,E2,default,par91,par92), z=(par91*(E2*default)^2/((E2*default)^2+par92^2)*(CL*default)^2/default);end

function z=function_10(P4,default,par86,par87), z=(par86*(P4*default)^5/((P4*default)^5+par87^5)/default);end

function z=function_11(Enz,OT,default,par56,par57,par58), z=(par56*Enz^5/(Enz^5+par57^5)*(OT*default)^2/((OT*default)^2+par58^2)/default);end

function z=function_12(GnRH_Pit,default,par10), z=(par10*GnRH_Pit*default/default);end

function z=function_13(LH_Bld,default,par38), z=(par38*LH_Bld*default/default);end

function z=function_14(FSH_Bld,default,par29), z=(par29*FSH_Bld*default/default);end

function z=function_15(P4,default,par72), z=(par72*P4*default/default);end

function z=function_16(E2,default,par77), z=(par77*E2*default/default);end

function z=function_17(Inh,default,par82), z=(par82*Inh*default/default);end

function z=function_18(OT,default,par94), z=(par94*OT*default/default);end

function z=function_19(Enz,default,par89), z=(par89*Enz/default);end

function z=function_20(PGF,default,par59), z=(par59*PGF*default/default);end

function z=function_21(IOF,default,par98), z=(par98*IOF*default/default);end

function z=function_22(Foll,LH_Bld,P4,default,par45,par46,par47,par48), z=((par45*(P4*default)^5/((P4*default)^5+par46^5)+par47*(LH_Bld*default)^2/((LH_Bld*default)^2+par48^2))*Foll*default/default);end

function z=function_23(CL,IOF,default,par65,par66), z=(par65*(IOF*default)^5/((IOF*default)^5+par66^5)*CL*default/default);end

function z=function_24(E2,P4,default,par31,par32,par33,par34), z=((par31*(E2*default)^2/((E2*default)^2+par32^2)+par33*par34^2/(par34^2+(P4*default)^2))/default);end

function z=function_25(Inh,default,par21,par22), z=(par21*par22^5/(par22^5+(Inh*default)^5)/default);end

function z=function_26(E2,GnRH_Hyp,P4,default,par3,par4,par5,par6,par7,par8,par9), z=(par8*(E2*default)^5/((E2*default)^5+par9^5)*(par3*(par5^2/(par5^2+(P4*default)^2)+par4^2/(par4^2+(E2*default)^2)-par5^2/(par5^2+(P4*default)^2)*par4^2/(par4^2+(E2*default)^2))+par6*par7^2/((P4*default)^2+par7^2))*GnRH_Hyp*default/default);end

function z=function_27(FSH_Bld,Foll,default,par41,par42,par43), z=(par41*(FSH_Bld*default)^2/((par42*par43^2/(par43^2+(Foll*default)^2))^2+(FSH_Bld*default)^2)/default);end

function z=function_28(CL,PGF,default,par95,par96,par97), z=(par95*(PGF*default)^5/((PGF*default)^5+par96^5)*(CL*default)^10/((CL*default)^10+par97^10)/default);end

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


