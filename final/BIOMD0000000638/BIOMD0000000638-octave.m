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
% Model name = Bush2016 - Extended Carrousel model of GPCR-RGS
%
% is http://identifiers.org/biomodels.db/MODEL1610220001
% is http://identifiers.org/biomodels.db/BIOMD0000000638
% isDescribedBy http://identifiers.org/pubmed/28034910
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 843.877551020408;
	x0(2) = 0.0;
	x0(3) = 520.918367346939;
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
	x0(21) = 164.835164835165;


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

% Compartment: id = PM, name = PM, constant
	compartment_PM=3.92;
% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=36.4;
% Parameter:   id =  L, name = L
	global_par_L=0.0;
% Parameter:   id =  K_d_L_R, name = K_d_L?R
	global_par_K_d_L_R=5.6;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=1.0;
% Parameter:   id =  lambda_t, name = lambda_t
	global_par_lambda_t=1.0;
% Parameter:   id =  lambda_d, name = lambda_d
	global_par_lambda_d=1.0;
% Parameter:   id =  K_d_R_G, name = K_d_R?G
	global_par_K_d_R_G=36.0;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0;
% Parameter:   id =  k_Ef_G, name = k_Ef_G
% Parameter:   id =  k_Hf_Gt, name = k_Hf_Gt
	global_par_k_Hf_Gt=0.002;
% Parameter:   id =  k_Af_Gd, name = k_Af_Gd
% Parameter:   id =  k_Ef_RG, name = k_Ef_RG
	global_par_k_Ef_RG=6.2E-4;
% Parameter:   id =  k_Ef_LRG, name = k_Ef_LRG
	global_par_k_Ef_LRG=1.5;
% Parameter:   id =  k_Hf_LRGt, name = k_Hf_LRGt
% Parameter:   id =  k_Af_LRGd, name = k_Af_LRGd
% Parameter:   id =  k_Hf_RGt, name = k_Hf_RGt
	global_par_k_Hf_RGt=0.002;
% Parameter:   id =  k_Af_RGd, name = k_Af_RGd
% Parameter:   id =  Rtot, name = Rtot
	global_par_Rtot=3308.0;
% Parameter:   id =  Gtot, name = Gtot
	global_par_Gtot=2042.0;
% Parameter:   id =  k_on_L_R, name = k_on_L?R
% Parameter:   id =  k_off_L_R, name = k_off_L?R
	global_par_k_off_L_R=0.001;
% Parameter:   id =  k_on_L_RG, name = k_on_L?RG
% Parameter:   id =  k_off_L_RG, name = k_off_L?RG
% Parameter:   id =  k_on_L_RGt, name = k_on_L?RGt
% Parameter:   id =  k_off_L_RGt, name = k_off_L?RGt
% Parameter:   id =  k_on_L_RGd, name = k_on_L?RGd
% Parameter:   id =  k_off_L_RGd, name = k_off_L?RGd
% Parameter:   id =  k_on_R_G, name = k_on_R?G
% Parameter:   id =  k_off_R_G, name = k_off_R?G
	global_par_k_off_R_G=0.09;
% Parameter:   id =  k_on_LR_G, name = k_on_LR?G
% Parameter:   id =  k_off_LR_G, name = k_off_LR?G
% Parameter:   id =  k_on_R_Gt, name = k_on_R?Gt
% Parameter:   id =  k_off_R_Gt, name = k_off_R?Gt
% Parameter:   id =  k_on_LR_Gt, name = k_on_LR?Gt
% Parameter:   id =  k_off_LR_Gt, name = k_off_LR?Gt
% Parameter:   id =  k_on_R_Gd, name = k_on_R?Gd
% Parameter:   id =  k_off_R_Gd, name = k_off_R?Gd
% Parameter:   id =  k_on_LR_Gd, name = k_on_LR?Gd
% Parameter:   id =  k_off_LR_Gd, name = k_off_LR?Gd
% Parameter:   id =  k_Ar_Gd, name = k_Ar_Gd
% Parameter:   id =  k_Ar_RGd, name = k_Ar_RGd
% Parameter:   id =  k_Ar_LRGd, name = k_Ar_LRGd
% Parameter:   id =  tot_LR, name = tot_LR
% Parameter:   id =  tot_RG, name = tot_RG
% Parameter:   id =  tot_G, name = tot_G
% Parameter:   id =  tot_Gd, name = tot_Gd
% Parameter:   id =  tot_Gt, name = tot_Gt
% Parameter:   id =  k_Ef_Gd, name = k_Ef_Gd
	global_par_k_Ef_Gd=6.2E-4;
