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
% Model name = PetelenzKuehn_osmoadaptation_WT
%
% is http://identifiers.org/biomodels.db/MODEL1204190000
% is http://identifiers.org/biomodels.db/BIOMD0000000603
% isDescribedBy http://identifiers.org/pubmed/23762021
% isDerivedFrom http://identifiers.org/pubmed/20563574
% isDerivedFrom http://identifiers.org/pubmed/18793130
% isDerivedFrom http://identifiers.org/pubmed/16025103
% isDerivedFrom http://identifiers.org/pubmed/10951190
%


function main()
%Initial conditions vector
	x0=zeros(29,1);
	x0(1) = 0.0808486;
	x0(2) = 0.532153;
	x0(3) = 1.95714;
	x0(4) = 1.35683;
	x0(5) = 0.00451195999999999;
	x0(6) = 0.180025;
	x0(7) = 1.12102E-4;
	x0(8) = 0.080898;
	x0(9) = 0.0485149;
	x0(10) = 0.00684286999999998;
	x0(11) = 1.26621;
	x0(12) = 14.4274;
	x0(13) = 0.417491;
	x0(14) = 0.0238279;
	x0(15) = 0.00449415999999999;
	x0(16) = 0.0271250999999999;
	x0(17) = 0.00194995;
	x0(18) = 0.00145916;
	x0(19) = 0.00594778;
	x0(20) = 1.11054E-4;
	x0(21) = 0.0217029;
	x0(22) = 0.265226;
	x0(23) = 2.17366;
	x0(24) = 2.40000000000001E-4;
	x0(25) = 0.00261406;
	x0(26) = 0.104697;
	x0(27) = 0.00246285;
	x0(28) = 0.0277349;
	x0(29) = 1.53921E-4;


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

% Compartment: id = intra, name = intra, constant
	compartment_intra=2.5E-4;
% Compartment: id = extra, name = extra, constant
	compartment_extra=0.5;
% Parameter:   id =  cellvol_init, name = cellvol_init
	global_par_cellvol_init=2.40000000000001E-4;
% Parameter:   id =  kv19f_1, name = kv19f_1
	global_par_kv19f_1=0.299127;
% Parameter:   id =  kv19r_1, name = kv19r_1
	global_par_kv19r_1=0.0605655;
% Parameter:   id =  kv17f_1, name = kv17f_1
	global_par_kv17f_1=4.11446E-4;
% Parameter:   id =  kv17f_3, name = kv17f_3
	global_par_kv17f_3=0.421394;
% Parameter:   id =  kv17f_6, name = kv17f_6
	global_par_kv17f_6=7.85767E-9;
% Parameter:   id =  parameter_97, name = parameter_97
	global_par_parameter_97=0.8;
% Parameter:   id =  vV_1, name = vV_1
	global_par_vV_1=3.56294E-5;
% Parameter:   id =  vV_2, name = vV_2
	global_par_vV_2=0.00116532;
% Parameter:   id =  vV_R, name = vV_R
	global_par_vV_R=8.314;
% Parameter:   id =  vV_T, name = vV_T
	global_par_vV_T=298.5;
% Parameter:   id =  t_stress, name = t_stress
	global_par_t_stress=3600.0;
% Parameter:   id =  kv1_1, name = kv1_1
	global_par_kv1_1=5.05249E-6;
% Parameter:   id =  kv1_2, name = kv1_2
	global_par_kv1_2=0.899814;
% Parameter:   id =  initcellnum, name = initcellnum
	global_par_initcellnum=6954722.464;
% Parameter:   id =  kv2_1, name = kv2_1
	global_par_kv2_1=0.00303855;
% Parameter:   id =  kv2_2, name = kv2_2
	global_par_kv2_2=0.40864;
% Parameter:   id =  kv3_1, name = kv3_1
	global_par_kv3_1=6.17387E-6;
% Parameter:   id =  kv3_2, name = kv3_2
	global_par_kv3_2=0.81114;
% Parameter:   id =  kv3_3, name = kv3_3
	global_par_kv3_3=7.37808E-4;
% Parameter:   id =  kv3_4, name = kv3_4
	global_par_kv3_4=0.166996;
% Parameter:   id =  kv4_1, name = kv4_1
	global_par_kv4_1=0.0628885;
% Parameter:   id =  kv4_2, name = kv4_2
	global_par_kv4_2=0.00230714;
% Parameter:   id =  kv4_3, name = kv4_3
	global_par_kv4_3=0.00171631;
% Parameter:   id =  kv4_4, name = kv4_4
	global_par_kv4_4=2.67143;
% Parameter:   id =  kv4_5, name = kv4_5
	global_par_kv4_5=0.583865;
% Parameter:   id =  kv5_1, name = kv5_1
	global_par_kv5_1=0.00383315;
% Parameter:   id =  kv5_2, name = kv5_2
	global_par_kv5_2=1.74463;
% Parameter:   id =  kv5_3, name = kv5_3
	global_par_kv5_3=0.00656128;
% Parameter:   id =  kv5_4, name = kv5_4
	global_par_kv5_4=1.13994;
% Parameter:   id =  kv6_1, name = kv6_1
	global_par_kv6_1=0.0118992;
% Parameter:   id =  kv6_2, name = kv6_2
	global_par_kv6_2=0.230864;
% Parameter:   id =  kv6_3, name = kv6_3
	global_par_kv6_3=1.76504;
% Parameter:   id =  kv6b_1, name = kv6b_1
	global_par_kv6b_1=0.859104;
% Parameter:   id =  kv6b_2, name = kv6b_2
	global_par_kv6b_2=0.0307535;
% Parameter:   id =  kv6b_3, name = kv6b_3
	global_par_kv6b_3=1.20045;
