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
% Model name = Yamada2003_JAK_STAT_pathway
%
% is http://identifiers.org/biomodels.db/MODEL4879478021
% is http://identifiers.org/biomodels.db/BIOMD0000000093
% isDescribedBy http://identifiers.org/pubmed/12527385
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 10.0;
	x0(2) = 10.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1000.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 100.0;
	x0(13) = 0.0;
	x0(14) = 50.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 60.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;

% Reaction: id = v1, name = Receptor-JAK Binding	% Local Parameter:   id =  kf, name = kf
	reaction_v1_kf=0.1;
	% Local Parameter:   id =  kb, name = kb
	reaction_v1_kb=0.05;

	reaction_v1=compartment_cytoplasm*(reaction_v1_kf*x(1)*x(2)-reaction_v1_kb*x(3));

% Reaction: id = v2, name = Interferon-Receptor Binding	% Local Parameter:   id =  kf, name = kf
	reaction_v2_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v2_kb=0.02;

	reaction_v2=compartment_cytoplasm*(reaction_v2_kf*const_species_IFN*x(3)-reaction_v2_kb*x(4));

% Reaction: id = v3, name = IFN-Receptor complex dimerization	% Local Parameter:   id =  kf, name = kf
	reaction_v3_kf=0.04;
	% Local Parameter:   id =  kb, name = kb
	reaction_v3_kb=0.2;

	reaction_v3=compartment_cytoplasm*(reaction_v3_kf*x(4)*x(4)-reaction_v3_kb*x(5));

% Reaction: id = v4, name = INF-Receptor complex activation	% Local Parameter:   id =  kf, name = kf
	reaction_v4_kf=0.005;

	reaction_v4=compartment_cytoplasm*reaction_v4_kf*x(5);

% Reaction: id = v5, name = Activated INFRJ2-STAT1c binding	% Local Parameter:   id =  kf, name = kf
	reaction_v5_kf=0.008;
	% Local Parameter:   id =  kb, name = kb
	reaction_v5_kb=0.8;

	reaction_v5=compartment_cytoplasm*(reaction_v5_kf*x(7)*x(6)-reaction_v5_kb*x(8));

% Reaction: id = v6, name = STAT1c activation	% Local Parameter:   id =  kf, name = kf
	reaction_v6_kf=0.4;

	reaction_v6=compartment_cytoplasm*reaction_v6_kf*x(8);

% Reaction: id = v7, name = Activated IFNRJ2-STAT1c binding	% Local Parameter:   id =  kf, name = kf
	reaction_v7_kf=0.005;
	% Local Parameter:   id =  kb, name = kb
	reaction_v7_kb=0.5;

	reaction_v7=compartment_cytoplasm*(reaction_v7_kf*x(6)*x(9)-reaction_v7_kb*x(10));

% Reaction: id = v8, name = Activated STAT1c dimerization	% Local Parameter:   id =  kf, name = kf
	reaction_v8_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v8_kb=0.1;

	reaction_v8=compartment_cytoplasm*(reaction_v8_kf*x(9)*x(9)-reaction_v8_kb*x(11));

% Reaction: id = v9, name = SHP2 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v9_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v9_kb=0.2;

	reaction_v9=compartment_cytoplasm*(reaction_v9_kf*x(6)*x(12)-reaction_v9_kb*x(13));

% Reaction: id = v10, name = IFNJR2 dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v10_kf=0.003;

	reaction_v10=compartment_cytoplasm*reaction_v10_kf*x(13);

% Reaction: id = v11, name = Phosphorylated STAT1c-PPX binding	% Local Parameter:   id =  kf, name = kf
	reaction_v11_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v11_kb=0.2;

	reaction_v11=compartment_cytoplasm*(reaction_v11_kf*x(14)*x(9)-reaction_v11_kb*x(15));

% Reaction: id = v12, name = STAT1c dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v12_kf=0.003;

	reaction_v12=compartment_cytoplasm*reaction_v12_kf*x(15);