% Parameter:   id =  k_Ef_RGd, name = k_Ef_RGd
% Parameter:   id =  k_Ef_LRGd, name = k_Ef_LRGd
% Parameter:   id =  K_d_Gd_Gbg, name = K_d_Gd?Gbg
	global_par_K_d_Gd_Gbg=0.01;
% Parameter:   id =  k_Hf_LRrgsGt, name = k_Hf_LRrgsGt
% Parameter:   id =  k_Hf_RrgsGt, name = k_Hf_RrgsGt
	global_par_k_Hf_RrgsGt=0.28;
% Parameter:   id =  rgs_tot, name = rgs_tot
	global_par_rgs_tot=6000.0;
% Parameter:   id =  K_d_R_rgs, name = K_d_R?rgs
	global_par_K_d_R_rgs=328.0;
% Parameter:   id =  k_off_R_rgs, name = k_off_R?rgs
	global_par_k_off_R_rgs=3.0;
% Parameter:   id =  k_on_R_rgs, name = k_on_R.rgs
% Parameter:   id =  tot_Rrgs, name = tot_Rrgs
% Parameter:   id =  ModelValue_54, name = Initial for K_d_R?rgs
	global_par_ModelValue_54=328.0;
% Parameter:   id =  ModelValue_52, name = Initial for k_Hf_RrgsGt
	global_par_ModelValue_52=0.28;
% Parameter:   id =  ModelValue_55, name = Initial for k_off_R?rgs
	global_par_ModelValue_55=3.0;
% assignmentRule: variable = k_Ef_G
	global_par_k_Ef_G=global_par_k_Ef_Gd;
% assignmentRule: variable = k_off_LR_G
	global_par_k_off_LR_G=global_par_k_off_R_G;
% assignmentRule: variable = tot_RG
	global_par_tot_RG=x(6)+x(10)+x(11)+x(8)+x(12)+x(9)+x(18)+x(19)+x(20)+x(14)+x(15)+x(16);
% assignmentRule: variable = k_Af_Gd
	global_par_k_Af_Gd=1.66*0.13;
% assignmentRule: variable = k_Hf_LRGt
	global_par_k_Hf_LRGt=global_par_k_Hf_RGt;
% assignmentRule: variable = k_Af_LRGd
	global_par_k_Af_LRGd=global_par_k_Af_Gd;
% assignmentRule: variable = k_Af_RGd
	global_par_k_Af_RGd=global_par_k_Af_Gd;
% assignmentRule: variable = k_on_L_R
	global_par_k_on_L_R=global_par_L*global_par_k_off_L_R/global_par_K_d_L_R;
% assignmentRule: variable = k_off_L_RG
	global_par_k_off_L_RG=global_par_k_off_L_R;
% assignmentRule: variable = k_on_L_RG
	global_par_k_on_L_RG=global_par_L*global_par_k_off_L_RG/(global_par_lambda*global_par_K_d_L_R);
% assignmentRule: variable = k_off_L_RGt
	global_par_k_off_L_RGt=global_par_k_off_L_R;
% assignmentRule: variable = k_on_L_RGt
	global_par_k_on_L_RGt=global_par_L*global_par_k_off_L_RGt/(global_par_lambda_t*global_par_K_d_L_R);
% assignmentRule: variable = k_off_L_RGd
	global_par_k_off_L_RGd=global_par_k_off_L_R;
