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
% Model name = Tang2019 - Pharmacology modelling of AURKB and ZAK interaction in TNBC
%
% isDescribedBy http://identifiers.org/pubmed/31312514
% is http://identifiers.org/biomodels.db/MODEL2004230001
% is http://identifiers.org/biomodels.db/BIOMD0000000940
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 1.0;
	x0(15) = 1.0;
	x0(16) = 1.0;
	x0(17) = 1.0;
	x0(18) = 1.0;
	x0(19) = 1.0;
	x0(20) = 1.0;


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
% Parameter:   id =  k_pkn1, name = k_pkn1
	global_par_k_pkn1=0.5;
% Parameter:   id =  kd_pkn1, name = kd_pkn1
	global_par_kd_pkn1=0.005;
% Parameter:   id =  k_zak, name = k_zak
	global_par_k_zak=0.1;
% Parameter:   id =  kd_zak, name = kd_zak
	global_par_kd_zak=0.5;
% Parameter:   id =  k_map2k3, name = k_map2k3
	global_par_k_map2k3=0.2;
% Parameter:   id =  kd_map2k3, name = kd_map2k3
	global_par_kd_map2k3=0.6;
% Parameter:   id =  k_mapk14, name = k_mapk14
	global_par_k_mapk14=2.0;
% Parameter:   id =  kd_mapk14, name = kd_mapk14
	global_par_kd_mapk14=5.0;
% Parameter:   id =  k_map2k4, name = k_map2k4
	global_par_k_map2k4=0.2;
% Parameter:   id =  kd_map2k4, name = kd_map2k4
	global_par_kd_map2k4=0.6;
% Parameter:   id =  k_tp53, name = k_tp53
	global_par_k_tp53=0.6;
% Parameter:   id =  k_atm, name = k_atm
	global_par_k_atm=0.1;
% Parameter:   id =  kd_tp53, name = kd_tp53
	global_par_kd_tp53=2.0;
% Parameter:   id =  kd_atm, name = kd_atm
	global_par_kd_atm=3.0;
% Parameter:   id =  k_mapk13, name = k_mapk13
	global_par_k_mapk13=2.0;
% Parameter:   id =  kd_mapk13, name = kd_mapk13
	global_par_kd_mapk13=1.4;
% Parameter:   id =  k_prkaca, name = k_prkaca
	global_par_k_prkaca=2.0;
% Parameter:   id =  kd_prkaca, name = kd_prkaca
	global_par_kd_prkaca=6.0;
% Parameter:   id =  k_src, name = k_src
	global_par_k_src=0.2;
% Parameter:   id =  kd_src, name = kd_src
	global_par_kd_src=1.0;
% Parameter:   id =  k_bad, name = k_bad
	global_par_k_bad=5.0;
% Parameter:   id =  kd_bad, name = kd_bad
	global_par_kd_bad=0.04;
% Parameter:   id =  k_pik3r1, name = k_pik3r1
	global_par_k_pik3r1=2.0;
% Parameter:   id =  kd_pik3r1, name = kd_pik3r1
	global_par_kd_pik3r1=10.0;
% Parameter:   id =  k_csf1r, name = k_csf1r
	global_par_k_csf1r=2.0;
% Parameter:   id =  kd_csf1r, name = kd_csf1r
	global_par_kd_csf1r=30.0;
% Parameter:   id =  k_shc1, name = k_shc1
	global_par_k_shc1=2.0;
% Parameter:   id =  kd_shc1, name = kd_shc1
	global_par_kd_shc1=0.06;
% Parameter:   id =  k_pten, name = k_pten
	global_par_k_pten=0.2;
% Parameter:   id =  kd_pten, name = kd_pten
	global_par_kd_pten=0.5;
% Parameter:   id =  k_parp1, name = k_parp1
	global_par_k_parp1=0.5;
% Parameter:   id =  kd_parp1, name = kd_parp1
	global_par_kd_parp1=0.005;
% Parameter:   id =  k_aurkb, name = k_aurkb
	global_par_k_aurkb=3.0;
% Parameter:   id =  kd_aurkb, name = kd_aurkb
	global_par_kd_aurkb=4.5;