% Reaction: id = v13, name = PPX binding	% Local Parameter:   id =  kf, name = kf
	reaction_v13_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v13_kb=0.2;

	reaction_v13=compartment_cytoplasm*(reaction_v13_kf*x(14)*x(11)-reaction_v13_kb*x(28));

% Reaction: id = v14, name = STAT1c dimer dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v14_kf=0.003;

	reaction_v14=compartment_cytoplasm*reaction_v14_kf*x(28);

% Reaction: id = v15, name = STAT1c-phosphorylated STAT1c binding	% Local Parameter:   id =  kf, name = kf
	reaction_v15_kf=2.0E-7;
	% Local Parameter:   id =  kb, name = kb
	reaction_v15_kb=0.2;

	reaction_v15=compartment_cytoplasm*(reaction_v15_kf*x(7)*x(9)-reaction_v15_kb*x(16));

% Reaction: id = v16, name = STAT1c-nuclear transport	% Local Parameter:   id =  kf, name = kf
	reaction_v16_kf=0.005;

	reaction_v16=compartment_cytoplasm*reaction_v16_kf*x(11);

% Reaction: id = v17, name = Phosphorylated STAT1n dimerization	% Local Parameter:   id =  kf, name = kf
	reaction_v17_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v17_kb=0.1;

	reaction_v17=compartment_nucleus*(reaction_v17_kf*x(18)*x(18)-reaction_v17_kb*x(17));

% Reaction: id = v18, name = PPN binding	% Local Parameter:   id =  kf, name = kf
	reaction_v18_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v18_kb=0.2;

	reaction_v18=compartment_nucleus*(reaction_v18_kf*x(19)*x(18)-reaction_v18_kb*x(20));

% Reaction: id = v19, name = STAT1n dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v19_kf=0.005;

	reaction_v19=compartment_nucleus*reaction_v19_kf*x(20);

% Reaction: id = v20, name = PPN binding	% Local Parameter:   id =  kf, name = kf
	reaction_v20_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v20_kb=0.2;

	reaction_v20=compartment_nucleus*(reaction_v20_kf*x(19)*x(17)-reaction_v20_kb*x(29));

% Reaction: id = v21, name = STAT1n dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v21_kf=0.005;

	reaction_v21=compartment_nucleus*reaction_v21_kf*x(29);

% Reaction: id = v22, name = STAT1n-phosphorylated STAT1n dimerization	% Local Parameter:   id =  kf, name = kf
	reaction_v22_kf=2.0E-7;
	% Local Parameter:   id =  kb, name = kb
	reaction_v22_kb=0.2;

	reaction_v22=compartment_nucleus*(reaction_v22_kf*x(21)*x(18)-reaction_v22_kb*x(22));

% Reaction: id = v23, name = STAT1n transport to cytoplasm	% Local Parameter:   id =  kf, name = kf
	reaction_v23_kf=0.05;

	reaction_v23=compartment_nucleus*reaction_v23_kf*x(21);

% Reaction: id = v24, name = Transcription	% Local Parameter:   id =  ka, name = ka
	reaction_v24_ka=0.01;
	% Local Parameter:   id =  kb, name = kb
	reaction_v24_kb=400.0;

	reaction_v24=compartment_nucleus*reaction_v24_ka*x(17)/(reaction_v24_kb+x(17));

% Reaction: id = v25, name = mRNA transport to cytoplasm	% Local Parameter:   id =  kf, name = kf
	reaction_v25_kf=0.001;

	reaction_v25=compartment_nucleus*reaction_v25_kf*x(23);

% Reaction: id = v26, name = SOCS1 synthesis	% Local Parameter:   id =  kf, name = kf
	reaction_v26_kf=0.01;

	reaction_v26=compartment_cytoplasm*reaction_v26_kf*x(24);

% Reaction: id = v27, name = mRNAc degradation	% Local Parameter:   id =  kf, name = kf
	reaction_v27_kf=5.0E-4;

	reaction_v27=compartment_cytoplasm*reaction_v27_kf*x(24);

