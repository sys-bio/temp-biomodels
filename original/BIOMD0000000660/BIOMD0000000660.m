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
% Model name = Barr2017 - Dynamics of p21 in hTert-RPE1 cells
%
% is http://identifiers.org/biomodels.db/MODEL1607210001
% is http://identifiers.org/biomodels.db/BIOMD0000000660
% isDescribedBy http://identifiers.org/pubmed/28317845
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 0.72;
	x0(5) = 0.4;
	x0(6) = 0.0;
	x0(7) = 0.5;
	x0(8) = 1.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.72;
	x0(17) = 0.4;
	x0(18) = 0.5;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  kSyMrna, name = kSyMrna
	global_par_kSyMrna=0.02;
% Parameter:   id =  kSyMrnaP53, name = kSyMrnaP53
	global_par_kSyMrnaP53=0.08;
% Parameter:   id =  kDeMrna, name = kDeMrna
	global_par_kDeMrna=0.02;
% Parameter:   id =  kSyP21, name = kSyP21
	global_par_kSyP21=0.0018;
% Parameter:   id =  kDeP21, name = kDeP21
	global_par_kDeP21=0.0025;
% Parameter:   id =  kDeP21Cy, name = kDeP21Cy
	global_par_kDeP21Cy=0.007;
% Parameter:   id =  kDeP21aRc, name = kDeP21aRc
	global_par_kDeP21aRc=1.0;
% Parameter:   id =  kSyCy, name = kSyCy
	global_par_kSyCy=0.005;
% Parameter:   id =  kAsCyP21, name = kAsCyP21
	global_par_kAsCyP21=1.0;
% Parameter:   id =  kDsCyP21, name = kDsCyP21
	global_par_kDsCyP21=0.05;
% Parameter:   id =  kDeCy, name = kDeCy
	global_par_kDeCy=0.002;
% Parameter:   id =  kDeCyCy, name = kDeCyCy
	global_par_kDeCyCy=2.0E-4;
% Parameter:   id =  kImPc, name = kImPc
	global_par_kImPc=0.003;
% Parameter:   id =  kExPc, name = kExPc
	global_par_kExPc=0.006;
% Parameter:   id =  kPhRc, name = kPhRc
	global_par_kPhRc=0.1;
% Parameter:   id =  kDpRc, name = kDpRc
	global_par_kDpRc=0.01;
% Parameter:   id =  jCy, name = jCy
	global_par_jCy=1.8;
% Parameter:   id =  n, name = n
	global_par_n=6.0;
% Parameter:   id =  kAsRcPc, name = kAsRcPc
	global_par_kAsRcPc=0.01;
% Parameter:   id =  kDsRcPc, name = kDsRcPc
	global_par_kDsRcPc=0.001;
% Parameter:   id =  kAsPcP21, name = kAsPcP21
	global_par_kAsPcP21=100.0;
% Parameter:   id =  kDsPcP21, name = kDsPcP21
	global_par_kDsPcP21=0.01;
% Parameter:   id =  kSyDna, name = kSyDna
	global_par_kSyDna=0.007;
% Parameter:   id =  kSyP53, name = kSyP53
	global_par_kSyP53=0.05;
% Parameter:   id =  kDeP53, name = kDeP53
	global_par_kDeP53=0.05;
% Parameter:   id =  jP53, name = jP53
	global_par_jP53=0.01;
% Parameter:   id =  kGeDam, name = kGeDam
	global_par_kGeDam=0.001;
% Parameter:   id =  kGeDamArc, name = kGeDamArc
	global_par_kGeDamArc=0.005;
% Parameter:   id =  kReDam, name = kReDam
	global_par_kReDam=0.001;
% Parameter:   id =  kReDamP53, name = kReDamP53
	global_par_kReDamP53=0.005;
% Parameter:   id =  jDam, name = jDam
	global_par_jDam=0.5;
% assignmentRule: variable = tP21
	x(16)=x(4)+x(6)+x(15)+x(11);
% assignmentRule: variable = tCy
	x(17)=x(5)+x(6);
