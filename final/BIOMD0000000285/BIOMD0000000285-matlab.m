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
% Model name = Tang2010_PolyGlutamate
%
% is http://identifiers.org/biomodels.db/MODEL1002250000
% is http://identifiers.org/biomodels.db/BIOMD0000000285
% isDescribedBy http://identifiers.org/pubmed/20885783
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000105
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 1000.0;
	x0(2) = 1000.0;
	x0(3) = 19500.0;
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
	x0(18) = 300.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 10.0;
	x0(22) = 0.0;
	x0(23) = 100.0;
	x0(24) = 0.0;
	x0(25) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  kaggPolyQ, name = kaggPolyQ
	global_par_kaggPolyQ=5.0E-8;
% Parameter:   id =  kdisaggPolyQ1, name = kdisaggPolyQ1
	global_par_kdisaggPolyQ1=5.0E-7;
% Parameter:   id =  kdisaggPolyQ2, name = kdisaggPolyQ2
	global_par_kdisaggPolyQ2=4.0E-7;
% Parameter:   id =  kdisaggPolyQ3, name = kdisaggPolyQ3
	global_par_kdisaggPolyQ3=3.0E-7;
% Parameter:   id =  kdisaggPolyQ4, name = kdisaggPolyQ4
	global_par_kdisaggPolyQ4=2.0E-7;
% Parameter:   id =  kdisaggPolyQ5, name = kdisaggPolyQ5
	global_par_kdisaggPolyQ5=1.0E-7;
% Parameter:   id =  kseqPolyQ, name = kseqPolyQ
	global_par_kseqPolyQ=8.0E-7;
% Parameter:   id =  kinhprot, name = kinhprot
	global_par_kinhprot=5.0E-9;
% Parameter:   id =  kaggMisP, name = kaggMisP
	global_par_kaggMisP=1.0E-11;
% Parameter:   id =  kagg2MisP, name = kagg2MisP
	global_par_kagg2MisP=1.0E-10;
% Parameter:   id =  kdisaggMisP1, name = kdisaggMisP1
	global_par_kdisaggMisP1=5.0E-7;
% Parameter:   id =  kdisaggMisP2, name = kdisaggMisP2
	global_par_kdisaggMisP2=4.0E-7;
% Parameter:   id =  kdisaggMisP3, name = kdisaggMisP3
	global_par_kdisaggMisP3=3.0E-7;
% Parameter:   id =  kdisaggMisP4, name = kdisaggMisP4
	global_par_kdisaggMisP4=2.0E-7;
% Parameter:   id =  kdisaggMisP5, name = kdisaggMisP5
	global_par_kdisaggMisP5=1.0E-7;
% Parameter:   id =  ksynmRFPu, name = ksynmRFPu
	global_par_ksynmRFPu=0.138;
% Parameter:   id =  kbinmRFPu, name = kbinmRFPu
	global_par_kbinmRFPu=5.0E-7;
% Parameter:   id =  krelmRFPu, name = krelmRFPu
	global_par_krelmRFPu=1.0E-8;
% Parameter:   id =  kdegmRFPu, name = kdegmRFPu
	global_par_kdegmRFPu=0.005;
% Parameter:   id =  ksynPolyQ, name = ksynPolyQ
	global_par_ksynPolyQ=0.007;
% Parameter:   id =  kbinPolyQ, name = kbinPolyQ
	global_par_kbinPolyQ=5.0E-8;
% Parameter:   id =  krelPolyQ, name = krelPolyQ
	global_par_krelPolyQ=1.0E-9;
% Parameter:   id =  kdegPolyQ, name = kdegPolyQ
	global_par_kdegPolyQ=0.0025;
% Parameter:   id =  kgenROS, name = kgenROS
	global_par_kgenROS=0.0017;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=2.0E-4;
% Parameter:   id =  kgenROSAggP, name = kgenROSAggP
	global_par_kgenROSAggP=5.0E-6;
