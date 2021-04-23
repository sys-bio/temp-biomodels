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
% Model name = Morrison1989 - Folate Cycle
%
% is http://identifiers.org/biomodels.db/MODEL6617317313
% is http://identifiers.org/biomodels.db/BIOMD0000000018
% isDescribedBy http://identifiers.org/pubmed/2732237
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 0.0012;
	x0(2) = 0.0024;
	x0(3) = 0.64;
	x0(4) = 0.64;
	x0(5) = 0.46;
	x0(6) = 0.26;
	x0(7) = 1.63;
	x0(8) = 1.0;
	x0(9) = 3.32E-4;
	x0(10) = 0.0074;
	x0(11) = 16.49;
	x0(12) = 3.695;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 20.76;
	x0(25) = 689.6;
	x0(26) = 123.3;
	x0(27) = 500.0;
	x0(28) = 2980.0;
	x0(29) = 7170.0;
	x0(30) = 1600.0;
	x0(31) = 6.73;
	x0(32) = 294.0;
	x0(33) = 10.0;


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

% Compartment: id = ext, name = ext, constant
	compartment_ext=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  Keq, name = Keq
	global_par_Keq=0.32;
% assignmentRule: variable = FH2b
	x(2)=x(1)*x(3)/global_par_Keq;
% assignmentRule: variable = DHFRtot
	x(4)=x(2)+x(3)+x(18)+x(19)+x(20)+x(21)+x(22);

% Reaction: id = SHMT	% Local Parameter:   id =  Vm, name = Vm
	reaction_SHMT_Vm=18330.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_SHMT_Km1=1.7;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_SHMT_Km2=210.0;

	reaction_SHMT=compartment_cell*reaction_SHMT_Vm*x(26)/reaction_SHMT_Km2/(1+x(26)/reaction_SHMT_Km2)*x(5)/reaction_SHMT_Km1/(1+x(5)/reaction_SHMT_Km1);

% Reaction: id = SHMTr	% Local Parameter:   id =  Vm, name = Vm
	reaction_SHMTr_Vm=1.22E7;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_SHMTr_Km1=3200.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_SHMTr_Km2=10000.0;

	reaction_SHMTr=compartment_cell*reaction_SHMTr_Vm*x(30)/reaction_SHMTr_Km2/(1+x(30)/reaction_SHMTr_Km2)*x(6)/reaction_SHMTr_Km1/(1+x(6)/reaction_SHMTr_Km1);

% Reaction: id = HCHOtoCH2FH4	% Local Parameter:   id =  hp, name = hp
	reaction_HCHOtoCH2FH4_hp=23.2;

	reaction_HCHOtoCH2FH4=compartment_cell*reaction_HCHOtoCH2FH4_hp*x(5)*x(10);

% Reaction: id = CH2FH4toHCHO	% Local Parameter:   id =  hl, name = hl
	reaction_CH2FH4toHCHO_hl=0.3;

	reaction_CH2FH4toHCHO=compartment_cell*reaction_CH2FH4toHCHO_hl*x(6);

% Reaction: id = MTHFR	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTHFR_Vm=224.8;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_MTHFR_Km1=50.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_MTHFR_Km2=50.0;
	% Local Parameter:   id =  Ki1, name = Ki1
	reaction_MTHFR_Ki1=0.4;
	% Local Parameter:   id =  Ki21, name = Ki21
	reaction_MTHFR_Ki21=59.0;
	% Local Parameter:   id =  Ki22, name = Ki22
	reaction_MTHFR_Ki22=21.3;
	% Local Parameter:   id =  Ki23, name = Ki23
	reaction_MTHFR_Ki23=7.68;
	% Local Parameter:   id =  Ki24, name = Ki24
	reaction_MTHFR_Ki24=2.77;
	% Local Parameter:   id =  Ki25, name = Ki25
	reaction_MTHFR_Ki25=1.0;

	reaction_MTHFR=compartment_cell*reaction_MTHFR_Vm*x(6)*x(32)/(x(32)*x(6)+x(6)*reaction_MTHFR_Km2+(x(32)+reaction_MTHFR_Km2)*reaction_MTHFR_Km1*(1+x(13)/reaction_MTHFR_Ki21+x(14)/reaction_MTHFR_Ki22+x(15)/reaction_MTHFR_Ki23+x(16)/reaction_MTHFR_Ki24+x(17)/reaction_MTHFR_Ki25+x(1)/reaction_MTHFR_Ki1));