% assignmentRule: variable = tPcna
	x(18)=x(7)+x(15)+x(10)+x(11);

% Reaction: id = Synthesis_of_p21_mRNAs_by_p53, name = Synthesis of p21 mRNAs by p53
	reaction_Synthesis_of_p21_mRNAs_by_p53=compartment_Cell*global_par_kSyMrnaP53*x(14);

% Reaction: id = Degradation_of_p21_mRNAs, name = Degradation of p21 mRNAs
	reaction_Degradation_of_p21_mRNAs=compartment_Cell*global_par_kDeMrna*x(1);

% Reaction: id = Degradation_of_cyclin_mRNAs, name = Degradation of cyclin mRNAs
	reaction_Degradation_of_cyclin_mRNAs=compartment_Cell*global_par_kDeMrna*x(2);

% Reaction: id = Degradation_of_p53_mRNAs, name = Degradation of p53 mRNAs
	reaction_Degradation_of_p53_mRNAs=compartment_Cell*global_par_kDeMrna*x(3);

% Reaction: id = Synthesis_of_p21, name = Synthesis of p21
	reaction_Synthesis_of_p21=compartment_Cell*global_par_kSyP21*x(1);

% Reaction: id = Degradation_of_p21, name = Degradation of p21
	reaction_Degradation_of_p21=compartment_Cell*rDeP21_1(const_species_Cdt2, x(5), x(4), const_species_Skp2, x(10), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Synthesis_of_cyclins, name = Synthesis of cyclins
	reaction_Synthesis_of_cyclins=compartment_Cell*global_par_kSyCy*x(2);

% Reaction: id = Degradation_of_cyclins, name = Degradation of cyclins
	reaction_Degradation_of_cyclins=compartment_Cell*rDeCy_1(x(5), const_species_Skp2, global_par_kDeCy, global_par_kDeCyCy);

% Reaction: id = Association_and_dissociation_of_CDK2_Cyclin_and_p21, name = Association and dissociation of CDK2:Cyclin and p21
	reaction_Association_and_dissociation_of_CDK2_Cyclin_and_p21=compartment_Cell*(global_par_kAsCyP21*x(5)*x(4)-global_par_kDsCyP21*x(6));

% Reaction: id = Degradation_of_cyclin_in_CDK2_Cyclin_p21_complexes, name = Degradation of cyclin in CDK2:Cyclin:p21 complexes
	reaction_Degradation_of_cyclin_in_CDK2_Cyclin_p21_complexes=compartment_Cell*rDeCy_2(x(5), x(6), const_species_Skp2, global_par_kDeCy, global_par_kDeCyCy);

% Reaction: id = Degradation_of_p21_in_CDK2_Cyclin_p21_complexes, name = Degradation of p21 in CDK2:Cyclin:p21 complexes
	reaction_Degradation_of_p21_in_CDK2_Cyclin_p21_complexes=compartment_Cell*rDeP21_2(const_species_Cdt2, x(5), x(6), const_species_Skp2, x(10), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Export_of_active_PCNA, name = Export of active PCNA
	reaction_Export_of_active_PCNA=compartment_Cell*global_par_kExPc*x(7);

% Reaction: id = Export_of_inactive_PCNA, name = Export of inactive PCNA
	reaction_Export_of_inactive_PCNA=compartment_Cell*global_par_kExPc*x(15);

% Reaction: id = Association_and_dissociation_of_PCNA_and_p21, name = Association and dissociation of PCNA and p21
	reaction_Association_and_dissociation_of_PCNA_and_p21=compartment_Cell*(global_par_kAsPcP21*x(7)*x(4)-global_par_kDsPcP21*x(15));

% Reaction: id = Degradation_of_p21_in_PCNA_p21_complexes, name = Degradation of p21 in PCNA:p21 complexes
	reaction_Degradation_of_p21_in_PCNA_p21_complexes=compartment_Cell*rDeP21_3(const_species_Cdt2, x(5), const_species_Skp2, x(10), x(15), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Phosphorylation_priming_of_replication_complexes, name = Phosphorylation/priming of replication complexes
	reaction_Phosphorylation_priming_of_replication_complexes=compartment_Cell*rPhRc_1(x(5), x(8), global_par_jCy, global_par_kPhRc, global_par_n);

% Reaction: id = Dephosphorylation_of_replication_complexes, name = Dephosphorylation of replication complexes
	reaction_Dephosphorylation_of_replication_complexes=compartment_Cell*global_par_kDpRc*x(9);

% Reaction: id = Association_and_dissociation_of_active_PCNA_and_replication_complexes, name = Association and dissociation of active PCNA and replication complexes
	reaction_Association_and_dissociation_of_active_PCNA_and_replication_complexes=compartment_Cell*(global_par_kAsRcPc*x(7)*x(9)-global_par_kDsRcPc*x(10));

% Reaction: id = Association_and_dissociation_of_inactive_PCNA_and_replication_complexes, name = Association and dissociation of inactive PCNA and replication complexes
	reaction_Association_and_dissociation_of_inactive_PCNA_and_replication_complexes=compartment_Cell*(global_par_kAsRcPc*x(15)*x(9)-global_par_kDsRcPc*x(11));

% Reaction: id = Association_and_dissociation_of_p21_and_replication_complexes, name = Association and dissociation of p21 and replication complexes
	reaction_Association_and_dissociation_of_p21_and_replication_complexes=compartment_Cell*(global_par_kAsPcP21*x(10)*x(4)-global_par_kDsPcP21*x(11));

% Reaction: id = Degradation_of_p21_in_inactive_replication_complexes, name = Degradation of p21 in inactive replication complexes
	reaction_Degradation_of_p21_in_inactive_replication_complexes=compartment_Cell*rDeP21_4(const_species_Cdt2, x(5), const_species_Skp2, x(10), x(11), global_par_kDeP21, global_par_kDeP21Cy, global_par_kDeP21aRc);

% Reaction: id = Synthesis_of_DNA, name = Synthesis of DNA
	reaction_Synthesis_of_DNA=compartment_Cell*global_par_kSyDna*x(10);

% Reaction: id = Dissassembly_of_RC, name = Dissassembly of RC
	reaction_Dissassembly_of_RC=compartment_Cell*rDsRc(x(12), x(8));

% Reaction: id = Dissassembly_of_pRC, name = Dissassembly of pRC
	reaction_Dissassembly_of_pRC=compartment_Cell*rDsRc_1(x(12), x(9));

% Reaction: id = Dissassembly_of_aRC, name = Dissassembly of aRC
	reaction_Dissassembly_of_aRC=compartment_Cell*rDsRc_2(x(12), x(10));

% Reaction: id = Dissassembly_of_iRC, name = Dissassembly of iRC
	reaction_Dissassembly_of_iRC=compartment_Cell*rDsRc_3(x(12), x(11));

% Reaction: id = Synthesis_of_p53, name = Synthesis of p53
	reaction_Synthesis_of_p53=compartment_Cell*global_par_kSyP53*x(3);

% Reaction: id = Degradation_of_p53, name = Degradation of p53
	reaction_Degradation_of_p53=compartment_Cell*rDeP53_1(x(13), x(14), global_par_jP53, global_par_kDeP53);

% Reaction: id = Induction_of_DNA_damage_by_replication, name = Induction of DNA damage by replication
	reaction_Induction_of_DNA_damage_by_replication=compartment_Cell*global_par_kGeDamArc*x(10);

% Reaction: id = Repair_of_DNA_damage, name = Repair of DNA damage
	reaction_Repair_of_DNA_damage=compartment_Cell*rReDam_1(x(13), x(14), global_par_jDam, global_par_kReDam, global_par_kReDamP53);

% Species:   id = Skp2, name = Skp2, constant	const_species_Skp2=1.0;

% Species:   id = Cdt2, name = Cdt2, constant	const_species_Cdt2=1.0;

	xdot=zeros(18,1);
	
% Species:   id = MrnaP21, name = MrnaP21, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_p21_mRNAs) + ( 1.0 * reaction_Synthesis_of_p21_mRNAs_by_p53) + (-1.0 * reaction_Degradation_of_p21_mRNAs) + (-1.0 * reaction_Synthesis_of_p21) + ( 1.0 * reaction_Synthesis_of_p21));
	
% Species:   id = MrnaCy, name = MrnaCy, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_cyclin_mRNAs) + (-1.0 * reaction_Degradation_of_cyclin_mRNAs) + (-1.0 * reaction_Synthesis_of_cyclins) + ( 1.0 * reaction_Synthesis_of_cyclins));
	
