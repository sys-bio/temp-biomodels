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
% Model name = Curto1998 - purine metabolism
%
% is http://identifiers.org/biomodels.db/MODEL6617035399
% is http://identifiers.org/biomodels.db/BIOMD0000000015
% isDescribedBy http://identifiers.org/pubmed/9664759
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 5.01742;
	x0(2) = 98.2634;
	x0(3) = 0.198189;
	x0(4) = 2475.35;
	x0(5) = 3.99187;
	x0(6) = 0.98473;
	x0(7) = 24.793;
	x0(8) = 410.223;
	x0(9) = 6.01413;
	x0(10) = 3.02581;
	x0(11) = 28680.5;
	x0(12) = 5179.34;
	x0(13) = 9.51785;
	x0(14) = 5.05941;
	x0(15) = 5.50638;
	x0(16) = 100.293;
	x0(17) = 18.0;
	x0(18) = 1400.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = ada	% Local Parameter:   id =  aada, name = aada
	reaction_ada_aada=0.001062;
	% Local Parameter:   id =  fada4, name = fada4
	reaction_ada_fada4=0.97;

	reaction_ada=reaction_ada_aada*x(4)^reaction_ada_fada4;

% Reaction: id = ade	% Local Parameter:   id =  aade, name = aade
	reaction_ade_aade=0.01;
	% Local Parameter:   id =  fade6, name = fade6
	reaction_ade_fade6=0.55;

	reaction_ade=reaction_ade_aade*x(6)^reaction_ade_fade6;

% Reaction: id = adna	% Local Parameter:   id =  aadna, name = aadna
	reaction_adna_aadna=3.2789;
	% Local Parameter:   id =  fdnap9, name = fdnap9
	reaction_adna_fdnap9=0.42;
	% Local Parameter:   id =  fdnap10, name = fdnap10
	reaction_adna_fdnap10=0.33;

	reaction_adna=reaction_adna_aadna*x(9)^reaction_adna_fdnap9*x(10)^reaction_adna_fdnap10;

% Reaction: id = adrnr	% Local Parameter:   id =  aadrnr, name = aadrnr
	reaction_adrnr_aadrnr=0.0602;
	% Local Parameter:   id =  fadrnr4, name = fadrnr4
	reaction_adrnr_fadrnr4=0.1;
	% Local Parameter:   id =  fadrnr9, name = fadrnr9
	reaction_adrnr_fadrnr9=-0.3;
	% Local Parameter:   id =  fadrnr10, name = fadrnr10
	reaction_adrnr_fadrnr10=0.87;

	reaction_adrnr=reaction_adrnr_aadrnr*x(4)^reaction_adrnr_fadrnr4*x(9)^reaction_adrnr_fadrnr9*x(10)^reaction_adrnr_fadrnr10;

% Reaction: id = ampd	% Local Parameter:   id =  aampd, name = aampd
	reaction_ampd_aampd=0.02688;
	% Local Parameter:   id =  fampd4, name = fampd4
	reaction_ampd_fampd4=0.8;
	% Local Parameter:   id =  fampd8, name = fampd8
	reaction_ampd_fampd8=-0.03;
	% Local Parameter:   id =  fampd18, name = fampd18
	reaction_ampd_fampd18=-0.1;

	reaction_ampd=reaction_ampd_aampd*x(4)^reaction_ampd_fampd4*x(8)^reaction_ampd_fampd8*x(18)^reaction_ampd_fampd18;

% Reaction: id = aprt	% Local Parameter:   id =  aaprt, name = aaprt
	reaction_aprt_aaprt=233.8;
	% Local Parameter:   id =  faprt1, name = faprt1
	reaction_aprt_faprt1=0.5;
	% Local Parameter:   id =  faprt4, name = faprt4
	reaction_aprt_faprt4=-0.8;
	% Local Parameter:   id =  faprt6, name = faprt6
	reaction_aprt_faprt6=0.75;

	reaction_aprt=reaction_aprt_aaprt*x(1)^reaction_aprt_faprt1*x(4)^reaction_aprt_faprt4*x(6)^reaction_aprt_faprt6;

