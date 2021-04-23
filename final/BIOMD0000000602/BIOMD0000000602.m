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
% Model name = Stavrum2013 - Tryptophan Metabolism in Liver
%
% is http://identifiers.org/biomodels.db/MODEL1310160000
% is http://identifiers.org/biomodels.db/BIOMD0000000602
% isDescribedBy http://identifiers.org/pubmed/24129579
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 3.29767682642125E-6;
	x0(2) = 2.3285262897484E-10;
	x0(3) = 9.86485434437397E-7;
	x0(4) = 2.18400152663056E-5;
	x0(5) = 0.00263243682881056;
	x0(6) = 1.12181722190904E-5;
	x0(7) = 1.1966020248522E-5;
	x0(8) = 2.5994745417821E-9;
	x0(9) = 1.78449610733141E-15;
	x0(10) = 7.76306594979262E-8;
	x0(11) = 1.20064386474403E-4;
	x0(12) = 3.59090204143853E-9;
	x0(13) = 9.50021481464022E-16;
	x0(14) = 7.14152660211118E-9;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Parameter:   id =  scaling, name = scaling
	global_par_scaling=1.0;
% Parameter:   id =  AADAT_E_T_kat1, name = KAT1_E_T
	global_par_AADAT_E_T_kat1=9455.1357421875;
% Parameter:   id =  AADAT_E_T_kat2, name = KAT2_E_T
	global_par_AADAT_E_T_kat2=7744.3154296875;
% Parameter:   id =  AADAT_E_T_kat3, name = KAT3_E_T
	global_par_AADAT_E_T_kat3=15588.2099609375;
% Parameter:   id =  AADAT_Km_hLkynr, name = KAT_Km_3HKyn
	global_par_AADAT_Km_hLkynr=3.8;
% Parameter:   id =  AADAT_Km_Lkynr, name = KAT_Km_L-kyn
	global_par_AADAT_Km_Lkynr=4.7;
% Parameter:   id =  AANAT_E_T, name = AANAT_E_T
	global_par_AANAT_E_T=2770.9680175781;
% Parameter:   id =  AANAT_Km_Srtn, name = AANAT_Km_Serotonin
	global_par_AANAT_Km_Srtn=1.35;
% Parameter:   id =  AANAT_Km_trypta, name = AANAT_Km_Trypta
	global_par_AANAT_Km_trypta=0.88;
% Parameter:   id =  AFMID_E_T, name = AFMID_E_T
	global_par_AFMID_E_T=15820.2158203125;
% Parameter:   id =  AFMID_Km_5hoxnfky, name = AFMID_Km_5HFKyn
	global_par_AFMID_Km_5hoxnfky=0.4;
% Parameter:   id =  AFMID_Km_Lfmkynr, name = AFMID_Km_FKyn
	global_par_AFMID_Km_Lfmkynr=0.05;
% Parameter:   id =  AFMID_Km_nformanth, name = AFMID_Km_FAA
	global_par_AFMID_Km_nformanth=0.211;
% Parameter:   id =  DDC_E_T, name = DDC_E_T
	global_par_DDC_E_T=36074.9140625;
% Parameter:   id =  DDC_Km_5htrp, name = DDC_Km_5htrp
	global_par_DDC_Km_5htrp=0.049;
% Parameter:   id =  DDC_Km_trp_DASH_L, name = DDC_Km_Trp
	global_par_DDC_Km_trp_DASH_L=10.0;
% Parameter:   id =  IDO_E_T, name = IDO_E_T
	global_par_IDO_E_T=453.4833679199;
% Parameter:   id =  IDO_Km_trp_DASH_L, name = IDO_Km_Trp
	global_par_IDO_Km_trp_DASH_L=0.045;
% Parameter:   id =  IDO_Km_5htrp, name = IDO_Km_5htrp
	global_par_IDO_Km_5htrp=0.02;
% Parameter:   id =  IDO_Km_srtn, name = IDO_Km_Serotonin
	global_par_IDO_Km_srtn=0.1;
% Parameter:   id =  IMNT_E_T, name = IMNT_E_T
	global_par_IMNT_E_T=4186.5874023438;
% Parameter:   id =  IMNT_Km_srtn, name = IMNT_Km_Serotonin
	global_par_IMNT_Km_srtn=1.38;
% Parameter:   id =  IMNT_Km_trypta, name = IMNT_Km_Trypta
	global_par_IMNT_Km_trypta=0.27;
% Parameter:   id =  IMNT_Km_nmtrpta, name = IMNT_Km_MTrypta
	global_par_IMNT_Km_nmtrpta=0.086;
% Parameter:   id =  KYNU_Km_hLkynr, name = KYNU_Km_3HKyn
	global_par_KYNU_Km_hLkynr=0.028;
% Parameter:   id =  Transporter_E_T_Slc7a8, name = Transporter_E_T_Slc7a8
	global_par_Transporter_E_T_Slc7a8=2226.3728027344;
% Parameter:   id =  KYNU_E_T, name = KYNU_E_T
	global_par_KYNU_E_T=56601.7578125;
% Parameter:   id =  KYNU_Km_Lfmkynr, name = KYNU_Km_FKyn
	global_par_KYNU_Km_Lfmkynr=2.2;