% Parameter:   id =  kv6b_4, name = kv6b_4
	global_par_kv6b_4=4.61918E-5;
% Parameter:   id =  kv6b_5, name = kv6b_5
	global_par_kv6b_5=0.292627;
% Parameter:   id =  kv7_1, name = kv7_1
	global_par_kv7_1=0.00983997;
% Parameter:   id =  kv7_2, name = kv7_2
	global_par_kv7_2=0.317879;
% Parameter:   id =  kv8_1, name = kv8_1
	global_par_kv8_1=0.0135676;
% Parameter:   id =  kv8_2, name = kv8_2
	global_par_kv8_2=1.50827;
% Parameter:   id =  kv9_1, name = kv9_1
	global_par_kv9_1=0.214937;
% Parameter:   id =  kv9_2, name = kv9_2
	global_par_kv9_2=0.923665;
% Parameter:   id =  kv16f_1, name = kv16f_1
	global_par_kv16f_1=0.156118;
% Parameter:   id =  kv16f_2, name = kv16f_2
	global_par_kv16f_2=4.52424E-4;
% Parameter:   id =  kv16f_3, name = kv16f_3
	global_par_kv16f_3=14.9448;
% Parameter:   id =  kv16r_1, name = kv16r_1
	global_par_kv16r_1=0.588072;
% Parameter:   id =  kv15f_1, name = kv15f_1
	global_par_kv15f_1=4.99507E-5;
% Parameter:   id =  kv15f_2, name = kv15f_2
	global_par_kv15f_2=6.95877;
% Parameter:   id =  kv15r_1, name = kv15r_1
	global_par_kv15r_1=1.84829E-7;
% Parameter:   id =  kv15r_2, name = kv15r_2
	global_par_kv15r_2=3.3187E-5;
% Parameter:   id =  kv17f_2, name = kv17f_2
	global_par_kv17f_2=0.547886;
% Parameter:   id =  kv17f_4, name = kv17f_4
	global_par_kv17f_4=6.86959E-10;
% Parameter:   id =  kv17f_5, name = kv17f_5
	global_par_kv17f_5=18.9989;
% Parameter:   id =  kv17r_1, name = kv17r_1
	global_par_kv17r_1=0.00151498;
% Parameter:   id =  kv18f_1, name = kv18f_1
	global_par_kv18f_1=0.00646553;
% Parameter:   id =  kv18r_1, name = kv18r_1
	global_par_kv18r_1=1.32549E-4;
% Parameter:   id =  kv20f_1, name = kv20f_1
	global_par_kv20f_1=9.81887E-5;
% Parameter:   id =  kv20f_2, name = kv20f_2
	global_par_kv20f_2=0.0167845;
% Parameter:   id =  kv20f_3, name = kv20f_3
	global_par_kv20f_3=4.05843E-6;
% Parameter:   id =  kv20f_x, name = kv20f_x
	global_par_kv20f_x=1.55858;
% Parameter:   id =  kv20r_1, name = kv20r_1
	global_par_kv20r_1=7.05933E-4;
% Parameter:   id =  kv21f_1, name = kv21f_1
	global_par_kv21f_1=0.00121673;
% Parameter:   id =  kv21r_1, name = kv21r_1
	global_par_kv21r_1=2.14247E-4;
% Parameter:   id =  kv23f_1, name = kv23f_1
	global_par_kv23f_1=8.80535E-6;
% Parameter:   id =  kv23f_2, name = kv23f_2
	global_par_kv23f_2=5.1235E-4;
% Parameter:   id =  kv23f_3, name = kv23f_3
	global_par_kv23f_3=6.95727;
% Parameter:   id =  kv23r_1, name = kv23r_1
	global_par_kv23r_1=2.09875E-4;
% Parameter:   id =  kv22_1, name = kv22_1
	global_par_kv22_1=8.0075;
% Parameter:   id =  kv22_2, name = kv22_2
	global_par_kv22_2=0.0215179;
% Parameter:   id =  kv22_3, name = kv22_3
	global_par_kv22_3=0.0554729;
% Parameter:   id =  kv14_1, name = kv14_1
	global_par_kv14_1=0.808051;
% Parameter:   id =  kv14_2, name = kv14_2
	global_par_kv14_2=6.05922E-6;
% Parameter:   id =  kv14_3, name = kv14_3
	global_par_kv14_3=2.05157;
% Parameter:   id =  kv14_4, name = kv14_4
	global_par_kv14_4=0.420621;
% Parameter:   id =  kv14_5, name = kv14_5
	global_par_kv14_5=1.23049;
% Parameter:   id =  kv10_1, name = kv10_1
	global_par_kv10_1=1.83291E-7;
% Parameter:   id =  kv10_2, name = kv10_2
	global_par_kv10_2=4.26512;
% Parameter:   id =  kv11_1, name = kv11_1
	global_par_kv11_1=3.2863E-6;
% Parameter:   id =  kv11_2, name = kv11_2
	global_par_kv11_2=1.17279;
% Parameter:   id =  kv12_1, name = kv12_1
	global_par_kv12_1=1.00927E-5;
% Parameter:   id =  kv12_2, name = kv12_2
	global_par_kv12_2=0.148586;
% Parameter:   id =  kv13a_1, name = kv13a_1
	global_par_kv13a_1=6.28899E-6;
% Parameter:   id =  kv13b_1, name = kv13b_1
	global_par_kv13b_1=1.27001E-7;
% Parameter:   id =  kv13b_2, name = kv13b_2
	global_par_kv13b_2=3.69196E-7;
% Parameter:   id =  kx1, name = kx1
	global_par_kx1=1.97771;
% Parameter:   id =  kx2, name = kx2
	global_par_kx2=5.37171;
