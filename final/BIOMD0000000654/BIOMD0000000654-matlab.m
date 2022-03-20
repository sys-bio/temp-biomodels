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
% Model name = Padala2017- ERK, PI3K/Akt and Wnt signalling network (Ras mutated)
%
% is http://identifiers.org/biomodels.db/MODEL1708290002
% isDescribedBy http://identifiers.org/pubmed/28367561
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000149
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000033
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000623
% unknownQualifier http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/28367561
% is http://identifiers.org/biomodels.db/BIOMD0000000654
%


function main()
%Initial conditions vector
	x0=zeros(53,1);
	x0(1) = 96.602;
	x0(2) = 0.0015;
	x0(3) = 0.0076;
	x0(4) = 3.4392;
	x0(5) = 200.0;
	x0(6) = 8.0E-4;
	x0(7) = 42.722;
	x0(8) = 200.0;
	x0(9) = 500.0;
	x0(10) = 0.0;
	x0(11) = 100.0;
	x0(12) = 600.0;
	x0(13) = 260.0;
	x0(14) = 49.137;
	x0(15) = 680.0;
	x0(16) = 60.0;
	x0(17) = 100.0;
	x0(18) = 700.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 240.0;
	x0(22) = 270.0;
	x0(23) = 20.909;
	x0(24) = 100.0;
	x0(25) = 60.0;
	x0(26) = 200.0;
	x0(27) = 12.0;
	x0(28) = 100.0;
	x0(29) = 100.0;
	x0(30) = 100.0;
	x0(31) = 6.1879;
	x0(32) = 8.8121;
	x0(33) = 10.263;
	x0(34) = 0.0;
	x0(35) = 300.0;
	x0(36) = 0.0153;
	x0(37) = 0.002;
	x0(38) = 0.002;
	x0(39) = 0.0;
	x0(40) = 0.9881;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.85544;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.8619;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 1.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Kcat10a, name = Kcat10a
	global_par_Kcat10a=0.12633;
% Parameter:   id =  Kcat10b, name = Kcat10b
	global_par_Kcat10b=15.1212;
% Parameter:   id =  Kcat11a, name = Kcat11a
	global_par_Kcat11a=185.76;
% Parameter:   id =  Kcat12, name = Kcat12
	global_par_Kcat12=2.8324;
% Parameter:   id =  Kcat13, name = Kcat13
	global_par_Kcat13=9.8537;
% Parameter:   id =  Kcat14, name = Kcat14
	global_par_Kcat14=8.8912;
% Parameter:   id =  Kcat16a, name = Kcat16a
	global_par_Kcat16a=0.8841;
% Parameter:   id =  Kcat16b, name = Kcat16b
	global_par_Kcat16b=0.8841;
% Parameter:   id =  Kcat17a, name = Kcat17a
	global_par_Kcat17a=0.12633;
% Parameter:   id =  Kcat17b, name = Kcat17b
	global_par_Kcat17b=15.1212;
% Parameter:   id =  Kcat18b, name = Kcat18b
	global_par_Kcat18b=0.02137;
% Parameter:   id =  Kcat19a, name = Kcat19a
	global_par_Kcat19a=10.6737;
% Parameter:   id =  Kcat19b, name = Kcat19b
	global_par_Kcat19b=0.07711;
% Parameter:   id =  Kcat20, name = Kcat20
	global_par_Kcat20=4.0;
% Parameter:   id =  Kcat21, name = Kcat21
	global_par_Kcat21=5.5;
% Parameter:   id =  Kcat22a, name = Kcat22a
	global_par_Kcat22a=0.33;
% Parameter:   id =  Kcat22b, name = Kcat22b
	global_par_Kcat22b=48.667;
% Parameter:   id =  Kcat23a, name = Kcat23a
	global_par_Kcat23a=694.73;
% Parameter:   id =  Kcat24, name = Kcat24
	global_par_Kcat24=32.344;
% Parameter:   id =  Kcat25, name = Kcat25
	global_par_Kcat25=1509.4;
% Parameter:   id =  Kcat27a, name = Kcat27a
	global_par_Kcat27a=0.002;
% Parameter:   id =  Kcat27b, name = Kcat27b
	global_par_Kcat27b=0.04596;
% Parameter:   id =  Kcat27d, name = Kcat27d
	global_par_Kcat27d=0.01541;
% Parameter:   id =  Kcat6b, name = Kcat6b
	global_par_Kcat6b=1611.97;
% Parameter:   id =  Kcat7, name = Kcat7
	global_par_Kcat7=32.644;
% Parameter:   id =  Kcat9a, name = Kcat9a
	global_par_Kcat9a=0.884096;
% Parameter:   id =  Km10a, name = Km10a
	global_par_Km10a=1061.7;
% Parameter:   id =  Km10b, name = Km10b
	global_par_Km10b=119355.0;
% Parameter:   id =  Km11a, name = Km11a
	global_par_Km11a=4768400.0;
% Parameter:   id =  Km12, name = Km12
	global_par_Km12=518750.0;
% Parameter:   id =  Km13, name = Km13
	global_par_Km13=1007300.0;
% Parameter:   id =  Km14, name = Km14
	global_par_Km14=3496500.0;
% Parameter:   id =  Km16a, name = Km16a
	global_par_Km16a=62645.0;
% Parameter:   id =  Km16b, name = Km16b
	global_par_Km16b=62464.6;
% Parameter:   id =  Km17a, name = Km17a
	global_par_Km17a=1061.71;
% Parameter:   id =  Km17b, name = Km17b
	global_par_Km17b=119355.0;
% Parameter:   id =  Km18b, name = Km18b
	global_par_Km18b=763523.0;
% Parameter:   id =  Km19a, name = Km19a
	global_par_Km19a=184912.0;
% Parameter:   id =  Km19b, name = Km19b
	global_par_Km19b=272056.0;
% Parameter:   id =  Km20, name = Km20
	global_par_Km20=4.0;
% Parameter:   id =  Km21, name = Km21
	global_par_Km21=0.08;
% Parameter:   id =  Km22a, name = Km22a
	global_par_Km22a=100.0;
% Parameter:   id =  Km22b, name = Km22b
	global_par_Km22b=100.0;
% Parameter:   id =  Km23a, name = Km23a
	global_par_Km23a=6086100.0;
% Parameter:   id =  Km24, name = Km24
	global_par_Km24=35954.3;