% Species:   id = MrnaP53, name = MrnaP53, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_p53_mRNAs) + (-1.0 * reaction_Degradation_of_p53_mRNAs) + (-1.0 * reaction_Synthesis_of_p53) + ( 1.0 * reaction_Synthesis_of_p53));
	
% Species:   id = P21, name = P21, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_p21) + (-1.0 * reaction_Degradation_of_p21) + (-1.0 * reaction_Association_and_dissociation_of_CDK2_Cyclin_and_p21) + ( 1.0 * reaction_Degradation_of_cyclin_in_CDK2_Cyclin_p21_complexes) + ( 1.0 * reaction_Export_of_inactive_PCNA) + (-1.0 * reaction_Association_and_dissociation_of_PCNA_and_p21) + (-1.0 * reaction_Association_and_dissociation_of_p21_and_replication_complexes));
	
% Species:   id = Cy, name = Cy, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_cyclins) + (-1.0 * reaction_Degradation_of_cyclins) + (-1.0 * reaction_Association_and_dissociation_of_CDK2_Cyclin_and_p21) + ( 1.0 * reaction_Degradation_of_p21_in_CDK2_Cyclin_p21_complexes));
	
% Species:   id = CyP21, name = CyP21, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_and_dissociation_of_CDK2_Cyclin_and_p21) + (-1.0 * reaction_Degradation_of_cyclin_in_CDK2_Cyclin_p21_complexes) + (-1.0 * reaction_Degradation_of_p21_in_CDK2_Cyclin_p21_complexes));
	