% Reaction: id = arna	% Local Parameter:   id =  aarna, name = aarna
	reaction_arna_aarna=614.5;
	% Local Parameter:   id =  frnap4, name = frnap4
	reaction_arna_frnap4=0.05;
	% Local Parameter:   id =  frnap8, name = frnap8
	reaction_arna_frnap8=0.13;

	reaction_arna=reaction_arna_aarna*x(4)^reaction_arna_frnap4*x(8)^reaction_arna_frnap8;

% Reaction: id = asuc	% Local Parameter:   id =  aasuc, name = aasuc
	reaction_asuc_aasuc=3.5932;
	% Local Parameter:   id =  fasuc2, name = fasuc2
	reaction_asuc_fasuc2=0.4;
	% Local Parameter:   id =  fasuc4, name = fasuc4
	reaction_asuc_fasuc4=-0.24;
	% Local Parameter:   id =  fasuc8, name = fasuc8
	reaction_asuc_fasuc8=0.2;
	% Local Parameter:   id =  fasuc18, name = fasuc18
	reaction_asuc_fasuc18=-0.05;

	reaction_asuc=reaction_asuc_aasuc*x(2)^reaction_asuc_fasuc2*x(4)^reaction_asuc_fasuc4*x(8)^reaction_asuc_fasuc8*x(18)^reaction_asuc_fasuc18;

% Reaction: id = asli	% Local Parameter:   id =  aasli, name = aasli
	reaction_asli_aasli=66544.0;
	% Local Parameter:   id =  fasli3, name = fasli3
	reaction_asli_fasli3=0.99;
	% Local Parameter:   id =  fasli4, name = fasli4
	reaction_asli_fasli4=-0.95;

	reaction_asli=reaction_asli_aasli*x(3)^reaction_asli_fasli3*x(4)^reaction_asli_fasli4;

% Reaction: id = dada	% Local Parameter:   id =  adada, name = adada
	reaction_dada_adada=0.03333;
	% Local Parameter:   id =  fdada9, name = fdada9
	reaction_dada_fdada9=1.0;

	reaction_dada=reaction_dada_adada*x(9)^reaction_dada_fdada9;

% Reaction: id = den	% Local Parameter:   id =  aden, name = aden
	reaction_den_aden=5.2728;
	% Local Parameter:   id =  fden1, name = fden1
	reaction_den_fden1=2.0;
	% Local Parameter:   id =  fden2, name = fden2
	reaction_den_fden2=-0.06;
	% Local Parameter:   id =  fden4, name = fden4
	reaction_den_fden4=-0.25;
	% Local Parameter:   id =  fden8, name = fden8
	reaction_den_fden8=-0.2;
	% Local Parameter:   id =  fden18, name = fden18
	reaction_den_fden18=-0.08;

	reaction_den=reaction_den_aden*x(1)^reaction_den_fden1*x(2)^reaction_den_fden2*x(4)^reaction_den_fden4*x(8)^reaction_den_fden8*x(18)^reaction_den_fden18;

% Reaction: id = dgnuc	% Local Parameter:   id =  adgnuc, name = adgnuc
	reaction_dgnuc_adgnuc=0.03333;
	% Local Parameter:   id =  fdgnuc10, name = fdgnuc10
	reaction_dgnuc_fdgnuc10=1.0;

	reaction_dgnuc=reaction_dgnuc_adgnuc*x(10)^reaction_dgnuc_fdgnuc10;

% Reaction: id = dnaa	% Local Parameter:   id =  adnaa, name = adnaa
	reaction_dnaa_adnaa=0.001938;
	% Local Parameter:   id =  fdnan12, name = fdnan12
	reaction_dnaa_fdnan12=1.0;

	reaction_dnaa=reaction_dnaa_adnaa*x(12)^reaction_dnaa_fdnan12;