% Parameter:   id =  KYNU_Km_Lkynr, name = KYNU_Km_L-kyn
	global_par_KYNU_Km_Lkynr=0.495;
% Parameter:   id =  Transporter_Km_Lkynr, name = Transporter_Km_L-kyn
	global_par_Transporter_Km_Lkynr=0.032;
% Parameter:   id =  Transporter_Km_Trp_Slc7a8, name = Transporter_Km_Trp_Slc7a8
	global_par_Transporter_Km_Trp_Slc7a8=0.0573;
% Parameter:   id =  Transporter_E_T_Slc7a5, name = Transporter_E_T_Slc7a5
	global_par_Transporter_E_T_Slc7a5=1961.5135498047;
% Parameter:   id =  Transporter_Km_Trp_Slc7a5, name = Transporter_Km_Trp_Slc7a5
	global_par_Transporter_Km_Trp_Slc7a5=0.019;
% Parameter:   id =  MAOA_E_T, name = MAOA_E_T
	global_par_MAOA_E_T=137204.8125;
% Parameter:   id =  MAOB_E_T, name = MAOB_E_T
	global_par_MAOB_E_T=294114.875;
% Parameter:   id =  MAO_Km_srtn, name = MAO_Km_Serotonin
	global_par_MAO_Km_srtn=0.43;
% Parameter:   id =  MAO_Km_trypta, name = MAO_Km_Trypta
	global_par_MAO_Km_trypta=0.033;
% Parameter:   id =  IDO_Km_O2, name = IDO_Km_O2
	global_par_IDO_Km_O2=0.042;
% Parameter:   id =  AADAT_kcat_hLkynr, name = KAT_kcat_3HKyn
	global_par_AADAT_kcat_hLkynr=1.7;
% Parameter:   id =  AADAT_kcat_Lkynr, name = KAT_kcat_L-kyn
	global_par_AADAT_kcat_Lkynr=9.76;
% Parameter:   id =  Transporter_kcat_Trp, name = Transporter_kcat_Trp
	global_par_Transporter_kcat_Trp=1.3;
% Parameter:   id =  Transporter_kcat_Lkynr, name = Transporter_kcat_L-kyn
	global_par_Transporter_kcat_Lkynr=1.3;

% Reaction: id = R00677, name = IL4I1	% Local Parameter:   id =  E_T, name = E_T
	reaction_R00677_E_T=2046.74;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R00677_Ka=6.5;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R00677_Kb=1.2;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R00677_kcat=1.0;

	reaction_R00677=compartment_Cytosol*reaction_R00677_kcat*reaction_R00677_E_T*x(11)*const_species_M_o2_c*const_species_M_h2o_c*global_par_scaling/(reaction_R00677_Ka*reaction_R00677_Kb+reaction_R00677_Kb*x(11)+reaction_R00677_Ka*const_species_M_o2_c+x(11)*const_species_M_o2_c);

% Reaction: id = R00678_Tdo, name = TDO	% Local Parameter:   id =  E_T, name = E_T
	reaction_R00678_Tdo_E_T=943912.0;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R00678_Tdo_Ka=0.222;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R00678_Tdo_Kb=0.037;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R00678_Tdo_kcat=1.4;

	reaction_R00678_Tdo=compartment_Cytosol*reaction_R00678_Tdo_kcat*reaction_R00678_Tdo_E_T*x(11)*const_species_M_o2_c*global_par_scaling/(reaction_R00678_Tdo_Ka*reaction_R00678_Tdo_Kb+reaction_R00678_Tdo_Ka*const_species_M_o2_c+reaction_R00678_Tdo_Kb*x(11)+x(11)*const_species_M_o2_c);

% Reaction: id = R00685, name = DDC_Trypta	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R00685_kcat_B=0.38;

	reaction_R00685=compartment_Cytosol*global_par_DDC_E_T*reaction_R00685_kcat_B*global_par_scaling*x(11)*global_par_DDC_Km_5htrp/(global_par_DDC_Km_trp_DASH_L*global_par_DDC_Km_5htrp+global_par_DDC_Km_trp_DASH_L*x(3)+global_par_DDC_Km_5htrp*x(11));

% Reaction: id = R00987, name = KYNU_L-Kyn	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R00987_kcat_A=0.23;

	reaction_R00987=compartment_Cytosol*global_par_KYNU_E_T*reaction_R00987_kcat_A*global_par_scaling*x(5)*global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lfmkynr/(global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lfmkynr+global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lfmkynr*x(5)+global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_Lfmkynr*x(7)+global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_hLkynr*x(4));

% Reaction: id = R01814_Tph1, name = TPH1	% Local Parameter:   id =  E_T, name = E_T
	reaction_R01814_Tph1_E_T=503.141;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R01814_Tph1_Ka=0.0228;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R01814_Tph1_Kb=0.109;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R01814_Tph1_kcat=0.57;

	reaction_R01814_Tph1=compartment_Cytosol*reaction_R01814_Tph1_kcat*reaction_R01814_Tph1_E_T*x(11)*const_species_M_o2_c*const_species_M_thbpt*global_par_scaling/(reaction_R01814_Tph1_Ka*reaction_R01814_Tph1_Kb+reaction_R01814_Tph1_Kb*x(11)+reaction_R01814_Tph1_Ka*const_species_M_o2_c+x(11)*const_species_M_o2_c);