% Species:   id = aPcna, name = aPcna, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_Import_of_active_PCNA) + (-1.0 * reaction_Export_of_active_PCNA) + (-1.0 * reaction_Association_and_dissociation_of_PCNA_and_p21) + ( 1.0 * reaction_Degradation_of_p21_in_PCNA_p21_complexes) + (-1.0 * reaction_Association_and_dissociation_of_active_PCNA_and_replication_complexes) + ( 1.0 * reaction_Dissassembly_of_aRC));
	
% Species:   id = Rc, name = Rc, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*((-1.0 * reaction_Phosphorylation_priming_of_replication_complexes) + ( 1.0 * reaction_Dephosphorylation_of_replication_complexes) + (-1.0 * reaction_Dissassembly_of_RC));
	
% Species:   id = pRc, name = pRc, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_Phosphorylation_priming_of_replication_complexes) + (-1.0 * reaction_Dephosphorylation_of_replication_complexes) + (-1.0 * reaction_Association_and_dissociation_of_active_PCNA_and_replication_complexes) + (-1.0 * reaction_Association_and_dissociation_of_inactive_PCNA_and_replication_complexes) + (-1.0 * reaction_Dissassembly_of_pRC));
	
% Species:   id = aRc, name = aRc, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_and_dissociation_of_active_PCNA_and_replication_complexes) + (-1.0 * reaction_Association_and_dissociation_of_p21_and_replication_complexes) + ( 1.0 * reaction_Degradation_of_p21_in_inactive_replication_complexes) + (-1.0 * reaction_Synthesis_of_DNA) + ( 1.0 * reaction_Synthesis_of_DNA) + (-1.0 * reaction_Dissassembly_of_aRC) + (-1.0 * reaction_Induction_of_DNA_damage_by_replication) + ( 1.0 * reaction_Induction_of_DNA_damage_by_replication));
	