% Reaction: id = MTR	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTR_Vm=22600.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_MTR_Km1=125.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_MTR_Km2=2900.0;

	reaction_MTR=compartment_cell*reaction_MTR_Vm*x(33)/reaction_MTR_Km2/(1+x(33)/reaction_MTR_Km2)*x(7)/reaction_MTR_Km1/(1+x(7)/reaction_MTR_Km1);

% Reaction: id = HCOOHtoCHOFH4	% Local Parameter:   id =  Vm, name = Vm
	reaction_HCOOHtoCHOFH4_Vm=3600.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_HCOOHtoCHOFH4_Km1=230.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_HCOOHtoCHOFH4_Km2=56.0;
	% Local Parameter:   id =  Km3, name = Km3
	reaction_HCOOHtoCHOFH4_Km3=1600.0;

	reaction_HCOOHtoCHOFH4=compartment_cell*reaction_HCOOHtoCHOFH4_Vm/((1+reaction_HCOOHtoCHOFH4_Km1/x(5))*(1+reaction_HCOOHtoCHOFH4_Km2/x(28))*(1+reaction_HCOOHtoCHOFH4_Km3/x(27)));

% Reaction: id = GARFT	% Local Parameter:   id =  Vm, name = Vm
	reaction_GARFT_Vm=4126.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_GARFT_Km1=4.9;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_GARFT_Km2=52.0;
	% Local Parameter:   id =  Ki1, name = Ki1
	reaction_GARFT_Ki1=5.0;
	% Local Parameter:   id =  Ki1f, name = Ki1f
	reaction_GARFT_Ki1f=1.0;
	% Local Parameter:   id =  Ki21, name = Ki21
	reaction_GARFT_Ki21=84.0;
	% Local Parameter:   id =  Ki22, name = Ki22
	reaction_GARFT_Ki22=60.0;
	% Local Parameter:   id =  Ki23, name = Ki23
	reaction_GARFT_Ki23=43.0;
	% Local Parameter:   id =  Ki24, name = Ki24
	reaction_GARFT_Ki24=31.0;
	% Local Parameter:   id =  Ki25, name = Ki25
	reaction_GARFT_Ki25=22.0;

	reaction_GARFT=compartment_cell*reaction_GARFT_Vm*x(8)*x(25)/(x(25)*x(8)+x(8)*reaction_GARFT_Km2+(x(25)+reaction_GARFT_Km2)*reaction_GARFT_Km1*(1+x(13)/reaction_GARFT_Ki21+x(14)/reaction_GARFT_Ki22+x(15)/reaction_GARFT_Ki23+x(16)/reaction_GARFT_Ki24+x(17)/reaction_GARFT_Ki25+x(1)/reaction_GARFT_Ki1+x(9)/reaction_GARFT_Ki1f));