% Parameter:   id =  k_brca1, name = k_brca1
	global_par_k_brca1=2.0;
% Parameter:   id =  kd_brca1, name = kd_brca1
	global_par_kd_brca1=20.0;
% Parameter:   id =  k_ywhaz, name = k_ywhaz
	global_par_k_ywhaz=0.9;
% Parameter:   id =  kd_ywhaz, name = kd_ywhaz
	global_par_kd_ywhaz=0.072;
% Parameter:   id =  k_tgfbr1, name = k_tgfbr1
	global_par_k_tgfbr1=0.5;
% Parameter:   id =  kd_tgfbr1, name = kd_tgfbr1
	global_par_kd_tgfbr1=0.45;

% Reaction: id = PKN1_Degrad, name = PKN1_Degrad
	reaction_PKN1_Degrad=compartment_Cell*global_par_kd_pkn1*x(1);

% Reaction: id = ZAK_Prod, name = ZAK_Prod
	reaction_ZAK_Prod=compartment_Cell*Linear_modi(global_par_k_zak, x(1));

% Reaction: id = ZAK_Degrad, name = ZAK_Degrad
	reaction_ZAK_Degrad=compartment_Cell*global_par_kd_zak*x(2);

% Reaction: id = MAP2K3_Prod, name = MAP2K3_Prod
	reaction_MAP2K3_Prod=compartment_Cell*Linear_modi(global_par_k_map2k3, x(1));

% Reaction: id = MAP2K3_Degrad, name = MAP2K3_Degrad
	reaction_MAP2K3_Degrad=compartment_Cell*global_par_kd_map2k3*x(3);

% Reaction: id = MAPK14_Prod, name = MAPK14_Prod
	reaction_MAPK14_Prod=compartment_Cell*Linear_modi(global_par_k_mapk14, x(3));

% Reaction: id = MAPK14_Degrad, name = MAPK14_Degrad
	reaction_MAPK14_Degrad=compartment_Cell*global_par_kd_mapk14*x(4);

% Reaction: id = MAP2K4_Prod, name = MAP2K4_Prod
	reaction_MAP2K4_Prod=compartment_Cell*Linear_modi(global_par_k_map2k4, x(3));

% Reaction: id = MAP2K4_Degrad, name = MAP2K4_Degrad
	reaction_MAP2K4_Degrad=compartment_Cell*global_par_kd_map2k4*x(5);

% Reaction: id = TP53_Prod, name = TP53_Prod
	reaction_TP53_Prod=compartment_Cell*Linear_modi(global_par_k_tp53, x(4));

% Reaction: id = TP53_Degrad, name = TP53_Degrad
	reaction_TP53_Degrad=compartment_Cell*global_par_kd_tp53*x(6);

% Reaction: id = ATM_Prod, name = ATM_Prod
	reaction_ATM_Prod=compartment_Cell*Linear_modi(global_par_k_atm, x(4));

% Reaction: id = ATM_Degrad, name = ATM_Degrad
	reaction_ATM_Degrad=compartment_Cell*global_par_kd_atm*x(7);

% Reaction: id = MAPK14_Prod2, name = MAPK14_Prod2
	reaction_MAPK14_Prod2=compartment_Cell*Linear_modi(global_par_k_mapk14, x(5));

% Reaction: id = MAPK13_Prod, name = MAPK13_Prod
	reaction_MAPK13_Prod=compartment_Cell*Linear_modi(global_par_k_mapk13, x(5));

% Reaction: id = MAPK13_Degrad, name = MAPK13_Degrad
	reaction_MAPK13_Degrad=compartment_Cell*global_par_kd_mapk13*x(8);

% Reaction: id = PRKACA_Prod, name = PRKACA_Prod
	reaction_PRKACA_Prod=compartment_Cell*Linear_modi(global_par_k_prkaca, x(8));

% Reaction: id = PRKACA_Degrad, name = PRKACA_Degrad
	reaction_PRKACA_Degrad=compartment_Cell*global_par_kd_prkaca*x(9);

% Reaction: id = SRC_Prod, name = SRC_Prod
	reaction_SRC_Prod=compartment_Cell*Linear_modi(global_par_k_src, x(9));