% Parameter:   id =  kgenROSSeqAggP, name = kgenROSSeqAggP
	global_par_kgenROSSeqAggP=1.0E-7;
% Parameter:   id =  kactp38, name = kactp38
	global_par_kactp38=5.0E-6;
% Parameter:   id =  kinactp38, name = kinactp38
	global_par_kinactp38=0.002;
% Parameter:   id =  kseqMisP, name = kseqMisP
	global_par_kseqMisP=1.0E-9;
% Parameter:   id =  kseqAggPProt, name = kseqAggPProt
	global_par_kseqAggPProt=5.0E-7;
% Parameter:   id =  kseqPolyQProt, name = kseqPolyQProt
	global_par_kseqPolyQProt=5.0E-7;
% Parameter:   id =  kseqMisPProt, name = kseqMisPProt
	global_par_kseqMisPProt=5.0E-7;
% Parameter:   id =  kseqmRFPuProt, name = kseqmRFPuProt
	global_par_kseqmRFPuProt=5.0E-7;
% Parameter:   id =  kseqmRFPu, name = kseqmRFPu
	global_par_kseqmRFPu=1.0E-10;
% Parameter:   id =  ksynNatP, name = ksynNatP
	global_par_ksynNatP=2.4;
% Parameter:   id =  kmisfold, name = kmisfold
	global_par_kmisfold=2.0E-6;
% Parameter:   id =  krefold, name = krefold
	global_par_krefold=8.0E-5;
% Parameter:   id =  kbinMisPProt, name = kbinMisPProt
	global_par_kbinMisPProt=5.0E-8;
% Parameter:   id =  krelMisPProt, name = krelMisPProt
	global_par_krelMisPProt=1.0E-8;
% Parameter:   id =  kdegMisP, name = kdegMisP
	global_par_kdegMisP=0.01;
% Parameter:   id =  kgenROSp38, name = kgenROSp38
	global_par_kgenROSp38=7.0E-4;
% Parameter:   id =  kp38act, name = kp38act
% Warning parameter kp38act is not constant, it should be controlled by a Rule and/or events
	global_par_kp38act=1.0;
% Parameter:   id =  kp38death, name = kp38death
	global_par_kp38death=9.0E-8;
% Parameter:   id =  kPIdeath, name = kPIdeath
	global_par_kPIdeath=2.5E-8;
% Parameter:   id =  kproteff, name = kproteff
% Warning parameter kproteff is not constant, it should be controlled by a Rule and/or events
	global_par_kproteff=1.0;
% Parameter:   id =  kalive, name = kalive
	global_par_kalive=1.0;
% Parameter:   id =  oligomers, name = oligomers
% assignmentRule: variable = oligomers
	global_par_oligomers=x(11)+x(12)+x(13)+x(14)+x(15);

% Reaction: id = polyQSynthesis
	reaction_polyQSynthesis=global_par_ksynPolyQ*const_species_Source*global_par_kalive;

% Reaction: id = polyqProteasomeBinding
	reaction_polyqProteasomeBinding=global_par_kbinPolyQ*x(1)*x(2)*global_par_kalive;

% Reaction: id = polyqProteasomeRelease
	reaction_polyqProteasomeRelease=global_par_krelPolyQ*x(20)*global_par_kalive;

% Reaction: id = PolyQDegradation
	reaction_PolyQDegradation=global_par_kdegPolyQ*x(20)*global_par_kalive*global_par_kproteff;

% Reaction: id = mRFPuSynthesis
	reaction_mRFPuSynthesis=global_par_ksynmRFPu*const_species_Source*global_par_kalive;

% Reaction: id = mRFPuProteasomeBinding
	reaction_mRFPuProteasomeBinding=global_par_kbinmRFPu*x(18)*x(2)*global_par_kalive;

% Reaction: id = mRFPuProteasomeRelease
	reaction_mRFPuProteasomeRelease=global_par_krelmRFPu*x(19)*global_par_kalive;