% Reaction: id = ATIC7	% Local Parameter:   id =  Vm, name = Vm
	reaction_ATIC7_Vm=31675.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_ATIC7_Km1=5.5;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_ATIC7_Km2=24.0;
	% Local Parameter:   id =  Ki1, name = Ki1
	reaction_ATIC7_Ki1=2.89;
	% Local Parameter:   id =  Ki1f, name = Ki1f
	reaction_ATIC7_Ki1f=5.3;
	% Local Parameter:   id =  Ki21, name = Ki21
	reaction_ATIC7_Ki21=40.0;
	% Local Parameter:   id =  Ki22, name = Ki22
	reaction_ATIC7_Ki22=31.5;
	% Local Parameter:   id =  Ki23, name = Ki23
	reaction_ATIC7_Ki23=2.33;
	% Local Parameter:   id =  Ki24, name = Ki24
	reaction_ATIC7_Ki24=3.61;
	% Local Parameter:   id =  Ki25, name = Ki25
	reaction_ATIC7_Ki25=5.89;

	reaction_ATIC7=compartment_cell*reaction_ATIC7_Vm*x(8)*x(12)/(x(12)*x(8)+x(8)*reaction_ATIC7_Km2+(x(12)+reaction_ATIC7_Km2)*reaction_ATIC7_Km1*(1+x(13)/reaction_ATIC7_Ki21+x(14)/reaction_ATIC7_Ki22+x(15)/reaction_ATIC7_Ki23+x(16)/reaction_ATIC7_Ki24+x(17)/reaction_ATIC7_Ki25+x(1)/reaction_ATIC7_Ki1+x(9)/reaction_ATIC7_Ki1f));

% Reaction: id = MTHFD	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTHFD_Vm=68500.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_MTHFD_Km1=3.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_MTHFD_Km2=21.8;

	reaction_MTHFD=compartment_cell*reaction_MTHFD_Vm*x(6)/reaction_MTHFD_Km1/(1+x(6)/reaction_MTHFD_Km1)*x(31)/reaction_MTHFD_Km2/(1+x(31)/reaction_MTHFD_Km2);

% Reaction: id = TYMS	% Local Parameter:   id =  Vm, name = Vm
	reaction_TYMS_Vm=58.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_TYMS_Km1=2.5;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_TYMS_Km2=1.8;
	% Local Parameter:   id =  Ki1, name = Ki1
	reaction_TYMS_Ki1=3.0;
	% Local Parameter:   id =  Ki1f, name = Ki1f
	reaction_TYMS_Ki1f=1.6;
	% Local Parameter:   id =  Ki21, name = Ki21
	reaction_TYMS_Ki21=13.0;
	% Local Parameter:   id =  Ki22, name = Ki22
	reaction_TYMS_Ki22=0.08;
	% Local Parameter:   id =  Ki23, name = Ki23
	reaction_TYMS_Ki23=0.07;
	% Local Parameter:   id =  Ki24, name = Ki24
	reaction_TYMS_Ki24=0.065;
	% Local Parameter:   id =  Ki25, name = Ki25
	reaction_TYMS_Ki25=0.047;

	reaction_TYMS=compartment_cell*reaction_TYMS_Vm*x(6)*x(24)/(x(24)*x(6)*(1+x(13)/reaction_TYMS_Ki21+x(14)/reaction_TYMS_Ki22+x(15)/reaction_TYMS_Ki23+x(16)/reaction_TYMS_Ki24+x(17)/reaction_TYMS_Ki25+x(1)/reaction_TYMS_Ki1)+reaction_TYMS_Km1*x(24)*(x(9)/reaction_TYMS_Ki1f*x(13)/reaction_TYMS_Ki21+(1+x(9)/reaction_TYMS_Ki1f)*(1+x(14)/reaction_TYMS_Ki22+x(15)/reaction_TYMS_Ki23+x(16)/reaction_TYMS_Ki24+x(17)/reaction_TYMS_Ki25+x(1)/reaction_TYMS_Ki1))+reaction_TYMS_Km1*reaction_TYMS_Km2*(1+x(14)/reaction_TYMS_Ki22+x(15)/reaction_TYMS_Ki23+x(16)/reaction_TYMS_Ki24+x(17)/reaction_TYMS_Ki25+x(1)/reaction_TYMS_Ki1));

% Reaction: id = DHFReductase	% Local Parameter:   id =  kter, name = kter
	reaction_DHFReductase_kter=2109.4;

	reaction_DHFReductase=compartment_cell*reaction_DHFReductase_kter*x(2);

