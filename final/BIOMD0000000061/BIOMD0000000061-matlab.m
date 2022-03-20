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
% Model name = Hynne2001_Glycolysis
%
% is http://identifiers.org/biomodels.db/MODEL6624167348
% is http://identifiers.org/biomodels.db/BIOMD0000000061
% isDescribedBy http://identifiers.org/pubmed/11744196
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 6.7;
	x0(2) = 0.573074;
	x0(3) = 2.1;
	x0(4) = 4.2;
	x0(5) = 1.5;
	x0(6) = 0.49;
	x0(7) = 4.64;
	x0(8) = 0.115;
	x0(9) = 2.95;
	x0(10) = 0.65;
	x0(11) = 2.7E-4;
	x0(12) = 0.33;
	x0(13) = 0.04;
	x0(14) = 8.7;
	x0(15) = 1.48153;
	x0(16) = 19.2379;
	x0(17) = 16.4514;
	x0(18) = 4.196;
	x0(19) = 1.68478;
	x0(20) = 1.28836;
	x0(21) = 5.20358;
	x0(22) = 0.33;
	x0(23) = 0.0;
	x0(24) = 5.6;
	x0(25) = 24.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;

% Reaction: id = vinGlc, name = Glucose Mixed flow to extracellular medium	% Local Parameter:   id =  k0, name = k0
	reaction_vinGlc_k0=0.048;

	reaction_vinGlc=compartment_extracellular*reaction_vinGlc_k0*(x(25)-x(1));

% Reaction: id = vGlcTrans, name = Glucose uptake	% Local Parameter:   id =  V2f, name = V2f
	reaction_vGlcTrans_V2f=1014.96;
	% Local Parameter:   id =  Yvol, name = Yvol
	reaction_vGlcTrans_Yvol=59.0;
	% Local Parameter:   id =  K2Glc, name = K2Glc
	reaction_vGlcTrans_K2Glc=1.7;
	% Local Parameter:   id =  P2, name = P2
	reaction_vGlcTrans_P2=1.0;
	% Local Parameter:   id =  K2IG6P, name = K2IG6P
	reaction_vGlcTrans_K2IG6P=1.2;
	% Local Parameter:   id =  K2IIG6P, name = K2IIG6P
	reaction_vGlcTrans_K2IIG6P=7.2;
	% Local Parameter:   id =  V2r, name = V2r
	reaction_vGlcTrans_V2r=1014.96;

	reaction_vGlcTrans=compartment_extracellular*reaction_vGlcTrans_V2f/reaction_vGlcTrans_Yvol*x(1)/reaction_vGlcTrans_K2Glc/(1+x(1)/reaction_vGlcTrans_K2Glc+(reaction_vGlcTrans_P2*x(1)/reaction_vGlcTrans_K2Glc+1)/(reaction_vGlcTrans_P2*x(2)/reaction_vGlcTrans_K2Glc+1)*(1+x(2)/reaction_vGlcTrans_K2Glc+x(4)/reaction_vGlcTrans_K2IG6P+x(2)*x(4)/(reaction_vGlcTrans_K2Glc*reaction_vGlcTrans_K2IIG6P)))-compartment_cytosol*reaction_vGlcTrans_V2r/reaction_vGlcTrans_Yvol*x(2)/reaction_vGlcTrans_K2Glc/(1+x(2)/reaction_vGlcTrans_K2Glc+(reaction_vGlcTrans_P2*x(2)/reaction_vGlcTrans_K2Glc+1)/(reaction_vGlcTrans_P2*x(1)/reaction_vGlcTrans_K2Glc+1)*(1+x(1)/reaction_vGlcTrans_K2Glc)+x(4)/reaction_vGlcTrans_K2IG6P+x(2)*x(4)/(reaction_vGlcTrans_K2Glc*reaction_vGlcTrans_K2IIG6P));

% Reaction: id = vHK, name = Hexokinase	% Local Parameter:   id =  V3m, name = V3m
	reaction_vHK_V3m=51.7547;
	% Local Parameter:   id =  K3DGlc, name = K3DGlc
	reaction_vHK_K3DGlc=0.37;
	% Local Parameter:   id =  K3ATP, name = K3ATP
	reaction_vHK_K3ATP=0.1;
	% Local Parameter:   id =  K3Glc, name = K3Glc
	reaction_vHK_K3Glc=0.0;

	reaction_vHK=compartment_cytosol*reaction_vHK_V3m*x(3)*x(2)/(reaction_vHK_K3DGlc*reaction_vHK_K3ATP+reaction_vHK_K3Glc*x(3)+reaction_vHK_K3ATP*x(2)+x(2)*x(3));