% Reaction: id = mRFPuDegradation
	reaction_mRFPuDegradation=global_par_kdegmRFPu*x(19)*global_par_kalive*global_par_kproteff;

% Reaction: id = PolyQAggregation1
	reaction_PolyQAggregation1=global_par_kaggPolyQ*x(1)*(x(1)-1)*0.5*x(21)^2/(10^2+x(21)^2)*global_par_kalive;

% Reaction: id = PolyQAggregation2
	reaction_PolyQAggregation2=global_par_kaggPolyQ*x(1)*x(11)*x(21)^2/(10^2+x(21)^2)*global_par_kalive;

% Reaction: id = PolyQAggregation3
	reaction_PolyQAggregation3=global_par_kaggPolyQ*x(1)*x(12)*x(21)^2/(10^2+x(21)^2)*global_par_kalive;

% Reaction: id = PolyQAggregation4
	reaction_PolyQAggregation4=global_par_kaggPolyQ*x(1)*x(13)*x(21)^2/(10^2+x(21)^2)*global_par_kalive;

% Reaction: id = PolyQAggregation5
	reaction_PolyQAggregation5=global_par_kaggPolyQ*x(1)*x(14)*x(21)^2/(10^2+x(21)^2)*global_par_kalive;

% Reaction: id = PolyQDisaggregation5
	reaction_PolyQDisaggregation5=global_par_kdisaggPolyQ5*x(15)*global_par_kalive;

% Reaction: id = PolyQDisaggregation4
	reaction_PolyQDisaggregation4=global_par_kdisaggPolyQ4*x(14)*global_par_kalive;

% Reaction: id = PolyQDisaggregation3
	reaction_PolyQDisaggregation3=global_par_kdisaggPolyQ3*x(13)*global_par_kalive;

% Reaction: id = PolyQDisaggregation2
	reaction_PolyQDisaggregation2=global_par_kdisaggPolyQ2*x(12)*global_par_kalive;

% Reaction: id = PolyQDisaggregation1
	reaction_PolyQDisaggregation1=global_par_kdisaggPolyQ1*x(11)*global_par_kalive;

% Reaction: id = PolyQInclusionFormation
	reaction_PolyQInclusionFormation=global_par_kaggPolyQ*x(1)*x(15)*global_par_kalive;

% Reaction: id = PolyQInclusionGrowth
	reaction_PolyQInclusionGrowth=global_par_kseqPolyQ*x(1)*x(16)*global_par_kalive;

% Reaction: id = ProteasomeInhibition1
	reaction_ProteasomeInhibition1=global_par_kinhprot*x(11)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibition2
	reaction_ProteasomeInhibition2=global_par_kinhprot*x(12)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibition3
	reaction_ProteasomeInhibition3=global_par_kinhprot*x(13)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibition4
	reaction_ProteasomeInhibition4=global_par_kinhprot*x(14)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibition5
	reaction_ProteasomeInhibition5=global_par_kinhprot*x(15)*x(2)*global_par_kalive;

% Reaction: id = mRFPuProteasomeSequestering
	reaction_mRFPuProteasomeSequestering=global_par_kseqmRFPuProt*x(19)*x(16)*global_par_kalive;

% Reaction: id = mRFPuSequestering
	reaction_mRFPuSequestering=global_par_kseqmRFPu*x(18)*x(16)*global_par_kalive;

% Reaction: id = ROSgenerationBasal
	reaction_ROSgenerationBasal=global_par_kgenROS*const_species_Source*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggPolyQ1
	reaction_ROSgenerationSmallAggPolyQ1=global_par_kgenROSAggP*x(11)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggPolyQ2
	reaction_ROSgenerationSmallAggPolyQ2=global_par_kgenROSAggP*x(12)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggPolyQ3
	reaction_ROSgenerationSmallAggPolyQ3=global_par_kgenROSAggP*x(13)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggPolyQ4
	reaction_ROSgenerationSmallAggPolyQ4=global_par_kgenROSAggP*x(14)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggPolyQ5
	reaction_ROSgenerationSmallAggPolyQ5=global_par_kgenROSAggP*x(15)*global_par_kalive;