% Parameter:   id =  kv22_4_Hog1A, name = kv22_4_Hog1A
	global_par_kv22_4_Hog1A=1.25187;
% Parameter:   id =  v, name = v
	global_par_v=1.0;
% Parameter:   id =  kv22_Hog1D_t, name = kv22_Hog1D_t
	global_par_kv22_Hog1D_t=5536.0;
% Parameter:   id =  kv22_Hog1D_fT, name = kv22_Hog1D_fT
	global_par_kv22_Hog1D_fT=0.0256901;
% Parameter:   id =  kv22_Hog1D_d, name = kv22_Hog1D_d
	global_par_kv22_Hog1D_d=2.94357E-4;
% Parameter:   id =  v15f_v, name = v15f_v
	global_par_v15f_v=1.0;
% Parameter:   id =  v15r_v, name = v15r_v
	global_par_v15r_v=1.0;
% Parameter:   id =  v19r_v, name = v19r_v
	global_par_v19r_v=1.0;
% Parameter:   id =  Vm, name = Vm
% Parameter:   id =  CellSurface, name = CellSurface
% Parameter:   id =  v13aspeed, name = v13aspeed
% Parameter:   id =  v12speed, name = v12speed
% Parameter:   id =  v11speed, name = v11speed
% Parameter:   id =  v10speed, name = v10speed
% Parameter:   id =  Turgor, name = Turgor
% Parameter:   id =  OsmoE, name = OsmoE
% Parameter:   id =  input, name = input
% Parameter:   id =  volchangespeed, name = volchangespeed
% Parameter:   id =  relVM, name = relVM
% Parameter:   id =  OD, name = OD
% Parameter:   id =  cellnum, name = cellnum
% Parameter:   id =  v1speed, name = v1speed
% Parameter:   id =  v13bspeed, name = v13bspeed
% Parameter:   id =  kv16r_1VARIABLE, name = kv16r_1VARIABLE
% Parameter:   id =  glycerol_measured, name = glycerol_measured
% Parameter:   id =  Hog1PP_measured, name = Hog1PP_measured
% Parameter:   id =  Gpd1_measured, name = Gpd1_measured
% Parameter:   id =  gpd1mRNA_measured, name = gpd1mRNA_measured
% Parameter:   id =  glucose_measured, name = glucose_measured
% Parameter:   id =  pyruvate_measured, name = pyruvate_measured
% Parameter:   id =  acetate_measured, name = acetate_measured
% Parameter:   id =  ethanol_measured, name = ethanol_measured
% Parameter:   id =  trehalose_measured, name = trehalose_measured
% Parameter:   id =  F16DP_measured, name = F16DP_measured
% Parameter:   id =  quantity, name = quantity
	global_par_quantity=0.0;
% Parameter:   id =  trioseP_measured, name = trioseP_measured
% Parameter:   id =  stl1mRNA_measured, name = stl1mRNA_measured
% Parameter:   id =  kv6b_x, name = kv6b_x
	global_par_kv6b_x=28.5;
% assignmentRule: variable = Vm
	global_par_Vm=x(24)+0.00024;
% assignmentRule: variable = CellSurface
	global_par_CellSurface=(36*pi)^(1/3)*global_par_Vm^(2/3);
% assignmentRule: variable = v13aspeed
	global_par_v13aspeed=x(22)*global_par_kv13a_1*global_par_CellSurface*(x(1)-x(25));
% assignmentRule: variable = v11speed
	global_par_v11speed=global_par_kv11_1*global_par_CellSurface*(x(11)-global_par_kv11_2*x(27));
% assignmentRule: variable = v12speed
	global_par_v12speed=global_par_kv12_1*global_par_CellSurface*(x(12)-global_par_kv12_2*x(28));
% assignmentRule: variable = Turgor
	global_par_Turgor=piecewise((-2.9)*(1-(0.00025-(global_par_Vm-0.00025))/(0.00025-0.00025*0.9)), global_par_Vm > (0.00025*0.9+0.00025), 0);
% assignmentRule: variable = v10speed
	global_par_v10speed=global_par_kv10_1*global_par_CellSurface*(x(5)-global_par_kv10_2*x(29));
% assignmentRule: variable = input
	global_par_input=piecewise(0, time < global_par_t_stress, piecewise((time-global_par_t_stress)/5, time < (global_par_t_stress+5), 1));
% assignmentRule: variable = OsmoE
	global_par_OsmoE=0.355586+global_par_parameter_97*global_par_input;
% assignmentRule: variable = volchangespeed
	global_par_volchangespeed=global_par_vV_1*global_par_CellSurface*(global_par_Turgor-global_par_vV_2*global_par_vV_R*global_par_vV_T*(x(25)+global_par_OsmoE-(x(1)+x(2))));
% assignmentRule: variable = relVM
	global_par_relVM=global_par_Vm/0.00048;
% assignmentRule: variable = OD
	global_par_OD=2.94557E-9*time^2+6.49182E-5*time+0.595608;
% assignmentRule: variable = cellnum
	global_par_cellnum=(-6548240)*global_par_OD^2+30565100*global_par_OD-4727510;
% assignmentRule: variable = v1speed
	global_par_v1speed=global_par_kv1_1*x(26)/(global_par_kv1_2+x(26));
% assignmentRule: variable = v13bspeed
	global_par_v13bspeed=x(25)*global_par_kv13b_1*x(20)/(global_par_kv13b_2+x(25));
% assignmentRule: variable = kv16r_1VARIABLE
	global_par_kv16r_1VARIABLE=piecewise(0.444296, time < 4800, 0.444296*(time/4800)^3);