% Reaction: id = dnag	% Local Parameter:   id =  adnag, name = adnag
	reaction_dnag_adnag=0.001318;
	% Local Parameter:   id =  fdnan12, name = fdnan12
	reaction_dnag_fdnan12=1.0;

	reaction_dnag=reaction_dnag_adnag*x(12)^reaction_dnag_fdnan12;

% Reaction: id = gdna	% Local Parameter:   id =  agdna, name = agdna
	reaction_gdna_agdna=2.2296;
	% Local Parameter:   id =  fdnap9, name = fdnap9
	reaction_gdna_fdnap9=0.42;
	% Local Parameter:   id =  fdnap10, name = fdnap10
	reaction_gdna_fdnap10=0.33;

	reaction_gdna=reaction_gdna_agdna*x(9)^reaction_gdna_fdnap9*x(10)^reaction_gdna_fdnap10;

% Reaction: id = gdrnr	% Local Parameter:   id =  agdrnr, name = agdrnr
	reaction_gdrnr_agdrnr=0.1199;
	% Local Parameter:   id =  fgdrnr8, name = fgdrnr8
	reaction_gdrnr_fgdrnr8=0.4;
	% Local Parameter:   id =  fgdrnr9, name = fgdrnr9
	reaction_gdrnr_fgdrnr9=-1.2;
	% Local Parameter:   id =  fgdrnr10, name = fgdrnr10
	reaction_gdrnr_fgdrnr10=-0.39;

	reaction_gdrnr=reaction_gdrnr_agdrnr*x(8)^reaction_gdrnr_fgdrnr8*x(9)^reaction_gdrnr_fgdrnr9*x(10)^reaction_gdrnr_fgdrnr10;

% Reaction: id = gmpr	% Local Parameter:   id =  agmpr, name = agmpr
	reaction_gmpr_agmpr=0.3005;
	% Local Parameter:   id =  fgmpr2, name = fgmpr2
	reaction_gmpr_fgmpr2=-0.15;
	% Local Parameter:   id =  fgmpr4, name = fgmpr4
	reaction_gmpr_fgmpr4=-0.07;
	% Local Parameter:   id =  fgmpr7, name = fgmpr7
	reaction_gmpr_fgmpr7=-0.76;
	% Local Parameter:   id =  fgmpr8, name = fgmpr8
	reaction_gmpr_fgmpr8=0.7;

	reaction_gmpr=reaction_gmpr_agmpr*x(2)^reaction_gmpr_fgmpr2*x(4)^reaction_gmpr_fgmpr4*x(7)^reaction_gmpr_fgmpr7*x(8)^reaction_gmpr_fgmpr8;

% Reaction: id = gmps	% Local Parameter:   id =  agmps, name = agmps
	reaction_gmps_agmps=0.3738;
	% Local Parameter:   id =  fgmps4, name = fgmps4
	reaction_gmps_fgmps4=0.12;
	% Local Parameter:   id =  fgmps7, name = fgmps7
	reaction_gmps_fgmps7=0.16;

	reaction_gmps=reaction_gmps_agmps*x(4)^reaction_gmps_fgmps4*x(7)^reaction_gmps_fgmps7;

% Reaction: id = gnuc	% Local Parameter:   id =  agnuc, name = agnuc
	reaction_gnuc_agnuc=0.2511;
	% Local Parameter:   id =  fgnuc8, name = fgnuc8
	reaction_gnuc_fgnuc8=0.9;
	% Local Parameter:   id =  fgnuc18, name = fgnuc18
	reaction_gnuc_fgnuc18=-0.34;

	reaction_gnuc=reaction_gnuc_agnuc*x(8)^reaction_gnuc_fgnuc8*x(18)^reaction_gnuc_fgnuc18;