% Reaction: id = ROSgenerationAggPProteasome
	reaction_ROSgenerationAggPProteasome=global_par_kgenROSAggP*x(17)*global_par_kalive;

% Reaction: id = ROSremoval
	reaction_ROSremoval=global_par_kremROS*x(21)*global_par_kalive;

% Reaction: id = p38activation
	reaction_p38activation=global_par_kactp38*x(21)*x(23)*global_par_kalive;

% Reaction: id = p38inactivation
	reaction_p38inactivation=global_par_kinactp38*x(22)*global_par_kalive;

% Reaction: id = AggP_ProteasomeSequestering
	reaction_AggP_ProteasomeSequestering=global_par_kseqAggPProt*x(17)*x(16)*global_par_kalive;

% Reaction: id = PolyQ_ProteasomeSequestering
	reaction_PolyQ_ProteasomeSequestering=global_par_kseqPolyQProt*x(20)*x(16)*global_par_kalive;

% Reaction: id = MisP_ProteasomeSequestering
	reaction_MisP_ProteasomeSequestering=global_par_kseqMisPProt*x(5)*x(16)*global_par_kalive;

% Reaction: id = ProteinSynthesis
	reaction_ProteinSynthesis=global_par_ksynNatP*const_species_Source*global_par_kalive;

% Reaction: id = Misfolding
	reaction_Misfolding=global_par_kmisfold*x(3)*x(21)*global_par_kalive;

% Reaction: id = Refolding
	reaction_Refolding=global_par_krefold*x(4)*global_par_kalive;

% Reaction: id = MisP_ProteasomeBinding
	reaction_MisP_ProteasomeBinding=global_par_kbinMisPProt*x(4)*x(2)*global_par_kalive;

% Reaction: id = MisP_ProteasomeRelease
	reaction_MisP_ProteasomeRelease=global_par_krelMisPProt*x(5)*global_par_kalive;

% Reaction: id = MisP_Degradation
	reaction_MisP_Degradation=global_par_kdegMisP*x(5)*global_par_kalive*global_par_kproteff;

% Reaction: id = MisP_Aggregation1
	reaction_MisP_Aggregation1=global_par_kaggMisP*x(4)*(x(4)-1)*0.5*global_par_kalive;

% Reaction: id = MisP_Aggregation2
	reaction_MisP_Aggregation2=global_par_kagg2MisP*x(4)*x(6)*global_par_kalive;

% Reaction: id = MisP_Aggregation3
	reaction_MisP_Aggregation3=global_par_kagg2MisP*x(4)*x(7)*global_par_kalive;

% Reaction: id = MisP_Aggregation4
	reaction_MisP_Aggregation4=global_par_kagg2MisP*x(4)*x(8)*global_par_kalive;

% Reaction: id = MisP_Aggregation5
	reaction_MisP_Aggregation5=global_par_kagg2MisP*x(4)*x(9)*global_par_kalive;

% Reaction: id = MisP_Disaggregation1
	reaction_MisP_Disaggregation1=global_par_kdisaggMisP1*x(6)*global_par_kalive;

% Reaction: id = MisP_Disaggregation2
	reaction_MisP_Disaggregation2=global_par_kdisaggMisP2*x(7)*global_par_kalive;

% Reaction: id = MisP_Disaggregation3
	reaction_MisP_Disaggregation3=global_par_kdisaggMisP3*x(8)*global_par_kalive;

% Reaction: id = MisP_Disaggregation4
	reaction_MisP_Disaggregation4=global_par_kdisaggMisP4*x(9)*global_par_kalive;

% Reaction: id = MisP_Disaggregation5
	reaction_MisP_Disaggregation5=global_par_kdisaggMisP5*x(10)*global_par_kalive;

% Reaction: id = MisP_InclusionFormation
	reaction_MisP_InclusionFormation=global_par_kagg2MisP*x(4)*x(10)*global_par_kalive;