% Reaction: id = R01956_Kat1, name = KAT1_L-Kyn
	reaction_R01956_Kat1=compartment_Cytosol*global_par_AADAT_E_T_kat1*global_par_AADAT_kcat_Lkynr*global_par_scaling*x(5)*global_par_AADAT_Km_hLkynr/(global_par_AADAT_Km_Lkynr*global_par_AADAT_Km_hLkynr+global_par_AADAT_Km_Lkynr*x(7)+global_par_AADAT_Km_hLkynr*x(5));

% Reaction: id = R01959, name = AFMID_FKyn	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R01959_kcat_A=100.0;

	reaction_R01959=compartment_Cytosol*global_par_AFMID_E_T*reaction_R01959_kcat_A*global_par_scaling*x(4)*global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_nformanth/(global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_nformanth+global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_nformanth*x(4)+global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_nformanth*x(2)+global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_5hoxnfky*x(14));

% Reaction: id = R01960, name = KMO	% Local Parameter:   id =  E_T, name = E_T
	reaction_R01960_E_T=9766.18;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R01960_Ka=0.1;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R01960_Kb=0.071;
	% Local Parameter:   id =  Kc, name = Kc
	reaction_R01960_Kc=0.153;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R01960_kcat=2.2;

	reaction_R01960=compartment_Cytosol*reaction_R01960_kcat*reaction_R01960_E_T*x(5)*const_species_M_o2_c*const_species_M_nadph_c*const_species_M_h_c*global_par_scaling/(reaction_R01960_Ka*reaction_R01960_Kb*reaction_R01960_Kc+x(5)*reaction_R01960_Kb*reaction_R01960_Kc+const_species_M_o2_c*reaction_R01960_Ka*reaction_R01960_Kc+const_species_M_nadph_c*reaction_R01960_Ka*reaction_R01960_Kb+x(5)*const_species_M_o2_c*reaction_R01960_Kc+const_species_M_o2_c*const_species_M_nadph_c*reaction_R01960_Ka+x(5)*const_species_M_nadph_c*reaction_R01960_Kb+x(5)*const_species_M_o2_c*const_species_M_nadph_c);

% Reaction: id = R02174, name = INMT_Trypta	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R02174_kcat_A=0.4;

	reaction_R02174=compartment_Cytosol*global_par_IMNT_E_T*reaction_R02174_kcat_A*global_par_scaling*x(12)*global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_srtn/(global_par_IMNT_Km_trypta*global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_srtn+global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_srtn*x(12)+global_par_IMNT_Km_trypta*global_par_IMNT_Km_srtn*x(8)+global_par_IMNT_Km_trypta*global_par_IMNT_Km_nmtrpta*x(10));

% Reaction: id = R02665, name = HAAO	% Local Parameter:   id =  E_T, name = E_T
	reaction_R02665_E_T=10308.4;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R02665_Ka=0.016;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R02665_Kb=0.615;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R02665_kcat=64.0;

	reaction_R02665=compartment_Cytosol*reaction_R02665_kcat*reaction_R02665_E_T*x(1)*const_species_M_o2_c*global_par_scaling/(reaction_R02665_Ka*reaction_R02665_Kb+reaction_R02665_Ka*const_species_M_o2_c+reaction_R02665_Kb*x(1)+x(1)*const_species_M_o2_c);

% Reaction: id = R02668, name = KYNU_3HKyn	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R02668_kcat_A=3.5;

	reaction_R02668=compartment_Cytosol*global_par_KYNU_E_T*reaction_R02668_kcat_A*global_par_scaling*x(7)*global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_Lfmkynr/(global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_Lfmkynr+global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_Lfmkynr*x(7)+global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lfmkynr*x(5)+global_par_KYNU_Km_hLkynr*global_par_KYNU_Km_Lkynr*x(4));

% Reaction: id = R02701, name = DDC_5HTrp	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02701_kcat_B=2.0;

	reaction_R02701=compartment_Cytosol*global_par_DDC_E_T*reaction_R02701_kcat_B*global_par_scaling*x(3)*global_par_DDC_Km_trp_DASH_L/(global_par_DDC_Km_5htrp*global_par_DDC_Km_trp_DASH_L+global_par_DDC_Km_5htrp*x(11)+global_par_DDC_Km_trp_DASH_L*x(3));

% Reaction: id = R02702, name = IDO_5HTrp	% Local Parameter:   id =  kcat, name = kcat
	reaction_R02702_kcat=0.043;

	reaction_R02702=compartment_Cytosol*reaction_R02702_kcat*global_par_IDO_E_T*x(3)*const_species_M_o2_c*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn*global_par_scaling/(global_par_IDO_Km_5htrp*global_par_IDO_Km_O2*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn+x(3)*global_par_IDO_Km_O2*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn+const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn+x(11)*global_par_IDO_Km_5htrp*global_par_IDO_Km_O2*global_par_IDO_Km_srtn+x(10)*global_par_IDO_Km_5htrp*global_par_IDO_Km_O2*global_par_IDO_Km_trp_DASH_L+x(3)*const_species_M_o2_c*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn+x(11)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn+x(10)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L);

