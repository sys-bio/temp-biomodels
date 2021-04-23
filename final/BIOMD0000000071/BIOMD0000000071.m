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
% Model name = Bakker2001_Glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL6624099213
% is http://identifiers.org/biomodels.db/BIOMD0000000071
% isDescribedBy http://identifiers.org/pubmed/11415442
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1101100000
% isDerivedFrom http://identifiers.org/pubmed/10468568
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 0.0340009;
	x0(2) = 7.63936;
	x0(3) = 2.07199;
	x0(4) = 0.511773;
	x0(5) = 16.5371;
	x0(6) = 3.89921;
	x0(7) = 0.0399329;
	x0(8) = 3.95514;
	x0(9) = 0.0326745;
	x0(10) = 0.0448639;
	x0(11) = 4.77413;
	x0(12) = 1.59603;
	x0(13) = 6.51839;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 5.0;
	x0(17) = 0.0;
	x0(18) = 0;
	x0(19) = 0;
	x0(20) = 0;
	x0(21) = 0;
	x0(22) = 0;
	x0(23) = 0;
	x0(24) = 0;
	x0(25) = 0;
	x0(26) = 0;
	x0(27) = 0;


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

% Compartment: id = tot_cell, name = total cell, constant
	compartment_tot_cell=5.7;
% Compartment: id = glycosome, name = glycosome, constant
	compartment_glycosome=0.2446;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=5.4554;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Parameter:   id =  Vt, name = tot volume per mg protein
	global_par_Vt=5.7;
% Parameter:   id =  Vc, name = Vc
% Parameter:   id =  Vg, name = Vg
% Parameter:   id =  TPIact, name = TPIact
	global_par_TPIact=1.0;
% Parameter:   id =  sumAc, name = sumAc
	global_par_sumAc=3.9;
% Parameter:   id =  sumAg, name = sumAg
	global_par_sumAg=6.0;
% Parameter:   id =  KeqAK, name = KeqAK
	global_par_KeqAK=0.442;
% Parameter:   id =  Keq_anti, name = Keq_anti
	global_par_Keq_anti=1.0;
% Parameter:   id =  sumc4, name = sumc4
	global_par_sumc4=45.0;
% Parameter:   id =  sumc5, name = sumc5
	global_par_sumc5=5.0;
% Parameter:   id =  Keq_PGM, name = Keq_PGM
	global_par_Keq_PGM=0.187;
% Parameter:   id =  Keq_ENO, name = Keq_ENO
	global_par_Keq_ENO=6.7;
% assignmentRule: variable = Vc
	global_par_Vc=compartment_cytosol*global_par_Vt/compartment_tot_cell;
% assignmentRule: variable = Vg
	global_par_Vg=compartment_glycosome*global_par_Vt/compartment_tot_cell;
% assignmentRule: variable = ATPg
	x(20)=(x(2)*(1-4*global_par_KeqAK)-global_par_sumAg+((global_par_sumAg-(1-4*global_par_KeqAK)*x(2))^2+4*(1-4*global_par_KeqAK)*global_par_KeqAK*x(2)^2)^0.5)/(2*(1-4*global_par_KeqAK));
% assignmentRule: variable = ADPg
	x(21)=x(2)-2*x(20);
% assignmentRule: variable = ATPc
	x(18)=(x(13)*(1-4*global_par_KeqAK)-global_par_sumAc+((global_par_sumAc-(1-4*global_par_KeqAK)*x(13))^2+4*(1-4*global_par_KeqAK)*global_par_KeqAK*x(13)^2)^0.5)/(2*(1-4*global_par_KeqAK));
% assignmentRule: variable = ADPc
	x(19)=x(13)-2*x(18);
% assignmentRule: variable = DHAPc
	x(23)=global_par_sumc5*(1+global_par_Vc/global_par_Vg)*x(6)/(global_par_sumc4+global_par_sumc5*global_par_Vc/global_par_Vg-(x(9)+2*x(5)+x(4)+x(7)+x(3)+x(2)));