% Reaction: id = MisPInclusionGrowth
	reaction_MisPInclusionGrowth=global_par_kseqMisP*x(4)*x(16)*global_par_kalive;

% Reaction: id = ProteasomeInhibitionAggP1
	reaction_ProteasomeInhibitionAggP1=global_par_kinhprot*x(6)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibitionAggP2
	reaction_ProteasomeInhibitionAggP2=global_par_kinhprot*x(7)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibitionAggP3
	reaction_ProteasomeInhibitionAggP3=global_par_kinhprot*x(8)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibitionAggP4
	reaction_ProteasomeInhibitionAggP4=global_par_kinhprot*x(9)*x(2)*global_par_kalive;

% Reaction: id = ProteasomeInhibitionAggP5
	reaction_ProteasomeInhibitionAggP5=global_par_kinhprot*x(10)*x(2)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP1
	reaction_ROSgenerationSmallAggP1=global_par_kgenROSAggP*x(6)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP2
	reaction_ROSgenerationSmallAggP2=global_par_kgenROSAggP*x(7)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP3
	reaction_ROSgenerationSmallAggP3=global_par_kgenROSAggP*x(8)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP4
	reaction_ROSgenerationSmallAggP4=global_par_kgenROSAggP*x(9)*global_par_kalive;

% Reaction: id = ROSgenerationSmallAggP5
	reaction_ROSgenerationSmallAggP5=global_par_kgenROSAggP*x(10)*global_par_kalive;

% Reaction: id = p38_P_ROS_Generation
	reaction_p38_P_ROS_Generation=global_par_kgenROSp38*x(22)*global_par_kp38act*global_par_kalive;

% Reaction: id = ROSgenerationSeqAggP
	reaction_ROSgenerationSeqAggP=global_par_kgenROSSeqAggP*x(16)*global_par_kalive;

% Reaction: id = P38DeathPathway
	reaction_P38DeathPathway=global_par_kp38death*x(22)*global_par_kalive*global_par_kp38act;

% Reaction: id = PIDeathPathway
	reaction_PIDeathPathway=global_par_kPIdeath*x(17)*global_par_kalive;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

%Event: id=PIcellDeath
	event_PIcellDeath=x(25) > 0;

	if(event_PIcellDeath) 
		global_par_kalive=0;
	end

%Event: id=p38cellDeath
	event_p38cellDeath=x(24) > 0;

	if(event_p38cellDeath) 
		global_par_kalive=0;
	end

	xdot=zeros(25,1);
	
% Species:   id = PolyQ, name = PolyQ, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_polyQSynthesis) + (-1.0 * reaction_polyqProteasomeBinding) + ( 1.0 * reaction_polyqProteasomeRelease) + (-2.0 * reaction_PolyQAggregation1) + (-1.0 * reaction_PolyQAggregation2) + (-1.0 * reaction_PolyQAggregation3) + (-1.0 * reaction_PolyQAggregation4) + (-1.0 * reaction_PolyQAggregation5) + ( 1.0 * reaction_PolyQDisaggregation5) + ( 1.0 * reaction_PolyQDisaggregation4) + ( 1.0 * reaction_PolyQDisaggregation3) + ( 1.0 * reaction_PolyQDisaggregation2) + ( 2.0 * reaction_PolyQDisaggregation1) + (-1.0 * reaction_PolyQInclusionFormation) + (-1.0 * reaction_PolyQInclusionGrowth);
	