% assignmentRule: variable = glycerol_measured
	global_par_glycerol_measured=x(1)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = Hog1PP_measured
	global_par_Hog1PP_measured=x(14)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = Gpd1_measured
	global_par_Gpd1_measured=x(9)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = gpd1mRNA_measured
	global_par_gpd1mRNA_measured=x(18)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = glucose_measured
	global_par_glucose_measured=x(3)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = pyruvate_measured
	global_par_pyruvate_measured=x(10)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = ethanol_measured
	global_par_ethanol_measured=x(12)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = acetate_measured
	global_par_acetate_measured=x(11)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = trehalose_measured
	global_par_trehalose_measured=x(5)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = F16DP_measured
	global_par_F16DP_measured=x(6)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = trioseP_measured
	global_par_trioseP_measured=x(8)*x(24)/global_par_cellvol_init;
% assignmentRule: variable = stl1mRNA_measured
	global_par_stl1mRNA_measured=x(19)*x(24)/global_par_cellvol_init;

% Reaction: id = v1, name = v1
	reaction_v1=Henri_Michaelis_Menten__irreversible__1(x(26), global_par_kv1_1, global_par_kv1_2);

% Reaction: id = v10, name = v10
	reaction_v10=function_4_v10_1(global_par_CellSurface, global_par_kv10_1, global_par_kv10_2, x(5), x(29));

% Reaction: id = v10Batch, name = v10Batch
	reaction_v10Batch=compartment_extra*function_4_v10Batch_1(global_par_cellnum, global_par_initcellnum, global_par_v10speed);

% Reaction: id = v11, name = v11
	reaction_v11=function_4_v11_1(global_par_CellSurface, x(27), x(11), global_par_kv11_1, global_par_kv11_2);

% Reaction: id = v11Batch, name = v11Batch
	reaction_v11Batch=compartment_extra*function_4_v11Batch_1(global_par_cellnum, global_par_initcellnum, global_par_v11speed);

% Reaction: id = v12, name = v12
	reaction_v12=function_4_v12_1(global_par_CellSurface, x(28), x(12), global_par_kv12_1, global_par_kv12_2);

% Reaction: id = v12Batch, name = v12Batch
	reaction_v12Batch=compartment_extra*function_4_v12Batch_1(global_par_cellnum, global_par_initcellnum, global_par_v12speed);

% Reaction: id = v13a, name = v13a	% Local Parameter:   id =  kDiff, name = kDiff
	reaction_v13a_kDiff=1.0;

	reaction_v13a=function_4_v13a_1(global_par_CellSurface, x(22), x(25), x(1), reaction_v13a_kDiff, global_par_kv13a_1);

% Reaction: id = v13aBatch, name = v13aBatch
	reaction_v13aBatch=compartment_extra*function_4_v13aBatch_1(global_par_cellnum, global_par_initcellnum, global_par_v13aspeed);

% Reaction: id = v13b, name = v13b
	reaction_v13b=function_4_v13b_1(x(20), x(25), global_par_kv13b_1, global_par_kv13b_2);

% Reaction: id = v13bBatch, name = v13bBatch
	reaction_v13bBatch=compartment_extra*function_4_v13bBatch_1(global_par_cellnum, global_par_initcellnum, global_par_v13bspeed);

% Reaction: id = v14, name = v14
	reaction_v14=compartment_intra*function_4_v14_1(x(4), global_par_OsmoE, x(24), global_par_kv14_1, global_par_kv14_2, global_par_kv14_3, global_par_kv14_4, global_par_kv14_5);

% Reaction: id = v15f, name = v15f
	reaction_v15f=compartment_intra*function_4_v15f_1(x(4), x(15), global_par_kv15f_1, global_par_kv15f_2);

% Reaction: id = v15r, name = v15r
	reaction_v15r=compartment_intra*Henri_Michaelis_Menten__irreversible__2(x(7), global_par_kv15r_1, global_par_kv15r_2);

% Reaction: id = v16f, name = v16f
	reaction_v16f=compartment_intra*function_4_v16f_1(x(13), global_par_OsmoE, global_par_Vm, global_par_kv16f_1, global_par_kv16f_2, global_par_kv16f_3);

% Reaction: id = v16r, name = v16r
	reaction_v16r=compartment_intra*global_par_kv16r_1*x(14);

% Reaction: id = v17f, name = v17f
	reaction_v17f=compartment_intra*function_4_v17f_1(x(17), x(14), global_par_kv17f_1, global_par_kv17f_2, global_par_kv17f_3, global_par_kv17f_4, global_par_kv17f_6, global_par_kx1, global_par_kx2);

% Reaction: id = v17r, name = v17r
	reaction_v17r=compartment_intra*global_par_kv17r_1*x(18);

% Reaction: id = v18f, name = v18f
	reaction_v18f=compartment_intra*function_4_v18f_1(x(18), global_par_kv18f_1);

% Reaction: id = v18r, name = v18r
	reaction_v18r=compartment_intra*global_par_kv18r_1*x(9);

% Reaction: id = v19f, name = v19f
	reaction_v19f=compartment_intra*function_4_v19f_1(x(14), x(16), global_par_kv19f_1);

% Reaction: id = v19r, name = v19r
	reaction_v19r=compartment_intra*global_par_kv19r_1*x(15);

% Reaction: id = v1Batch, name = v1Batch
	reaction_v1Batch=compartment_extra*function_4_v1Batch_1(global_par_cellnum, global_par_initcellnum, global_par_v1speed);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_intra*Henri_Michaelis_Menten__irreversible__3(x(3), global_par_kv2_1, global_par_kv2_2);

% Reaction: id = v20f, name = v20f
	reaction_v20f=compartment_intra*function_4_v20f_1(x(14), global_par_kv20f_1, global_par_kv20f_2, global_par_kv20f_3, global_par_kv20f_x);

% Reaction: id = v20r, name = v20r
	reaction_v20r=compartment_intra*global_par_kv20r_1*x(19);