% Parameter:   id =  Km25, name = Km25
	global_par_Km25=1432400.0;
% Parameter:   id =  Km39, name = Km39
	global_par_Km39=15.0;
% Parameter:   id =  Km6b, name = Km6b
	global_par_Km6b=896896.0;
% Parameter:   id =  Km7, name = Km7
	global_par_Km7=35954.3;
% Parameter:   id =  Km9a, name = Km9a
	global_par_Km9a=62464.6;
% Parameter:   id =  Km9b, name = Km9b
	global_par_Km9b=15.0;
% Parameter:   id =  V1, name = V1
	global_par_V1=100.0;
% Parameter:   id =  V15b, name = V15b
	global_par_V15b=4.0;
% Parameter:   id =  V26a, name = V26a
	global_par_V26a=0.00154;
% Parameter:   id =  V37b, name = V37b
	global_par_V37b=0.00705;
% Parameter:   id =  V8a, name = V8a
	global_par_V8a=0.0717;
% Parameter:   id =  W, name = W
	global_par_W=0.0;
% Parameter:   id =  k11b1, name = k11b1
	global_par_k11b1=1.1167E-5;
% Parameter:   id =  k11b2, name = k11b2
	global_par_k11b2=120.0;
% Parameter:   id =  k15a, name = k15a
	global_par_k15a=1.3;
% Parameter:   id =  k15c, name = k15c
	global_par_k15c=0.00193;
% Parameter:   id =  k18a, name = k18a
	global_par_k18a=0.005;
% Parameter:   id =  k19c, name = k19c
	global_par_k19c=0.005;
% Parameter:   id =  k21, name = k21
	global_par_k21=2.18503E-5;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.121008;
% Parameter:   id =  k23b, name = k23b
	global_par_k23b=2.5;
% Parameter:   id =  k26a, name = k26a
	global_par_k26a=20.0;
% Parameter:   id =  k26b, name = k26b
	global_par_k26b=3.85E-4;
% Parameter:   id =  k27c, name = k27c
	global_par_k27c=1.5E-4;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.003;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.003;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.00125;
% Parameter:   id =  k30, name = k30
	global_par_k30=8.33E-4;
% Parameter:   id =  k311, name = k311
	global_par_k311=0.001515;
% Parameter:   id =  k312, name = k312
	global_par_k312=0.01515;
% Parameter:   id =  k32a, name = k32a
	global_par_k32a=0.00445;
% Parameter:   id =  k32b, name = k32b
	global_par_k32b=0.002217;
% Parameter:   id =  k33a1, name = k33a1
	global_par_k33a1=0.01667;
% Parameter:   id =  k33a2, name = k33a2
	global_par_k33a2=0.8333;
% Parameter:   id =  k33b, name = k33b
	global_par_k33b=0.002783;
% Parameter:   id =  k33c1, name = k33c1
	global_par_k33c1=1.37E-6;
% Parameter:   id =  k33c2, name = k33c2
	global_par_k33c2=1.667E-8;
% Parameter:   id =  k341, name = k341
	global_par_k341=0.01667;
% Parameter:   id =  k342, name = k342
	global_par_k342=2.0;
% Parameter:   id =  k35, name = k35
	global_par_k35=3.433;
% Parameter:   id =  k36, name = k36
	global_par_k36=3.433;
% Parameter:   id =  k37a1, name = k37a1
	global_par_k37a1=0.01667;
% Parameter:   id =  k37a2, name = k37a2
	global_par_k37a2=20.0;
% Parameter:   id =  k37c, name = k37c
	global_par_k37c=4.283E-6;
% Parameter:   id =  k381, name = k381
	global_par_k381=0.01667;
% Parameter:   id =  k382, name = k382
	global_par_k382=0.5;
% Parameter:   id =  k39, name = k39
	global_par_k39=0.01;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.2;
% Parameter:   id =  k40, name = k40
	global_par_k40=2.5E-4;
% Parameter:   id =  k41, name = k41
	global_par_k41=0.00695;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.003465;
% Parameter:   id =  k52, name = k52
	global_par_k52=3.85E-5;
% Parameter:   id =  k53, name = k53
	global_par_k53=2.8833E-4;
% Parameter:   id =  k54, name = k54
	global_par_k54=1.5;
% Parameter:   id =  k6a, name = k6a
	global_par_k6a=2.5;
% Parameter:   id =  k9b, name = k9b
	global_par_k9b=0.025;

% Reaction: id = v1, name = EGFR dephosphorylation
	reaction_v1=compartment_Cell*Function_for_EGFR_dephosphorylation(global_par_V1, compartment_Cell);

% Reaction: id = v10a, name = Raf1 dephosphorylation (RafPPtase modifier)
	reaction_v10a=compartment_Cell*Function_for_Raf1_dephosphorylation__RafPPtase_modifier(global_par_Kcat10a, global_par_Km10a, x(25), compartment_Cell, x(49));

% Reaction: id = v10b, name = Raf1 dephosphorylation (pAkt modifier)
	reaction_v10b=compartment_Cell*Function_for_Raf1_dephosphorylation__pAkt_modifier(global_par_Kcat10b, global_par_Km10b, compartment_Cell, x(39), x(49));

% Reaction: id = v11a, name = MEK phosphorylation (pbRaf modifier)
	reaction_v11a=compartment_Cell*Function_for_MEK_phosphorylation__pbRaf_modifier(global_par_Kcat11a, global_par_Km11a, x(15), compartment_Cell, x(41));

% Reaction: id = v11b, name = MEK phosphorylation (pRaf1, pRKIP and RKIP modifiers)
	reaction_v11b=compartment_Cell*Function_for_MEK_phosphorylation__pRaf1__pRKIP_and_RKIP_modifiers(x(15), x(23), compartment_Cell, global_par_k11b1, global_par_k11b2, x(48), x(49));

% Reaction: id = v12, name = MEK dephosphorylation (PP2A modifer)
	reaction_v12=compartment_Cell*Function_for_MEK_dephosphorylation__PP2A_modifer(global_par_Kcat12, global_par_Km12, x(21), compartment_Cell, x(45));

% Reaction: id = v13, name = ERK phosphorylation (pMEK modifier)
	reaction_v13=compartment_Cell*Function_for_ERK_phosphorylation__pMEK_modifier(x(13), global_par_Kcat13, global_par_Km13, compartment_Cell, x(45));

