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
% Model name = Robertson-Tessi M 2012 A model of tumor Immune interaction
%
% is http://identifiers.org/biomodels.db/MODEL1901250001
% is http://identifiers.org/biomodels.db/BIOMD0000000731
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 1.0E-5;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.0E-5;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1.0E7;
	x0(14) = 6000000.0;
	x0(15) = 3000000.0;
	x0(16) = 1000000.0;


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

% Compartment: id = MISC, name = TumorMicroenv, constant
	compartment_MISC=1.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=333.0;
% Parameter:   id =  m, name = m
	global_par_m=0.5;
% Parameter:   id =  gamma1, name = gamma1
% Parameter:   id =  Tx, name = Tx
% Parameter:   id =  k1, name = k1
	global_par_k1=100.0;
% Parameter:   id =  n, name = n
	global_par_n=0.6666;
% Parameter:   id =  P, name = P
	global_par_P=3.0;
% Parameter:   id =  deltaU, name = deltaU
	global_par_deltaU=0.14;
% Parameter:   id =  deltaD, name = deltaD
	global_par_deltaD=0.5;
% Parameter:   id =  deltaA, name = deltaA
	global_par_deltaA=0.2;
% Parameter:   id =  deltaE, name = deltaE
	global_par_deltaE=1.0;
% Parameter:   id =  deltaH, name = deltaH
	global_par_deltaH=0.1;
% Parameter:   id =  deltaR, name = deltaR
	global_par_deltaR=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.2;
% Parameter:   id =  T1, name = T1
	global_par_T1=1000000.0;
% Parameter:   id =  log_Tumor, name = log Tumor
% Parameter:   id =  log_effector, name = log effector
% Parameter:   id =  log_Treg, name = log Treg
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=6.31E-5;
% Parameter:   id =  r0, name = r0
	global_par_r0=0.9;
% Parameter:   id =  k3, name = k3
	global_par_k3=11.0;
% Parameter:   id =  S1, name = S1
	global_par_S1=3.5;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=23.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.33;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.5;
% Parameter:   id =  I1, name = I1
	global_par_I1=0.4;
% Parameter:   id =  alpha6, name = alpha6
	global_par_alpha6=2.1;
% Parameter:   id =  alpha7, name = alpha7
	global_par_alpha7=0.022;
% Parameter:   id =  C1, name = C1
	global_par_C1=0.3;
% Parameter:   id =  S2, name = S2
	global_par_S2=2.9;
% Parameter:   id =  S3, name = S3
	global_par_S3=1.7;
% Parameter:   id =  pc, name = pc
	global_par_pc=1.7E-5;
% Parameter:   id =  p1, name = p1
	global_par_p1=1.8E-8;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.1E-7;
% Parameter:   id =  R1, name = R1
	global_par_R1=2.0E7;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=16.0;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=9.9;
% Parameter:   id =  alpha4, name = alpha4
	global_par_alpha4=1.9;
% Parameter:   id =  alpha5, name = alpha5
	global_par_alpha5=5.1;
% Parameter:   id =  p3, name = p3
	global_par_p3=1.4E-8;
% Parameter:   id =  p4, name = p4
	global_par_p4=1.3E-10;
% Parameter:   id =  S4, name = S4
	global_par_S4=0.9;
% Parameter:   id =  tc, name = tc
	global_par_tc=0.08;
% Parameter:   id =  ts, name = ts
	global_par_ts=0.07;
% Parameter:   id =  t1, name = t1
	global_par_t1=0.05;
% Parameter:   id =  I2, name = I2
	global_par_I2=0.75;
% Parameter:   id =  Treg_origin_fraction_CD4, name = Treg_origin_fraction_CD4
% Parameter:   id =  Treg_origin_fraction_Treg, name = Treg_origin_fraction_Treg
% assignmentRule: variable = gamma1
	global_par_gamma1=global_par_gamma*global_par_T1^(global_par_m-1);
% assignmentRule: variable = Tx
	global_par_Tx=x(1)/(1+(x(1)^(1-global_par_n)/global_par_k1)^global_par_P)^(1/global_par_P);
% assignmentRule: variable = log_Tumor
	global_par_log_Tumor=log(x(1));
% assignmentRule: variable = log_effector
	global_par_log_effector=log(x(3));
% assignmentRule: variable = log_Treg
	global_par_log_Treg=log(x(9));