% assignmentRule: variable = k_on_L_RGd
	global_par_k_on_L_RGd=global_par_L*global_par_k_off_L_RGd/(global_par_lambda_d*global_par_K_d_L_R);
% assignmentRule: variable = k_on_R_G
	global_par_k_on_R_G=global_par_k_off_R_G/global_par_K_d_R_G/1.66;
% assignmentRule: variable = k_on_LR_G
	global_par_k_on_LR_G=global_par_k_off_LR_G/(global_par_lambda*global_par_K_d_R_G/1.66);
% assignmentRule: variable = k_off_R_Gt
	global_par_k_off_R_Gt=global_par_k_off_R_G;
% assignmentRule: variable = k_on_R_Gt
	global_par_k_on_R_Gt=global_par_k_off_R_Gt/(global_par_eta*global_par_K_d_R_G/1.66);
% assignmentRule: variable = k_off_LR_Gt
	global_par_k_off_LR_Gt=global_par_k_off_R_G;
% assignmentRule: variable = k_on_LR_Gt
	global_par_k_on_LR_Gt=global_par_k_off_LR_Gt/(global_par_lambda_t*global_par_eta*global_par_K_d_R_G/1.66);
% assignmentRule: variable = k_off_R_Gd
	global_par_k_off_R_Gd=global_par_k_off_R_G;
% assignmentRule: variable = k_on_R_Gd
	global_par_k_on_R_Gd=global_par_k_off_R_Gd/(global_par_rho*global_par_K_d_R_G/1.66);
% assignmentRule: variable = k_off_LR_Gd
	global_par_k_off_LR_Gd=global_par_k_off_R_G;
% assignmentRule: variable = k_on_LR_Gd
	global_par_k_on_LR_Gd=global_par_k_off_LR_Gd/(global_par_lambda_d*global_par_rho*global_par_K_d_R_G/1.66);
% assignmentRule: variable = k_Ar_Gd
	global_par_k_Ar_Gd=global_par_k_Af_Gd/1.66*global_par_K_d_Gd_Gbg;
% assignmentRule: variable = k_Ar_RGd
	global_par_k_Ar_RGd=global_par_k_Af_RGd/1.66*global_par_K_d_Gd_Gbg/global_par_rho;
% assignmentRule: variable = k_Ar_LRGd
	global_par_k_Ar_LRGd=global_par_lambda*global_par_k_Af_LRGd/1.66*global_par_K_d_Gd_Gbg/(global_par_lambda_d*global_par_rho);
% assignmentRule: variable = tot_LR
	global_par_tot_LR=x(8)+x(12)+x(9)+x(2)+x(14)+x(15)+x(16)+x(13);
% assignmentRule: variable = tot_G
	global_par_tot_G=x(3)+x(8)+x(6)+x(14)+x(18);
% assignmentRule: variable = tot_Gd
	global_par_tot_Gd=x(5)+x(12)+x(10)+x(15)+x(19);
% assignmentRule: variable = tot_Gt
	global_par_tot_Gt=x(4)+x(9)+x(11)+x(20)+x(16);
% assignmentRule: variable = k_Ef_RGd
	global_par_k_Ef_RGd=global_par_k_Ef_RG;
% assignmentRule: variable = k_Ef_LRGd
	global_par_k_Ef_LRGd=global_par_k_Ef_LRG;
% assignmentRule: variable = k_Hf_LRrgsGt
	global_par_k_Hf_LRrgsGt=global_par_ModelValue_52;
% assignmentRule: variable = k_on_R_rgs
	global_par_k_on_R_rgs=global_par_ModelValue_55/global_par_ModelValue_54/1.66;
% assignmentRule: variable = tot_Rrgs
	global_par_tot_Rrgs=x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20);

% Reaction: id = binding_R_G, name = binding_R?G
	reaction_binding_R_G=compartment_PM*(global_par_k_on_R_G*x(1)*x(3)-global_par_k_off_R_G*x(6));