% assignmentRule: variable = DHAPg
	x(22)=(x(6)*global_par_Vt-x(23)*global_par_Vc)/global_par_Vg;
% assignmentRule: variable = Gly3Pc
	x(24)=global_par_sumc5-x(23);
% assignmentRule: variable = Gly3Pg
	x(25)=x(24)*x(22)/(global_par_Keq_anti*x(23));
% assignmentRule: variable = Gly3P
	x(17)=(x(24)*compartment_cytosol+x(25)*compartment_glycosome)/compartment_tot_cell;
% assignmentRule: variable = PGAg
	x(26)=x(12)*(1+global_par_Vc/global_par_Vg)/(1+(1+global_par_Keq_PGM+global_par_Keq_PGM*global_par_Keq_ENO)*global_par_Vc/global_par_Vg);
% assignmentRule: variable = PEPc
	x(27)=global_par_Keq_ENO*global_par_Keq_PGM*x(26);

% Reaction: id = vGlcTr, name = Glucose transport	% Local Parameter:   id =  Vm1, name = Vm1
	reaction_vGlcTr_Vm1=106.2;
	% Local Parameter:   id =  K1Glc, name = K1Glc
	reaction_vGlcTr_K1Glc=2.0;
	% Local Parameter:   id =  afac, name = afac
	reaction_vGlcTr_afac=0.75;

	reaction_vGlcTr=compartment_tot_cell/global_par_Vt*reaction_vGlcTr_Vm1*(x(16)-x(1))/(reaction_vGlcTr_K1Glc+x(16)+x(1)+reaction_vGlcTr_afac*x(16)*x(1)/reaction_vGlcTr_K1Glc);

% Reaction: id = vHK, name = Hexokinase	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_vHK_Vm2=625.0;
	% Local Parameter:   id =  K2ATPg, name = K2ATPg
	reaction_vHK_K2ATPg=0.116;
	% Local Parameter:   id =  K2GlcI, name = K2GlcI
	reaction_vHK_K2GlcI=0.1;
	% Local Parameter:   id =  K2Glc6P, name = K2Glc6P
	reaction_vHK_K2Glc6P=12.0;
	% Local Parameter:   id =  K2ADPg, name = K2ADPg
	reaction_vHK_K2ADPg=0.126;

	reaction_vHK=compartment_tot_cell/global_par_Vt*reaction_vHK_Vm2*x(1)*x(20)/(reaction_vHK_K2ATPg*reaction_vHK_K2GlcI*(1+x(3)/reaction_vHK_K2Glc6P+x(1)/reaction_vHK_K2GlcI)*(1+x(20)/reaction_vHK_K2ATPg+x(21)/reaction_vHK_K2ADPg));

% Reaction: id = vPGI, name = Glucose-phosphate isomerase	% Local Parameter:   id =  Vm3, name = Vm3
	reaction_vPGI_Vm3=848.0;
	% Local Parameter:   id =  K3Glc6P, name = K3Glc6P
	reaction_vPGI_K3Glc6P=0.4;
	% Local Parameter:   id =  K3Fru6P, name = K3Fru6P
	reaction_vPGI_K3Fru6P=0.12;

	reaction_vPGI=compartment_tot_cell/global_par_Vt*reaction_vPGI_Vm3*(x(3)/reaction_vPGI_K3Glc6P-x(4)/reaction_vPGI_K3Fru6P)/(1+x(3)/reaction_vPGI_K3Glc6P+x(4)/reaction_vPGI_K3Fru6P);

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  K4i1Fru16BP, name = K4i1Fru16BP
	reaction_vPFK_K4i1Fru16BP=15.8;
	% Local Parameter:   id =  Vm4, name = Vm4
	reaction_vPFK_Vm4=780.0;
	% Local Parameter:   id =  K4ATPg, name = K4ATPg
	reaction_vPFK_K4ATPg=0.026;
	% Local Parameter:   id =  K4Fru6P, name = K4Fru6P
	reaction_vPFK_K4Fru6P=0.82;
	% Local Parameter:   id =  K4i2Fru16BP, name = K4i2Fru16BP
	reaction_vPFK_K4i2Fru16BP=10.7;

	reaction_vPFK=compartment_tot_cell/global_par_Vt*reaction_vPFK_K4i1Fru16BP*reaction_vPFK_Vm4*x(4)*x(20)/(reaction_vPFK_K4ATPg*reaction_vPFK_K4Fru6P*(reaction_vPFK_K4i1Fru16BP+x(5))*(1+x(5)/reaction_vPFK_K4i2Fru16BP+x(4)/reaction_vPFK_K4Fru6P)*(1+x(20)/reaction_vPFK_K4ATPg));