% assignmentRule: variable = Treg_origin_fraction_CD4
	global_par_Treg_origin_fraction_CD4=reaction_func_TRegs_Production_from_CD4/(reaction_func_TRegs_Production_from_CD4+reaction_func_TRegs_Production_from_sl_TRegs);
% assignmentRule: variable = Treg_origin_fraction_Treg
	global_par_Treg_origin_fraction_Treg=reaction_func_TRegs_Production_from_sl_TRegs/(reaction_func_TRegs_Production_from_CD4+reaction_func_TRegs_Production_from_sl_TRegs);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_MISC*equation_for_Tumor_Growth_1(global_par_P, x(1), global_par_gamma, global_par_gamma1, global_par_m);

% Reaction: id = Tumor_Cell_Killing, name = Tumor_Cell_Killing
	reaction_Tumor_Cell_Killing=compartment_MISC*equation_for_Tumor_Kill_1(global_par_S1, x(11), global_par_Tx, x(3), x(9), global_par_k2, global_par_k3, global_par_r0);

% Reaction: id = ul_DC_Production, name = unlicensed_DC Production
	reaction_ul_DC_Production=compartment_MISC*equation_for_unlicensed_DC_production_1(global_par_I1, x(12), global_par_R1, global_par_Tx, global_par_alpha, x(9));

% Reaction: id = Dendritic_Cell_Licensing, name = Dendritic Cell Licensing
	reaction_Dendritic_Cell_Licensing=compartment_MISC*equation_for_Dendritic_cell_licensing_1(x(14), global_par_lambda, x(7));

% Reaction: id = sl_TRegs_Degradation, name = shortlived_TRegs Degradation
	reaction_sl_TRegs_Degradation=compartment_MISC*global_par_deltaA*x(6);

% Reaction: id = IL2_Production, name = IL2 Production
	reaction_IL2_Production=compartment_MISC*equation_for_IL2_production_1(global_par_I2, x(12), global_par_S4, x(11), global_par_pc, x(4));

% Reaction: id = IL2_Degradation, name = IL2 Degradation
	reaction_IL2_Degradation=compartment_MISC*equation_for_IL2_Degradation_1(x(10), global_par_tc);

% Reaction: id = TGFb_Production, name = TGFb Production
	reaction_TGFb_Production=compartment_MISC*equation_for_TGF_beta_Production_1(global_par_Tx, x(9), global_par_p1, global_par_p2);

% Reaction: id = TGFb_Degradation, name = TGFb Degradation
	reaction_TGFb_Degradation=compartment_MISC*equation_for_TGF_beta_Degradation_1(x(11), global_par_ts);

% Reaction: id = IL10_Production, name = IL10 Production
	reaction_IL10_Production=compartment_MISC*equation_for_IL10_production_1(global_par_Tx, x(9), global_par_p3, global_par_p4);

% Reaction: id = IL10_Degradation, name = IL10 Degradation
	reaction_IL10_Degradation=compartment_MISC*equation_for_IL10_degradation_1(x(12), global_par_t1);

% Reaction: id = ul_DC_Degradation, name = unlicensed_DC Degradation
	reaction_ul_DC_Degradation=compartment_MISC*global_par_deltaU*x(7);

% Reaction: id = l_DC_Degradation, name = licensed_DC Degradation
	reaction_l_DC_Degradation=compartment_MISC*global_par_deltaD*x(8);

% Reaction: id = sl_CD8_ETC_Production, name = shortlived_CD8_ETC Production
	reaction_sl_CD8_ETC_Production=compartment_MISC*equation_for_short_lived_CD8_production_1(x(13), x(15), global_par_alpha1, global_par_k4, x(8));

% Reaction: id = sl_CD8_ETC_Degradation, name = shortlived_CD8_ETC Degradation
	reaction_sl_CD8_ETC_Degradation=compartment_MISC*global_par_deltaA*x(2);

% Reaction: id = func_CD8_ETC_Production, name = func_CD8 ETC Production
	reaction_func_CD8_ETC_Production=compartment_MISC*equation_for_fully_functional_CD8_production_1(global_par_C1, x(10), global_par_S2, x(11), global_par_alpha2, x(2));

% Reaction: id = func_CD8_ETC_Degradation, name = func_CD8 ETC Degradation
	reaction_func_CD8_ETC_Degradation=compartment_MISC*global_par_deltaE*x(3);