% Reaction: id = gprt	% Local Parameter:   id =  agprt, name = agprt
	reaction_gprt_agprt=361.69;
	% Local Parameter:   id =  fgprt1, name = fgprt1
	reaction_gprt_fgprt1=1.2;
	% Local Parameter:   id =  fgprt8, name = fgprt8
	reaction_gprt_fgprt8=-1.2;
	% Local Parameter:   id =  fgprt15, name = fgprt15
	reaction_gprt_fgprt15=0.42;

	reaction_gprt=reaction_gprt_agprt*x(1)^reaction_gprt_fgprt1*x(8)^reaction_gprt_fgprt8*x(15)^reaction_gprt_fgprt15;

% Reaction: id = grna	% Local Parameter:   id =  agrna, name = agrna
	reaction_grna_agrna=409.6;
	% Local Parameter:   id =  frnap4, name = frnap4
	reaction_grna_frnap4=0.05;
	% Local Parameter:   id =  frnap8, name = frnap8
	reaction_grna_frnap8=0.13;

	reaction_grna=reaction_grna_agrna*x(4)^reaction_grna_frnap4*x(8)^reaction_grna_frnap8;

% Reaction: id = gua	% Local Parameter:   id =  agua, name = agua
	reaction_gua_agua=0.4919;
	% Local Parameter:   id =  fgua15, name = fgua15
	reaction_gua_fgua15=0.5;

	reaction_gua=reaction_gua_agua*x(15)^reaction_gua_fgua15;

% Reaction: id = hprt	% Local Parameter:   id =  ahprt, name = ahprt
	reaction_hprt_ahprt=12.569;
	% Local Parameter:   id =  fhprt1, name = fhprt1
	reaction_hprt_fhprt1=1.1;
	% Local Parameter:   id =  fhprt2, name = fhprt2
	reaction_hprt_fhprt2=-0.89;
	% Local Parameter:   id =  fhprt13, name = fhprt13
	reaction_hprt_fhprt13=0.48;

	reaction_hprt=reaction_hprt_ahprt*x(1)^reaction_hprt_fhprt1*x(2)^reaction_hprt_fhprt2*x(13)^reaction_hprt_fhprt13;

% Reaction: id = hx	% Local Parameter:   id =  ahx, name = ahx
	reaction_hx_ahx=0.003793;
	% Local Parameter:   id =  fhx13, name = fhx13
	reaction_hx_fhx13=1.12;

	reaction_hx=reaction_hx_ahx*x(13)^reaction_hx_fhx13;

% Reaction: id = hxd	% Local Parameter:   id =  ahxd, name = ahxd
	reaction_hxd_ahxd=0.2754;
	% Local Parameter:   id =  fhxd13, name = fhxd13
	reaction_hxd_fhxd13=0.65;

	reaction_hxd=reaction_hxd_ahxd*x(13)^reaction_hxd_fhxd13;

% Reaction: id = impd	% Local Parameter:   id =  aimpd, name = aimpd
	reaction_impd_aimpd=1.2823;
	% Local Parameter:   id =  fimpd2, name = fimpd2
	reaction_impd_fimpd2=0.15;
	% Local Parameter:   id =  fimpd7, name = fimpd7
	reaction_impd_fimpd7=-0.09;
	% Local Parameter:   id =  fimpd8, name = fimpd8
	reaction_impd_fimpd8=-0.03;

	reaction_impd=reaction_impd_aimpd*x(2)^reaction_impd_fimpd2*x(7)^reaction_impd_fimpd7*x(8)^reaction_impd_fimpd8;

% Reaction: id = inuc	% Local Parameter:   id =  ainuc, name = ainuc
	reaction_inuc_ainuc=0.9135;
	% Local Parameter:   id =  finuc2, name = finuc2
	reaction_inuc_finuc2=0.8;
	% Local Parameter:   id =  finuc18, name = finuc18
	reaction_inuc_finuc18=-0.36;

	reaction_inuc=reaction_inuc_ainuc*x(2)^reaction_inuc_finuc2*x(18)^reaction_inuc_finuc18;