% Reaction: id = v28, name = SOCS1 degradation	% Local Parameter:   id =  kf, name = kf
	reaction_v28_kf=5.0E-4;

	reaction_v28=compartment_cytoplasm*reaction_v28_kf*x(25);

% Reaction: id = v29, name = phosphorylated IFNRJ2-SOCS1 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v29_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v29_kb=0.1;

	reaction_v29=compartment_cytoplasm*(reaction_v29_kf*x(25)*x(6)-reaction_v29_kb*x(26));

% Reaction: id = v30, name = STAT1c binding	% Local Parameter:   id =  kf, name = kf
	reaction_v30_kf=0.008;
	% Local Parameter:   id =  kb, name = kb
	reaction_v30_kb=0.8;

	reaction_v30=compartment_cytoplasm*(reaction_v30_kf*x(7)*x(26)-reaction_v30_kb*x(30));

% Reaction: id = v31, name = SHP2 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v31_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v31_kb=0.2;

	reaction_v31=compartment_cytoplasm*(reaction_v31_kf*x(12)*x(30)-reaction_v31_kb*x(27));

% Reaction: id = v32, name = IFNRJ2 dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v32_kf=0.003;

	reaction_v32=compartment_cytoplasm*reaction_v32_kf*x(27);

% Reaction: id = v33, name = SOCS1 unbinding	% Local Parameter:   id =  kf, name = kf
	reaction_v33_kf=5.0E-4;

	reaction_v33=compartment_cytoplasm*reaction_v33_kf*x(27);

% Reaction: id = v34, name = SHP2 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v34_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v34_kb=0.2;

	reaction_v34=compartment_cytoplasm*(reaction_v34_kf*x(12)*x(26)-reaction_v34_kb*x(32));

% Reaction: id = v35, name = STAT1c binding	% Local Parameter:   id =  kf, name = kf
	reaction_v35_kf=0.008;
	% Local Parameter:   id =  kb, name = kb
	reaction_v35_kb=0.8;

	reaction_v35=compartment_cytoplasm*(reaction_v35_kf*x(7)*x(32)-reaction_v35_kb*x(27));

% Reaction: id = v36, name = SHP2 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v36_kf=0.001;
	% Local Parameter:   id =  kb, name = kb
	reaction_v36_kb=0.2;

	reaction_v36=compartment_cytoplasm*(reaction_v36_kf*x(12)*x(8)-reaction_v36_kb*x(31));

% Reaction: id = v37	% Local Parameter:   id =  kf, name = kf
	reaction_v37_kf=0.003;

	reaction_v37=compartment_cytoplasm*reaction_v37_kf*x(31);

% Reaction: id = v38, name = SOCS1 unbinding	% Local Parameter:   id =  kf, name = kf
	reaction_v38_kf=5.0E-4;

	reaction_v38=compartment_cytoplasm*reaction_v38_kf*x(30);

% Reaction: id = v39, name = SOCS1 unbinding	% Local Parameter:   id =  kf, name = kf
	reaction_v39_kf=5.0E-4;

	reaction_v39=compartment_cytoplasm*reaction_v39_kf*x(32);

% Reaction: id = v40, name = IFNRJ2 dephosphorylation	% Local Parameter:   id =  kf, name = kf
	reaction_v40_kf=0.003;

	reaction_v40=compartment_cytoplasm*reaction_v40_kf*x(32);

% Reaction: id = v41, name = SOCS1 unbinding	% Local Parameter:   id =  kf, name = kf
	reaction_v41_kf=5.0E-4;

	reaction_v41=compartment_cytoplasm*reaction_v41_kf*x(26);

% Reaction: id = v42, name = SOCS1 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v42_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v42_kb=0.1;

	reaction_v42=compartment_cytoplasm*(reaction_v42_kf*x(25)*x(8)-reaction_v42_kb*x(30));