% Reaction: id = binding_L_R, name = binding_L?R
	reaction_binding_L_R=compartment_PM*(global_par_k_on_L_R*x(1)-global_par_k_off_L_R*x(2));

% Reaction: id = binding_R_Gt, name = binding_R?Gt
	reaction_binding_R_Gt=compartment_PM*(global_par_k_on_R_Gt*x(1)*x(4)-global_par_k_off_R_Gt*x(11));

% Reaction: id = binding_R_Gd, name = binding_R?Gd
	reaction_binding_R_Gd=compartment_PM*(global_par_k_on_R_Gd*x(1)*x(5)-global_par_k_off_R_Gd*x(10));

% Reaction: id = binding_LR_G, name = binding_LR?G
	reaction_binding_LR_G=compartment_PM*(global_par_k_on_LR_G*x(2)*x(3)-global_par_k_off_LR_G*x(8));

% Reaction: id = binding_LR_Gt, name = binding_LR?Gt
	reaction_binding_LR_Gt=compartment_PM*(global_par_k_on_LR_Gt*x(2)*x(4)-global_par_k_off_LR_Gt*x(9));

% Reaction: id = binding_LR_Gd, name = binding_LR?Gd
	reaction_binding_LR_Gd=compartment_PM*(global_par_k_on_LR_Gd*x(2)*x(5)-global_par_k_off_LR_Gd*x(12));

% Reaction: id = binding_L_RG, name = binding_L?RG
	reaction_binding_L_RG=compartment_PM*(global_par_k_on_L_RG*x(6)-global_par_k_off_L_RG*x(8));

% Reaction: id = binding_L_RGt, name = binding_L?RGt
	reaction_binding_L_RGt=compartment_PM*(global_par_k_on_L_RGt*x(11)-global_par_k_off_L_RGt*x(9));

% Reaction: id = exchange_G, name = exchange_G
	reaction_exchange_G=compartment_PM*global_par_k_Ef_G*x(3);

% Reaction: id = hydrolysis_Gt, name = hydrolysis_Gt
	reaction_hydrolysis_Gt=compartment_PM*global_par_k_Hf_Gt*x(4);

% Reaction: id = association_Gd, name = association_Gd
	reaction_association_Gd=compartment_PM*(global_par_k_Af_Gd*x(5)*x(7)-global_par_k_Ar_Gd*x(3));

% Reaction: id = exchange_RG, name = exchange_RG
	reaction_exchange_RG=compartment_PM*global_par_k_Ef_RG*x(6);

% Reaction: id = exchange_LRG, name = exchange_LRG
	reaction_exchange_LRG=compartment_PM*global_par_k_Ef_LRG*x(8);

% Reaction: id = hydrolysis_RGt, name = hydrolysis_RGt
	reaction_hydrolysis_RGt=compartment_PM*global_par_k_Hf_RGt*x(11);

% Reaction: id = hydrolysis_LRGt, name = hydrolysis_LRGt
	reaction_hydrolysis_LRGt=compartment_PM*global_par_k_Hf_LRGt*x(9);

% Reaction: id = association_RGd, name = association_RGd
	reaction_association_RGd=compartment_PM*(global_par_k_Af_RGd*x(10)*x(7)-global_par_k_Ar_RGd*x(6));

% Reaction: id = association_LRGd, name = association_LRGd
	reaction_association_LRGd=compartment_PM*(global_par_k_Af_LRGd*x(12)*x(7)-global_par_k_Ar_LRGd*x(8));

% Reaction: id = binding_L_RGd, name = binding_L?RGd
	reaction_binding_L_RGd=compartment_PM*(global_par_k_on_L_RGd*x(10)-global_par_k_off_L_RGd*x(12));

% Reaction: id = exchange_Gd, name = exchange_Gd
	reaction_exchange_Gd=compartment_PM*global_par_k_Ef_Gd*x(5);

% Reaction: id = exchange_RGd, name = exchange_RGd
	reaction_exchange_RGd=compartment_PM*global_par_k_Ef_RGd*x(10);