% Reaction: id = mat	% Local Parameter:   id =  amat, name = amat
	reaction_mat_amat=7.2067;
	% Local Parameter:   id =  fmat4, name = fmat4
	reaction_mat_fmat4=0.2;
	% Local Parameter:   id =  fmat5, name = fmat5
	reaction_mat_fmat5=-0.6;

	reaction_mat=reaction_mat_amat*x(4)^reaction_mat_fmat4*x(5)^reaction_mat_fmat5;

% Reaction: id = polyam	% Local Parameter:   id =  apolyam, name = apolyam
	reaction_polyam_apolyam=0.29;
	% Local Parameter:   id =  fpolyam5, name = fpolyam5
	reaction_polyam_fpolyam5=0.9;

	reaction_polyam=reaction_polyam_apolyam*x(5)^reaction_polyam_fpolyam5;

% Reaction: id = prpps	% Local Parameter:   id =  aprpps, name = aprpps
	reaction_prpps_aprpps=0.9;
	% Local Parameter:   id =  fprpps1, name = fprpps1
	reaction_prpps_fprpps1=-0.03;
	% Local Parameter:   id =  fprpps4, name = fprpps4
	reaction_prpps_fprpps4=-0.45;
	% Local Parameter:   id =  fprpps8, name = fprpps8
	reaction_prpps_fprpps8=-0.04;
	% Local Parameter:   id =  fprpps17, name = fprpps17
	reaction_prpps_fprpps17=0.65;
	% Local Parameter:   id =  fprpps18, name = fprpps18
	reaction_prpps_fprpps18=0.7;

	reaction_prpps=reaction_prpps_aprpps*x(1)^reaction_prpps_fprpps1*x(4)^reaction_prpps_fprpps4*x(8)^reaction_prpps_fprpps8*x(17)^reaction_prpps_fprpps17*x(18)^reaction_prpps_fprpps18;

% Reaction: id = pyr	% Local Parameter:   id =  apyr, name = apyr
	reaction_pyr_apyr=1.2951;
	% Local Parameter:   id =  fpyr1, name = fpyr1
	reaction_pyr_fpyr1=1.27;

	reaction_pyr=reaction_pyr_apyr*x(1)^reaction_pyr_fpyr1;

% Reaction: id = rnaa	% Local Parameter:   id =  arnaa, name = arnaa
	reaction_rnaa_arnaa=0.06923;
	% Local Parameter:   id =  frnan11, name = frnan11
	reaction_rnaa_frnan11=1.0;

	reaction_rnaa=reaction_rnaa_arnaa*x(11)^reaction_rnaa_frnan11;

% Reaction: id = rnag	% Local Parameter:   id =  arnag, name = arnag
	reaction_rnag_arnag=0.04615;
	% Local Parameter:   id =  frnan11, name = frnan11
	reaction_rnag_frnan11=1.0;

	reaction_rnag=reaction_rnag_arnag*x(11)^reaction_rnag_frnan11;

% Reaction: id = trans	% Local Parameter:   id =  atrans, name = atrans
	reaction_trans_atrans=8.8539;
	% Local Parameter:   id =  ftrans5, name = ftrans5
	reaction_trans_ftrans5=0.33;

	reaction_trans=reaction_trans_atrans*x(5)^reaction_trans_ftrans5;

% Reaction: id = ua	% Local Parameter:   id =  aua, name = aua
	reaction_ua_aua=8.744E-5;
	% Local Parameter:   id =  fua16, name = fua16
	reaction_ua_fua16=2.21;

	reaction_ua=reaction_ua_aua*x(16)^reaction_ua_fua16;

% Reaction: id = x	% Local Parameter:   id =  ax, name = ax
	reaction_x_ax=0.0012;
	% Local Parameter:   id =  fx14, name = fx14
	reaction_x_fx14=2.0;

	reaction_x=reaction_x_ax*x(14)^reaction_x_fx14;