% Reaction: id = vALD, name = Aldolase	% Local Parameter:   id =  Vm5r, name = Vm5r
	reaction_vALD_Vm5r=219.555;
	% Local Parameter:   id =  K5DHAP, name = K5DHAP
	reaction_vALD_K5DHAP=0.015;
	% Local Parameter:   id =  K5GAP, name = K5GAP
	reaction_vALD_K5GAP=0.067;
	% Local Parameter:   id =  Vm5f, name = Vm5f
	reaction_vALD_Vm5f=184.5;
	% Local Parameter:   id =  K5GAPi, name = K5GAPi
	reaction_vALD_K5GAPi=0.098;

	reaction_vALD=compartment_tot_cell/global_par_Vt*(reaction_vALD_Vm5f*x(5)/(0.009*(1+x(20)/0.68+x(21)/1.51+(global_par_sumAg-(x(20)+x(21)))/3.65))-reaction_vALD_Vm5r*x(7)*x(22)/(reaction_vALD_K5DHAP*reaction_vALD_K5GAP))/(1+x(7)/reaction_vALD_K5GAP+x(22)/reaction_vALD_K5DHAP+x(7)*x(22)/(reaction_vALD_K5DHAP*reaction_vALD_K5GAP)+x(5)/(0.009*(1+x(20)/0.68+x(21)/1.51+(global_par_sumAg-(x(20)+x(21)))/3.65))+x(5)*x(7)/(reaction_vALD_K5GAPi*0.009*(1+x(20)/0.68+x(21)/1.51+(global_par_sumAg-(x(20)+x(21)))/3.65)));

% Reaction: id = vTPI, name = Triosephosphate isomerase	% Local Parameter:   id =  Vm6, name = Vm6
	reaction_vTPI_Vm6=842.0;
	% Local Parameter:   id =  K6GAP, name = K6GAP
	reaction_vTPI_K6GAP=0.25;
	% Local Parameter:   id =  K6DHAPg, name = K6DHAPg
	reaction_vTPI_K6DHAPg=1.2;

	reaction_vTPI=compartment_tot_cell/global_par_Vt*global_par_TPIact*reaction_vTPI_Vm6*(x(22)/reaction_vTPI_K6DHAPg-5.7*x(7)/reaction_vTPI_K6GAP)/(1+x(7)/reaction_vTPI_K6GAP+x(22)/reaction_vTPI_K6DHAPg);