% Species:   id = iRc, name = iRc, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell))*(( 1.0 * reaction_Association_and_dissociation_of_inactive_PCNA_and_replication_complexes) + ( 1.0 * reaction_Association_and_dissociation_of_p21_and_replication_complexes) + (-1.0 * reaction_Degradation_of_p21_in_inactive_replication_complexes) + (-1.0 * reaction_Dissassembly_of_iRC));
	
% Species:   id = Dna, name = Dna, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell))*(( 1.0 * reaction_Synthesis_of_DNA));
	
% Species:   id = Dam, name = Dam, affected by kineticLaw
	xdot(13) = (1/(compartment_Cell))*(( 1.0 * reaction_Induction_of_DNA_damage) + ( 1.0 * reaction_Induction_of_DNA_damage_by_replication) + (-1.0 * reaction_Repair_of_DNA_damage));
	
% Species:   id = P53, name = P53, affected by kineticLaw
	xdot(14) = (1/(compartment_Cell))*((-1.0 * reaction_Synthesis_of_p21_mRNAs_by_p53) + ( 1.0 * reaction_Synthesis_of_p21_mRNAs_by_p53) + ( 1.0 * reaction_Synthesis_of_p53) + (-1.0 * reaction_Degradation_of_p53));
	
% Species:   id = iPcna, name = iPcna, affected by kineticLaw
	xdot(15) = (1/(compartment_Cell))*((-1.0 * reaction_Export_of_inactive_PCNA) + ( 1.0 * reaction_Association_and_dissociation_of_PCNA_and_p21) + (-1.0 * reaction_Degradation_of_p21_in_PCNA_p21_complexes) + (-1.0 * reaction_Association_and_dissociation_of_inactive_PCNA_and_replication_complexes) + ( 1.0 * reaction_Dissassembly_of_iRC));
	
% Species:   id = tP21, name = tP21, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = tCy, name = tCy, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = tPcna, name = tPcna, involved in a rule 	xdot(18) = x(18);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=rDsRc(Dna,Rc,piecewise(0,piecewise(1*Rc), z=(Dna < 1,Dna > 1,0.5*Rc)));end

function z=rDeP21_1(Cdt2,Cy,P21,Skp2,aRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*Cy+kDeP21aRc*Cdt2*aRc)*P21);end

function z=rDeCy_1(Cy,Skp2,kDeCy,kDeCyCy), z=((kDeCy+kDeCyCy*Skp2*Cy)*Cy);end

function z=rDeCy_2(Cy,CyP21,Skp2,kDeCy,kDeCyCy), z=((kDeCy+kDeCyCy*Skp2*Cy)*CyP21);end

function z=rDeP21_2(Cdt2,Cy,CyP21,Skp2,aRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*Cy+kDeP21aRc*Cdt2*aRc)*CyP21);end

function z=rDeP21_3(Cdt2,Cy,Skp2,aRc,iPcna,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*Cy+kDeP21aRc*Cdt2*aRc)*iPcna);end

function z=rPhRc_1(Cy,Rc,jCy,kPhRc,n), z=(kPhRc*Cy^n/(jCy^n+Cy^n)*Rc);end

function z=rDeP21_4(Cdt2,Cy,Skp2,aRc,iRc,kDeP21,kDeP21Cy,kDeP21aRc), z=((kDeP21+kDeP21Cy*Skp2*Cy+kDeP21aRc*Cdt2*aRc)*iRc);end

function z=rDsRc_1(Dna,pRc,piecewise(0,piecewise(1*pRc), z=(Dna < 1,Dna > 1,0.5*pRc)));end

function z=rDsRc_2(Dna,aRc,piecewise(0,piecewise(1*aRc), z=(Dna < 1,Dna > 1,0.5*aRc)));end

function z=rDsRc_3(Dna,iRc,piecewise(0,piecewise(1*iRc), z=(Dna < 1,Dna > 1,0.5*iRc)));end

function z=rDeP53_1(Dam,P53,jP53,kDeP53), z=(kDeP53/(jP53+Dam)*P53);end

function z=rReDam_1(Dam,P53,jDam,kReDam,kReDamP53), z=((kReDam+kReDamP53*P53/(jDam+Dam))*Dam);end

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