% Reaction: id = R03664, name = WARS	% Local Parameter:   id =  E_T, name = E_T
	reaction_R03664_E_T=15961.5;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R03664_Ka=0.0074;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R03664_Kb=0.0011;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R03664_kcat=1.1;

	reaction_R03664=compartment_Cytosol*reaction_R03664_kcat*reaction_R03664_E_T*x(11)*const_species_M_trna_trp_c*const_species_M_atp_c*global_par_scaling/(reaction_R03664_Ka*reaction_R03664_Kb+reaction_R03664_Kb*x(11)+reaction_R03664_Ka*const_species_M_trna_trp_c+x(11)*const_species_M_trna_trp_c);

% Reaction: id = R04911, name = AFMID_5HFKyn	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R04911_kcat_A=100.0;

	reaction_R04911=compartment_Cytosol*global_par_AFMID_E_T*reaction_R04911_kcat_A*global_par_scaling*x(2)*global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_nformanth/(global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_nformanth+global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_nformanth*x(2)+global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_nformanth*x(4)+global_par_AFMID_Km_5hoxnfky*global_par_AFMID_Km_Lfmkynr*x(14));

% Reaction: id = quin_form, name = Quinolic Acid formation (spontaneous)	% Local Parameter:   id =  k1, name = k1
	reaction_quin_form_k1=2.5E-4;

	reaction_quin_form=compartment_Cytosol*reaction_quin_form_k1*x(6);

% Reaction: id = R02173_Maoa, name = MAOA_Trypta	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02173_Maoa_kcat_B=3.5;

	reaction_R02173_Maoa=compartment_Cytosol*global_par_MAOA_E_T*reaction_R02173_Maoa_kcat_B*global_par_scaling*x(12)*global_par_MAO_Km_srtn/(global_par_MAO_Km_trypta*global_par_MAO_Km_srtn+global_par_MAO_Km_trypta*x(10)+global_par_MAO_Km_srtn*x(12));

% Reaction: id = R02670, name = Cinnavalinate formation	% Local Parameter:   id =  e1, name = e1
	reaction_R02670_e1=2.0;
	% Local Parameter:   id =  e2, name = e2
	reaction_R02670_e2=4.0;
	% Local Parameter:   id =  k1, name = k1
	reaction_R02670_k1=5.6667E-5;

	reaction_R02670=compartment_Cytosol*reaction_R02670_k1*x(1)^reaction_R02670_e1*const_species_M_o2_c^reaction_R02670_e2;

% Reaction: id = TRPtrans_Slc7a5, name = Tryptophan_Transport Slc7a5
	reaction_TRPtrans_Slc7a5=compartment_Cytosol*global_par_scaling*(global_par_Transporter_E_T_Slc7a5*global_par_Transporter_kcat_Trp*const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a5-global_par_Transporter_E_T_Slc7a5*global_par_Transporter_kcat_Trp*x(11)/global_par_Transporter_Km_Trp_Slc7a5)/(1+const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a5+const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr+x(11)/global_par_Transporter_Km_Trp_Slc7a5+x(5)/global_par_Transporter_Km_Lkynr);

% Reaction: id = R00678_Indo, name = IDO	% Local Parameter:   id =  kcat, name = kcat
	reaction_R00678_Indo_kcat=1.65;

	reaction_R00678_Indo=compartment_Cytosol*reaction_R00678_Indo_kcat*global_par_IDO_E_T*x(11)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn*global_par_scaling/(global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn+x(11)*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn+const_species_M_o2_c*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn+x(3)*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_O2*global_par_IDO_Km_srtn+x(10)*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp+x(11)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_srtn+x(3)*const_species_M_o2_c*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_srtn+x(10)*const_species_M_o2_c*global_par_IDO_Km_trp_DASH_L*global_par_IDO_Km_5htrp);

% Reaction: id = R03348, name = QPRT	% Local Parameter:   id =  E_T, name = E_T
	reaction_R03348_E_T=138709.0;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R03348_Ka=0.022;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R03348_Kb=0.023;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R03348_kcat=0.255;

	reaction_R03348=compartment_Cytosol*reaction_R03348_kcat*reaction_R03348_E_T*x(9)*const_species_M_prpp_c*const_species_M_h_c*global_par_scaling/(reaction_R03348_Ka*reaction_R03348_Kb+reaction_R03348_Kb*x(9)+reaction_R03348_Ka*const_species_M_prpp_c+x(9)*const_species_M_prpp_c);

% Reaction: id = R03936, name = KYNU_FKyn	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R03936_kcat_A=0.013;

	reaction_R03936=compartment_Cytosol*global_par_KYNU_E_T*reaction_R03936_kcat_A*global_par_scaling*x(4)*global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_hLkynr/(global_par_KYNU_Km_Lfmkynr*global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_hLkynr+global_par_KYNU_Km_Lkynr*global_par_KYNU_Km_hLkynr*x(4)+global_par_KYNU_Km_Lfmkynr*global_par_KYNU_Km_hLkynr*x(5)+global_par_KYNU_Km_Lfmkynr*global_par_KYNU_Km_Lkynr*x(7));