% Reaction: id = exchange_LRGd, name = exchange_LRGd
	reaction_exchange_LRGd=compartment_PM*global_par_k_Ef_LRGd*x(12);

% Reaction: id = association_LRrgsGd, name = association_LRrgsGd
	reaction_association_LRrgsGd=compartment_PM*(global_par_k_Af_LRGd*x(15)*x(7)-global_par_k_Ar_LRGd*x(14));

% Reaction: id = association_RrgsGd, name = association_RrgsGd
	reaction_association_RrgsGd=compartment_PM*(global_par_k_Af_RGd*x(19)*x(7)-global_par_k_Ar_RGd*x(18));

% Reaction: id = binding_LRrgs_G, name = binding_LRrgs?G
	reaction_binding_LRrgs_G=compartment_PM*(global_par_k_on_LR_G*x(13)*x(3)-global_par_k_off_LR_G*x(14));

% Reaction: id = binding_LRrgs_Gd, name = binding_LRrgs?Gd
	reaction_binding_LRrgs_Gd=compartment_PM*(global_par_k_on_R_Gd*x(13)*x(5)-global_par_k_off_R_Gd*x(15));

% Reaction: id = binding_LRrgs_Gt, name = binding_LRrgs?Gt
	reaction_binding_LRrgs_Gt=compartment_PM*(global_par_k_on_LR_Gt*x(13)*x(4)-global_par_k_off_LR_Gt*x(16));

% Reaction: id = binding_L_Rrgs, name = binding_L?Rrgs
	reaction_binding_L_Rrgs=compartment_PM*(global_par_k_on_L_R*x(17)-global_par_k_off_L_R*x(13));

% Reaction: id = binding_L_RrgsG, name = binding_L?RrgsG
	reaction_binding_L_RrgsG=compartment_PM*(global_par_k_on_L_RG*x(6)-global_par_k_off_L_RG*x(8));

% Reaction: id = binding_L_RrgsGd, name = binding_L?RrgsGd
	reaction_binding_L_RrgsGd=compartment_PM*(global_par_k_on_L_RGd*x(19)-global_par_k_off_L_RGd*x(15));

% Reaction: id = binding_L_RrgsGt, name = binding_L?RrgsGt
	reaction_binding_L_RrgsGt=compartment_PM*(global_par_k_on_L_RGt*x(20)-global_par_k_off_L_RGt*x(16));

% Reaction: id = binding_Rrgs_G, name = binding_Rrgs?G
	reaction_binding_Rrgs_G=compartment_PM*(global_par_k_on_R_G*x(17)*x(3)-global_par_k_off_R_G*x(18));

% Reaction: id = binding_Rrgs_Gd, name = binding_Rrgs?Gd
	reaction_binding_Rrgs_Gd=compartment_PM*(global_par_k_on_R_Gd*x(17)*x(5)-global_par_k_off_R_Gd*x(19));

% Reaction: id = binding_Rrgs_Gt, name = binding_Rrgs?Gt
	reaction_binding_Rrgs_Gt=compartment_PM*(global_par_k_on_R_Gt*x(17)*x(4)-global_par_k_off_R_Gt*x(20));

% Reaction: id = exchange_LRrgsG, name = exchange_LRrgsG
	reaction_exchange_LRrgsG=compartment_PM*global_par_k_Ef_LRG*x(14);

% Reaction: id = exchange_LRrgsGd, name = exchange_LRrgsGd
	reaction_exchange_LRrgsGd=compartment_PM*global_par_k_Ef_LRGd*x(15);

% Reaction: id = exchange_RrgsG, name = exchange_RrgsG
	reaction_exchange_RrgsG=compartment_PM*global_par_k_Ef_RG*x(18);

% Reaction: id = exchange_RrgsGd, name = exchange_RrgsGd
	reaction_exchange_RrgsGd=compartment_PM*global_par_k_Ef_RGd*x(19);