% Reaction: id = FFH2syn	% Local Parameter:   id =  Vm, name = Vm
	reaction_FFH2syn_Vm=65.0;

	reaction_FFH2syn=compartment_cell*reaction_FFH2syn_Vm*x(1);

% Reaction: id = ATIC12	% Local Parameter:   id =  Vm, name = Vm
	reaction_ATIC12_Vm=9503.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_ATIC12_Km1=5.3;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_ATIC12_Km2=24.0;
	% Local Parameter:   id =  Ki1, name = Ki1
	reaction_ATIC12_Ki1=2.89;
	% Local Parameter:   id =  Ki1f, name = Ki1f
	reaction_ATIC12_Ki1f=5.5;
	% Local Parameter:   id =  Ki21, name = Ki21
	reaction_ATIC12_Ki21=40.0;
	% Local Parameter:   id =  Ki22, name = Ki22
	reaction_ATIC12_Ki22=31.5;
	% Local Parameter:   id =  Ki23, name = Ki23
	reaction_ATIC12_Ki23=2.33;
	% Local Parameter:   id =  Ki24, name = Ki24
	reaction_ATIC12_Ki24=3.61;
	% Local Parameter:   id =  Ki25, name = Ki25
	reaction_ATIC12_Ki25=5.89;

	reaction_ATIC12=compartment_cell*reaction_ATIC12_Vm*x(9)*x(12)/(x(12)*x(9)+x(9)*reaction_ATIC12_Km2+(x(12)+reaction_ATIC12_Km2)*reaction_ATIC12_Km1*(1+x(13)/reaction_ATIC12_Ki21+x(14)/reaction_ATIC12_Ki22+x(15)/reaction_ATIC12_Ki23+x(16)/reaction_ATIC12_Ki24+x(17)/reaction_ATIC12_Ki25+x(1)/reaction_ATIC12_Ki1+x(9)/reaction_ATIC12_Ki1f));

% Reaction: id = AICARsyn	% Local Parameter:   id =  Vm, name = Vm
	reaction_AICARsyn_Vm=4656.0;
	% Local Parameter:   id =  Km1, name = Km1
	reaction_AICARsyn_Km1=100.0;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_AICARsyn_Km2=100.0;

	reaction_AICARsyn=compartment_cell*reaction_AICARsyn_Vm*x(29)/reaction_AICARsyn_Km1/(1+x(29)/reaction_AICARsyn_Km1)*x(11)/reaction_AICARsyn_Km2/(1+x(11)/reaction_AICARsyn_Km2);

% Reaction: id = FPGS12	% Local Parameter:   id =  Vm, name = Vm
	reaction_FPGS12_Vm=0.129;

	reaction_FPGS12=compartment_cell*reaction_FPGS12_Vm*x(13);

% Reaction: id = FPGS23	% Local Parameter:   id =  Vm, name = Vm
	reaction_FPGS23_Vm=0.369;

	reaction_FPGS23=compartment_cell*reaction_FPGS23_Vm*x(14);

% Reaction: id = FPGS34	% Local Parameter:   id =  Vm, name = Vm
	reaction_FPGS34_Vm=0.118;

	reaction_FPGS34=compartment_cell*reaction_FPGS34_Vm*x(15);

% Reaction: id = FPGS45	% Local Parameter:   id =  Vm, name = Vm
	reaction_FPGS45_Vm=0.185;

	reaction_FPGS45=compartment_cell*reaction_FPGS45_Vm*x(16);

% Reaction: id = GGH21	% Local Parameter:   id =  Vm, name = Vm
	reaction_GGH21_Vm=0.195;

	reaction_GGH21=compartment_cell*reaction_GGH21_Vm*x(14);

% Reaction: id = GGH32	% Local Parameter:   id =  Vm, name = Vm
	reaction_GGH32_Vm=0.025;

	reaction_GGH32=compartment_cell*reaction_GGH32_Vm*x(15);

% Reaction: id = GGH43	% Local Parameter:   id =  Vm, name = Vm
	reaction_GGH43_Vm=0.031;

	reaction_GGH43=compartment_cell*reaction_GGH43_Vm*x(16);