% Reaction: id = R00988, name = AFMID_FAA	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R00988_kcat_A=13.57;

	reaction_R00988=compartment_Cytosol*global_par_AFMID_E_T*reaction_R00988_kcat_A*global_par_scaling*x(14)*global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_5hoxnfky/(global_par_AFMID_Km_nformanth*global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_5hoxnfky+global_par_AFMID_Km_Lfmkynr*global_par_AFMID_Km_5hoxnfky*x(14)+global_par_AFMID_Km_nformanth*global_par_AFMID_Km_5hoxnfky*x(4)+global_par_AFMID_Km_nformanth*global_par_AFMID_Km_Lfmkynr*x(2));

% Reaction: id = R03005, name = NMNAT1	% Local Parameter:   id =  E_T, name = E_T
	reaction_R03005_E_T=4658.65;
	% Local Parameter:   id =  Km, name = Km
	reaction_R03005_Km=0.0677;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R03005_kcat=42.9;

	reaction_R03005=compartment_Cytosol*reaction_R03005_E_T*reaction_R03005_kcat*x(13)*const_species_M_h_c*const_species_M_atp_c*global_par_scaling/(reaction_R03005_Km+x(13));

% Reaction: id = R04323, name = ACMSD	% Local Parameter:   id =  E_T, name = E_T
	reaction_R04323_E_T=48858.2;
	% Local Parameter:   id =  Km, name = Km
	reaction_R04323_Km=0.0065;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R04323_kcat=1.0;

	reaction_R04323=compartment_Cytosol*reaction_R04323_E_T*reaction_R04323_kcat*x(6)*global_par_scaling/(reaction_R04323_Km+x(6));

% Reaction: id = R02908_Maoa, name = MAOA_Serotonin	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02908_Maoa_kcat_B=18.6;

	reaction_R02908_Maoa=compartment_Cytosol*global_par_MAOA_E_T*reaction_R02908_Maoa_kcat_B*global_par_scaling*x(10)*global_par_MAO_Km_trypta/(global_par_MAO_Km_srtn*global_par_MAO_Km_trypta+global_par_MAO_Km_srtn*x(12)+global_par_MAO_Km_trypta*x(10));

% Reaction: id = R02911, name = AANAT_Serotonin	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02911_kcat_B=25.9;

	reaction_R02911=compartment_Cytosol*global_par_AANAT_E_T*reaction_R02911_kcat_B*global_par_scaling*x(10)*global_par_AANAT_Km_trypta/(global_par_AANAT_Km_Srtn*global_par_AANAT_Km_trypta+global_par_AANAT_Km_Srtn*x(12)+global_par_AANAT_Km_trypta*x(10));

% Reaction: id = R04171_Kat1, name = KAT1_3HKyn
	reaction_R04171_Kat1=compartment_Cytosol*global_par_AADAT_E_T_kat1*global_par_AADAT_kcat_hLkynr*global_par_scaling*x(7)*global_par_AADAT_Km_Lkynr/(global_par_AADAT_Km_hLkynr*global_par_AADAT_Km_Lkynr+global_par_AADAT_Km_hLkynr*x(5)+global_par_AADAT_Km_Lkynr*x(7));

% Reaction: id = R02909, name = IDO_Serotonin	% Local Parameter:   id =  kcat, name = kcat
	reaction_R02909_kcat=0.002;

	reaction_R02909=compartment_Cytosol*reaction_R02909_kcat*global_par_IDO_E_T*x(10)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L*global_par_scaling/(global_par_IDO_Km_srtn*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L+x(10)*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L+const_species_M_o2_c*global_par_IDO_Km_srtn*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L+x(3)*global_par_IDO_Km_srtn*global_par_IDO_Km_O2*global_par_IDO_Km_trp_DASH_L+x(11)*global_par_IDO_Km_srtn*global_par_IDO_Km_O2*global_par_IDO_Km_5htrp+x(10)*const_species_M_o2_c*global_par_IDO_Km_5htrp*global_par_IDO_Km_trp_DASH_L+x(3)*const_species_M_o2_c*global_par_IDO_Km_srtn*global_par_IDO_Km_trp_DASH_L+x(11)*const_species_M_o2_c*global_par_IDO_Km_srtn*global_par_IDO_Km_5htrp);

% Reaction: id = R02174_metTrypta, name = INMT_MTrypta	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R02174_metTrypta_kcat_A=0.176;

	reaction_R02174_metTrypta=compartment_Cytosol*global_par_IMNT_E_T*reaction_R02174_metTrypta_kcat_A*global_par_scaling*x(8)*global_par_IMNT_Km_srtn*global_par_IMNT_Km_trypta/(global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_srtn*global_par_IMNT_Km_trypta+global_par_IMNT_Km_srtn*global_par_IMNT_Km_trypta*x(8)+global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_trypta*x(10)+global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_srtn*x(12));