% Reaction: id = binding_R_rgs, name = binding_R?rgs
	reaction_binding_R_rgs=global_par_k_on_R_rgs*x(1)*x(21)-global_par_k_off_R_rgs*x(17);

% Reaction: id = binding_LR_rgs, name = binding_LR?rgs
	reaction_binding_LR_rgs=global_par_k_on_R_rgs*x(2)*x(21)-global_par_k_off_R_rgs*x(13);

% Reaction: id = binding_RG_rgs, name = binding_RG?rgs
	reaction_binding_RG_rgs=global_par_k_on_R_rgs*x(6)*x(21)-global_par_k_off_R_rgs*x(18);

% Reaction: id = binding_LRG_rgs, name = binding_LRG?rgs
	reaction_binding_LRG_rgs=global_par_k_on_R_rgs*x(8)*x(21)-global_par_k_off_R_rgs*x(14);

% Reaction: id = binding_RGt_rgs, name = binding_RGt?rgs
	reaction_binding_RGt_rgs=global_par_k_on_R_rgs*x(11)*x(21)-global_par_k_off_R_rgs*x(20);

% Reaction: id = binding_LRGt_rgs, name = binding_LRGt?rgs
	reaction_binding_LRGt_rgs=global_par_k_on_R_rgs*x(9)*x(21)-global_par_k_off_R_rgs*x(16);

% Reaction: id = binding_RGd_rgs, name = binding_RGd?rgs
	reaction_binding_RGd_rgs=global_par_k_on_R_rgs*x(10)*x(21)-global_par_k_off_R_rgs*x(19);

% Reaction: id = binding_LRGd_rgs, name = binding_LRGd?rgs
	reaction_binding_LRGd_rgs=global_par_k_on_R_rgs*x(12)*x(21)-global_par_k_off_R_rgs*x(15);

% Reaction: id = hydrolysis_LRrgsGt, name = hydrolysis_LRrgsGt
	reaction_hydrolysis_LRrgsGt=compartment_PM*global_par_k_Hf_LRrgsGt*x(16);

% Reaction: id = hydrolysis_RrgsGt, name = hydrolysis_RrgsGt
	reaction_hydrolysis_RrgsGt=compartment_PM*global_par_k_Hf_RrgsGt*x(20);

	xdot=zeros(21,1);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(1) = (1/(compartment_PM))*((-1.0 * reaction_binding_R_G) + (-1.0 * reaction_binding_L_R) + (-1.0 * reaction_binding_R_Gt) + (-1.0 * reaction_binding_R_Gd) + (-1.0 * reaction_binding_R_rgs));
	
% Species:   id = LR, name = LR, affected by kineticLaw
	xdot(2) = (1/(compartment_PM))*(( 1.0 * reaction_binding_L_R) + (-1.0 * reaction_binding_LR_G) + (-1.0 * reaction_binding_LR_Gt) + (-1.0 * reaction_binding_LR_Gd) + (-1.0 * reaction_binding_LR_rgs));
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(3) = (1/(compartment_PM))*((-1.0 * reaction_binding_R_G) + (-1.0 * reaction_binding_LR_G) + (-1.0 * reaction_exchange_G) + ( 1.0 * reaction_association_Gd) + (-1.0 * reaction_binding_LRrgs_G) + (-1.0 * reaction_binding_Rrgs_G));
	
% Species:   id = Gt, name = Gt, affected by kineticLaw
	xdot(4) = (1/(compartment_PM))*((-1.0 * reaction_binding_R_Gt) + (-1.0 * reaction_binding_LR_Gt) + ( 1.0 * reaction_exchange_G) + (-1.0 * reaction_hydrolysis_Gt) + ( 1.0 * reaction_exchange_Gd) + (-1.0 * reaction_binding_LRrgs_Gt) + (-1.0 * reaction_binding_Rrgs_Gt));
	