% Reaction: id = GGH54	% Local Parameter:   id =  Vm, name = Vm
	reaction_GGH54_Vm=0.191;

	reaction_GGH54=compartment_cell*reaction_GGH54_Vm*x(17);

% Reaction: id = RFC	% Local Parameter:   id =  Vm, name = Vm
	reaction_RFC_Vm=82.2;
	% Local Parameter:   id =  Km, name = Km
	reaction_RFC_Km=8.2;

	reaction_RFC=compartment_ext*reaction_RFC_Vm*x(23)/(reaction_RFC_Km+x(23));

% Reaction: id = MTX1export	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX1export_Vm=4.65;

	reaction_MTX1export=compartment_cell*reaction_MTX1export_Vm*x(13);

% Reaction: id = MTX2export	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX2export_Vm=0.0;

	reaction_MTX2export=compartment_cell*reaction_MTX2export_Vm*x(14);

% Reaction: id = MTX3export	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX3export_Vm=0.063;

	reaction_MTX3export=compartment_cell*reaction_MTX3export_Vm*x(15);

% Reaction: id = MTX4export	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX4export_Vm=0.063;

	reaction_MTX4export=compartment_cell*reaction_MTX4export_Vm*x(16);

% Reaction: id = MTX5export	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX5export_Vm=0.063;

	reaction_MTX5export=compartment_cell*reaction_MTX5export_Vm*x(17);

% Reaction: id = MTX1on	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX1on_Vm=23100.0;

	reaction_MTX1on=compartment_cell*reaction_MTX1on_Vm*x(3)*x(13);

% Reaction: id = MTX2on	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX2on_Vm=44300.0;

	reaction_MTX2on=compartment_cell*reaction_MTX2on_Vm*x(3)*x(14);

% Reaction: id = MTX3on	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX3on_Vm=85100.0;

	reaction_MTX3on=compartment_cell*reaction_MTX3on_Vm*x(3)*x(15);

% Reaction: id = MTX4on	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX4on_Vm=163000.0;

	reaction_MTX4on=compartment_cell*reaction_MTX4on_Vm*x(3)*x(16);

% Reaction: id = MTX5on	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX5on_Vm=314000.0;

	reaction_MTX5on=compartment_cell*reaction_MTX5on_Vm*x(3)*x(17);

% Reaction: id = MTX1off	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX1off_Vm=0.42;

	reaction_MTX1off=compartment_cell*reaction_MTX1off_Vm*x(18);

% Reaction: id = MTX2off	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX2off_Vm=0.42;

	reaction_MTX2off=compartment_cell*reaction_MTX2off_Vm*x(19);

% Reaction: id = MTX3off	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX3off_Vm=0.42;

	reaction_MTX3off=compartment_cell*reaction_MTX3off_Vm*x(20);

% Reaction: id = MTX4off	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX4off_Vm=0.42;

	reaction_MTX4off=compartment_cell*reaction_MTX4off_Vm*x(21);

% Reaction: id = MTX5off	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX5off_Vm=0.42;

	reaction_MTX5off=compartment_cell*reaction_MTX5off_Vm*x(22);

% Reaction: id = DHFRfsyn	% Local Parameter:   id =  k0, name = k0
	reaction_DHFRfsyn_k0=0.0192;
	% Local Parameter:   id =  k1, name = k1
	reaction_DHFRfsyn_k1=0.04416;

	reaction_DHFRfsyn=compartment_cell*(reaction_DHFRfsyn_k0+reaction_DHFRfsyn_k1*x(23));

% Reaction: id = DHFRdeg	% Local Parameter:   id =  Vm, name = Vm
	reaction_DHFRdeg_Vm=0.03;

	reaction_DHFRdeg=reaction_DHFRdeg_Vm*compartment_cell*(x(3)+x(2));