% Reaction: id = v14, name = ERK dephosphorylation (PP2A modifer)
	reaction_v14=compartment_Cell*Function_for_ERK_dephosphorylation__PP2A_modifer(global_par_Kcat14, global_par_Km14, x(21), compartment_Cell, x(43));

% Reaction: id = v15a, name = RKIP phosphorylation (pERK modifier)
	reaction_v15a=compartment_Cell*Function_for_RKIP_phosphorylation__pERK_modifier(x(23), compartment_Cell, global_par_k15a, x(43), x(48));

% Reaction: id = v15b, name = RKIP dephosphorylation
	reaction_v15b=compartment_Cell*Function_for_RKIP_dephosphorylation(global_par_V15b, compartment_Cell, x(48));

% Reaction: id = v15c, name = RKIP degradation
	reaction_v15c=compartment_Cell*Function_for_RKIP_degradation(x(23), compartment_Cell, global_par_k15c);

% Reaction: id = v16a, name = bRaf phosphorylation (pRas modifier)
	reaction_v16a=compartment_Cell*Function_for_bRaf_phosphorylation__pRas_modifier(x(8), global_par_Kcat16a, global_par_Km16a, compartment_Cell, x(51));

% Reaction: id = v16b, name = bRaf phosphorylation (pRap1 modifier)
	reaction_v16b=compartment_Cell*Function_for_bRaf_phosphorylation__pRap1_modifier(x(8), global_par_Kcat16b, global_par_Km16b, compartment_Cell, x(50));

% Reaction: id = v18a, name = P90Rsk dephosphorylation
	reaction_v18a=compartment_Cell*Function_for_P90Rsk_dephosphorylation(compartment_Cell, global_par_k18a, x(46));

% Reaction: id = v18b, name = P90Rsk phosphorylation (pERK modifier)
	reaction_v18b=compartment_Cell*Function_for_P90Rsk_phosphorylation__pERK_modifier(global_par_Kcat18b, global_par_Km18b, x(16), compartment_Cell, x(43));

% Reaction: id = v19a, name = PI3K phosphorylation (boundEGFR modifier)
	reaction_v19a=compartment_Cell*Function_for_PI3K_phosphorylation__boundEGFR_modifier(global_par_Kcat19a, global_par_Km19a, x(17), x(34), compartment_Cell);

% Reaction: id = v19b, name = PI3K phosphorylation (pRas modifier)
	reaction_v19b=compartment_Cell*Function_for_PI3K_phosphorylation__pRas_modifier(global_par_Kcat19b, global_par_Km19b, x(17), compartment_Cell, x(51));

% Reaction: id = v19c, name = PI3K dephosphorylation
	reaction_v19c=compartment_Cell*Function_for_PI3K_dephosphorylation(compartment_Cell, global_par_k19c, x(47));

% Reaction: id = v2, name = EGFR binding
	reaction_v2=compartment_Cell*Function_for_EGFR_binding(x(12), x(34), compartment_Cell, x(35), global_par_k21, global_par_k22);

% Reaction: id = v20, name = PIP2 phosphorylated to PIP3
	reaction_v20=compartment_Cell*Function_for_PIP2_phosphorylated_to_PIP3(global_par_Kcat20, global_par_Km20, x(18), compartment_Cell, x(47));

% Reaction: id = v21, name = PIP3 dephosphorylated to PIP2
	reaction_v21=compartment_Cell*Function_for_PIP3_dephosphorylated_to_PIP2(global_par_Kcat21, global_par_Km21, x(19), x(22), compartment_Cell);

% Reaction: id = v22a, name = Akt phosphorylation (PIP3 modifier)
	reaction_v22a=compartment_Cell*Function_for_Akt_phosphorylation__PIP3_modifier(x(5), global_par_Kcat22a, global_par_Km22a, x(19), compartment_Cell);

% Reaction: id = v22b, name = Akt dephosphorylation 
	reaction_v22b=compartment_Cell*Function_for_Akt_dephosphorylation(global_par_Kcat22b, global_par_Km22b, compartment_Cell, x(39));

% Reaction: id = v23a, name = C3G phosphorylation (boundEGFR modifier)
	reaction_v23a=compartment_Cell*Function_for_C3G_phosphorylation__boundEGFR_modifier(x(9), global_par_Kcat23a, global_par_Km23a, x(34), compartment_Cell);

% Reaction: id = v23b, name = C3G dephosphorylation
	reaction_v23b=compartment_Cell*Function_for_C3G_dephosphorylation(compartment_Cell, global_par_k23b, x(42));

% Reaction: id = v24, name = Rap1 phosphorylation (pC3G modifier)
	reaction_v24=compartment_Cell*Function_for_Rap1_phosphorylation__pC3G_modifier(global_par_Kcat24, global_par_Km24, x(26), compartment_Cell, x(42));

% Reaction: id = v25, name = Rap1 dephosphorylation (Rap1_GAP modifer)
	reaction_v25=compartment_Cell*Function_for_Rap1_dephosphorylation__Rap1_GAP_modifer(global_par_Kcat25, global_par_Km25, x(27), compartment_Cell, x(50));

% Reaction: id = v26a, name = PKCD synthesis
	reaction_v26a=compartment_Cell*Function_for_PKCD_synthesis(x(14), global_par_V26a, compartment_Cell, global_par_k26a);

% Reaction: id = v26b, name = PKCD degradation
	reaction_v26b=compartment_Cell*Function_for_PKCD_degradation(x(20), compartment_Cell, global_par_k26b);

% Reaction: id = v27a, name = GSK3b phosphorylation (pERK modifier)
	reaction_v27a=compartment_Cell*Function_for_GSK3b_phosphorylation__pERK_modifier(x(14), global_par_Kcat27a, compartment_Cell, x(43));

% Reaction: id = v27b, name = GSK3b phosphorylation (pAkt modifier)
	reaction_v27b=compartment_Cell*Function_for_GSK3b_phosphorylation__pAkt_modifier(x(14), global_par_Kcat27b, compartment_Cell, x(39));

% Reaction: id = v27c, name = GSK3b synthesis
	reaction_v27c=compartment_Cell*Function_for_GSK3b_synthesis(x(23), compartment_Cell, global_par_k27c);