% Reaction: id = vPGI, name = Phosphoglucoisomerase	% Local Parameter:   id =  V4f, name = V4f
	reaction_vPGI_V4f=496.042;
	% Local Parameter:   id =  K4G6P, name = K4G6P
	reaction_vPGI_K4G6P=0.8;
	% Local Parameter:   id =  K4F6P, name = K4F6P
	reaction_vPGI_K4F6P=0.15;
	% Local Parameter:   id =  V4r, name = V4r
	reaction_vPGI_V4r=496.042;
	% Local Parameter:   id =  K4eq, name = K4eq
	reaction_vPGI_K4eq=0.13;

	reaction_vPGI=compartment_cytosol*(reaction_vPGI_V4f*x(4)/(reaction_vPGI_K4G6P+x(4)+reaction_vPGI_K4G6P/reaction_vPGI_K4F6P*x(6))-reaction_vPGI_V4r*x(6)/reaction_vPGI_K4eq/(reaction_vPGI_K4G6P+x(4)+reaction_vPGI_K4G6P/reaction_vPGI_K4F6P*x(6)));

% Reaction: id = vPFK, name = Phosphofructokinase	% Local Parameter:   id =  V5m, name = V5m
	reaction_vPFK_V5m=45.4327;
	% Local Parameter:   id =  K5, name = K5
	reaction_vPFK_K5=0.021;
	% Local Parameter:   id =  kappa5, name = kappa5
	reaction_vPFK_kappa5=0.15;

	reaction_vPFK=compartment_cytosol*reaction_vPFK_V5m*x(6)^2/(reaction_vPFK_K5*(1+reaction_vPFK_kappa5*x(3)/x(22)*x(3)/x(22))+x(6)^2);

% Reaction: id = vALD, name = Aldolase	% Local Parameter:   id =  V6f, name = V6f
	reaction_vALD_V6f=2207.82;
	% Local Parameter:   id =  K6FBP, name = K6FBP
	reaction_vALD_K6FBP=0.3;
	% Local Parameter:   id =  K6DHAP, name = K6DHAP
	reaction_vALD_K6DHAP=2.0;
	% Local Parameter:   id =  K6eq, name = K6eq
	reaction_vALD_K6eq=0.081;
	% Local Parameter:   id =  ratio6, name = ratio6
	reaction_vALD_ratio6=5.0;
	% Local Parameter:   id =  K6GAP, name = K6GAP
	reaction_vALD_K6GAP=4.0;
	% Local Parameter:   id =  K6IGAP, name = K6IGAP
	reaction_vALD_K6IGAP=10.0;

	reaction_vALD=compartment_cytosol*(reaction_vALD_V6f*x(7)/(reaction_vALD_K6FBP+x(7)+x(8)*reaction_vALD_K6DHAP*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6)+x(9)*reaction_vALD_K6GAP*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6)+x(7)*x(8)/reaction_vALD_K6IGAP+x(8)*x(9)*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6))-reaction_vALD_V6f*x(8)*x(9)/reaction_vALD_K6eq/(reaction_vALD_K6FBP+x(7)+x(8)*reaction_vALD_K6DHAP*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6)+x(9)*reaction_vALD_K6GAP*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6)+x(7)*x(8)/reaction_vALD_K6IGAP+x(8)*x(9)*reaction_vALD_V6f/(reaction_vALD_K6eq*reaction_vALD_V6f*reaction_vALD_ratio6)));

% Reaction: id = vTIM, name = Triosephosphate isomerase	% Local Parameter:   id =  V7f, name = V7f
	reaction_vTIM_V7f=116.365;
	% Local Parameter:   id =  K7DHAP, name = K7DHAP
	reaction_vTIM_K7DHAP=1.23;
	% Local Parameter:   id =  K7GAP, name = K7GAP
	reaction_vTIM_K7GAP=1.27;
	% Local Parameter:   id =  V7r, name = V7r
	reaction_vTIM_V7r=116.365;
	% Local Parameter:   id =  K7eq, name = K7eq
	reaction_vTIM_K7eq=0.055;

	reaction_vTIM=compartment_cytosol*(reaction_vTIM_V7f*x(9)/(reaction_vTIM_K7DHAP+x(9)+reaction_vTIM_K7DHAP/reaction_vTIM_K7GAP*x(8))-reaction_vTIM_V7r*x(8)/reaction_vTIM_K7eq/(reaction_vTIM_K7DHAP+x(9)+reaction_vTIM_K7DHAP/reaction_vTIM_K7GAP*x(8)));