% Reaction: id = FH2bdeg	% Local Parameter:   id =  Vm, name = Vm
	reaction_FH2bdeg_Vm=0.03;

	reaction_FH2bdeg=compartment_cell*reaction_FH2bdeg_Vm*x(2);

% Reaction: id = MTX1deg	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX1deg_Vm=0.03;

	reaction_MTX1deg=compartment_cell*reaction_MTX1deg_Vm*x(18);

% Reaction: id = MTX2deg	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX2deg_Vm=0.03;

	reaction_MTX2deg=compartment_cell*reaction_MTX2deg_Vm*x(19);

% Reaction: id = MTX3deg	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX3deg_Vm=0.03;

	reaction_MTX3deg=compartment_cell*reaction_MTX3deg_Vm*x(20);

% Reaction: id = MTX4deg	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX4deg_Vm=0.03;

	reaction_MTX4deg=compartment_cell*reaction_MTX4deg_Vm*x(21);

% Reaction: id = MTX5deg	% Local Parameter:   id =  Vm, name = Vm
	reaction_MTX5deg_Vm=0.03;

	reaction_MTX5deg=compartment_cell*reaction_MTX5deg_Vm*x(22);

	xdot=zeros(33,1);
	
% Species:   id = FH2f, name = dihydrofolate free, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_TYMS) + (-1.0 * reaction_DHFReductase) + (-1.0 * reaction_FFH2syn) + ( 1.0 * reaction_ATIC12) + ( 1.0 * reaction_FH2bdeg));
	
% Species:   id = FH2b, name = dihydrofolate bound, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = DHFRf, name = dihydrofolate reductase free, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_MTX1on) + (-1.0 * reaction_MTX2on) + (-1.0 * reaction_MTX3on) + (-1.0 * reaction_MTX4on) + (-1.0 * reaction_MTX5on) + ( 1.0 * reaction_MTX1off) + ( 1.0 * reaction_MTX2off) + ( 1.0 * reaction_MTX3off) + ( 1.0 * reaction_MTX4off) + ( 1.0 * reaction_MTX5off) + ( 1.0 * reaction_DHFRfsyn) + (-1.0 * reaction_DHFRdeg));
	
% Species:   id = DHFRtot, name = dihydrofolate reductase total, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = FH4, name = tetrahydrofolate, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_SHMT) + ( 1.0 * reaction_SHMTr) + (-1.0 * reaction_HCHOtoCH2FH4) + ( 1.0 * reaction_CH2FH4toHCHO) + ( 1.0 * reaction_MTR) + (-1.0 * reaction_HCOOHtoCHOFH4) + ( 1.0 * reaction_GARFT) + ( 1.0 * reaction_ATIC7) + ( 1.0 * reaction_DHFReductase));
	
% Species:   id = CH2FH4, name = 5,10-methylene-tetrahydrofolate, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_SHMT) + (-1.0 * reaction_SHMTr) + ( 1.0 * reaction_HCHOtoCH2FH4) + (-1.0 * reaction_CH2FH4toHCHO) + (-1.0 * reaction_MTHFR) + (-1.0 * reaction_MTHFD) + (-1.0 * reaction_TYMS));
	
% Species:   id = CH3FH4, name = 5-methyl-tetrahydrofolate, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_MTHFR) + (-1.0 * reaction_MTR));
	
% Species:   id = CHOFH4, name = 10-formyl-tetrahydrofolate, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_HCOOHtoCHOFH4) + (-1.0 * reaction_GARFT) + (-1.0 * reaction_ATIC7) + ( 1.0 * reaction_MTHFD));
	
% Species:   id = FFH2, name = 10-formyl-dihydrofolate, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_FFH2syn) + (-1.0 * reaction_ATIC12));
	
% Species:   id = HCHO, name = HCHO, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_HCHOtoCH2FH4) + ( 1.0 * reaction_CH2FH4toHCHO));
	
% Species:   id = FGAR, name = FGAR, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_GARFT) + (-1.0 * reaction_AICARsyn));
	