% Reaction: id = v21f, name = v21f
	reaction_v21f=compartment_intra*function_4_v21f_1(global_par_kv21f_1, x(19));

% Reaction: id = v21r, name = v21r
	reaction_v21r=compartment_intra*global_par_kv21r_1*x(20);

% Reaction: id = v22, name = v22
	reaction_v22=compartment_intra*function_4_v22(x(22), x(14), global_par_Turgor, global_par_kv22_1, global_par_kv22_2, global_par_kv22_3);

% Reaction: id = v23f, name = v23f
	reaction_v23f=compartment_intra*function_4_v23f_1(x(21), global_par_Vm, global_par_kv23f_1, global_par_kv23f_2, global_par_kv23f_3);

% Reaction: id = v23r, name = v23r
	reaction_v23r=compartment_intra*global_par_kv23r_1*x(17);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_intra*function_4_v3_1(x(4), global_par_kv3_1, global_par_kv3_2, global_par_kv3_3, global_par_kv3_4, x(5));

% Reaction: id = v4, name = v4
	reaction_v4=compartment_intra*function_4_v4_1(x(7), x(4), global_par_kv4_1, global_par_kv4_2, global_par_kv4_3, global_par_kv4_4, global_par_kv4_5);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_intra*function_4_v5_1(x(6), global_par_kv5_1, global_par_kv5_2, global_par_kv5_3, global_par_kv5_4, x(8));

% Reaction: id = v6, name = v6
	reaction_v6=compartment_intra*function_4_v6_1_1(x(9), global_par_kv6_1, global_par_kv6_2, global_par_kv6_3, x(8));

% Reaction: id = v6b, name = v6b
	reaction_v6b=compartment_intra*function_4_v6b_1_1(global_par_kv6b_4, global_par_kv6b_5, global_par_kv6b_x, x(8));

% Reaction: id = v7, name = v7
	reaction_v7=compartment_intra*Henri_Michaelis_Menten__irreversible__4(global_par_kv7_1, global_par_kv7_2, x(8));

% Reaction: id = v8, name = v8
	reaction_v8=compartment_intra*Henri_Michaelis_Menten__irreversible__5(global_par_kv8_1, global_par_kv8_2, x(10));

% Reaction: id = v9, name = v9
	reaction_v9=compartment_intra*Henri_Michaelis_Menten__irreversible__6(global_par_kv9_1, global_par_kv9_2, x(10));

% Reaction: id = vVacetate_i, name = vVacetate_i
	reaction_vVacetate_i=compartment_intra*function_4_vVacetate_i_1(x(11), x(24), global_par_volchangespeed);

% Reaction: id = vVcin, name = vVcin
	reaction_vVcin=compartment_intra*function_4_vVcin_1(x(24), x(2), global_par_volchangespeed);

% Reaction: id = vVethanol_i, name = vVethanol_i
	reaction_vVethanol_i=compartment_intra*function_4_vVethanol_i_1(x(24), x(12), global_par_volchangespeed);

% Reaction: id = vVF16DP, name = vVF16DP
	reaction_vVF16DP=compartment_intra*function_4_vVF16DP_1(x(6), x(24), global_par_volchangespeed);

% Reaction: id = vVG6P, name = vVG6P
	reaction_vVG6P=compartment_intra*function_4_vVG6P_1(x(4), x(24), global_par_volchangespeed);

% Reaction: id = vVgluci, name = vVgluci
	reaction_vVgluci=compartment_intra*function_4_vVgluci_1(x(24), x(3), global_par_volchangespeed);

% Reaction: id = vVGpd1, name = vVGpd1
	reaction_vVGpd1=compartment_intra*function_4_vVGpd1_1(x(9), x(24), global_par_volchangespeed);

% Reaction: id = vVgpd1mRNA, name = vVgpd1mRNA
	reaction_vVgpd1mRNA=compartment_intra*function_4_vVgpd1mRNA_1(x(24), x(18), global_par_volchangespeed);

% Reaction: id = vVHog1, name = vVHog1
	reaction_vVHog1=compartment_intra*function_4_vVHog1_1(x(13), x(24), global_par_volchangespeed);

% Reaction: id = vVos, name = vVos
	reaction_vVos=compartment_intra*function_4_vVos_1(global_par_CellSurface, global_par_OsmoE, global_par_Turgor, x(2), x(25), x(1), global_par_vV_1, global_par_vV_2, global_par_vV_R, global_par_vV_T);

% Reaction: id = vVPfk2627a, name = vVPfk2627a
	reaction_vVPfk2627a=compartment_intra*function_4_vVPfk2627a_1(x(15), x(24), global_par_volchangespeed);

% Reaction: id = vVPfk2627i, name = vVPfk2627i
	reaction_vVPfk2627i=compartment_intra*function_4_vVPfk2627i_1(x(16), x(24), global_par_volchangespeed);

% Reaction: id = vVpyruvate, name = vVpyruvate
	reaction_vVpyruvate=compartment_intra*function_4_vVpyruvate_1(x(24), x(10), global_par_volchangespeed);

% Reaction: id = vVStl1, name = vVStl1
	reaction_vVStl1=compartment_intra*function_4_vVStl1_1(x(20), x(24), global_par_volchangespeed);

% Reaction: id = vVstl1mRNA, name = vVstl1mRNA
	reaction_vVstl1mRNA=compartment_intra*function_4_vVstl1mRNA_1(x(24), x(19), global_par_volchangespeed);

% Reaction: id = vVtrehalose, name = vVtrehalose
	reaction_vVtrehalose=compartment_intra*function_4_vVtrehalose_1(x(24), x(5), global_par_volchangespeed);