% Reaction: id = v43, name = SOCS1 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v43_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v43_kb=0.1;

	reaction_v43=compartment_cytoplasm*(reaction_v43_kf*x(25)*x(13)-reaction_v43_kb*x(32));

% Reaction: id = v44, name = SOCS1 binding	% Local Parameter:   id =  kf, name = kf
	reaction_v44_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v44_kb=0.1;

	reaction_v44=compartment_cytoplasm*(reaction_v44_kf*x(25)*x(31)-reaction_v44_kb*x(27));

% Reaction: id = v45, name = Interferon-receptor binding	% Local Parameter:   id =  kf, name = kf
	reaction_v45_kf=0.02;
	% Local Parameter:   id =  kb, name = kb
	reaction_v45_kb=0.02;

	reaction_v45=compartment_cytoplasm*(reaction_v45_kf*const_species_IFN*x(1)-reaction_v45_kb*x(33));

% Reaction: id = v46, name = IFNR-JAK binding	% Local Parameter:   id =  kf, name = kf
	reaction_v46_kf=0.1;
	% Local Parameter:   id =  kb, name = kb
	reaction_v46_kb=0.05;

	reaction_v46=compartment_cytoplasm*(reaction_v46_kf*x(33)*x(2)-reaction_v46_kb*x(4));

% Species:   id = IFN, name = IFN, constant	const_species_IFN=10.0;

	xdot=zeros(33,1);
	
% Species:   id = R, name = Receptor, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v1) + (-1.0 * reaction_v45));
	
% Species:   id = JAK, name = JAK, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v1) + (-1.0 * reaction_v46));
	
% Species:   id = RJ, name = Receptor JAK complex, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = IFNRJ, name = Interferon-Receptor-JAK complex, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v2) + (-2.0 * reaction_v3) + ( 1.0 * reaction_v46));
	
% Species:   id = IFNRJ2, name = IFNRJ dimer, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v10) + ( 1.0 * reaction_v32) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v40));
	
% Species:   id = IFNRJ2_star, name = Activated IFNRJ complex, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + (-1.0 * reaction_v9) + (-1.0 * reaction_v29) + ( 1.0 * reaction_v41));
	
% Species:   id = STAT1c, name = STAT1c, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v23) + (-1.0 * reaction_v30) + ( 1.0 * reaction_v32) + (-1.0 * reaction_v35) + ( 1.0 * reaction_v37));
	
% Species:   id = IFNRJ2_star_STAT1c, name = IFNRJ2_star_STAT1c, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v38) + (-1.0 * reaction_v42));
	
% Species:   id = STAT1c_star, name = STAT1c_star, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + (-2.0 * reaction_v8) + (-1.0 * reaction_v11) + (-1.0 * reaction_v15));
	
% Species:   id = IFNRJ2_star_STAT1c_star, name = IFNRJ2_star_STAT1c_star, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v7));
	
% Species:   id = STAT1c_star_STAT1c_star, name = STAT1c_star_STAT1c_star, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v13) + (-1.0 * reaction_v16));
	
% Species:   id = SHP2, name = SHP2, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v9) + ( 1.0 * reaction_v10) + (-1.0 * reaction_v31) + ( 1.0 * reaction_v32) + (-1.0 * reaction_v34) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v40));
	
% Species:   id = IFNRJ2_star_SHP2, name = IFNRJ2_star_SHP2, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v43));
	
% Species:   id = PPX, name = PPX, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v11) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v14));
	
% Species:   id = STAT1c_star_PPX, name = STAT1c_star_PPX, affected by kineticLaw
	xdot(15) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = STAT1c_STAT1c_star, name = STAT1c_STAT1c_star, affected by kineticLaw
	xdot(16) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v14) + ( 1.0 * reaction_v15));
	
% Species:   id = STAT1n_star_STAT1n_star, name = STAT1n_star_STAT1n_star, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*(( 1.0 * reaction_v16) + ( 1.0 * reaction_v17) + (-1.0 * reaction_v20));
	