% Species:   id = Proteasome, name = Proteasome, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_polyqProteasomeBinding) + ( 1.0 * reaction_polyqProteasomeRelease) + ( 1.0 * reaction_PolyQDegradation) + (-1.0 * reaction_mRFPuProteasomeBinding) + ( 1.0 * reaction_mRFPuProteasomeRelease) + ( 1.0 * reaction_mRFPuDegradation) + (-1.0 * reaction_ProteasomeInhibition1) + (-1.0 * reaction_ProteasomeInhibition2) + (-1.0 * reaction_ProteasomeInhibition3) + (-1.0 * reaction_ProteasomeInhibition4) + (-1.0 * reaction_ProteasomeInhibition5) + (-1.0 * reaction_MisP_ProteasomeBinding) + ( 1.0 * reaction_MisP_ProteasomeRelease) + ( 1.0 * reaction_MisP_Degradation) + (-1.0 * reaction_ProteasomeInhibitionAggP1) + (-1.0 * reaction_ProteasomeInhibitionAggP2) + (-1.0 * reaction_ProteasomeInhibitionAggP3) + (-1.0 * reaction_ProteasomeInhibitionAggP4) + (-1.0 * reaction_ProteasomeInhibitionAggP5);
	
% Species:   id = NatP, name = NatP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_ProteinSynthesis) + (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Refolding);
	
% Species:   id = MisP, name = MisP, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Misfolding) + (-1.0 * reaction_Refolding) + (-1.0 * reaction_MisP_ProteasomeBinding) + ( 1.0 * reaction_MisP_ProteasomeRelease) + (-2.0 * reaction_MisP_Aggregation1) + (-1.0 * reaction_MisP_Aggregation2) + (-1.0 * reaction_MisP_Aggregation3) + (-1.0 * reaction_MisP_Aggregation4) + (-1.0 * reaction_MisP_Aggregation5) + ( 2.0 * reaction_MisP_Disaggregation1) + ( 1.0 * reaction_MisP_Disaggregation2) + ( 1.0 * reaction_MisP_Disaggregation3) + ( 1.0 * reaction_MisP_Disaggregation4) + ( 1.0 * reaction_MisP_Disaggregation5) + (-1.0 * reaction_MisP_InclusionFormation) + (-1.0 * reaction_MisPInclusionGrowth);
	
% Species:   id = MisP_Proteasome, name = MisP_Proteasome, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_MisP_ProteasomeSequestering) + ( 1.0 * reaction_MisP_ProteasomeBinding) + (-1.0 * reaction_MisP_ProteasomeRelease) + (-1.0 * reaction_MisP_Degradation);
	
% Species:   id = AggP1, name = AggP1, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_MisP_Aggregation1) + (-1.0 * reaction_MisP_Aggregation2) + (-1.0 * reaction_MisP_Disaggregation1) + ( 1.0 * reaction_MisP_Disaggregation2) + (-1.0 * reaction_ProteasomeInhibitionAggP1) + (-1.0 * reaction_ROSgenerationSmallAggP1) + ( 1.0 * reaction_ROSgenerationSmallAggP1);
	
% Species:   id = AggP2, name = AggP2, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_MisP_Aggregation2) + (-1.0 * reaction_MisP_Aggregation3) + (-1.0 * reaction_MisP_Disaggregation2) + ( 1.0 * reaction_MisP_Disaggregation3) + (-1.0 * reaction_ProteasomeInhibitionAggP2) + (-1.0 * reaction_ROSgenerationSmallAggP2) + ( 1.0 * reaction_ROSgenerationSmallAggP2);
	
% Species:   id = AggP3, name = AggP3, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_MisP_Aggregation3) + (-1.0 * reaction_MisP_Aggregation4) + (-1.0 * reaction_MisP_Disaggregation3) + ( 1.0 * reaction_MisP_Disaggregation4) + (-1.0 * reaction_ProteasomeInhibitionAggP3) + (-1.0 * reaction_ROSgenerationSmallAggP3) + ( 1.0 * reaction_ROSgenerationSmallAggP3);
	
% Species:   id = AggP4, name = AggP4, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_MisP_Aggregation4) + (-1.0 * reaction_MisP_Aggregation5) + (-1.0 * reaction_MisP_Disaggregation4) + ( 1.0 * reaction_MisP_Disaggregation5) + (-1.0 * reaction_ProteasomeInhibitionAggP4) + (-1.0 * reaction_ROSgenerationSmallAggP4) + ( 1.0 * reaction_ROSgenerationSmallAggP4);
	