% Reaction: id = vVtrioseP, name = vVtrioseP
	reaction_vVtrioseP=compartment_intra*function_4_vVtrioseP_1(x(24), x(8), global_par_volchangespeed);

% Reaction: id = vVglyci, name = vVglyci
	reaction_vVglyci=compartment_intra*function_4_vVStl1_1_1(x(24), x(1), global_par_volchangespeed);

% Reaction: id = vVHog1PP, name = vVHog1PP
	reaction_vVHog1PP=compartment_intra*function_4_vVtrioseP_1_1(x(14), x(24), global_par_volchangespeed);

	xdot=zeros(29,1);
	
% Species:   id = glycerol_i, name = glycerol_i, affected by kineticLaw
	xdot(1) = (1/(compartment_intra))*((-1.0 * reaction_v13a) + ( 1.0 * reaction_v13b) + ( 1.0 * reaction_v6) + ( 1.0 * reaction_v6b) + (-1.0 * reaction_vVglyci));
	
% Species:   id = cin, name = cin, affected by kineticLaw
	xdot(2) = (1/(compartment_intra))*((-1.0 * reaction_vVcin));
	
% Species:   id = glucose_i, name = glucose_i, affected by kineticLaw
	xdot(3) = (1/(compartment_intra))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_vVgluci));
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(4) = (1/(compartment_intra))*((-1.0 * reaction_v14) + (-1.0 * reaction_v15f) + ( 1.0 * reaction_v15r) + ( 1.0 * reaction_v2) + (-2.0 * reaction_v3) + (-1.0 * reaction_v4) + (-1.0 * reaction_vVG6P));
	
% Species:   id = trehalose, name = trehalose, affected by kineticLaw
	xdot(5) = (1/(compartment_intra))*((-1.0 * reaction_v10) + ( 1.0 * reaction_v3) + (-1.0 * reaction_vVtrehalose));
	
% Species:   id = F16DP, name = F16DP, affected by kineticLaw
	xdot(6) = (1/(compartment_intra))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_vVF16DP));
	
% Species:   id = F26DP, name = F26DP, affected by kineticLaw
	xdot(7) = (1/(compartment_intra))*(( 1.0 * reaction_v15f) + (-1.0 * reaction_v15r));
	
% Species:   id = trioseP, name = trioseP, affected by kineticLaw
	xdot(8) = (1/(compartment_intra))*(( 2.0 * reaction_v5) + (-1.0 * reaction_v6) + (-1.0 * reaction_v6b) + (-1.0 * reaction_v7) + (-1.0 * reaction_vVtrioseP));
	
% Species:   id = Gpd1, name = Gpd1, affected by kineticLaw
	xdot(9) = (1/(compartment_intra))*(( 1.0 * reaction_v18f) + (-1.0 * reaction_v18r) + (-1.0 * reaction_vVGpd1));
	
% Species:   id = pyruvate, name = pyruvate, affected by kineticLaw
	xdot(10) = (1/(compartment_intra))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + (-1.0 * reaction_v9) + (-1.0 * reaction_vVpyruvate));
	
% Species:   id = acetate_i, name = acetate_i, affected by kineticLaw
	xdot(11) = (1/(compartment_intra))*((-1.0 * reaction_v11) + ( 1.0 * reaction_v8) + (-1.0 * reaction_vVacetate_i));
	
% Species:   id = ethanol_i, name = ethanol_i, affected by kineticLaw
	xdot(12) = (1/(compartment_intra))*((-1.0 * reaction_v12) + ( 1.0 * reaction_v9) + (-1.0 * reaction_vVethanol_i));
	
% Species:   id = Hog1, name = Hog1, affected by kineticLaw
	xdot(13) = (1/(compartment_intra))*((-1.0 * reaction_v16f) + ( 1.0 * reaction_v16r) + (-1.0 * reaction_vVHog1));
	
% Species:   id = Hog1PP, name = Hog1PP, affected by kineticLaw
	xdot(14) = (1/(compartment_intra))*(( 1.0 * reaction_v16f) + (-1.0 * reaction_v16r) + (-1.0 * reaction_vVHog1PP));
	
% Species:   id = Pfk2627a, name = Pfk2627a, affected by kineticLaw
	xdot(15) = (1/(compartment_intra))*(( 1.0 * reaction_v19f) + (-1.0 * reaction_v19r) + (-1.0 * reaction_vVPfk2627a));
	
% Species:   id = Pfk2627i, name = Pfk2627i, affected by kineticLaw
	xdot(16) = (1/(compartment_intra))*((-1.0 * reaction_v19f) + ( 1.0 * reaction_v19r) + (-1.0 * reaction_vVPfk2627i));
	
% Species:   id = AOG, name = AOG, affected by kineticLaw
	xdot(17) = (1/(compartment_intra))*(( 1.0 * reaction_v23f) + (-1.0 * reaction_v23r));
	
% Species:   id = gpd1mRNA, name = gpd1mRNA, affected by kineticLaw
	xdot(18) = (1/(compartment_intra))*(( 1.0 * reaction_v17f) + (-1.0 * reaction_v17r) + (-1.0 * reaction_vVgpd1mRNA));
	
% Species:   id = stl1mRNA, name = stl1mRNA, affected by kineticLaw
	xdot(19) = (1/(compartment_intra))*(( 1.0 * reaction_v20f) + (-1.0 * reaction_v20r) + (-1.0 * reaction_vVstl1mRNA));
	
% Species:   id = Stl1, name = Stl1, affected by kineticLaw
	xdot(20) = (1/(compartment_intra))*(( 1.0 * reaction_v21f) + (-1.0 * reaction_v21r) + (-1.0 * reaction_vVStl1));
	
% Species:   id = AOGi, name = AOGi, affected by kineticLaw
	xdot(21) = (1/(compartment_intra))*((-1.0 * reaction_v23f) + ( 1.0 * reaction_v23r));
	