% Reaction: id = vGAPDH, name = Glyceraldehyde 3-phosphate dehydrogenase	% Local Parameter:   id =  V8f, name = V8f
	reaction_vGAPDH_V8f=833.858;
	% Local Parameter:   id =  K8GAP, name = K8GAP
	reaction_vGAPDH_K8GAP=0.6;
	% Local Parameter:   id =  K8NAD, name = K8NAD
	reaction_vGAPDH_K8NAD=0.1;
	% Local Parameter:   id =  K8BPG, name = K8BPG
	reaction_vGAPDH_K8BPG=0.01;
	% Local Parameter:   id =  K8NADH, name = K8NADH
	reaction_vGAPDH_K8NADH=0.06;
	% Local Parameter:   id =  V8r, name = V8r
	reaction_vGAPDH_V8r=833.858;
	% Local Parameter:   id =  K8eq, name = K8eq
	reaction_vGAPDH_K8eq=0.0055;

	reaction_vGAPDH=compartment_cytosol*(reaction_vGAPDH_V8f*x(8)*x(10)/reaction_vGAPDH_K8GAP/reaction_vGAPDH_K8NAD/((1+x(8)/reaction_vGAPDH_K8GAP+x(11)/reaction_vGAPDH_K8BPG)*(1+x(10)/reaction_vGAPDH_K8NAD+x(12)/reaction_vGAPDH_K8NADH))-reaction_vGAPDH_V8r*x(11)*x(12)/reaction_vGAPDH_K8eq/reaction_vGAPDH_K8GAP/reaction_vGAPDH_K8NAD/((1+x(8)/reaction_vGAPDH_K8GAP+x(11)/reaction_vGAPDH_K8BPG)*(1+x(10)/reaction_vGAPDH_K8NAD+x(12)/reaction_vGAPDH_K8NADH)));

% Reaction: id = vlpPEP, name = Phosphoenolpyruvate synthesis	% Local Parameter:   id =  k9f, name = k9f
	reaction_vlpPEP_k9f=443866.0;
	% Local Parameter:   id =  k9r, name = k9r
	reaction_vlpPEP_k9r=1528.62;

	reaction_vlpPEP=compartment_cytosol*(reaction_vlpPEP_k9f*x(11)*x(5)-reaction_vlpPEP_k9r*x(13)*x(3));

% Reaction: id = vPK, name = Pyruvate kinase	% Local Parameter:   id =  V10m, name = V10m
	reaction_vPK_V10m=343.096;
	% Local Parameter:   id =  K10PEP, name = K10PEP
	reaction_vPK_K10PEP=0.2;
	% Local Parameter:   id =  K10ADP, name = K10ADP
	reaction_vPK_K10ADP=0.17;

	reaction_vPK=compartment_cytosol*reaction_vPK_V10m*x(5)*x(13)/((reaction_vPK_K10PEP+x(13))*(reaction_vPK_K10ADP+x(5)));

% Reaction: id = vPDC, name = Pyruvate decarboxylase	% Local Parameter:   id =  V11m, name = V11m
	reaction_vPDC_V11m=53.1328;
	% Local Parameter:   id =  K11, name = K11
	reaction_vPDC_K11=0.3;

	reaction_vPDC=compartment_cytosol*reaction_vPDC_V11m*x(14)/(reaction_vPDC_K11+x(14));

% Reaction: id = vADH, name = Alcohol dehydrogenase	% Local Parameter:   id =  V12m, name = V12m
	reaction_vADH_V12m=89.8023;
	% Local Parameter:   id =  K12NADH, name = K12NADH
	reaction_vADH_K12NADH=0.1;
	% Local Parameter:   id =  K12ACA, name = K12ACA
	reaction_vADH_K12ACA=0.71;

	reaction_vADH=compartment_cytosol*reaction_vADH_V12m*x(15)*x(12)/((reaction_vADH_K12NADH+x(12))*(reaction_vADH_K12ACA+x(15)));