% Species:   id = Gd, name = Gd, affected by kineticLaw
	xdot(5) = (1/(compartment_PM))*((-1.0 * reaction_binding_R_Gd) + (-1.0 * reaction_binding_LR_Gd) + ( 1.0 * reaction_hydrolysis_Gt) + (-1.0 * reaction_association_Gd) + (-1.0 * reaction_exchange_Gd) + (-1.0 * reaction_binding_LRrgs_Gd) + (-1.0 * reaction_binding_Rrgs_Gd));
	
% Species:   id = RG, name = RG, affected by kineticLaw
	xdot(6) = (1/(compartment_PM))*(( 1.0 * reaction_binding_R_G) + (-1.0 * reaction_binding_L_RG) + (-1.0 * reaction_exchange_RG) + ( 1.0 * reaction_association_RGd) + (-1.0 * reaction_binding_L_RrgsG) + (-1.0 * reaction_binding_RG_rgs));
	
% Species:   id = Gbg, name = Gbg, affected by kineticLaw
	xdot(7) = (1/(compartment_PM))*(( 1.0 * reaction_exchange_G) + (-1.0 * reaction_association_Gd) + ( 1.0 * reaction_exchange_RG) + ( 1.0 * reaction_exchange_LRG) + (-1.0 * reaction_association_RGd) + (-1.0 * reaction_association_LRGd) + (-1.0 * reaction_association_LRrgsGd) + (-1.0 * reaction_association_RrgsGd) + ( 1.0 * reaction_exchange_LRrgsG) + ( 1.0 * reaction_exchange_RrgsG));
	
% Species:   id = LRG, name = LRG, affected by kineticLaw
	xdot(8) = (1/(compartment_PM))*(( 1.0 * reaction_binding_LR_G) + ( 1.0 * reaction_binding_L_RG) + (-1.0 * reaction_exchange_LRG) + ( 1.0 * reaction_association_LRGd) + ( 1.0 * reaction_binding_L_RrgsG) + (-1.0 * reaction_binding_LRG_rgs));
	
% Species:   id = LRGt, name = LRGt, affected by kineticLaw
	xdot(9) = (1/(compartment_PM))*(( 1.0 * reaction_binding_LR_Gt) + ( 1.0 * reaction_binding_L_RGt) + ( 1.0 * reaction_exchange_LRG) + (-1.0 * reaction_hydrolysis_LRGt) + ( 1.0 * reaction_exchange_LRGd) + (-1.0 * reaction_binding_LRGt_rgs));
	
% Species:   id = RGd, name = RGd, affected by kineticLaw
	xdot(10) = (1/(compartment_PM))*(( 1.0 * reaction_binding_R_Gd) + ( 1.0 * reaction_hydrolysis_RGt) + (-1.0 * reaction_association_RGd) + (-1.0 * reaction_binding_L_RGd) + (-1.0 * reaction_exchange_RGd) + (-1.0 * reaction_binding_RGd_rgs));
	
% Species:   id = RGt, name = RGt, affected by kineticLaw
	xdot(11) = (1/(compartment_PM))*(( 1.0 * reaction_binding_R_Gt) + (-1.0 * reaction_binding_L_RGt) + ( 1.0 * reaction_exchange_RG) + (-1.0 * reaction_hydrolysis_RGt) + ( 1.0 * reaction_exchange_RGd) + (-1.0 * reaction_binding_RGt_rgs));
	
% Species:   id = LRGd, name = LRGd, affected by kineticLaw
	xdot(12) = (1/(compartment_PM))*(( 1.0 * reaction_binding_LR_Gd) + ( 1.0 * reaction_hydrolysis_LRGt) + (-1.0 * reaction_association_LRGd) + ( 1.0 * reaction_binding_L_RGd) + (-1.0 * reaction_exchange_LRGd) + (-1.0 * reaction_binding_LRGd_rgs));
	
% Species:   id = LRrgs, name = LRrgs, affected by kineticLaw
	xdot(13) = (1/(compartment_PM))*((-1.0 * reaction_binding_LRrgs_G) + (-1.0 * reaction_binding_LRrgs_Gd) + (-1.0 * reaction_binding_LRrgs_Gt) + ( 1.0 * reaction_binding_L_Rrgs) + ( 1.0 * reaction_binding_LR_rgs));
	