% Species:   id = Fps1r, name = Fps1r, affected by kineticLaw
	xdot(22) = (1/(compartment_intra))*(( 1.0 * reaction_v22));
	
% Species:   id = biomass, name = biomass, affected by kineticLaw
	xdot(23) = (1/(compartment_intra))*(( 1.0 * reaction_v14));
	
% Species:   id = cellvol, name = cellvol, affected by kineticLaw
	xdot(24) = (1/(compartment_intra))*(( 1.0 * reaction_vVos));
	
% Species:   id = glycerol_e, name = glycerol_e, affected by kineticLaw
	xdot(25) = (1/(compartment_extra))*(( 1.0 * reaction_v13a) + ( 1.0 * reaction_v13aBatch) + (-1.0 * reaction_v13b) + (-1.0 * reaction_v13bBatch));
	
% Species:   id = glucose_e, name = glucose_e, affected by kineticLaw
	xdot(26) = (1/(compartment_extra))*((-1.0 * reaction_v1) + (-1.0 * reaction_v1Batch));
	
% Species:   id = acetate_e, name = acetate_e, affected by kineticLaw
	xdot(27) = (1/(compartment_extra))*(( 1.0 * reaction_v11) + ( 1.0 * reaction_v11Batch));
	
% Species:   id = ethanol_e, name = ethanol_e, affected by kineticLaw
	xdot(28) = (1/(compartment_extra))*(( 1.0 * reaction_v12) + ( 1.0 * reaction_v12Batch));
	
% Species:   id = trehalose_e, name = trehalose_e, affected by kineticLaw
	xdot(29) = (1/(compartment_extra))*(( 1.0 * reaction_v10) + ( 1.0 * reaction_v10Batch));
end

function z=function_4_v14_1(G6P,OsmoE,cellvol,kv14_1,kv14_2,kv14_3,kv14_4,kv14_5), z=(kv14_1*cellvol^kv14_3/(cellvol^kv14_3+kv14_2)*(1-OsmoE/(OsmoE+kv14_4))*G6P/kv14_5/(1+G6P/kv14_5));end

function z=function_4_v10Batch_1(cellnum,initcellnum,v10speed), z=(v10speed*cellnum/initcellnum-v10speed);end

function z=function_4_vVG6P_1(G6P,cellvol,volchangespeed), z=(G6P*volchangespeed/cellvol);end

function z=function_4_vVgluci_1(cellvol,glucose_i,volchangespeed), z=(glucose_i*volchangespeed/cellvol);end

function z=function_4_vVStl1_1(Stl1,cellvol,volchangespeed), z=(Stl1*volchangespeed/cellvol);end

function z=function_4_v4_1(F26DP,G6P,kv4_1,kv4_2,kv4_3,kv4_4,kv4_5), z=((kv4_2*(1-F26DP^kv4_5/(F26DP+kv4_3)^kv4_5)+kv4_1*F26DP^kv4_5/(F26DP+kv4_3)^kv4_5)*(G6P/kv4_4)^2/(1+(G6P/kv4_4)^2));end

function z=function_4_vVpyruvate_1(cellvol,pyruvate,volchangespeed), z=(pyruvate*volchangespeed/cellvol);end

function z=function_4_vVPfk2627a_1(Pfk2627a,cellvol,volchangespeed), z=(Pfk2627a*volchangespeed/cellvol);end

function z=function_4_vVstl1mRNA_1(cellvol,stl1mRNA,volchangespeed), z=(stl1mRNA*volchangespeed/cellvol);end

function z=function_4_v1Batch_1(cellnum,initcellnum,v1speed), z=(v1speed*cellnum/initcellnum-v1speed);end

function z=function_4_vVcin_1(cellvol,cin,volchangespeed), z=(cin*volchangespeed/cellvol);end

function z=function_4_vVos_1(CellSurface,OsmoE,Turgor,cin,glycerol_e,glycerol_i,vV_1,vV_2,vV_R,vV_T), z=(vV_1*CellSurface*(Turgor-vV_2*vV_R*vV_T*(glycerol_e+OsmoE-(glycerol_i+cin))));end

function z=function_4_vVethanol_i_1(cellvol,ethanol_i,volchangespeed), z=(ethanol_i*volchangespeed/cellvol);end

function z=function_4_vVF16DP_1(F16DP,cellvol,volchangespeed), z=(F16DP*volchangespeed/cellvol);end

function z=function_4_vVtrioseP_1(cellvol,trioseP,volchangespeed), z=(trioseP*volchangespeed/cellvol);end

function z=function_4_vVPfk2627i_1(Pfk2627i,cellvol,volchangespeed), z=(Pfk2627i*volchangespeed/cellvol);end

function z=function_4_v13a_1(CellSurface,Fps1r,glycerol_e,glycerol_i,kDiff,kv13a_1), z=(kv13a_1*CellSurface*Fps1r*(glycerol_i-kDiff*glycerol_e));end

function z=function_4_v13b_1(Stl1,glycerol_e,kv13b_1,kv13b_2), z=(glycerol_e*kv13b_1*Stl1/(kv13b_2+glycerol_e));end

function z=function_4_v17f_1(AOG,Hog1PP,kv17f_1,kv17f_2,kv17f_3,kv17f_4,kv17f_6,kx1,kx2), z=(kv17f_1*Hog1PP^kx1/(Hog1PP^kx1+kv17f_2)+kv17f_3*AOG^kx2/(AOG^kx2+kv17f_4)+kv17f_6);end

function z=function_4_v18f_1(gpd1mRNA,kv18f_1), z=(kv18f_1*gpd1mRNA);end