% Species:   id = AggP5, name = AggP5, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_MisP_Aggregation5) + (-1.0 * reaction_MisP_Disaggregation5) + (-1.0 * reaction_MisP_InclusionFormation) + (-1.0 * reaction_ProteasomeInhibitionAggP5) + (-1.0 * reaction_ROSgenerationSmallAggP5) + ( 1.0 * reaction_ROSgenerationSmallAggP5);
	
% Species:   id = AggPolyQ1, name = AggPolyQ1, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_PolyQAggregation1) + (-1.0 * reaction_PolyQAggregation2) + ( 1.0 * reaction_PolyQDisaggregation2) + (-1.0 * reaction_PolyQDisaggregation1) + (-1.0 * reaction_ProteasomeInhibition1) + (-1.0 * reaction_ROSgenerationSmallAggPolyQ1) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ1);
	
% Species:   id = AggPolyQ2, name = AggPolyQ2, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_PolyQAggregation2) + (-1.0 * reaction_PolyQAggregation3) + ( 1.0 * reaction_PolyQDisaggregation3) + (-1.0 * reaction_PolyQDisaggregation2) + (-1.0 * reaction_ProteasomeInhibition2) + (-1.0 * reaction_ROSgenerationSmallAggPolyQ2) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ2);
	
% Species:   id = AggPolyQ3, name = AggPolyQ3, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_PolyQAggregation3) + (-1.0 * reaction_PolyQAggregation4) + ( 1.0 * reaction_PolyQDisaggregation4) + (-1.0 * reaction_PolyQDisaggregation3) + (-1.0 * reaction_ProteasomeInhibition3) + (-1.0 * reaction_ROSgenerationSmallAggPolyQ3) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ3);
	
% Species:   id = AggPolyQ4, name = AggPolyQ4, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_PolyQAggregation4) + (-1.0 * reaction_PolyQAggregation5) + ( 1.0 * reaction_PolyQDisaggregation5) + (-1.0 * reaction_PolyQDisaggregation4) + (-1.0 * reaction_ProteasomeInhibition4) + (-1.0 * reaction_ROSgenerationSmallAggPolyQ4) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ4);
	
% Species:   id = AggPolyQ5, name = AggPolyQ5, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_PolyQAggregation5) + (-1.0 * reaction_PolyQDisaggregation5) + (-1.0 * reaction_PolyQInclusionFormation) + (-1.0 * reaction_ProteasomeInhibition5) + (-1.0 * reaction_ROSgenerationSmallAggPolyQ5) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ5);
	
% Species:   id = SeqAggP, name = SeqAggP, affected by kineticLaw
	xdot(16) = ( 7.0 * reaction_PolyQInclusionFormation) + (-1.0 * reaction_PolyQInclusionGrowth) + ( 2.0 * reaction_PolyQInclusionGrowth) + (-1.0 * reaction_mRFPuProteasomeSequestering) + ( 2.0 * reaction_mRFPuProteasomeSequestering) + (-1.0 * reaction_mRFPuSequestering) + ( 2.0 * reaction_mRFPuSequestering) + (-1.0 * reaction_AggP_ProteasomeSequestering) + ( 2.0 * reaction_AggP_ProteasomeSequestering) + (-1.0 * reaction_PolyQ_ProteasomeSequestering) + ( 2.0 * reaction_PolyQ_ProteasomeSequestering) + (-1.0 * reaction_MisP_ProteasomeSequestering) + ( 2.0 * reaction_MisP_ProteasomeSequestering) + ( 7.0 * reaction_MisP_InclusionFormation) + (-1.0 * reaction_MisPInclusionGrowth) + ( 2.0 * reaction_MisPInclusionGrowth) + (-1.0 * reaction_ROSgenerationSeqAggP) + ( 1.0 * reaction_ROSgenerationSeqAggP);
	