% Species:   id = LRrgsG, name = LRrgsG, affected by kineticLaw
	xdot(14) = (1/(compartment_PM))*(( 1.0 * reaction_association_LRrgsGd) + ( 1.0 * reaction_binding_LRrgs_G) + (-1.0 * reaction_exchange_LRrgsG) + ( 1.0 * reaction_binding_LRG_rgs));
	
% Species:   id = LRrgsGd, name = LRrgsGd, affected by kineticLaw
	xdot(15) = (1/(compartment_PM))*((-1.0 * reaction_association_LRrgsGd) + ( 1.0 * reaction_binding_LRrgs_Gd) + ( 1.0 * reaction_binding_L_RrgsGd) + (-1.0 * reaction_exchange_LRrgsGd) + ( 1.0 * reaction_binding_LRGd_rgs) + ( 1.0 * reaction_hydrolysis_LRrgsGt));
	
% Species:   id = LRrgsGt, name = LRrgsGt, affected by kineticLaw
	xdot(16) = (1/(compartment_PM))*(( 1.0 * reaction_binding_LRrgs_Gt) + ( 1.0 * reaction_binding_L_RrgsGt) + ( 1.0 * reaction_exchange_LRrgsG) + ( 1.0 * reaction_exchange_LRrgsGd) + ( 1.0 * reaction_binding_LRGt_rgs) + (-1.0 * reaction_hydrolysis_LRrgsGt));
	
% Species:   id = Rrgs, name = Rrgs, affected by kineticLaw
	xdot(17) = (1/(compartment_PM))*((-1.0 * reaction_binding_L_Rrgs) + (-1.0 * reaction_binding_Rrgs_G) + (-1.0 * reaction_binding_Rrgs_Gd) + (-1.0 * reaction_binding_Rrgs_Gt) + ( 1.0 * reaction_binding_R_rgs));
	
% Species:   id = RrgsG, name = RrgsG, affected by kineticLaw
	xdot(18) = (1/(compartment_PM))*(( 1.0 * reaction_association_RrgsGd) + ( 1.0 * reaction_binding_Rrgs_G) + (-1.0 * reaction_exchange_RrgsG) + ( 1.0 * reaction_binding_RG_rgs));
	
% Species:   id = RrgsGd, name = RrgsGd, affected by kineticLaw
	xdot(19) = (1/(compartment_PM))*((-1.0 * reaction_association_RrgsGd) + (-1.0 * reaction_binding_L_RrgsGd) + ( 1.0 * reaction_binding_Rrgs_Gd) + (-1.0 * reaction_exchange_RrgsGd) + ( 1.0 * reaction_binding_RGd_rgs) + ( 1.0 * reaction_hydrolysis_RrgsGt));
	
% Species:   id = RrgsGt, name = RrgsGt, affected by kineticLaw
	xdot(20) = (1/(compartment_PM))*((-1.0 * reaction_binding_L_RrgsGt) + ( 1.0 * reaction_binding_Rrgs_Gt) + ( 1.0 * reaction_exchange_RrgsG) + ( 1.0 * reaction_exchange_RrgsGd) + ( 1.0 * reaction_binding_RGt_rgs) + (-1.0 * reaction_hydrolysis_RrgsGt));
	
% Species:   id = rgs, name = rgs, affected by kineticLaw
	xdot(21) = (1/(compartment_cyt))*((-1.0 * reaction_binding_R_rgs) + (-1.0 * reaction_binding_LR_rgs) + (-1.0 * reaction_binding_RG_rgs) + (-1.0 * reaction_binding_LRG_rgs) + (-1.0 * reaction_binding_RGt_rgs) + (-1.0 * reaction_binding_LRGt_rgs) + (-1.0 * reaction_binding_RGd_rgs) + (-1.0 * reaction_binding_LRGd_rgs));
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