% Reaction: id = vGAPdh, name = Glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  Vm7, name = Vm7
	reaction_vGAPdh_Vm7=1.0;
	% Local Parameter:   id =  Vm7f, name = Vm7f
	reaction_vGAPdh_Vm7f=1470.0;
	% Local Parameter:   id =  K7GAP, name = K7GAP
	reaction_vGAPdh_K7GAP=0.15;
	% Local Parameter:   id =  K7NAD, name = K7NAD
	reaction_vGAPdh_K7NAD=0.45;
	% Local Parameter:   id =  Vm7r, name = Vm7r
	reaction_vGAPdh_Vm7r=984.9;
	% Local Parameter:   id =  K7BPGA13, name = K7BPGA13
	reaction_vGAPdh_K7BPGA13=0.1;
	% Local Parameter:   id =  K7NADH, name = K7NADH
	reaction_vGAPdh_K7NADH=0.02;

	reaction_vGAPdh=compartment_tot_cell/global_par_Vt*reaction_vGAPdh_Vm7*reaction_vGAPdh_Vm7f*(x(7)*x(8)/reaction_vGAPdh_K7GAP/reaction_vGAPdh_K7NAD-reaction_vGAPdh_Vm7r/reaction_vGAPdh_Vm7f*x(9)*x(10)/reaction_vGAPdh_K7BPGA13/reaction_vGAPdh_K7NADH)/((1+x(7)/reaction_vGAPdh_K7GAP+x(9)/reaction_vGAPdh_K7BPGA13)*(1+x(8)/reaction_vGAPdh_K7NAD+x(10)/reaction_vGAPdh_K7NADH));

% Reaction: id = vGDH, name = Glycerol 3-phosphate dehydrogenase	% Local Parameter:   id =  Vm8, name = Vm8
	reaction_vGDH_Vm8=1.0;
	% Local Parameter:   id =  Vm8f, name = Vm8f
	reaction_vGDH_Vm8f=533.0;
	% Local Parameter:   id =  K8DHAPg, name = K8DHAPg
	reaction_vGDH_K8DHAPg=0.1;
	% Local Parameter:   id =  K8NADH, name = K8NADH
	reaction_vGDH_K8NADH=0.01;
	% Local Parameter:   id =  Vm8r, name = Vm8r
	reaction_vGDH_Vm8r=149.24;
	% Local Parameter:   id =  K8Gly3Pg, name = K8Gly3Pg
	reaction_vGDH_K8Gly3Pg=2.0;
	% Local Parameter:   id =  K8NAD, name = K8NAD
	reaction_vGDH_K8NAD=0.4;

	reaction_vGDH=compartment_tot_cell/global_par_Vt*reaction_vGDH_Vm8*reaction_vGDH_Vm8f*(x(10)*x(22)/(reaction_vGDH_K8DHAPg*reaction_vGDH_K8NADH)-reaction_vGDH_Vm8r*x(8)*x(25)/(reaction_vGDH_K8Gly3Pg*reaction_vGDH_K8NAD*reaction_vGDH_Vm8f))/((1+x(8)/reaction_vGDH_K8NAD+x(10)/reaction_vGDH_K8NADH)*(1+x(22)/reaction_vGDH_K8DHAPg+x(25)/reaction_vGDH_K8Gly3Pg));

% Reaction: id = vGPO, name = Glycerol 3-phosphate oxidase	% Local Parameter:   id =  Vm9, name = Vm9
	reaction_vGPO_Vm9=368.0;
	% Local Parameter:   id =  K9Gly3Pc, name = K9Gly3Pc
	reaction_vGPO_K9Gly3Pc=1.7;

	reaction_vGPO=compartment_tot_cell/global_par_Vt*reaction_vGPO_Vm9*x(24)/(reaction_vGPO_K9Gly3Pc*1+x(24));

% Reaction: id = vPyrTr, name = Pyruvate transport	% Local Parameter:   id =  Vm10, name = Vm10
	reaction_vPyrTr_Vm10=200.0;
	% Local Parameter:   id =  K10Pyr, name = K10Pyr
	reaction_vPyrTr_K10Pyr=1.96;

	reaction_vPyrTr=compartment_tot_cell/global_par_Vt*reaction_vPyrTr_Vm10*x(11)/reaction_vPyrTr_K10Pyr/(1+x(11)/reaction_vPyrTr_K10Pyr);