% Reaction: id = sl_CD4_HTC_Production, name = shortlived_CD4_HTC Production
	reaction_sl_CD4_HTC_Production=compartment_MISC*equation_for_short_lived_CD4_HTC_production_1(x(13), x(14), global_par_alpha3, global_par_k4, x(8), x(7));

% Reaction: id = sl_CD4_HTC_Degradation, name = shortlived_CD4_HTC Degradation
	reaction_sl_CD4_HTC_Degradation=compartment_MISC*global_par_deltaA*x(4);

% Reaction: id = func_CD4_HTC_Production, name = func_CD4 HTC Production
	reaction_func_CD4_HTC_Production=compartment_MISC*equation_for_fully_functional_CD4_HTC_1(global_par_C1, x(10), global_par_S2, x(11), global_par_alpha4, x(4));

% Reaction: id = sl_TRegs_Production, name = shortlived_TRegs Production
	reaction_sl_TRegs_Production=compartment_MISC*equation_for_short_lived_TReg_production_1(x(13), x(16), global_par_alpha5, global_par_k4, x(8));

% Reaction: id = func_TRegs_Production_from_CD4, name = func_TRegs Production from CD4
	reaction_func_TRegs_Production_from_CD4=compartment_MISC*equation_for_fully_functional_TRegs_production_by_CD4_HTC_1(global_par_S3, x(11), global_par_alpha7, x(5));

% Reaction: id = func_CD4_HTC_Degradation, name = func_CD4_HTC Degradation
	reaction_func_CD4_HTC_Degradation=compartment_MISC*global_par_deltaH*x(5);

% Reaction: id = func_TRegs_Degradation, name = func_TRegs Degradation
	reaction_func_TRegs_Degradation=compartment_MISC*global_par_deltaR*x(9);

% Reaction: id = func_TRegs_Production_from_sl_TRegs, name = func_TRegs Production from sl_TRegs
	reaction_func_TRegs_Production_from_sl_TRegs=compartment_MISC*equation_for_fully_functional_TRegs_production_by_sl_TRegs_1(global_par_C1, x(10), global_par_alpha6, x(6));

% Species:   id = Pool, name = Source, constant	const_species_Pool=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

	xdot=zeros(16,1);
	
% Species:   id = Tumorcells, name = Tumorcells, affected by kineticLaw
	xdot(1) = (1/(compartment_MISC))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Cell_Killing));
	
% Species:   id = sl_CD8_ETC, name = shortlived_CD8_ETC, affected by kineticLaw
	xdot(2) = (1/(compartment_MISC))*(( 1.0 * reaction_sl_CD8_ETC_Production) + (-1.0 * reaction_sl_CD8_ETC_Degradation));
	
% Species:   id = func_CD8_ETC, name = func_CD8_ETC, affected by kineticLaw
	xdot(3) = (1/(compartment_MISC))*(( 1.0 * reaction_func_CD8_ETC_Production) + (-1.0 * reaction_func_CD8_ETC_Degradation));
	
% Species:   id = sl_CD4_HTC, name = shortlived_CD4_HTC, affected by kineticLaw
	xdot(4) = (1/(compartment_MISC))*(( 1.0 * reaction_sl_CD4_HTC_Production) + (-1.0 * reaction_sl_CD4_HTC_Degradation));
	
% Species:   id = func_CD4_HTC, name = func_CD4_HTC, affected by kineticLaw
	xdot(5) = (1/(compartment_MISC))*(( 1.0 * reaction_func_CD4_HTC_Production) + (-1.0 * reaction_func_TRegs_Production_from_CD4) + (-1.0 * reaction_func_CD4_HTC_Degradation));
	
% Species:   id = sl_TRegs, name = shortlived_TRegs, affected by kineticLaw
	xdot(6) = (1/(compartment_MISC))*((-1.0 * reaction_sl_TRegs_Degradation) + ( 1.0 * reaction_sl_TRegs_Production));
	
% Species:   id = ul_DC, name = unlicensed_DC, affected by kineticLaw
	xdot(7) = (1/(compartment_MISC))*(( 1.0 * reaction_ul_DC_Production) + (-1.0 * reaction_Dendritic_Cell_Licensing) + (-1.0 * reaction_ul_DC_Degradation));
	
% Species:   id = l_DC, name = licensed_DC, affected by kineticLaw
	xdot(8) = (1/(compartment_MISC))*(( 1.0 * reaction_Dendritic_Cell_Licensing) + (-1.0 * reaction_l_DC_Degradation));
	