% Species:   id = AICAR, name = AICAR, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_ATIC7) + (-1.0 * reaction_ATIC12) + ( 1.0 * reaction_AICARsyn));
	
% Species:   id = MTX1, name = MTX1, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_FPGS12) + ( 1.0 * reaction_GGH21) + ( 1.0 * reaction_RFC) + (-1.0 * reaction_MTX1export) + (-1.0 * reaction_MTX1on) + ( 1.0 * reaction_MTX1off) + ( 1.0 * reaction_MTX1deg));
	
% Species:   id = MTX2, name = MTX2, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_FPGS12) + (-1.0 * reaction_FPGS23) + (-1.0 * reaction_GGH21) + ( 1.0 * reaction_GGH32) + (-1.0 * reaction_MTX2export) + (-1.0 * reaction_MTX2on) + ( 1.0 * reaction_MTX2off) + ( 1.0 * reaction_MTX2deg));
	
% Species:   id = MTX3, name = MTX3, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_FPGS23) + (-1.0 * reaction_FPGS34) + (-1.0 * reaction_GGH32) + ( 1.0 * reaction_GGH43) + (-1.0 * reaction_MTX3export) + (-1.0 * reaction_MTX3on) + ( 1.0 * reaction_MTX3off) + ( 1.0 * reaction_MTX3deg));
	
% Species:   id = MTX4, name = MTX4, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_FPGS34) + (-1.0 * reaction_FPGS45) + (-1.0 * reaction_GGH43) + ( 1.0 * reaction_GGH54) + (-1.0 * reaction_MTX4export) + (-1.0 * reaction_MTX4on) + ( 1.0 * reaction_MTX4off) + ( 1.0 * reaction_MTX4deg));
	
% Species:   id = MTX5, name = MTX5, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_FPGS45) + (-1.0 * reaction_GGH54) + (-1.0 * reaction_MTX5export) + (-1.0 * reaction_MTX5on) + ( 1.0 * reaction_MTX5off) + ( 1.0 * reaction_MTX5deg));
	
% Species:   id = MTX1b, name = MTX1b, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_MTX1on) + (-1.0 * reaction_MTX1off) + (-1.0 * reaction_MTX1deg));
	
% Species:   id = MTX2b, name = MTX2b, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_MTX2on) + (-1.0 * reaction_MTX2off) + (-1.0 * reaction_MTX2deg));
	
% Species:   id = MTX3b, name = MTX3b, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_MTX3on) + (-1.0 * reaction_MTX3off) + (-1.0 * reaction_MTX3deg));
	
% Species:   id = MTX4b, name = MTX4b, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_MTX4on) + (-1.0 * reaction_MTX4off) + (-1.0 * reaction_MTX4deg));
	
% Species:   id = MTX5b, name = MTX5b, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_MTX5on) + (-1.0 * reaction_MTX5off) + (-1.0 * reaction_MTX5deg));
	
% Species:   id = EMTX, name = EMTX
%WARNING speciesID: EMTX, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = dUMP, name = dUMP
%WARNING speciesID: dUMP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = GAR, name = GAR
%WARNING speciesID: GAR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = serine, name = serine
%WARNING speciesID: serine, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(26) = 0.0;
	
% Species:   id = formate, name = formate
%WARNING speciesID: formate, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(27) = 0.0;
	
% Species:   id = ATP, name = ATP
%WARNING speciesID: ATP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(28) = 0.0;
	
% Species:   id = glutamine, name = glutamine
%WARNING speciesID: glutamine, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(29) = 0.0;
	
% Species:   id = glycine, name = glycine
%WARNING speciesID: glycine, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(30) = 0.0;
	
% Species:   id = NADP, name = NADP
%WARNING speciesID: NADP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(31) = 0.0;
	
% Species:   id = NADPH, name = NADPH
%WARNING speciesID: NADPH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(32) = 0.0;
	
% Species:   id = homocysteine, name = homocysteine
%WARNING speciesID: homocysteine, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(33) = 0.0;
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