% Reaction: id = v27d, name = GSK3b dephosphorylation
	reaction_v27d=compartment_Cell*Function_for_GSK3b_dephosphorylation(global_par_Kcat27d, compartment_Cell, x(44));

% Reaction: id = v28, name = Dsh activation
	reaction_v28=compartment_Cell*Function_for_Dsh_activation(x(11), global_par_W, compartment_Cell, global_par_k28);

% Reaction: id = v29, name = Dsh deactivation
	reaction_v29=compartment_Cell*Function_for_Dsh_deactivation(x(10), compartment_Cell, global_par_k29);

% Reaction: id = v3, name = freeEGFR degradation
	reaction_v3=compartment_Cell*Function_for_freeEGFR_degradation(compartment_Cell, x(35), global_par_k3);

% Reaction: id = v30, name = APC_Axin_GSK3b complex disassembly (Dsha modifier)
	reaction_v30=compartment_Cell*Function_for_APC_Axin_GSK3b_complex_disassembly__Dsha_modifier(x(3), x(10), compartment_Cell, global_par_k30);

% Reaction: id = v31, name = APC_Axin_GSK3b complex formation
	reaction_v31=compartment_Cell*Function_for_APC_Axin_GSK3b_complex_formation(x(2), x(3), x(14), compartment_Cell, global_par_k311, global_par_k312);

% Reaction: id = v32a, name = APC and Axin phosphorylation (in compound)
	reaction_v32a=compartment_Cell*Function_for_APC_and_Axin_phosphorylation__in_compound(x(3), compartment_Cell, global_par_k32a);

% Reaction: id = v32b, name = APC and Axin dephosphorylation (in compound)
	reaction_v32b=compartment_Cell*Function_for_APC_and_Axin_dephosphorylation__in_compound(compartment_Cell, global_par_k32b, x(36));

% Reaction: id = v33a, name = APC_Axin complex formation
	reaction_v33a=compartment_Cell*APC_Axin_complex_formation(x(1), x(2), x(6), compartment_Cell, global_par_k33a1, global_par_k33a2);

% Reaction: id = v33b, name = Axin degradation
	reaction_v33b=compartment_Cell*Function_for_Axin_degradation(x(6), compartment_Cell, global_par_k33b);

% Reaction: id = v33c, name = Axin synthesis
	reaction_v33c=compartment_Cell*Function_for_Axin_synthesis(x(7), x(32), compartment_Cell, global_par_k33c1, global_par_k33c2);

% Reaction: id = v34, name = pAPC_pAxin_GSK3b_bCatenin complex formation
	reaction_v34=compartment_Cell*Function_for_pAPC_pAxin_GSK3b_bCatenin_complex_formation(x(7), compartment_Cell, global_par_k341, global_par_k342, x(36), x(37));

% Reaction: id = v35, name = bCatenin phosphorylation (in compond)
	reaction_v35=compartment_Cell*Function_for_bCatenin_phosphorylation__in_compound(compartment_Cell, global_par_k35, x(37));

% Reaction: id = v36, name = pAPC_pAxin_GSK3b_pbCatenin complex disassembly
	reaction_v36=compartment_Cell*Function_for_pAPC_pAxin_GSK3b_pbCatenin_complex_disassembly(compartment_Cell, global_par_k36, x(38));

% Reaction: id = v37a, name = APC_bCatenin complex formation
	reaction_v37a=compartment_Cell*Function_for_APC_bCatenin_complex_formation(x(1), x(4), x(7), compartment_Cell, global_par_k37a1, global_par_k37a2);

% Reaction: id = v37b, name = bCatenin synthesis
	reaction_v37b=compartment_Cell*Function_for_bCatenin_synthesis(global_par_V37b, compartment_Cell);

% Reaction: id = v37c, name = bCatenin degradation
	reaction_v37c=compartment_Cell*Function_for_bCatenin_degradation(x(7), compartment_Cell, global_par_k37c);

% Reaction: id = v38, name = bCatenin_TCF complex binding
	reaction_v38=compartment_Cell*Function_for_bCatenin_TCF_complex_binding(x(7), x(31), x(32), compartment_Cell, global_par_k381, global_par_k382);

% Reaction: id = v39, name = X synthesis
	reaction_v39=compartment_Cell*Function_for_X_synthesis(global_par_Km39, x(32), compartment_Cell, global_par_k39);

% Reaction: id = v4, name = boundEGFR degradation
	reaction_v4=compartment_Cell*Function_for_boundEGFR_degradation(x(34), compartment_Cell, global_par_k4);

% Reaction: id = v40, name = X degradation
	reaction_v40=compartment_Cell*Function_for_X_degradation(x(33), compartment_Cell, global_par_k40);

% Reaction: id = v41, name = pbCatenin degradation
	reaction_v41=compartment_Cell*Function_for_pbCatenin_degradation(compartment_Cell, global_par_k41, x(40));

% Reaction: id = v5, name = SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) 
	reaction_v5=compartment_Cell*Function_for_SOS_phosphorylation__PKCD__pERK_and_boundEGFR_modifiers_(x(20), x(34), compartment_Cell, global_par_k51, global_par_k52, global_par_k53, global_par_k54, x(43));

% Reaction: id = v6a, name = SOS dephosphorylation
	reaction_v6a=compartment_Cell*Function_for_SOS_dephosphorylation(compartment_Cell, global_par_k6a, x(52));

% Reaction: id = v6b, name = SOS dephosphorylation (pP90Rsk modifier)
	reaction_v6b=compartment_Cell*Function_for_SOS_dephosphorylation__pP90Rsk_modifier(global_par_Kcat6b, global_par_Km6b, compartment_Cell, x(46), x(52));

% Reaction: id = v7, name = Ras phosphorylation (pSOS modifier)
	reaction_v7=compartment_Cell*Function_for_Ras_phosphorylation__pSOS_modifier(global_par_Kcat7, global_par_Km7, x(28), compartment_Cell, x(52));

% Reaction: id = v8a, name = Ras synthesis
	reaction_v8a=compartment_Cell*Function_for_Ras_synthesis(global_par_V8a, compartment_Cell);

% Reaction: id = v9a, name = Raf1 phosphorylation (pRas modifier)
	reaction_v9a=compartment_Cell*Function_for_Raf1_phosphorylation__pRas_modifier(global_par_Kcat9a, global_par_Km9a, x(24), compartment_Cell, x(51));