function z=function_4_v11_1(CellSurface,acetate_e,acetate_i,kv11_1,kv11_2), z=(kv11_1*CellSurface*(acetate_i-kv11_2*acetate_e));end

function z=function_4_v20f_1(Hog1PP,kv20f_1,kv20f_2,kv20f_3,kv20f_x), z=(kv20f_1*Hog1PP^kv20f_x/(Hog1PP^kv20f_x+kv20f_2)+kv20f_3);end

function z=function_4_v16f_1(Hog1,OsmoE,Vm,kv16f_1,kv16f_2,kv16f_3), z=(Hog1*kv16f_1*OsmoE*(kv16f_2/Vm)^kv16f_3);end

function z=function_4_v21f_1(kv21f_1,stl1mRNA), z=(kv21f_1*stl1mRNA);end

function z=function_4_v23f_1(AOGi,Vm,kv23f_1,kv23f_2,kv23f_3), z=(AOGi*kv23f_1*(kv23f_2/Vm)^kv23f_3);end

function z=function_4_v3_1(G6P,kv3_1,kv3_2,kv3_3,kv3_4,trehalose), z=((kv3_1*G6P/kv3_2-kv3_3*trehalose/kv3_4)/(1+G6P/kv3_2+trehalose/kv3_4));end

function z=function_4_v13aBatch_1(cellnum,initcellnum,v13aspeed), z=(v13aspeed*cellnum/initcellnum-v13aspeed);end

function z=function_4_v13bBatch_1(cellnum,initcellnum,v13bspeed), z=(v13bspeed*cellnum/initcellnum-v13bspeed);end

function z=function_4_v12_1(CellSurface,ethanol_e,ethanol_i,kv12_1,kv12_2), z=(kv12_1*CellSurface*(ethanol_i-kv12_2*ethanol_e));end

function z=function_4_v5_1(F16DP,kv5_1,kv5_2,kv5_3,kv5_4,trioseP), z=(kv5_1*F16DP/kv5_2/(1+F16DP/kv5_2)-kv5_3*trioseP/kv5_4/(1+trioseP/kv5_4));end

function z=function_4_v22(Fps1r,Hog1PP,Turgor,kv22_1,kv22_2,kv22_3), z=(kv22_1*(-Turgor)/(kv22_3+(-Turgor))*1.5*(1-Hog1PP/(Hog1PP+kv22_2))-kv22_1*Fps1r);end

function z=function_4_vVtrehalose_1(cellvol,trehalose,volchangespeed), z=(trehalose*volchangespeed/cellvol);end

function z=function_4_vVGpd1_1(Gpd1,cellvol,volchangespeed), z=(Gpd1*volchangespeed/cellvol);end

function z=function_4_vVgpd1mRNA_1(cellvol,gpd1mRNA,volchangespeed), z=(gpd1mRNA*volchangespeed/cellvol);end

function z=function_4_v10_1(CellSurface,kv10_1,kv10_2,trehalose,trehalose_e), z=(kv10_1*CellSurface*(trehalose-kv10_2*trehalose_e));end

function z=function_4_v12Batch_1(cellnum,initcellnum,v12speed), z=(v12speed*cellnum/initcellnum-v12speed);end

function z=function_4_v11Batch_1(cellnum,initcellnum,v11speed), z=(v11speed*cellnum/initcellnum-v11speed);end

function z=function_4_vVHog1_1(Hog1,cellvol,volchangespeed), z=(Hog1*volchangespeed/cellvol);end

function z=function_4_vVacetate_i_1(acetate_i,cellvol,volchangespeed), z=(acetate_i*volchangespeed/cellvol);end

function z=Henri_Michaelis_Menten__irreversible__1(glucose_e,kv1_1,kv1_2), z=(kv1_1*glucose_e/(kv1_2+glucose_e));end

function z=function_4_v6_1_1(Gpd1,kv6_1,kv6_2,kv6_3,trioseP), z=(trioseP^kv6_3*kv6_1*Gpd1/(kv6_2+trioseP^kv6_3));end

function z=function_4_v6b_1_1(kv6b_4,kv6b_5,kv6b_x,trioseP), z=(kv6b_x*kv6b_4*trioseP^2/kv6b_5/(1+trioseP^2/kv6b_5));end

function z=function_4_vVStl1_1_1(cellvol,glycerol_i,volchangespeed), z=(glycerol_i*volchangespeed/cellvol);end

function z=function_4_vVtrioseP_1_1(Hog1PP,cellvol,volchangespeed), z=(Hog1PP*volchangespeed/cellvol);end

function z=function_4_v19f_1(Hog1PP,Pfk2627i,kv19f_1), z=(kv19f_1*Hog1PP*Pfk2627i);end

function z=function_4_v15f_1(G6P,Pfk2627a,kv15f_1,kv15f_2), z=(G6P*kv15f_1*Pfk2627a/(kv15f_2+G6P));end

function z=Henri_Michaelis_Menten__irreversible__2(F26DP,kv15r_1,kv15r_2), z=(kv15r_1*F26DP/(kv15r_2+F26DP));end

function z=Henri_Michaelis_Menten__irreversible__3(glucose_i,kv2_1,kv2_2), z=(kv2_1*glucose_i/(kv2_2+glucose_i));end

function z=Henri_Michaelis_Menten__irreversible__4(kv7_1,kv7_2,trioseP), z=(kv7_1*trioseP/(kv7_2+trioseP));end

function z=Henri_Michaelis_Menten__irreversible__5(kv8_1,kv8_2,pyruvate), z=(kv8_1*pyruvate/(kv8_2+pyruvate));end

function z=Henri_Michaelis_Menten__irreversible__6(kv9_1,kv9_2,pyruvate), z=(kv9_1*pyruvate/(kv9_2+pyruvate));end

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