% Reaction: id = SRC_Degrad, name = SRC_Degrad
	reaction_SRC_Degrad=compartment_Cell*global_par_kd_src*x(10);

% Reaction: id = BAD_Degrad, name = BAD_Degrad
	reaction_BAD_Degrad=compartment_Cell*global_par_kd_bad*x(11);

% Reaction: id = TP53_Prod2, name = TP53_Prod2
	reaction_TP53_Prod2=compartment_Cell*Linear_modi(global_par_k_tp53, x(10));

% Reaction: id = TP53_Prod3, name = TP53_Prod3
	reaction_TP53_Prod3=compartment_Cell*Linear_modi(global_par_k_tp53, x(11));

% Reaction: id = PTEN_Prod, name = PTEN_Prod
	reaction_PTEN_Prod=compartment_Cell*Linear_modi(global_par_k_pten, x(6));

% Reaction: id = PTEN_Degrad, name = PTEN_Degrad
	reaction_PTEN_Degrad=compartment_Cell*global_par_kd_pten*x(12);

% Reaction: id = SHC1_Prod, name = SHC1_Prod
	reaction_SHC1_Prod=compartment_Cell*Linear_modi(global_par_k_shc1, x(19));

% Reaction: id = SHC1_Degrad, name = SHC1_Degrad
	reaction_SHC1_Degrad=compartment_Cell*Mass_action_modifier(global_par_kd_shc1, x(13), x(12));

% Reaction: id = PIK3R1_Degrad, name = PIK3R1_Degrad
	reaction_PIK3R1_Degrad=compartment_Cell*Mass_action_modifier(global_par_kd_pik3r1, x(14), x(12));

% Reaction: id = PARP1_Degrad, name = PARP1_Degrad
	reaction_PARP1_Degrad=compartment_Cell*global_par_kd_parp1*x(15);

% Reaction: id = AURKB_Prod, name = AURKB_Prod
	reaction_AURKB_Prod=compartment_Cell*Linear_modi(global_par_k_aurkb, x(15));

% Reaction: id = AURKB_Degrad, name = AURKB_Degrad
	reaction_AURKB_Degrad=compartment_Cell*global_par_kd_aurkb*x(16);

% Reaction: id = ATM_Prod2, name = ATM_Prod2
	reaction_ATM_Prod2=compartment_Cell*Linear_modi(global_par_k_atm, x(15));

% Reaction: id = TP53_Prod4, name = TP53_Prod4
	reaction_TP53_Prod4=compartment_Cell*Linear_modi(global_par_k_tp53, x(15));

% Reaction: id = BRCA1_Prod, name = BRCA1_Prod
	reaction_BRCA1_Prod=compartment_Cell*Linear_modi(global_par_k_brca1, x(15));

% Reaction: id = BRCA1_Degrad, name = BRCA1_Degrad
	reaction_BRCA1_Degrad=compartment_Cell*global_par_kd_brca1*x(17);

% Reaction: id = TP53_Prod5, name = TP53_Prod5
	reaction_TP53_Prod5=compartment_Cell*Linear_modi(global_par_k_tp53, x(7));

% Reaction: id = TP53_Prod6, name = TP53_Prod6
	reaction_TP53_Prod6=compartment_Cell*Linear_modi(global_par_k_tp53, x(17));

% Reaction: id = BRCA1_Prod2, name = BRCA1_Prod2
	reaction_BRCA1_Prod2=compartment_Cell*Linear_modi(global_par_k_brca1, x(7));

% Reaction: id = SRC_Prod2, name = SRC_Prod2
	reaction_SRC_Prod2=compartment_Cell*Linear_modi(global_par_k_src, x(20));

% Reaction: id = YWHAZ_Prod, name = YWHAZ_Prod
	reaction_YWHAZ_Prod=compartment_Cell*Linear_modi(global_par_k_ywhaz, x(2));

% Reaction: id = YWHAZ_Degrad, name = YWHAZ_Degrad
	reaction_YWHAZ_Degrad=compartment_Cell*global_par_kd_ywhaz*x(18);

% Reaction: id = MAP2K3_Prod2, name = MAP2K3_Prod2
	reaction_MAP2K3_Prod2=compartment_Cell*Linear_modi(global_par_k_map2k3, x(2));