% Reaction: id = v9b, name = Raf1 phosphorylation (X modifier)
	reaction_v9b=compartment_Cell*Function_for_Raf1_phosphorylation__X_modifier(global_par_Km9b, x(24), global_par_W, x(33), compartment_Cell, global_par_k9b);

% Reaction: id = bRaf_dephosphorylation__RafPPtase_modifier, name = bRaf dephosphorylation (RafPPtase modifier)
	reaction_bRaf_dephosphorylation__RafPPtase_modifier=compartment_Cell*function_for_bRaf_dephosphorylation(global_par_Kcat17a, x(25), x(41), global_par_Km17a, compartment_Cell);

% Reaction: id = bRaf_dephosphorylation__pAkt_modifier, name = bRaf dephosphorylation (pAkt modifier)
	reaction_bRaf_dephosphorylation__pAkt_modifier=compartment_Cell*function_for_bRaf_dephosphorylation(global_par_Kcat17b, x(41), x(39), global_par_Km17b, compartment_Cell);

% Species:   id = pEGFR, name = pEGFR, constant	const_species_pEGFR=0.05;

	xdot=zeros(53,1);
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_v33a) + (-1.0 * reaction_v37a));
	
% Species:   id = APCAxin, name = APC_Axin, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_v30) + (-1.0 * reaction_v31) + ( 1.0 * reaction_v33a));
	
% Species:   id = APCAxinGSK3B, name = APC_Axin_GSK3b, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*((-1.0 * reaction_v30) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v32a) + ( 1.0 * reaction_v32b));
	
% Species:   id = APCBCatenin, name = APC_bCatenin, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_v37a));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*((-1.0 * reaction_v22a) + ( 1.0 * reaction_v22b));
	
% Species:   id = Axin, name = Axin, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*((-1.0 * reaction_v33a) + (-1.0 * reaction_v33b) + ( 1.0 * reaction_v33c));
	
% Species:   id = BCatenin, name = bCatenin, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*((-1.0 * reaction_v33c) + ( 1.0 * reaction_v33c) + (-1.0 * reaction_v34) + (-1.0 * reaction_v37a) + ( 1.0 * reaction_v37b) + (-1.0 * reaction_v37c) + (-1.0 * reaction_v38));
	
% Species:   id = BRaf, name = bRaf, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*((-1.0 * reaction_v16a) + (-1.0 * reaction_v16b) + ( 1.0 * reaction_bRaf_dephosphorylation__RafPPtase_modifier) + ( 1.0 * reaction_bRaf_dephosphorylation__pAkt_modifier));
	
% Species:   id = C3G, name = C3G, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*((-1.0 * reaction_v23a) + ( 1.0 * reaction_v23b));
	
% Species:   id = Dsha, name = Dsha, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_v28) + (-1.0 * reaction_v29) + (-1.0 * reaction_v30) + ( 1.0 * reaction_v30));
	
% Species:   id = Dshi, name = Dshi, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*((-1.0 * reaction_v28) + ( 1.0 * reaction_v29));
	
% Species:   id = EGF, name = EGF, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*((-1.0 * reaction_v2));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*((-1.0 * reaction_v13) + ( 1.0 * reaction_v14));
	
% Species:   id = GSK3B, name = GSK3b, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*((-1.0 * reaction_v26a) + ( 1.0 * reaction_v26a) + (-1.0 * reaction_v27a) + (-1.0 * reaction_v27b) + ( 1.0 * reaction_v27c) + ( 1.0 * reaction_v27d) + ( 1.0 * reaction_v30) + (-1.0 * reaction_v31));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*((-1.0 * reaction_v11a) + (-1.0 * reaction_v11b) + ( 1.0 * reaction_v12));
	
% Species:   id = P90Rsk, name = P90Rsk, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*(( 1.0 * reaction_v18a) + (-1.0 * reaction_v18b));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*((-1.0 * reaction_v19a) + (-1.0 * reaction_v19b) + ( 1.0 * reaction_v19c));
	
% Species:   id = PIP2, name = PIP2, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*((-1.0 * reaction_v20) + ( 1.0 * reaction_v21));
	
% Species:   id = PIP3, name = PIP3, affected by kineticLaw
	xdot(19) = (1/(compartment_Cell))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + (-1.0 * reaction_v22a) + ( 1.0 * reaction_v22a));
	
% Species:   id = PKCD, name = PKCD, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*(( 1.0 * reaction_v26a) + (-1.0 * reaction_v26b) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v5));
	
% Species:   id = PP2A, name = PP2A, affected by kineticLaw
	xdot(21) = (1/(compartment_Cell))*((-1.0 * reaction_v12) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v14));
	
% Species:   id = PTEN, name = PTEN, affected by kineticLaw
	xdot(22) = (1/(compartment_Cell))*((-1.0 * reaction_v21) + ( 1.0 * reaction_v21));
	
% Species:   id = RKIP, name = RKIP, affected by kineticLaw
	xdot(23) = (1/(compartment_Cell))*((-1.0 * reaction_v15a) + ( 1.0 * reaction_v15b) + (-1.0 * reaction_v15c) + (-1.0 * reaction_v27c) + ( 1.0 * reaction_v27c));
	
% Species:   id = Raf1, name = Raf1, affected by kineticLaw
	xdot(24) = (1/(compartment_Cell))*(( 1.0 * reaction_v10a) + ( 1.0 * reaction_v10b) + (-1.0 * reaction_v9a) + (-1.0 * reaction_v9b));
	
% Species:   id = RafPPtase, name = RafPPtase, affected by kineticLaw
	xdot(25) = (1/(compartment_Cell))*((-1.0 * reaction_v10a) + ( 1.0 * reaction_v10a) + (-1.0 * reaction_bRaf_dephosphorylation__RafPPtase_modifier) + ( 1.0 * reaction_bRaf_dephosphorylation__RafPPtase_modifier));
	
% Species:   id = Rap1, name = Rap1, affected by kineticLaw
	xdot(26) = (1/(compartment_Cell))*((-1.0 * reaction_v24) + ( 1.0 * reaction_v25));
	
% Species:   id = Rap1Gap, name = Rap1_Gap, affected by kineticLaw
	xdot(27) = (1/(compartment_Cell))*((-1.0 * reaction_v25) + ( 1.0 * reaction_v25));
	