% Reaction: id = R02910, name = INMT_Serotonin	% Local Parameter:   id =  kcat_A, name = kcat_A
	reaction_R02910_kcat_A=0.044;

	reaction_R02910=compartment_Cytosol*global_par_IMNT_E_T*reaction_R02910_kcat_A*global_par_scaling*x(10)*global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_trypta/(global_par_IMNT_Km_srtn*global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_trypta+global_par_IMNT_Km_nmtrpta*global_par_IMNT_Km_trypta*x(10)+global_par_IMNT_Km_srtn*global_par_IMNT_Km_trypta*x(8)+global_par_IMNT_Km_srtn*global_par_IMNT_Km_nmtrpta*x(12));

% Reaction: id = R01956_Kat2, name = KAT2_3HKyn
	reaction_R01956_Kat2=compartment_Cytosol*global_par_AADAT_E_T_kat2*global_par_AADAT_kcat_hLkynr*global_par_scaling*x(7)*global_par_AADAT_Km_Lkynr/(global_par_AADAT_Km_hLkynr*global_par_AADAT_Km_Lkynr+global_par_AADAT_Km_hLkynr*x(5)+global_par_AADAT_Km_Lkynr*x(7));

% Reaction: id = R01956_Kat3, name = KAT3_3HKyn
	reaction_R01956_Kat3=compartment_Cytosol*global_par_AADAT_E_T_kat3*global_par_AADAT_kcat_hLkynr*global_par_scaling*x(7)*global_par_AADAT_Km_Lkynr/(global_par_AADAT_Km_hLkynr*global_par_AADAT_Km_Lkynr+global_par_AADAT_Km_hLkynr*x(5)+global_par_AADAT_Km_Lkynr*x(7));

% Reaction: id = R04171_Kat2, name = KAT2_L-Kyn
	reaction_R04171_Kat2=compartment_Cytosol*global_par_AADAT_E_T_kat2*global_par_AADAT_kcat_Lkynr*global_par_scaling*x(5)*global_par_AADAT_Km_hLkynr/(global_par_AADAT_Km_Lkynr*global_par_AADAT_Km_hLkynr+global_par_AADAT_Km_Lkynr*x(7)+global_par_AADAT_Km_hLkynr*x(5));

% Reaction: id = R04171_Kat3, name = KAT3_L-Kyn
	reaction_R04171_Kat3=compartment_Cytosol*global_par_AADAT_E_T_kat3*global_par_AADAT_kcat_Lkynr*global_par_scaling*x(5)*global_par_AADAT_Km_hLkynr/(global_par_AADAT_Km_Lkynr*global_par_AADAT_Km_hLkynr+global_par_AADAT_Km_Lkynr*x(7)+global_par_AADAT_Km_hLkynr*x(5));

% Reaction: id = R02908_Maob, name = MAOB_Serotonin	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02908_Maob_kcat_B=18.6;

	reaction_R02908_Maob=compartment_Cytosol*global_par_MAOB_E_T*reaction_R02908_Maob_kcat_B*global_par_scaling*x(10)*global_par_MAO_Km_trypta/(global_par_MAO_Km_srtn*global_par_MAO_Km_trypta+global_par_MAO_Km_srtn*x(12)+global_par_MAO_Km_trypta*x(10));

% Reaction: id = R02173_Maob, name = MAOB_Trypta	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_R02173_Maob_kcat_B=3.5;

	reaction_R02173_Maob=compartment_Cytosol*global_par_MAOB_E_T*reaction_R02173_Maob_kcat_B*global_par_scaling*x(12)*global_par_MAO_Km_srtn/(global_par_MAO_Km_trypta*global_par_MAO_Km_srtn+global_par_MAO_Km_trypta*x(10)+global_par_MAO_Km_srtn*x(12));

% Reaction: id = AANAT_Trypta, name = AANAT_Trypta	% Local Parameter:   id =  kcat_B, name = kcat_B
	reaction_AANAT_Trypta_kcat_B=25.9;

	reaction_AANAT_Trypta=compartment_Cytosol*global_par_AANAT_E_T*reaction_AANAT_Trypta_kcat_B*global_par_scaling*x(12)*global_par_AANAT_Km_Srtn/(global_par_AANAT_Km_trypta*global_par_AANAT_Km_Srtn+global_par_AANAT_Km_trypta*x(10)+global_par_AANAT_Km_Srtn*x(12));

% Reaction: id = R01814_Tph2, name = TPH2	% Local Parameter:   id =  E_T, name = E_T
	reaction_R01814_Tph2_E_T=235.128;
	% Local Parameter:   id =  Ka, name = Ka
	reaction_R01814_Tph2_Ka=0.0403;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_R01814_Tph2_Kb=0.273;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_R01814_Tph2_kcat=0.18;

	reaction_R01814_Tph2=compartment_Cytosol*reaction_R01814_Tph2_kcat*reaction_R01814_Tph2_E_T*x(11)*const_species_M_o2_c*const_species_M_thbpt*global_par_scaling/(reaction_R01814_Tph2_Ka*reaction_R01814_Tph2_Kb+reaction_R01814_Tph2_Kb*x(11)+reaction_R01814_Tph2_Ka*const_species_M_o2_c+x(11)*const_species_M_o2_c);