% Reaction: id = vdifEtOH, name = Ethanol out	% Local Parameter:   id =  k13, name = k13
	reaction_vdifEtOH_k13=16.72;
	% Local Parameter:   id =  Yvol, name = Yvol
	reaction_vdifEtOH_Yvol=59.0;

	reaction_vdifEtOH=reaction_vdifEtOH_k13/reaction_vdifEtOH_Yvol*(compartment_cytosol*x(16)-compartment_extracellular*x(17));

% Reaction: id = voutEtOH, name = Ethanol flow	% Local Parameter:   id =  k0, name = k0
	reaction_voutEtOH_k0=0.048;

	reaction_voutEtOH=compartment_extracellular*reaction_voutEtOH_k0*x(17);

% Reaction: id = vlpGlyc, name = Glycerol synthesis	% Local Parameter:   id =  V15m, name = V15m
	reaction_vlpGlyc_V15m=81.4797;
	% Local Parameter:   id =  K15DHAP, name = K15DHAP
	reaction_vlpGlyc_K15DHAP=25.0;
	% Local Parameter:   id =  K15INADH, name = K15INADH
	reaction_vlpGlyc_K15INADH=0.034;
	% Local Parameter:   id =  K15INAD, name = K15INAD
	reaction_vlpGlyc_K15INAD=0.13;
	% Local Parameter:   id =  K15NADH, name = K15NADH
	reaction_vlpGlyc_K15NADH=0.13;

	reaction_vlpGlyc=compartment_cytosol*reaction_vlpGlyc_V15m*x(9)/(reaction_vlpGlyc_K15DHAP*(1+reaction_vlpGlyc_K15INADH/x(12)*(1+x(10)/reaction_vlpGlyc_K15INAD))+x(9)*(1+reaction_vlpGlyc_K15NADH/x(12)*(1+x(10)/reaction_vlpGlyc_K15INAD)));

% Reaction: id = vdifGlyc, name = Glycerol out	% Local Parameter:   id =  k16, name = k16
	reaction_vdifGlyc_k16=1.9;
	% Local Parameter:   id =  Yvol, name = Yvol
	reaction_vdifGlyc_Yvol=59.0;

	reaction_vdifGlyc=reaction_vdifGlyc_k16/reaction_vdifGlyc_Yvol*(compartment_cytosol*x(18)-compartment_extracellular*x(19));

% Reaction: id = voutGlyc, name = Glycerol flow	% Local Parameter:   id =  k0, name = k0
	reaction_voutGlyc_k0=0.048;

	reaction_voutGlyc=compartment_extracellular*reaction_voutGlyc_k0*x(19);

% Reaction: id = vdifACA, name = Acetaldehyde out	% Local Parameter:   id =  k18, name = k18
	reaction_vdifACA_k18=24.7;
	% Local Parameter:   id =  Yvol, name = Yvol
	reaction_vdifACA_Yvol=59.0;

	reaction_vdifACA=reaction_vdifACA_k18/reaction_vdifACA_Yvol*(compartment_cytosol*x(15)-compartment_extracellular*x(20));

% Reaction: id = voutACA, name = Acetaldehyde flow	% Local Parameter:   id =  k0, name = k0
	reaction_voutACA_k0=0.048;

	reaction_voutACA=compartment_extracellular*reaction_voutACA_k0*x(20);

% Reaction: id = vlacto, name = Cyanide-Acetaldehyde flow	% Local Parameter:   id =  k20, name = k20
	reaction_vlacto_k20=0.00283828;

	reaction_vlacto=compartment_extracellular*reaction_vlacto_k20*x(20)*x(21);

% Reaction: id = vinCN, name = Cyanide flow	% Local Parameter:   id =  k0, name = k0
	reaction_vinCN_k0=0.048;

	reaction_vinCN=compartment_extracellular*reaction_vinCN_k0*(x(24)-x(21));

% Reaction: id = vstorage, name = Storage	% Local Parameter:   id =  k22, name = k22
	reaction_vstorage_k22=2.25932;

	reaction_vstorage=compartment_cytosol*reaction_vstorage_k22*x(3)*x(4);

% Reaction: id = vconsum, name = ATP consumption	% Local Parameter:   id =  k23, name = k23
	reaction_vconsum_k23=3.2076;

	reaction_vconsum=compartment_cytosol*reaction_vconsum_k23*x(3);