% Reaction: id = MAP2K4_Prod2, name = MAP2K4_Prod2
	reaction_MAP2K4_Prod2=compartment_Cell*Linear_modi(global_par_k_map2k4, x(2));

% Reaction: id = TGFBR1_Prod, name = TGFBR1_Prod
	reaction_TGFBR1_Prod=compartment_Cell*Linear_modi(global_par_k_tgfbr1, x(2));

% Reaction: id = TGFBR1_Degrad, name = TGFBR1_Degrad
	reaction_TGFBR1_Degrad=compartment_Cell*global_par_kd_tgfbr1*x(19);

% Reaction: id = BAD_Degrad2, name = BAD_Degrad2	% Local Parameter:   id =  const, name = const
	reaction_BAD_Degrad2_const=0.0133;

	reaction_BAD_Degrad2=compartment_Cell*Mass_action_modifier_1(global_par_kd_bad, x(11), x(18), reaction_BAD_Degrad2_const);

% Reaction: id = PIK3R1_Prod, name = PIK3R1_Prod
	reaction_PIK3R1_Prod=compartment_Cell*Linear_modi(global_par_k_pik3r1, x(18));

% Reaction: id = CSF1R_Prod, name = CSF1R_Prod
	reaction_CSF1R_Prod=compartment_Cell*Linear_modi(global_par_k_csf1r, x(14));

% Reaction: id = TGFBR1_Prod2, name = TGFBR1_Prod2
	reaction_TGFBR1_Prod2=compartment_Cell*Linear_modi(global_par_k_tgfbr1, x(14));

% Reaction: id = MAPK14_Prod3, name = MAPK14_Prod3
	reaction_MAPK14_Prod3=compartment_Cell*Linear_modi(global_par_k_mapk14, x(19));

% Reaction: id = MAPK14_Prod4, name = MAPK14_Prod4
	reaction_MAPK14_Prod4=compartment_Cell*Linear_modi(global_par_k_mapk14, x(13));

% Reaction: id = PIK3R1_Prod2, name = PIK3R1_Prod2
	reaction_PIK3R1_Prod2=compartment_Cell*Linear_modi(global_par_k_pik3r1, x(13));

% Reaction: id = CSF1R_Prod2, name = CSF1R_Prod2
	reaction_CSF1R_Prod2=compartment_Cell*Linear_modi(global_par_k_csf1r, x(13));

% Reaction: id = CSF1R_Degrad, name = CSF1R_Degrad
	reaction_CSF1R_Degrad=compartment_Cell*global_par_kd_csf1r*x(20);

% Reaction: id = ATM_Prod3, name = ATM_Prod3
	reaction_ATM_Prod3=compartment_Cell*Linear_modi(global_par_k_atm, x(16));

% Reaction: id = PRKACA_Prod2, name = PRKACA_Prod2
	reaction_PRKACA_Prod2=compartment_Cell*Linear_modi(global_par_k_prkaca, x(16));

% Reaction: id = TP53_Degrad2, name = TP53_Degrad2	% Local Parameter:   id =  const, name = const
	reaction_TP53_Degrad2_const=0.0067;

	reaction_TP53_Degrad2=compartment_Cell*Mass_action_modifier_1(global_par_kd_tp53, x(6), x(16), reaction_TP53_Degrad2_const);

	xdot=zeros(20,1);
	
% Species:   id = PKN1, name = PKN1, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_PKN1_Prod) + (-1.0 * reaction_PKN1_Degrad));
	
% Species:   id = ZAK, name = ZAK, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_ZAK_Prod) + (-1.0 * reaction_ZAK_Degrad));
	
% Species:   id = MAP2K3, name = MAP2K3, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_MAP2K3_Prod) + (-1.0 * reaction_MAP2K3_Degrad) + ( 1.0 * reaction_MAP2K3_Prod2));
	
% Species:   id = MAPK14, name = MAPK14, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_MAPK14_Prod) + (-1.0 * reaction_MAPK14_Degrad) + ( 1.0 * reaction_MAPK14_Prod2) + ( 1.0 * reaction_MAPK14_Prod3) + ( 1.0 * reaction_MAPK14_Prod4));
	