% Species:   id = Ras, name = Ras, affected by kineticLaw
	xdot(28) = (1/(compartment_Cell))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v8a));
	
% Species:   id = RasGap, name = Ras_Gap
% Warning species is not changed by either rules or reactions
	xdot(29) = ;
	
% Species:   id = SOS, name = SOS, affected by kineticLaw
	xdot(30) = (1/(compartment_Cell))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v6a) + ( 1.0 * reaction_v6b));
	
% Species:   id = TCF, name = TCF, affected by kineticLaw
	xdot(31) = (1/(compartment_Cell))*((-1.0 * reaction_v38));
	
% Species:   id = TCFBCatenin, name = bCatenin_TCF, affected by kineticLaw
	xdot(32) = (1/(compartment_Cell))*((-1.0 * reaction_v33c) + ( 1.0 * reaction_v33c) + ( 1.0 * reaction_v38) + (-1.0 * reaction_v39) + ( 1.0 * reaction_v39));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(33) = (1/(compartment_Cell))*(( 1.0 * reaction_v39) + (-1.0 * reaction_v40) + (-1.0 * reaction_v9b) + ( 1.0 * reaction_v9b));
	
% Species:   id = bEGFR, name = boundEGFR, affected by kineticLaw
	xdot(34) = (1/(compartment_Cell))*((-1.0 * reaction_v19a) + ( 1.0 * reaction_v19a) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v23a) + ( 1.0 * reaction_v23a) + (-1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v5));
	
% Species:   id = fEGFR, name = freeEGFR, affected by kineticLaw
	xdot(35) = (1/(compartment_Cell))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = pAPCpAxinGSK3B, name = pAPC_pAxin_GSK3b, affected by kineticLaw
	xdot(36) = (1/(compartment_Cell))*(( 1.0 * reaction_v32a) + (-1.0 * reaction_v32b) + (-1.0 * reaction_v34) + ( 1.0 * reaction_v36));
	
% Species:   id = pAPCpAxinGSK3BBCatenin, name = pAPC_pAxin_GSK3b_bCatenin, affected by kineticLaw
	xdot(37) = (1/(compartment_Cell))*(( 1.0 * reaction_v34) + (-1.0 * reaction_v35));
	
% Species:   id = pAPCpAxinGSK3BpBCatenin, name = pAPC_pAxin_GSK3b_pbCatenin, affected by kineticLaw
	xdot(38) = (1/(compartment_Cell))*(( 1.0 * reaction_v35) + (-1.0 * reaction_v36));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(39) = (1/(compartment_Cell))*((-1.0 * reaction_v10b) + ( 1.0 * reaction_v10b) + ( 1.0 * reaction_v22a) + (-1.0 * reaction_v22b) + (-1.0 * reaction_v27b) + ( 1.0 * reaction_v27b) + (-1.0 * reaction_bRaf_dephosphorylation__pAkt_modifier) + ( 1.0 * reaction_bRaf_dephosphorylation__pAkt_modifier));
	
% Species:   id = pBCatenin, name = pbCatenin, affected by kineticLaw
	xdot(40) = (1/(compartment_Cell))*(( 1.0 * reaction_v36) + (-1.0 * reaction_v41));
	
% Species:   id = pBRaf, name = pbRaf, affected by kineticLaw
	xdot(41) = (1/(compartment_Cell))*((-1.0 * reaction_v11a) + ( 1.0 * reaction_v11a) + ( 1.0 * reaction_v16a) + ( 1.0 * reaction_v16b) + (-1.0 * reaction_bRaf_dephosphorylation__RafPPtase_modifier) + (-1.0 * reaction_bRaf_dephosphorylation__pAkt_modifier));
	
% Species:   id = pC3G, name = pC3G, affected by kineticLaw
	xdot(42) = (1/(compartment_Cell))*(( 1.0 * reaction_v23a) + (-1.0 * reaction_v23b) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v24));
	
% Species:   id = pERK, name = pERK, affected by kineticLaw
	xdot(43) = (1/(compartment_Cell))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15a) + ( 1.0 * reaction_v15a) + (-1.0 * reaction_v18b) + ( 1.0 * reaction_v18b) + (-1.0 * reaction_v27a) + ( 1.0 * reaction_v27a) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v5));
	
% Species:   id = pGSK3B, name = pGSK3b, affected by kineticLaw
	xdot(44) = (1/(compartment_Cell))*(( 1.0 * reaction_v27a) + ( 1.0 * reaction_v27b) + (-1.0 * reaction_v27d));
	
% Species:   id = pMEK, name = pMEK, affected by kineticLaw
	xdot(45) = (1/(compartment_Cell))*(( 1.0 * reaction_v11a) + ( 1.0 * reaction_v11b) + (-1.0 * reaction_v12) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v13));
	
% Species:   id = pP90Rsk, name = pP90Rsk, affected by kineticLaw
	xdot(46) = (1/(compartment_Cell))*((-1.0 * reaction_v18a) + ( 1.0 * reaction_v18b) + (-1.0 * reaction_v6b) + ( 1.0 * reaction_v6b));
	
% Species:   id = pPI3K, name = pPI3K, affected by kineticLaw
	xdot(47) = (1/(compartment_Cell))*(( 1.0 * reaction_v19a) + ( 1.0 * reaction_v19b) + (-1.0 * reaction_v19c) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v20));
	
% Species:   id = pRKIP, name = pRKIP, affected by kineticLaw
	xdot(48) = (1/(compartment_Cell))*((-1.0 * reaction_v11b) + ( 1.0 * reaction_v11b) + ( 1.0 * reaction_v15a) + (-1.0 * reaction_v15b));
	
% Species:   id = pRaf1, name = pRaf1, affected by kineticLaw
	xdot(49) = (1/(compartment_Cell))*((-1.0 * reaction_v10a) + (-1.0 * reaction_v10b) + (-1.0 * reaction_v11b) + ( 1.0 * reaction_v11b) + ( 1.0 * reaction_v9a) + ( 1.0 * reaction_v9b));
	
% Species:   id = pRap1, name = pRap1, affected by kineticLaw
	xdot(50) = (1/(compartment_Cell))*((-1.0 * reaction_v16b) + ( 1.0 * reaction_v16b) + ( 1.0 * reaction_v24) + (-1.0 * reaction_v25));
	