% Reaction: id = vPGK, name = Phosphoglycerate kinase	% Local Parameter:   id =  Vm11, name = Vm11
	reaction_vPGK_Vm11=1.0;
	% Local Parameter:   id =  Vm11f, name = Vm11f
	reaction_vPGK_Vm11f=640.0;
	% Local Parameter:   id =  Vm11r, name = Vm11r
	reaction_vPGK_Vm11r=18.56;
	% Local Parameter:   id =  K11ATPg, name = K11ATPg
	reaction_vPGK_K11ATPg=0.29;
	% Local Parameter:   id =  K11PGA3, name = K11PGA3
	reaction_vPGK_K11PGA3=1.62;
	% Local Parameter:   id =  K11ADPg, name = K11ADPg
	reaction_vPGK_K11ADPg=0.1;
	% Local Parameter:   id =  K11BPGA13, name = K11BPGA13
	reaction_vPGK_K11BPGA13=0.05;

	reaction_vPGK=compartment_tot_cell/global_par_Vt*reaction_vPGK_Vm11*reaction_vPGK_Vm11f*((-reaction_vPGK_Vm11r)*x(26)*x(20)/(reaction_vPGK_K11ATPg*reaction_vPGK_K11PGA3*reaction_vPGK_Vm11f)+x(9)*x(21)/(reaction_vPGK_K11ADPg*reaction_vPGK_K11BPGA13))/((1+x(9)/reaction_vPGK_K11BPGA13+x(26)/reaction_vPGK_K11PGA3)*(1+x(20)/reaction_vPGK_K11ATPg+x(21)/reaction_vPGK_K11ADPg));

% Reaction: id = vPK, name = Pyruvate kinase	% Local Parameter:   id =  n12, name = n12
	reaction_vPK_n12=2.5;
	% Local Parameter:   id =  Vm12, name = Vm12
	reaction_vPK_Vm12=2600.0;
	% Local Parameter:   id =  K12ADP, name = K12ADP
	reaction_vPK_K12ADP=0.114;

	reaction_vPK=compartment_tot_cell/global_par_Vt*reaction_vPK_Vm12*(x(27)/(0.34*(1+x(19)/0.57+x(18)/0.64)))^reaction_vPK_n12*x(19)/reaction_vPK_K12ADP/((1+(x(27)/(0.34*(1+x(19)/0.57+x(18)/0.64)))^reaction_vPK_n12)*(1+x(19)/reaction_vPK_K12ADP));

% Reaction: id = vATPase, name = ATPase	% Local Parameter:   id =  K13, name = K13
	reaction_vATPase_K13=50.0;

	reaction_vATPase=compartment_tot_cell/global_par_Vt*reaction_vATPase_K13*x(18)/x(19);

% Reaction: id = vGlyK, name = Glycerol kinase	% Local Parameter:   id =  Vm14, name = Vm14
	reaction_vGlyK_Vm14=1.0;
	% Local Parameter:   id =  Vm14r, name = Vm14r
	reaction_vGlyK_Vm14r=33400.0;
	% Local Parameter:   id =  K14ATPg, name = K14ATPg
	reaction_vGlyK_K14ATPg=0.19;
	% Local Parameter:   id =  K14Gly, name = K14Gly
	reaction_vGlyK_K14Gly=0.12;
	% Local Parameter:   id =  Vm14f, name = Vm14f
	reaction_vGlyK_Vm14f=200.0;
	% Local Parameter:   id =  K14ADPg, name = K14ADPg
	reaction_vGlyK_K14ADPg=0.12;
	% Local Parameter:   id =  K14Gly3Pg, name = K14Gly3Pg
	reaction_vGlyK_K14Gly3Pg=5.1;

	reaction_vGlyK=compartment_tot_cell/global_par_Vt*reaction_vGlyK_Vm14*(reaction_vGlyK_Vm14f*x(21)*x(25)/(reaction_vGlyK_K14ADPg*reaction_vGlyK_K14Gly3Pg)-x(15)*reaction_vGlyK_Vm14r*x(20)/(reaction_vGlyK_K14ATPg*reaction_vGlyK_K14Gly))/((1+x(15)/reaction_vGlyK_K14Gly+x(25)/reaction_vGlyK_K14Gly3Pg)*(1+x(20)/reaction_vGlyK_K14ATPg+x(21)/reaction_vGlyK_K14ADPg));

	xdot=zeros(27,1);
	