% Species:   id = STAT1n_star, name = STAT1n_star, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*((-2.0 * reaction_v17) + (-1.0 * reaction_v18) + (-1.0 * reaction_v22));
	
% Species:   id = PPN, name = PPN, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*((-1.0 * reaction_v18) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v20) + ( 1.0 * reaction_v21));
	
% Species:   id = STAT1n_star_PPN, name = STAT1n_star_PPN, affected by kineticLaw
	xdot(20) = (1/(compartment_nucleus))*(( 1.0 * reaction_v18) + (-1.0 * reaction_v19));
	
% Species:   id = STAT1n, name = STAT1n, affected by kineticLaw
	xdot(21) = (1/(compartment_nucleus))*(( 1.0 * reaction_v19) + (-1.0 * reaction_v22) + (-1.0 * reaction_v23));
	
% Species:   id = STAT1n_STAT1n_star, name = STAT1n_STAT1n_star, affected by kineticLaw
	xdot(22) = (1/(compartment_nucleus))*(( 1.0 * reaction_v21) + ( 1.0 * reaction_v22));
	
% Species:   id = mRNAn, name = mRNAn, affected by kineticLaw
	xdot(23) = (1/(compartment_nucleus))*(( 1.0 * reaction_v24) + (-1.0 * reaction_v25));
	
% Species:   id = mRNAc, name = mRNAc, affected by kineticLaw
	xdot(24) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v25) + (-1.0 * reaction_v27));
	
% Species:   id = SOCS1, name = SOCS1, affected by kineticLaw
	xdot(25) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v26) + (-1.0 * reaction_v28) + (-1.0 * reaction_v29) + ( 1.0 * reaction_v32) + ( 1.0 * reaction_v40) + (-1.0 * reaction_v42) + (-1.0 * reaction_v43) + (-1.0 * reaction_v44));
	
% Species:   id = IFNRJ2_star_SOCS1, name = IFNRJ2_star_SOCS1, affected by kineticLaw
	xdot(26) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v29) + (-1.0 * reaction_v30) + (-1.0 * reaction_v34) + (-1.0 * reaction_v41));
	
% Species:   id = IFNRJ2_star_SHP2_SOCS1_STAT1c, name = IFNRJ2_star_SHP2_SOCS1_STAT1c, affected by kineticLaw
	xdot(27) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v31) + (-1.0 * reaction_v32) + (-1.0 * reaction_v33) + ( 1.0 * reaction_v35) + ( 1.0 * reaction_v44));
	
% Species:   id = STAT1c_star_STAT1c_star_PPX, name = STAT1c_star_STAT1c_star_PPX, affected by kineticLaw
	xdot(28) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14));
	
% Species:   id = STAT1n_star_STAT1n_star_PPN, name = STAT1n_star_STAT1n_star_PPN, affected by kineticLaw
	xdot(29) = (1/(compartment_nucleus))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v21));
	
% Species:   id = IFNRJ2_star_SOCS1_STAT1c, name = IFNRJ2_star_SOCS1_STAT1c, affected by kineticLaw
	xdot(30) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v30) + (-1.0 * reaction_v31) + (-1.0 * reaction_v38) + ( 1.0 * reaction_v42));
	
% Species:   id = IFNRJ2_star_SHP2_STAT1c, name = IFNRJ2_star_SHP2_STAT1c, affected by kineticLaw
	xdot(31) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v33) + ( 1.0 * reaction_v36) + (-1.0 * reaction_v37) + (-1.0 * reaction_v44));
	
% Species:   id = IFNRJ2_star_SHP2_SOCS1, name = IFNRJ2_star_SHP2_SOCS1, affected by kineticLaw
	xdot(32) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v34) + (-1.0 * reaction_v35) + (-1.0 * reaction_v39) + (-1.0 * reaction_v40) + ( 1.0 * reaction_v43));
	
% Species:   id = IFNR, name = IFNR, affected by kineticLaw
	xdot(33) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v45) + (-1.0 * reaction_v46));
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