% Species:   id = pRas, name = pRas, affected by kineticLaw
	xdot(51) = (1/(compartment_Cell))*((-1.0 * reaction_v16a) + ( 1.0 * reaction_v16a) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v9a) + ( 1.0 * reaction_v9a));
	
% Species:   id = pSOS, name = pSOS, affected by kineticLaw
	xdot(52) = (1/(compartment_Cell))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6a) + (-1.0 * reaction_v6b) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v7));
	
% Species:   id = null, name = null, affected by kineticLaw
	xdot(53) = (1/(compartment_Cell))*(( 1.0 * reaction_v15c) + ( 1.0 * reaction_v26b) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v33b) + (-1.0 * reaction_v37b) + ( 1.0 * reaction_v37c) + ( 1.0 * reaction_v4) + ( 1.0 * reaction_v40) + ( 1.0 * reaction_v41) + (-1.0 * reaction_v8a));
end

function z=Function_for_Raf1_phosphorylation__X_modifier(Km9b,Raf1,W,X,Cell,k9b), z=(k9b*W*X*Raf1/(Km9b+Raf1)/Cell);end

function z=function_for_bRaf_dephosphorylation(Kcat17a,pbRaf,RafPPase,Km17a,volume), z=(Kcat17a*pbRaf*RafPPase/(Km17a+pbRaf)/volume);end

function z=Function_for_EGFR_dephosphorylation(V1,Cell), z=(V1/Cell);end

function z=Function_for_Raf1_dephosphorylation__RafPPtase_modifier(Kcat10a,Km10a,RafPPtase,Cell,pRaf1), z=(Kcat10a*RafPPtase*pRaf1/(pRaf1+Km10a)/Cell);end

function z=Function_for_Raf1_dephosphorylation__pAkt_modifier(Kcat10b,Km10b,Cell,pAkt,pRaf1), z=(Kcat10b*pAkt*pRaf1/(pRaf1+Km10b)/Cell);end

function z=Function_for_MEK_phosphorylation__pbRaf_modifier(Kcat11a,Km11a,MEK,Cell,pBRaf), z=(Kcat11a*pBRaf*MEK/(MEK+Km11a)/Cell);end

function z=Function_for_MEK_phosphorylation__pRaf1__pRKIP_and_RKIP_modifiers(MEK,RKIP,Cell,k11b1,k11b2,pRKIP,pRaf1), z=(k11b1*pRaf1*MEK/(1+((RKIP-pRKIP)/k11b2)^2)/Cell);end

function z=Function_for_MEK_dephosphorylation__PP2A_modifer(Kcat12,Km12,PP2A,Cell,pMEK), z=(Kcat12*PP2A*pMEK/(pMEK+Km12)/Cell);end

function z=Function_for_ERK_phosphorylation__pMEK_modifier(ERK,Kcat13,Km13,Cell,pMEK), z=(Kcat13*pMEK*ERK/(ERK+Km13)/Cell);end

function z=Function_for_ERK_dephosphorylation__PP2A_modifer(Kcat14,Km14,PP2A,Cell,pERK), z=(Kcat14*PP2A*pERK/(pERK+Km14)/Cell);end

function z=Function_for_RKIP_phosphorylation__pERK_modifier(RKIP,Cell,k15a,pERK,pRKIP), z=(k15a*pERK*(RKIP-pRKIP)/Cell);end

function z=Function_for_RKIP_dephosphorylation(V15b,Cell,pRKIP), z=(V15b*pRKIP/Cell);end

function z=Function_for_RKIP_degradation(RKIP,Cell,k15c), z=(k15c*RKIP/Cell);end

function z=Function_for_bRaf_phosphorylation__pRas_modifier(BRaf,Kcat16a,Km16a,Cell,pRas), z=(Kcat16a*pRas*BRaf/(BRaf+Km16a)/Cell);end

function z=Function_for_bRaf_phosphorylation__pRap1_modifier(BRaf,Kcat16b,Km16b,Cell,pRap1), z=(Kcat16b*pRap1*BRaf/(BRaf+Km16b)/Cell);end

function z=Function_for_P90Rsk_dephosphorylation(Cell,k18a,pP90Rsk), z=(k18a*pP90Rsk/Cell);end

function z=Function_for_P90Rsk_phosphorylation__pERK_modifier(Kcat18b,Km18b,P90Rsk,Cell,pERK), z=(Kcat18b*pERK*P90Rsk/(P90Rsk+Km18b)/Cell);end

function z=Function_for_PI3K_phosphorylation__boundEGFR_modifier(Kcat19a,Km19a,PI3K,bEGFR,Cell), z=(Kcat19a*bEGFR*PI3K/(PI3K+Km19a)/Cell);end

function z=Function_for_PI3K_phosphorylation__pRas_modifier(Kcat19b,Km19b,PI3K,Cell,pRas), z=(Kcat19b*pRas*PI3K/(PI3K+Km19b)/Cell);end

function z=Function_for_EGFR_binding(EGF,bEGFR,Cell,fEGFR,k21,k22), z=((k21*EGF*fEGFR-k22*bEGFR)/Cell);end

function z=Function_for_PIP2_phosphorylated_to_PIP3(Kcat20,Km20,PIP2,Cell,pPI3K), z=(Kcat20*pPI3K*PIP2/(PIP2+Km20)/Cell);end

function z=Function_for_PIP3_dephosphorylated_to_PIP2(Kcat21,Km21,PIP3,PTEN,Cell), z=(Kcat21*PTEN*PIP3/(PIP3+Km21)/Cell);end

function z=Function_for_Akt_phosphorylation__PIP3_modifier(Akt,Kcat22a,Km22a,PIP3,Cell), z=(Kcat22a*PIP3*Akt/(Akt+Km22a)/Cell);end

function z=Function_for_Akt_dephosphorylation(Kcat22b,Km22b,Cell,pAkt), z=(Kcat22b*pAkt/(Km22b+pAkt)/Cell);end

function z=Function_for_C3G_phosphorylation__boundEGFR_modifier(C3G,Kcat23a,Km23a,bEGFR,Cell), z=(Kcat23a*bEGFR*C3G/(C3G+Km23a)/Cell);end

function z=Function_for_C3G_dephosphorylation(Cell,k23b,pC3G), z=(k23b*pC3G/Cell);end

function z=Function_for_Rap1_phosphorylation__pC3G_modifier(Kcat24,Km24,Rap1,Cell,pC3G), z=(Kcat24*pC3G*Rap1/(Rap1+Km24)/Cell);end