% Species:   id = GlcI, name = Glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_tot_cell))*(( 1.0 * reaction_vGlcTr) + (-1.0 * reaction_vHK));
	
% Species:   id = Pg, name = Phosphates in Glycosome, affected by kineticLaw
	xdot(2) = (1/(compartment_glycosome))*((-1.0 * reaction_vHK) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vPGK) + ( 1.0 * reaction_vGlyK));
	
% Species:   id = Glc6P, name = Glucose 6-phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_glycosome))*(( 1.0 * reaction_vHK) + (-1.0 * reaction_vPGI));
	
% Species:   id = Fru6P, name = Fructose 6-phosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_glycosome))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK));
	
% Species:   id = Fru16BP, name = Fructose 1,6-bisphosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_glycosome))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = DHAP, name = Dihydroxyacetone phosphate, affected by kineticLaw
	xdot(6) = (1/(compartment_tot_cell))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vTPI) + (-1.0 * reaction_vGDH) + ( 1.0 * reaction_vGPO));
	
% Species:   id = GAP, name = Glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(7) = (1/(compartment_glycosome))*(( 1.0 * reaction_vALD) + ( 1.0 * reaction_vTPI) + (-1.0 * reaction_vGAPdh));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(8) = (1/(compartment_glycosome))*((-1.0 * reaction_vGAPdh) + ( 1.0 * reaction_vGDH));
	
% Species:   id = BPGA13, name = 1,3-bisphosphoglycerate, affected by kineticLaw
	xdot(9) = (1/(compartment_glycosome))*(( 1.0 * reaction_vGAPdh) + (-1.0 * reaction_vPGK));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(10) = (1/(compartment_glycosome))*(( 1.0 * reaction_vGAPdh) + (-1.0 * reaction_vGDH));
	
% Species:   id = Pyr, name = Pyruvate, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*((-1.0 * reaction_vPyrTr) + ( 1.0 * reaction_vPK));
	
% Species:   id = Nb, name = 3-PGA 2-PGA PEP, affected by kineticLaw
	xdot(12) = (1/(compartment_tot_cell))*(( 1.0 * reaction_vPGK) + (-1.0 * reaction_vPK));
	
% Species:   id = Pc, name = Phosphates cytosol, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPK) + (-1.0 * reaction_vATPase));
	
% Species:   id = PyrE, name = Pyruvate external
%WARNING speciesID: PyrE, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = Gly, name = Glycerol
%WARNING speciesID: Gly, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = GlcE, name = Glucose external
%WARNING speciesID: GlcE, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = Gly3P, name = Glycerol 3-phosphate, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = ATPc, name = ATP cyt., defined in a rule 	xdot(18) = x(18);
	
% Species:   id = ADPc, name = ADP cyt., defined in a rule 	xdot(19) = x(19);
	
% Species:   id = ATPg, name = ATP gly., defined in a rule 	xdot(20) = x(20);
	
% Species:   id = ADPg, name = ADP gly., defined in a rule 	xdot(21) = x(21);
	
% Species:   id = DHAPg, name = DHAP gly., defined in a rule 	xdot(22) = x(22);
	
% Species:   id = DHAPc, name = DHAP cyt., defined in a rule 	xdot(23) = x(23);
	
% Species:   id = Gly3Pc, name = Gy3P c., defined in a rule 	xdot(24) = x(24);
	
% Species:   id = Gly3Pg, name = Gy3P g., defined in a rule 	xdot(25) = x(25);
	
% Species:   id = PGAg, name = 3-PGA g., defined in a rule 	xdot(26) = x(26);
	
% Species:   id = PEPc, name = PEP c., defined in a rule 	xdot(27) = x(27);
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