% Species:   id = AggP_Proteasome, name = AggP_Proteasome, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_ProteasomeInhibition1) + ( 1.0 * reaction_ProteasomeInhibition2) + ( 1.0 * reaction_ProteasomeInhibition3) + ( 1.0 * reaction_ProteasomeInhibition4) + ( 1.0 * reaction_ProteasomeInhibition5) + (-1.0 * reaction_ROSgenerationAggPProteasome) + ( 1.0 * reaction_ROSgenerationAggPProteasome) + (-1.0 * reaction_AggP_ProteasomeSequestering) + ( 1.0 * reaction_ProteasomeInhibitionAggP1) + ( 1.0 * reaction_ProteasomeInhibitionAggP2) + ( 1.0 * reaction_ProteasomeInhibitionAggP3) + ( 1.0 * reaction_ProteasomeInhibitionAggP4) + ( 1.0 * reaction_ProteasomeInhibitionAggP5) + (-1.0 * reaction_PIDeathPathway) + ( 1.0 * reaction_PIDeathPathway);
	
% Species:   id = mRFPu, name = mRFPu, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_mRFPuSynthesis) + (-1.0 * reaction_mRFPuProteasomeBinding) + ( 1.0 * reaction_mRFPuProteasomeRelease) + (-1.0 * reaction_mRFPuSequestering);
	
% Species:   id = mRFPu_Proteasome, name = mRFPu_Proteasome, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_mRFPuProteasomeBinding) + (-1.0 * reaction_mRFPuProteasomeRelease) + (-1.0 * reaction_mRFPuDegradation) + (-1.0 * reaction_mRFPuProteasomeSequestering);
	
% Species:   id = PolyQ_Proteasome, name = PolyQ_Proteasome, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_polyqProteasomeBinding) + (-1.0 * reaction_polyqProteasomeRelease) + (-1.0 * reaction_PolyQDegradation) + (-1.0 * reaction_PolyQ_ProteasomeSequestering);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_PolyQAggregation1) + ( 1.0 * reaction_PolyQAggregation1) + (-1.0 * reaction_PolyQAggregation2) + ( 1.0 * reaction_PolyQAggregation2) + (-1.0 * reaction_PolyQAggregation3) + ( 1.0 * reaction_PolyQAggregation3) + (-1.0 * reaction_PolyQAggregation4) + ( 1.0 * reaction_PolyQAggregation4) + (-1.0 * reaction_PolyQAggregation5) + ( 1.0 * reaction_PolyQAggregation5) + ( 1.0 * reaction_ROSgenerationBasal) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ1) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ2) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ3) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ4) + ( 1.0 * reaction_ROSgenerationSmallAggPolyQ5) + ( 1.0 * reaction_ROSgenerationAggPProteasome) + (-1.0 * reaction_ROSremoval) + (-1.0 * reaction_p38activation) + ( 1.0 * reaction_p38activation) + (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Misfolding) + ( 1.0 * reaction_ROSgenerationSmallAggP1) + ( 1.0 * reaction_ROSgenerationSmallAggP2) + ( 1.0 * reaction_ROSgenerationSmallAggP3) + ( 1.0 * reaction_ROSgenerationSmallAggP4) + ( 1.0 * reaction_ROSgenerationSmallAggP5) + ( 1.0 * reaction_p38_P_ROS_Generation) + ( 1.0 * reaction_ROSgenerationSeqAggP);
	
% Species:   id = p38_P, name = p38_P, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_p38activation) + (-1.0 * reaction_p38inactivation) + (-1.0 * reaction_p38_P_ROS_Generation) + ( 1.0 * reaction_p38_P_ROS_Generation) + (-1.0 * reaction_P38DeathPathway) + ( 1.0 * reaction_P38DeathPathway);
	
% Species:   id = p38, name = p38, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_p38activation) + ( 1.0 * reaction_p38inactivation);
	
% Species:   id = p38death, name = p38death, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_P38DeathPathway);
	
% Species:   id = PIdeath, name = PIdeath, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_PIDeathPathway);
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