function z=Function_for_Rap1_dephosphorylation__Rap1_GAP_modifer(Kcat25,Km25,Rap1Gap,Cell,pRap1), z=(Kcat25*Rap1Gap*pRap1/(pRap1+Km25)/Cell);end

function z=Function_for_PKCD_synthesis(GSK3B,V26a,Cell,k26a), z=(V26a/(1+(GSK3B/k26a)^2.5)/Cell);end

function z=Function_for_PKCD_degradation(PKCD,Cell,k26b), z=(k26b*PKCD/Cell);end

function z=Function_for_GSK3b_phosphorylation__pERK_modifier(GSK3B,Kcat27a,Cell,pERK), z=(Kcat27a*GSK3B*pERK/Cell);end

function z=Function_for_GSK3b_phosphorylation__pAkt_modifier(GSK3B,Kcat27b,Cell,pAkt), z=(Kcat27b*GSK3B*pAkt/Cell);end

function z=Function_for_GSK3b_synthesis(RKIP,Cell,k27c), z=(k27c*RKIP/Cell);end

function z=Function_for_GSK3b_dephosphorylation(Kcat27d,Cell,pGSK3B), z=(Kcat27d*pGSK3B/Cell);end

function z=Function_for_Dsh_activation(Dshi,W,Cell,k28), z=(k28*Dshi*W/Cell);end

function z=Function_for_Dsh_deactivation(Dsha,Cell,k29), z=(k29*Dsha/Cell);end

function z=Function_for_APC_Axin_GSK3b_complex_disassembly__Dsha_modifier(APCAxinGSK3B,Dsha,Cell,k30), z=(k30*Dsha*APCAxinGSK3B/Cell);end

function z=Function_for_APC_Axin_GSK3b_complex_formation(APCAxin,APCAxinGSK3B,GSK3B,Cell,k311,k312), z=((k311*GSK3B*APCAxin-k312*APCAxinGSK3B)/Cell);end

function z=Function_for_APC_and_Axin_phosphorylation__in_compound(APCAxinGSK3B,Cell,k32a), z=(k32a*APCAxinGSK3B/Cell);end

function z=Function_for_APC_and_Axin_dephosphorylation__in_compound(Cell,k32b,pAPCpAxinGSK3B), z=(k32b*pAPCpAxinGSK3B/Cell);end

function z=APC_Axin_complex_formation(APC,APCAxin,Axin,Cell,k33a1,k33a2), z=((k33a1*Axin*APC-k33a2*APCAxin)/Cell);end

function z=Function_for_Axin_degradation(Axin,Cell,k33b), z=(k33b*Axin/Cell);end

function z=Function_for_Axin_synthesis(BCatenin,TCFBCatenin,Cell,k33c1,k33c2), z=((k33c1+k33c2*(TCFBCatenin+BCatenin))/Cell);end

function z=Function_for_pAPC_pAxin_GSK3b_bCatenin_complex_formation(BCatenin,Cell,k341,k342,pAPCpAxinGSK3B,pAPCpAxinGSK3BBCatenin), z=((k341*pAPCpAxinGSK3B*BCatenin-k342*pAPCpAxinGSK3BBCatenin)/Cell);end

function z=Function_for_bCatenin_phosphorylation__in_compound(Cell,k35,pAPCpAxinGSK3BBCatenin), z=(k35*pAPCpAxinGSK3BBCatenin/Cell);end

function z=Function_for_pAPC_pAxin_GSK3b_pbCatenin_complex_disassembly(Cell,k36,pAPCpAxinGSK3BpBCatenin), z=(k36*pAPCpAxinGSK3BpBCatenin/Cell);end

function z=Function_for_APC_bCatenin_complex_formation(APC,APCBCatenin,BCatenin,Cell,k37a1,k37a2), z=((k37a1*APC*BCatenin-k37a2*APCBCatenin)/Cell);end

function z=Function_for_bCatenin_synthesis(V37b,Cell), z=(V37b/Cell);end

function z=Function_for_bCatenin_degradation(BCatenin,Cell,k37c), z=(k37c*BCatenin/Cell);end

function z=Function_for_bCatenin_TCF_complex_binding(BCatenin,TCF,TCFBCatenin,Cell,k381,k382), z=((k381*BCatenin*TCF-k382*TCFBCatenin)/Cell);end

function z=Function_for_X_synthesis(Km39,TCFBCatenin,Cell,k39), z=(k39*TCFBCatenin^2/(Km39^2+TCFBCatenin^2)/Cell);end

function z=Function_for_X_degradation(X,Cell,k40), z=(k40*X/Cell);end

function z=Function_for_pbCatenin_degradation(Cell,k41,pBCatenin), z=(k41*pBCatenin/Cell);end

function z=Function_for_SOS_phosphorylation__PKCD__pERK_and_boundEGFR_modifiers_(PKCD,bEGFR,Cell,k51,k52,k53,k54,pERK), z=((k51*bEGFR+k52+k53*PKCD)/(1+pERK/k54)/Cell);end

function z=Function_for_SOS_dephosphorylation(Cell,k6a,pSOS), z=(k6a*pSOS/Cell);end

function z=Function_for_SOS_dephosphorylation__pP90Rsk_modifier(Kcat6b,Km6b,Cell,pP90Rsk,pSOS), z=(Kcat6b*pP90Rsk*pSOS/(pSOS+Km6b)/Cell);end

function z=Function_for_Ras_phosphorylation__pSOS_modifier(Kcat7,Km7,Ras,Cell,pSOS), z=(Kcat7*pSOS*Ras/(Ras+Km7)/Cell);end

function z=Function_for_Ras_synthesis(V8a,Cell), z=(V8a/Cell);end

function z=Function_for_Raf1_phosphorylation__pRas_modifier(Kcat9a,Km9a,Raf1,Cell,pRas), z=(Kcat9a*pRas*Raf1/(Raf1+Km9a)/Cell);end

function z=Function_for_freeEGFR_degradation(Cell,fEGFR,k3), z=(k3*fEGFR/Cell);end

function z=Function_for_boundEGFR_degradation(bEGFR,Cell,k4), z=(k4*bEGFR/Cell);end

function z=Function_for_PI3K_dephosphorylation(Cell,k19c,pPI3K), z=(k19c*pPI3K/Cell);end

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