% Reaction: id = xd	% Local Parameter:   id =  axd, name = axd
	reaction_xd_axd=0.949;
	% Local Parameter:   id =  fxd14, name = fxd14
	reaction_xd_fxd14=0.55;

	reaction_xd=reaction_xd_axd*x(14)^reaction_xd_fxd14;

	xdot=zeros(18,1);
	
% Species:   id = PRPP, name = phosphoribosylpyrophosphate, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_aprt) + (-1.0 * reaction_den) + (-1.0 * reaction_gprt) + (-1.0 * reaction_hprt) + ( 1.0 * reaction_prpps) + (-1.0 * reaction_pyr);
	
% Species:   id = IMP, name = inosine monophosphate, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_ampd) + (-1.0 * reaction_asuc) + ( 1.0 * reaction_den) + ( 1.0 * reaction_gmpr) + ( 1.0 * reaction_hprt) + (-1.0 * reaction_impd) + (-1.0 * reaction_inuc);
	
% Species:   id = SAMP, name = adenylosuccinate, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_asuc) + (-1.0 * reaction_asli);
	
% Species:   id = ATP, name = ATP_ADP_AMP_Ado, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_ada) + (-1.0 * reaction_adrnr) + (-1.0 * reaction_ampd) + ( 1.0 * reaction_aprt) + (-1.0 * reaction_arna) + ( 1.0 * reaction_asli) + (-1.0 * reaction_mat) + ( 1.0 * reaction_rnaa) + ( 1.0 * reaction_trans);
	
% Species:   id = SAM, name = s-adenosyl-L-methionine, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_mat) + (-1.0 * reaction_polyam) + (-1.0 * reaction_trans);
	
% Species:   id = Ade, name = adenine, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_ade) + (-1.0 * reaction_aprt) + ( 1.0 * reaction_polyam);
	
% Species:   id = XMP, name = xanthosine monophosphate, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_gmps) + ( 1.0 * reaction_impd);
	
% Species:   id = GTP, name = GTP_GDP_GMP, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_gdrnr) + (-1.0 * reaction_gmpr) + ( 1.0 * reaction_gmps) + (-1.0 * reaction_gnuc) + ( 1.0 * reaction_gprt) + (-1.0 * reaction_grna) + ( 1.0 * reaction_rnag);
	
% Species:   id = dATP, name = dATP_dADP_dAMP_dAdo, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_adna) + ( 1.0 * reaction_adrnr) + (-1.0 * reaction_dada) + ( 1.0 * reaction_dnaa);
	
% Species:   id = dGTP, name = dGTP_dGDP_dGMP, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_dgnuc) + ( 1.0 * reaction_dnag) + (-1.0 * reaction_gdna) + ( 1.0 * reaction_gdrnr);
	
% Species:   id = RNA, name = RNA, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_arna) + ( 1.0 * reaction_grna) + (-1.0 * reaction_rnaa) + (-1.0 * reaction_rnag);
	
% Species:   id = DNA, name = DNA, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_adna) + (-1.0 * reaction_dnaa) + (-1.0 * reaction_dnag) + ( 1.0 * reaction_gdna);
	
% Species:   id = HX, name = dIno_Ino_HX, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_ada) + ( 1.0 * reaction_dada) + (-1.0 * reaction_hprt) + (-1.0 * reaction_hx) + (-1.0 * reaction_hxd) + ( 1.0 * reaction_inuc);
	
% Species:   id = Xa, name = xanthine, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_gua) + ( 1.0 * reaction_hxd) + (-1.0 * reaction_x) + (-1.0 * reaction_xd);
	
% Species:   id = Gua, name = guanine, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_dgnuc) + ( 1.0 * reaction_gnuc) + (-1.0 * reaction_gprt) + (-1.0 * reaction_gua);
	
% Species:   id = UA, name = uric acid, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_ua) + ( 1.0 * reaction_xd);
	
% Species:   id = R5P, name = ribose-5-phosphate
%WARNING speciesID: R5P, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
	
% Species:   id = Pi, name = phosphate
%WARNING speciesID: Pi, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
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