% Reaction: id = TRPtrans_Slc7a8, name = Tryptophan_Transport Slc7a8
	reaction_TRPtrans_Slc7a8=compartment_Cytosol*global_par_scaling*(global_par_Transporter_E_T_Slc7a8*global_par_Transporter_kcat_Trp*const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a8-global_par_Transporter_E_T_Slc7a8*global_par_Transporter_kcat_Trp*x(11)/global_par_Transporter_Km_Trp_Slc7a8)/(1+const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a8+const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr+x(11)/global_par_Transporter_Km_Trp_Slc7a8+x(5)/global_par_Transporter_Km_Lkynr);

% Reaction: id = Lkynr_trans_Slc7a5, name = Lkynr_Transporter_Slc7a5
	reaction_Lkynr_trans_Slc7a5=compartment_Cytosol*global_par_scaling*(global_par_Transporter_E_T_Slc7a5*global_par_Transporter_kcat_Lkynr*x(5)/global_par_Transporter_Km_Lkynr-global_par_Transporter_E_T_Slc7a5*global_par_Transporter_kcat_Lkynr*const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr)/(1+x(5)/global_par_Transporter_Km_Lkynr+x(11)/global_par_Transporter_Km_Trp_Slc7a5+const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr+const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a5);

% Reaction: id = Lkynr_trans_Slc7a8, name = Lkynr_Transporter_Slc7a8
	reaction_Lkynr_trans_Slc7a8=compartment_Cytosol*global_par_scaling*(global_par_Transporter_E_T_Slc7a8*global_par_Transporter_kcat_Lkynr*x(5)/global_par_Transporter_Km_Lkynr-global_par_Transporter_E_T_Slc7a8*global_par_Transporter_kcat_Lkynr*const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr)/(1+x(5)/global_par_Transporter_Km_Lkynr+x(11)/global_par_Transporter_Km_Trp_Slc7a8+const_species_M_Lkynr_ex/global_par_Transporter_Km_Lkynr+const_species_TRP_ex/global_par_Transporter_Km_Trp_Slc7a8);

% Species:   id = M_5hxkyn_c, name = M_5HKyn, constant	const_species_M_5hxkyn_c=0.0;

% Species:   id = M_ahcys_c, name = M_AHCys, constant	const_species_M_ahcys_c=1.0;

% Species:   id = M_akg_c, name = M_Ketoglutarate, constant	const_species_M_akg_c=0.9999999518;

% Species:   id = M_ala_DASH_L_c, name = M_L_ALA, constant	const_species_M_ala_DASH_L_c=1.0;

% Species:   id = M_amet_c, name = M_AMet, constant	const_species_M_amet_c=0.9999999518;

% Species:   id = M_anth_c, name = M_AA, constant	const_species_M_anth_c=0.0;

% Species:   id = M_dhbpt_c, name = M_Dhbpt, constant	const_species_M_dhbpt_c=1.0;

% Species:   id = M_for_c, name = M_Formate, constant	const_species_M_for_c=0.0;

% Species:   id = M_glu_DASH_L_c, name = M_LGlu, constant	const_species_M_glu_DASH_L_c=0.0;

% Species:   id = M_id3acald_c, name = M_IndolAc, constant	const_species_M_id3acald_c=0.0;

% Species:   id = M_indpyr_c, name = M_IndolP, constant	const_species_M_indpyr_c=0.0;

% Species:   id = M_thbpt, name = M_Thbpt, constant	const_species_M_thbpt=1.0;

% Species:   id = M_trna_trp_c, name = M_tRNA, constant	const_species_M_trna_trp_c=1.0E-5;

% Species:   id = M_trp_L_trna_c, name = M_Trp_tRNA, constant	const_species_M_trp_L_trna_c=0.0;

% Species:   id = M_amp_c, name = M_AMP, constant	const_species_M_amp_c=0.999999951844375;

% Species:   id = M_atp_c, name = M_ATP, constant	const_species_M_atp_c=0.999999951844375;

% Species:   id = M_co2_c, name = M_CO2, constant	const_species_M_co2_c=0.999999951844375;

% Species:   id = M_h2o2_c, name = M_H2O2, constant	const_species_M_h2o2_c=0.0;

% Species:   id = M_h2o_c, name = M_H2O, constant	const_species_M_h2o_c=1.0;

% Species:   id = M_h_c, name = M_H, constant	const_species_M_h_c=1.0;

% Species:   id = M_nadp_c, name = M_NADP, constant	const_species_M_nadp_c=0.0;

% Species:   id = M_nadph_c, name = M_NADPH, constant	const_species_M_nadph_c=0.03;

% Species:   id = M_nh4_c, name = M_NH4, constant	const_species_M_nh4_c=0.0;

% Species:   id = M_o2_c, name = M_O2, constant	const_species_M_o2_c=1.0;

% Species:   id = M_o2s_c, name = M_O2s, constant	const_species_M_o2s_c=0.0;

% Species:   id = M_ppi_c, name = M_PPi, constant	const_species_M_ppi_c=0.0;

% Species:   id = M_Cinnavalininate_c, name = M_Cin, constant	const_species_M_Cinnavalininate_c=1.0;

% Species:   id = M_kynate_c, name = M_Kyna, constant	const_species_M_kynate_c=1.0;

% Species:   id = TRP_ex, name = Trp_ex, constant	const_species_TRP_ex=0.005;

% Species:   id = M_prpp_c, name = M_PRPP, constant	const_species_M_prpp_c=1.0;