% Species:   id = func_TRegs, name = func_TRegs, affected by kineticLaw
	xdot(9) = (1/(compartment_MISC))*(( 1.0 * reaction_func_TRegs_Production_from_CD4) + (-1.0 * reaction_func_TRegs_Degradation) + ( 1.0 * reaction_func_TRegs_Production_from_sl_TRegs));
	
% Species:   id = IL2, name = IL2, affected by kineticLaw
	xdot(10) = (1/(compartment_MISC))*(( 1.0 * reaction_IL2_Production) + (-1.0 * reaction_IL2_Degradation));
	
% Species:   id = TGFb, name = TGFb, affected by kineticLaw
	xdot(11) = (1/(compartment_MISC))*(( 1.0 * reaction_TGFb_Production) + (-1.0 * reaction_TGFb_Degradation));
	
% Species:   id = IL10, name = IL10, affected by kineticLaw
	xdot(12) = (1/(compartment_MISC))*(( 1.0 * reaction_IL10_Production) + (-1.0 * reaction_IL10_Degradation));
	
% Species:   id = M, name = MemTcell
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = Mh, name = MemHelperTcells
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = Me, name = MemEffectorCells
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = Mr, name = RegMemTcell
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
end

function z=equation_for_Tumor_Growth_1(P,Tumorcells,gamma,gamma1,m), z=(Tumorcells/((1/gamma1)^P+(Tumorcells^(1-m)/gamma)^P)^(1/P));end

function z=equation_for_Tumor_Kill_1(S1,TGFb,Tx,func_CD8_ETC,func_TRegs,k2,k3,r0), z=(r0*Tx/(1+k2*Tx/func_CD8_ETC)*1/((1+k3*func_TRegs/func_CD8_ETC)*(1+TGFb/S1)));end

function z=equation_for_unlicensed_DC_production_1(I1,IL10,R1,Tx,alpha,func_TRegs), z=(alpha*Tx/((1+IL10/I1)*(1+func_TRegs/R1)));end

function z=equation_for_Dendritic_cell_licensing_1(Mh,lambda,ul_DC), z=(lambda*ul_DC/(1+ul_DC/Mh));end

function z=equation_for_IL2_production_1(I2,IL10,S4,TGFb,pc,sl_CD4_HTC), z=(pc*sl_CD4_HTC/((1+TGFb/S4)*(1+IL10/I2)));end

function z=equation_for_IL2_Degradation_1(IL2,tc), z=(IL2/tc);end

function z=equation_for_TGF_beta_Production_1(Tx,func_TRegs,p1,p2), z=(p1*func_TRegs+p2*Tx);end

function z=equation_for_TGF_beta_Degradation_1(TGFb,ts), z=(TGFb/ts);end

function z=equation_for_IL10_production_1(Tx,func_TRegs,p3,p4), z=(p3*func_TRegs+p4*Tx);end

function z=equation_for_IL10_degradation_1(IL10,t1), z=(IL10/t1);end

function z=equation_for_short_lived_CD8_production_1(M,Me,alpha1,k4,l_DC), z=(alpha1*Me/(1+k4*M/l_DC));end

function z=equation_for_fully_functional_CD8_production_1(C1,IL2,S2,TGFb,alpha2,sl_CD8_ETC), z=(alpha2*sl_CD8_ETC*IL2/((1+TGFb/S2)*(C1+IL2)));end

function z=equation_for_short_lived_CD4_HTC_production_1(M,Mh,alpha3,k4,l_DC,ul_DC), z=(alpha3*Mh/(1+k4*M/(ul_DC+l_DC)));end

function z=equation_for_fully_functional_CD4_HTC_1(C1,IL2,S2,TGFb,alpha4,sl_CD4_HTC), z=(alpha4*sl_CD4_HTC*IL2/((1+TGFb/S2)*(C1+IL2)));end

function z=equation_for_short_lived_TReg_production_1(M,Mr,alpha5,k4,l_DC), z=(alpha5*Mr/(1+k4*M/l_DC));end

function z=equation_for_fully_functional_TRegs_production_by_CD4_HTC_1(S3,TGFb,alpha7,func_CD4_HTC), z=(alpha7*func_CD4_HTC*TGFb/(S3+TGFb));end

function z=equation_for_fully_functional_TRegs_production_by_sl_TRegs_1(C1,IL2,alpha6,sl_TRegs), z=(alpha6*sl_TRegs*IL2/(C1+IL2));end

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