% Species:   id = MAP2K4, name = MAP2K4, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_MAP2K4_Prod) + (-1.0 * reaction_MAP2K4_Degrad) + ( 1.0 * reaction_MAP2K4_Prod2));
	
% Species:   id = TP53, name = TP53, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_TP53_Prod) + (-1.0 * reaction_TP53_Degrad) + ( 1.0 * reaction_TP53_Prod2) + ( 1.0 * reaction_TP53_Prod3) + ( 1.0 * reaction_TP53_Prod4) + ( 1.0 * reaction_TP53_Prod5) + ( 1.0 * reaction_TP53_Prod6) + (-1.0 * reaction_TP53_Degrad2));
	
% Species:   id = ATM, name = ATM, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_ATM_Prod) + (-1.0 * reaction_ATM_Degrad) + ( 1.0 * reaction_ATM_Prod2) + ( 1.0 * reaction_ATM_Prod3));
	
% Species:   id = MAPK13, name = MAPK13, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_MAPK13_Prod) + (-1.0 * reaction_MAPK13_Degrad));
	
% Species:   id = PRKACA, name = PRKACA, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_PRKACA_Prod) + (-1.0 * reaction_PRKACA_Degrad) + ( 1.0 * reaction_PRKACA_Prod2));
	
% Species:   id = SRC, name = SRC, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_SRC_Prod) + (-1.0 * reaction_SRC_Degrad) + ( 1.0 * reaction_SRC_Prod2));
	
% Species:   id = BAD, name = BAD, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_BAD_Prod) + (-1.0 * reaction_BAD_Degrad) + (-1.0 * reaction_BAD_Degrad2));
	
% Species:   id = PTEN, name = PTEN, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*(( 1.0 * reaction_PTEN_Prod) + (-1.0 * reaction_PTEN_Degrad));
	
% Species:   id = SHC1, name = SHC1, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*(( 1.0 * reaction_SHC1_Prod) + (-1.0 * reaction_SHC1_Degrad));
	
% Species:   id = PIK3R1, name = PIK3R1, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*((-1.0 * reaction_PIK3R1_Degrad) + ( 1.0 * reaction_PIK3R1_Prod) + ( 1.0 * reaction_PIK3R1_Prod2));
	
% Species:   id = PARP1, name = PARP1, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*(( 1.0 * reaction_PARP1_Prod) + (-1.0 * reaction_PARP1_Degrad));
	
% Species:   id = AURKB, name = AURKB, affected by kineticLaw
	xdot(16) = (1/(compartment_Cell))*(( 1.0 * reaction_AURKB_Prod) + (-1.0 * reaction_AURKB_Degrad));
	
% Species:   id = BRCA1, name = BRCA1, affected by kineticLaw
	xdot(17) = (1/(compartment_Cell))*(( 1.0 * reaction_BRCA1_Prod) + (-1.0 * reaction_BRCA1_Degrad) + ( 1.0 * reaction_BRCA1_Prod2));
	
% Species:   id = YWHAZ, name = YWHAZ, affected by kineticLaw
	xdot(18) = (1/(compartment_Cell))*(( 1.0 * reaction_YWHAZ_Prod) + (-1.0 * reaction_YWHAZ_Degrad));
	
% Species:   id = TGFBR1, name = TGFBR1, affected by kineticLaw
	xdot(19) = (1/(compartment_Cell))*(( 1.0 * reaction_TGFBR1_Prod) + (-1.0 * reaction_TGFBR1_Degrad) + ( 1.0 * reaction_TGFBR1_Prod2));
	
% Species:   id = CSF1R, name = CSF1R, affected by kineticLaw
	xdot(20) = (1/(compartment_Cell))*(( 1.0 * reaction_CSF1R_Prod) + ( 1.0 * reaction_CSF1R_Prod2) + (-1.0 * reaction_CSF1R_Degrad));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Mass_action_modifier_1(k1,substrate,modifier,const), z=(k1*substrate*modifier*const);end

function z=Mass_action_modifier(k1,substrate,modifier), z=(k1*substrate*modifier);end

function z=Linear_modi(k,M), z=(k*M);end

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