% Species:   id = M_dnad_c, name = M_NAAD, constant	const_species_M_dnad_c=0.0;

% Species:   id = M_am6sa_c, name = M_Am6sa, constant	const_species_M_am6sa_c=1.0;

% Species:   id = M_5hoxindact_c, name = M_5HAc, constant	const_species_M_5hoxindact_c=1.0;

% Species:   id = M_Nacsertn_c, name = M_NAcSet, constant	const_species_M_Nacsertn_c=0.0;

% Species:   id = M_accoa_c, name = M_AcetylCoA, constant	const_species_M_accoa_c=0.999999951844375;

% Species:   id = M_coa_c, name = M_CoA, constant	const_species_M_coa_c=1.0;

% Species:   id = M_Xanthurenate, name = M_Xanth, constant	const_species_M_Xanthurenate=0.0;

% Species:   id = M_f5hoxkyn_c, name = M_F5HKyn, constant	const_species_M_f5hoxkyn_c=0.0;

% Species:   id = M_nndmtrpta_c, name = M_MMTrypta, constant	const_species_M_nndmtrpta_c=0.0;

% Species:   id = M_nmsrtn_c, name = M_NMSer, constant	const_species_M_nmsrtn_c=0.0;

% Species:   id = M_Nactrypta_c, name = M_Nactrypta, constant	const_species_M_Nactrypta_c=0.0;

% Species:   id = M_Lkynr_ex, name = M_LKyn_ex, constant	const_species_M_Lkynr_ex=0.0;

	xdot=zeros(14,1);
	
% Species:   id = M_3hanthrn_c, name = M_3HAA, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*((-1.0 * reaction_R02665) + ( 1.0 * reaction_R02668) + (-2.0 * reaction_R02670));
	
% Species:   id = M_5hoxnfkyn_c, name = M_5HFKyn, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R02702) + (-1.0 * reaction_R04911));
	
% Species:   id = M_5htrp_c, name = M_5HTrp, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R01814_Tph1) + (-1.0 * reaction_R02701) + (-1.0 * reaction_R02702) + ( 1.0 * reaction_R01814_Tph2));
	
% Species:   id = M_Lfmkynr_c, name = M_FKyn, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R00678_Tdo) + (-1.0 * reaction_R01959) + ( 1.0 * reaction_R00678_Indo) + (-1.0 * reaction_R03936));
	
% Species:   id = M_Lkynr_c, name = M_L-Kyn, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*((-1.0 * reaction_R00987) + (-1.0 * reaction_R01956_Kat1) + ( 1.0 * reaction_R01959) + (-1.0 * reaction_R01960) + (-1.0 * reaction_R04171_Kat2) + (-1.0 * reaction_R04171_Kat3) + (-1.0 * reaction_Lkynr_trans_Slc7a5) + (-1.0 * reaction_Lkynr_trans_Slc7a8));
	
% Species:   id = M_cmusa_c, name = M_Acms, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R02665) + (-1.0 * reaction_quin_form) + (-1.0 * reaction_R04323));
	
% Species:   id = M_hLkynr_c, name = M_3HKyn, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R01960) + (-1.0 * reaction_R02668) + (-1.0 * reaction_R04171_Kat1) + (-1.0 * reaction_R01956_Kat2) + (-1.0 * reaction_R01956_Kat3));
	
% Species:   id = M_nmtrpta_c, name = M_MTrypta, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R02174) + (-1.0 * reaction_R02174_metTrypta));
	
% Species:   id = M_quln_c, name = M_Quin, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytosol))*(( 1.0 * reaction_quin_form) + (-1.0 * reaction_R03348));
	
% Species:   id = M_srtn_c, name = M_Serotonin, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R02701) + (-1.0 * reaction_R02908_Maoa) + (-1.0 * reaction_R02911) + (-1.0 * reaction_R02909) + (-1.0 * reaction_R02910) + (-1.0 * reaction_R02908_Maob));
	
% Species:   id = M_trp_DASH_L_c, name = M_Trp, affected by kineticLaw
	xdot(11) = (1/(compartment_Cytosol))*((-1.0 * reaction_R00677) + (-1.0 * reaction_R00678_Tdo) + (-1.0 * reaction_R00685) + (-1.0 * reaction_R01814_Tph1) + (-1.0 * reaction_R03664) + ( 1.0 * reaction_TRPtrans_Slc7a5) + (-1.0 * reaction_R00678_Indo) + (-1.0 * reaction_R01814_Tph2) + ( 1.0 * reaction_TRPtrans_Slc7a8));
	
% Species:   id = M_trypta_c, name = M_Trypta, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R00685) + (-1.0 * reaction_R02174) + (-1.0 * reaction_R02173_Maoa) + (-1.0 * reaction_R02173_Maob) + (-1.0 * reaction_AANAT_Trypta));
	
% Species:   id = M_nicrnt_c, name = M_NaMN, affected by kineticLaw
	xdot(13) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R03348) + (-1.0 * reaction_R03005));
	
% Species:   id = M_nformanth_c, name = M_FAA, affected by kineticLaw
	xdot(14) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R03936) + (-1.0 * reaction_R00988));
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