% Reaction: id = vAK, name = Adenylate kinase	% Local Parameter:   id =  k24f, name = k24f
	reaction_vAK_k24f=432.9;
	% Local Parameter:   id =  k24r, name = k24r
	reaction_vAK_k24r=133.333;

	reaction_vAK=compartment_cytosol*(reaction_vAK_k24f*x(22)*x(3)-reaction_vAK_k24r*x(5)^2);

	xdot=zeros(25,1);
	
% Species:   id = GlcX, name = Extracellular glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_extracellular))*(( 1.0 * reaction_vinGlc) + (-1.0 * reaction_vGlcTrans));
	
% Species:   id = Glc, name = Cytosolic glucose, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 59.0 * reaction_vGlcTrans) + (-1.0 * reaction_vHK));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*((-1.0 * reaction_vHK) + (-1.0 * reaction_vPFK) + ( 1.0 * reaction_vlpPEP) + ( 1.0 * reaction_vPK) + (-1.0 * reaction_vstorage) + (-1.0 * reaction_vconsum) + (-1.0 * reaction_vAK));
	
% Species:   id = G6P, name = Glucose-6-Phosphate, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_vHK) + (-1.0 * reaction_vPGI) + (-1.0 * reaction_vstorage));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_vHK) + ( 1.0 * reaction_vPFK) + (-1.0 * reaction_vlpPEP) + (-1.0 * reaction_vPK) + ( 1.0 * reaction_vstorage) + ( 1.0 * reaction_vconsum) + ( 2.0 * reaction_vAK));
	
% Species:   id = F6P, name = Fructose-6-Phosphate, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPGI) + (-1.0 * reaction_vPFK));
	
% Species:   id = FBP, name = Fructose 1,6-bisphosphate, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPFK) + (-1.0 * reaction_vALD));
	
% Species:   id = GAP, name = Glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_vALD) + ( 1.0 * reaction_vTIM) + (-1.0 * reaction_vGAPDH));
	
% Species:   id = DHAP, name = Dihydroxyacetone phosphate, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_vALD) + (-1.0 * reaction_vTIM) + (-1.0 * reaction_vlpGlyc));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*((-1.0 * reaction_vGAPDH) + ( 1.0 * reaction_vADH) + ( 1.0 * reaction_vlpGlyc));
	
% Species:   id = BPG, name = 1,3-Bisphosphoglycerate, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vlpPEP));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_vGAPDH) + (-1.0 * reaction_vADH) + (-1.0 * reaction_vlpGlyc));
	
% Species:   id = PEP, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_vlpPEP) + (-1.0 * reaction_vPK));
	
% Species:   id = Pyr, name = Pyruvate, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPK) + (-1.0 * reaction_vPDC));
	
% Species:   id = ACA, name = Acetaldehyde, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_vPDC) + (-1.0 * reaction_vADH) + (-59.0 * reaction_vdifACA));
	
% Species:   id = EtOH, name = EtOH, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_vADH) + (-59.0 * reaction_vdifEtOH));
	
% Species:   id = EtOHX, name = Extracellular ethanol, affected by kineticLaw
	xdot(17) = (1/(compartment_extracellular))*(( 1.0 * reaction_vdifEtOH) + (-1.0 * reaction_voutEtOH));
	
% Species:   id = Glyc, name = Glycerol, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*(( 1.0 * reaction_vlpGlyc) + (-59.0 * reaction_vdifGlyc));
	
% Species:   id = GlycX, name = Extracellular glycerol, affected by kineticLaw
	xdot(19) = (1/(compartment_extracellular))*(( 1.0 * reaction_vdifGlyc) + (-1.0 * reaction_voutGlyc));
	
% Species:   id = ACAX, name = Extracellular acetaldehyde, affected by kineticLaw
	xdot(20) = (1/(compartment_extracellular))*(( 1.0 * reaction_vdifACA) + (-1.0 * reaction_voutACA) + (-1.0 * reaction_vlacto));
	
% Species:   id = CNX, name = Extracellular cyanide, affected by kineticLaw
	xdot(21) = (1/(compartment_extracellular))*((-1.0 * reaction_vlacto) + ( 1.0 * reaction_vinCN));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol))*((-1.0 * reaction_vAK));
	
% Species:   id = P, name = P
%WARNING speciesID: P, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = CNX0, name = Mixed flow cyanide
%WARNING speciesID: CNX0, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = GlcX0, name = Mixed flow glucose
%WARNING speciesID: GlcX0, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
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


