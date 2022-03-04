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
% Model name = Proctor2007 - Age related decline of proteolysis, ubiquitin-proteome system
%
% is http://identifiers.org/biomodels.db/MODEL6540028317
% is http://identifiers.org/biomodels.db/BIOMD0000000105
% isDescribedBy http://identifiers.org/pubmed/17408507
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000091
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 500.0;
	x0(2) = 0.0;
	x0(3) = 500.0;
	x0(4) = 100.0;
	x0(5) = 100.0;
	x0(6) = 100.0;
	x0(7) = 200.0;
	x0(8) = 100.0;
	x0(9) = 10.0;
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
	x0(34) = 0.0;
	x0(35) = 0.0;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.0E-6;
% Parameter:   id =  k3, name = k3
	global_par_k3=4.0E-6;
% Parameter:   id =  k61, name = k61
	global_par_k61=1.7E-5;
% Parameter:   id =  k61r, name = k61r
	global_par_k61r=2.0E-4;
% Parameter:   id =  k62, name = k62
	global_par_k62=2.0E-4;
% Parameter:   id =  k63, name = k63
	global_par_k63=0.001;
% Parameter:   id =  k64, name = k64
	global_par_k64=0.001;
% Parameter:   id =  k65, name = k65
	global_par_k65=0.01;
% Parameter:   id =  k66, name = k66
	global_par_k66=1.0E-5;
% Parameter:   id =  k67, name = k67
	global_par_k67=1.0E-5;
% Parameter:   id =  k68, name = k68
	global_par_k68=1.0E-5;
% Parameter:   id =  k69, name = k69
	global_par_k69=0.0;
% Parameter:   id =  k71, name = k71
	global_par_k71=1.0E-8;
% Parameter:   id =  k72, name = k72
	global_par_k72=1.0E-8;
% Parameter:   id =  k73, name = k73
	global_par_k73=0.001;
% Parameter:   id =  k74, name = k74
	global_par_k74=1.0E-5;

% Reaction: id = ProteinSynthesis
	reaction_ProteinSynthesis=global_par_k1*const_species_Source;

% Reaction: id = Misfolding
	reaction_Misfolding=global_par_k2*x(1)*x(9);

% Reaction: id = Refolding
	reaction_Refolding=global_par_k3*x(2);

% Reaction: id = MisPE3Binding
	reaction_MisPE3Binding=global_par_k61*x(2)*x(6);

% Reaction: id = MisPE3Release
	reaction_MisPE3Release=global_par_k61r*x(12);

% Reaction: id = E1UbBinding
	reaction_E1UbBinding=global_par_k62*x(4)*x(3)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = E2UbBinding
	reaction_E2UbBinding=global_par_k63*x(5)*x(10);

% Reaction: id = Monoubiquitination
	reaction_Monoubiquitination=global_par_k64*x(11)*x(12);

% Reaction: id = Polyubiquitination1
	reaction_Polyubiquitination1=global_par_k65*x(13)*x(11);

% Reaction: id = Polyubiquitination2
	reaction_Polyubiquitination2=global_par_k65*x(14)*x(11);

% Reaction: id = Polyubiquitination3
	reaction_Polyubiquitination3=global_par_k65*x(15)*x(11);

% Reaction: id = Polyubiquitination4
	reaction_Polyubiquitination4=global_par_k65*x(16)*x(11);

% Reaction: id = Polyubiquitination5
	reaction_Polyubiquitination5=global_par_k65*x(17)*x(11);

% Reaction: id = Polyubiquitination6
	reaction_Polyubiquitination6=global_par_k65*x(18)*x(11);

% Reaction: id = Polyubiquitination7
	reaction_Polyubiquitination7=global_par_k65*x(19)*x(11);

% Reaction: id = Deubiqutination1
	reaction_Deubiqutination1=global_par_k66*x(20)*x(7);

% Reaction: id = Deubiqutination2
	reaction_Deubiqutination2=global_par_k66*x(19)*x(7);

% Reaction: id = Deubiqutination3
	reaction_Deubiqutination3=global_par_k66*x(18)*x(7);

% Reaction: id = Deubiqutination4
	reaction_Deubiqutination4=global_par_k66*x(17)*x(7);

% Reaction: id = Deubiqutination5
	reaction_Deubiqutination5=global_par_k66*x(16)*x(7);

% Reaction: id = Deubiqutination6
	reaction_Deubiqutination6=global_par_k66*x(15)*x(7);

% Reaction: id = Deubiqutination7
	reaction_Deubiqutination7=global_par_k66*x(14)*x(7);

% Reaction: id = Deubiqutination8
	reaction_Deubiqutination8=global_par_k66*x(13)*x(7);

% Reaction: id = ProteasomeBinding1
	reaction_ProteasomeBinding1=global_par_k67*x(16)*x(8);

% Reaction: id = ProteasomeBinding2
	reaction_ProteasomeBinding2=global_par_k67*x(17)*x(8);

% Reaction: id = ProteasomeBinding3
	reaction_ProteasomeBinding3=global_par_k67*x(18)*x(8);

% Reaction: id = ProteasomeBinding4
	reaction_ProteasomeBinding4=global_par_k67*x(19)*x(8);

% Reaction: id = ProteasomeBinding5
	reaction_ProteasomeBinding5=global_par_k67*x(20)*x(8);

% Reaction: id = DeubiquitinationBoundMisP5
	reaction_DeubiquitinationBoundMisP5=global_par_k68*x(25)*x(7);

% Reaction: id = DeubiquitinationBoundMisP4
	reaction_DeubiquitinationBoundMisP4=global_par_k68*x(24)*x(7);

% Reaction: id = DeubiquitinationBoundMisP3
	reaction_DeubiquitinationBoundMisP3=global_par_k68*x(23)*x(7);

% Reaction: id = DeubiquitinationBoundMisP2
	reaction_DeubiquitinationBoundMisP2=global_par_k68*x(22)*x(7);

% Reaction: id = DeubiquitinationBoundMisP1
	reaction_DeubiquitinationBoundMisP1=global_par_k68*x(21)*x(7);

% Reaction: id = ProteasomeActivity1
	reaction_ProteasomeActivity1=global_par_k69*x(21)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity2
	reaction_ProteasomeActivity2=global_par_k69*x(22)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity3
	reaction_ProteasomeActivity3=global_par_k69*x(23)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity4
	reaction_ProteasomeActivity4=global_par_k69*x(24)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity5
	reaction_ProteasomeActivity5=global_par_k69*x(25)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = Aggregation1
	reaction_Aggregation1=global_par_k71*x(2)*(x(2)-1)*0.5;

% Reaction: id = Aggregation2
	reaction_Aggregation2=global_par_k71*x(2)*x(33);

% Reaction: id = Aggregation3
	reaction_Aggregation3=global_par_k72*x(13)*(x(13)-1)*0.5;

% Reaction: id = Aggregation4
	reaction_Aggregation4=global_par_k72*x(14)*(x(14)-1)*0.5;

% Reaction: id = Aggregation5
	reaction_Aggregation5=global_par_k72*x(15)*(x(15)-1)*0.5;

% Reaction: id = Aggregation6
	reaction_Aggregation6=global_par_k72*x(16)*(x(16)-1)*0.5;

% Reaction: id = Aggregation7
	reaction_Aggregation7=global_par_k72*x(17)*(x(17)-1)*0.5;

% Reaction: id = Aggregation8
	reaction_Aggregation8=global_par_k72*x(18)*(x(18)-1)*0.5;

% Reaction: id = Aggregation9
	reaction_Aggregation9=global_par_k72*x(19)*(x(19)-1)*0.5;

% Reaction: id = Aggregation10
	reaction_Aggregation10=global_par_k72*x(20)*(x(20)-1)*0.5;

% Reaction: id = Aggregation11
	reaction_Aggregation11=global_par_k72*x(13)*x(2);

% Reaction: id = Aggregation12
	reaction_Aggregation12=global_par_k72*x(14)*x(2);

% Reaction: id = Aggregation13
	reaction_Aggregation13=global_par_k72*x(15)*x(2);

% Reaction: id = Aggregation14
	reaction_Aggregation14=global_par_k72*x(16)*x(2);

% Reaction: id = Aggregation15
	reaction_Aggregation15=global_par_k72*x(17)*x(2);

% Reaction: id = Aggregation16
	reaction_Aggregation16=global_par_k72*x(18)*x(2);

% Reaction: id = Aggregation17
	reaction_Aggregation17=global_par_k72*x(19)*x(2);

% Reaction: id = Aggregation18
	reaction_Aggregation18=global_par_k72*x(20)*x(2);

% Reaction: id = Aggregation19
	reaction_Aggregation19=global_par_k72*x(13)*x(33);

% Reaction: id = Aggregation20
	reaction_Aggregation20=global_par_k72*x(14)*x(33);

% Reaction: id = Aggregation21
	reaction_Aggregation21=global_par_k72*x(15)*x(33);

% Reaction: id = Aggregation22
	reaction_Aggregation22=global_par_k72*x(16)*x(33);

% Reaction: id = Aggregation23
	reaction_Aggregation23=global_par_k72*x(17)*x(33);

% Reaction: id = Aggregation24
	reaction_Aggregation24=global_par_k72*x(18)*x(33);

% Reaction: id = Aggregation25
	reaction_Aggregation25=global_par_k72*x(19)*x(33);

% Reaction: id = Aggregation26
	reaction_Aggregation26=global_par_k72*x(20)*x(33);

% Reaction: id = Aggregation27
	reaction_Aggregation27=global_par_k72*x(13)*x(14);

% Reaction: id = Aggregation28
	reaction_Aggregation28=global_par_k72*x(13)*x(15);

% Reaction: id = Aggregation29
	reaction_Aggregation29=global_par_k72*x(13)*x(16);

% Reaction: id = Aggregation30
	reaction_Aggregation30=global_par_k72*x(13)*x(17);

% Reaction: id = Aggregation31
	reaction_Aggregation31=global_par_k72*x(13)*x(18);

% Reaction: id = Aggregation32
	reaction_Aggregation32=global_par_k72*x(13)*x(19);

% Reaction: id = Aggregation33
	reaction_Aggregation33=global_par_k72*x(13)*x(20);

% Reaction: id = Aggregation34
	reaction_Aggregation34=global_par_k72*x(14)*x(15);

% Reaction: id = Aggregation35
	reaction_Aggregation35=global_par_k72*x(14)*x(16);

% Reaction: id = Aggregation36
	reaction_Aggregation36=global_par_k72*x(14)*x(17);

% Reaction: id = Aggregation37
	reaction_Aggregation37=global_par_k72*x(14)*x(18);

% Reaction: id = Aggregation38
	reaction_Aggregation38=global_par_k72*x(14)*x(19);

% Reaction: id = Aggregation39
	reaction_Aggregation39=global_par_k72*x(14)*x(20);

% Reaction: id = Aggregation40
	reaction_Aggregation40=global_par_k72*x(15)*x(16);

% Reaction: id = Aggregation41
	reaction_Aggregation41=global_par_k72*x(15)*x(17);

% Reaction: id = Aggregation42
	reaction_Aggregation42=global_par_k72*x(15)*x(18);

% Reaction: id = Aggregation43
	reaction_Aggregation43=global_par_k72*x(15)*x(19);

% Reaction: id = Aggregation44
	reaction_Aggregation44=global_par_k72*x(15)*x(20);

% Reaction: id = Aggregation45
	reaction_Aggregation45=global_par_k72*x(16)*x(17);

% Reaction: id = Aggregation46
	reaction_Aggregation46=global_par_k72*x(16)*x(18);

% Reaction: id = Aggregation47
	reaction_Aggregation47=global_par_k72*x(16)*x(19);

% Reaction: id = Aggregation48
	reaction_Aggregation48=global_par_k72*x(16)*x(20);

% Reaction: id = Aggregation49
	reaction_Aggregation49=global_par_k72*x(17)*x(18);

% Reaction: id = Aggregation50
	reaction_Aggregation50=global_par_k72*x(17)*x(19);

% Reaction: id = Aggregation51
	reaction_Aggregation51=global_par_k72*x(17)*x(20);

% Reaction: id = Aggregation52
	reaction_Aggregation52=global_par_k72*x(18)*x(19);

% Reaction: id = Aggregation53
	reaction_Aggregation53=global_par_k72*x(18)*x(20);

% Reaction: id = Aggregation54
	reaction_Aggregation54=global_par_k72*x(19)*x(20);

% Reaction: id = SequesteringOfAggregates
	reaction_SequesteringOfAggregates=global_par_k73*x(33);

% Reaction: id = ProteasomeInhibtion
	reaction_ProteasomeInhibtion=global_par_k74*x(33)*x(8);

% Species:   id = ATP, name = ATP, constant	const_species_ATP=10000.0;

% Species:   id = ADP, name = ADP, constant	const_species_ADP=1000.0;

% Species:   id = AMP, name = AMP, constant	const_species_AMP=1000.0;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

	xdot=zeros(35,1);
	
% Species:   id = NatP, name = NatP, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_ProteinSynthesis) + (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Refolding);
	
% Species:   id = MisP, name = MisP, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Misfolding) + (-1.0 * reaction_Refolding) + (-1.0 * reaction_MisPE3Binding) + ( 1.0 * reaction_MisPE3Release) + ( 1.0 * reaction_Deubiqutination8) + (-2.0 * reaction_Aggregation1) + (-1.0 * reaction_Aggregation2) + (-1.0 * reaction_Aggregation11) + (-1.0 * reaction_Aggregation12) + (-1.0 * reaction_Aggregation13) + (-1.0 * reaction_Aggregation14) + (-1.0 * reaction_Aggregation15) + (-1.0 * reaction_Aggregation16) + (-1.0 * reaction_Aggregation17) + (-1.0 * reaction_Aggregation18);
	
% Species:   id = Ub, name = Ub, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_Deubiqutination1) + ( 1.0 * reaction_Deubiqutination2) + ( 1.0 * reaction_Deubiqutination3) + ( 1.0 * reaction_Deubiqutination4) + ( 1.0 * reaction_Deubiqutination5) + ( 1.0 * reaction_Deubiqutination6) + ( 1.0 * reaction_Deubiqutination7) + ( 1.0 * reaction_Deubiqutination8) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + ( 4.0 * reaction_ProteasomeActivity1) + ( 5.0 * reaction_ProteasomeActivity2) + ( 6.0 * reaction_ProteasomeActivity3) + ( 7.0 * reaction_ProteasomeActivity4) + ( 8.0 * reaction_ProteasomeActivity5);
	
% Species:   id = E1, name = E1, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_E2UbBinding);
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_E2UbBinding) + ( 1.0 * reaction_Monoubiquitination) + ( 1.0 * reaction_Polyubiquitination1) + ( 1.0 * reaction_Polyubiquitination2) + ( 1.0 * reaction_Polyubiquitination3) + ( 1.0 * reaction_Polyubiquitination4) + ( 1.0 * reaction_Polyubiquitination5) + ( 1.0 * reaction_Polyubiquitination6) + ( 1.0 * reaction_Polyubiquitination7);
	
% Species:   id = E3, name = E3, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_MisPE3Binding) + ( 1.0 * reaction_MisPE3Release) + ( 1.0 * reaction_Monoubiquitination);
	
% Species:   id = DUB, name = DUB, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_Deubiqutination1) + ( 1.0 * reaction_Deubiqutination1) + (-1.0 * reaction_Deubiqutination2) + ( 1.0 * reaction_Deubiqutination2) + (-1.0 * reaction_Deubiqutination3) + ( 1.0 * reaction_Deubiqutination3) + (-1.0 * reaction_Deubiqutination4) + ( 1.0 * reaction_Deubiqutination4) + (-1.0 * reaction_Deubiqutination5) + ( 1.0 * reaction_Deubiqutination5) + (-1.0 * reaction_Deubiqutination6) + ( 1.0 * reaction_Deubiqutination6) + (-1.0 * reaction_Deubiqutination7) + ( 1.0 * reaction_Deubiqutination7) + (-1.0 * reaction_Deubiqutination8) + ( 1.0 * reaction_Deubiqutination8) + (-1.0 * reaction_DeubiquitinationBoundMisP5) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_DeubiquitinationBoundMisP4) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_DeubiquitinationBoundMisP3) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_DeubiquitinationBoundMisP2) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_DeubiquitinationBoundMisP1) + ( 1.0 * reaction_DeubiquitinationBoundMisP1);
	
% Species:   id = Proteasome, name = Proteasome, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_ProteasomeBinding1) + (-1.0 * reaction_ProteasomeBinding2) + (-1.0 * reaction_ProteasomeBinding3) + (-1.0 * reaction_ProteasomeBinding4) + (-1.0 * reaction_ProteasomeBinding5) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + ( 1.0 * reaction_ProteasomeActivity1) + ( 1.0 * reaction_ProteasomeActivity2) + ( 1.0 * reaction_ProteasomeActivity3) + ( 1.0 * reaction_ProteasomeActivity4) + ( 1.0 * reaction_ProteasomeActivity5) + (-1.0 * reaction_ProteasomeInhibtion);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Misfolding);
	
% Species:   id = E1_Ub, name = E1_Ub, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_E1UbBinding) + (-1.0 * reaction_E2UbBinding);
	
% Species:   id = E2_Ub, name = E2_Ub, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_E2UbBinding) + (-1.0 * reaction_Monoubiquitination) + (-1.0 * reaction_Polyubiquitination1) + (-1.0 * reaction_Polyubiquitination2) + (-1.0 * reaction_Polyubiquitination3) + (-1.0 * reaction_Polyubiquitination4) + (-1.0 * reaction_Polyubiquitination5) + (-1.0 * reaction_Polyubiquitination6) + (-1.0 * reaction_Polyubiquitination7);
	
% Species:   id = E3_MisP, name = E3_MisP, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_MisPE3Binding) + (-1.0 * reaction_MisPE3Release) + (-1.0 * reaction_Monoubiquitination);
	
% Species:   id = MisP_Ub, name = MisP_Ub, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Monoubiquitination) + (-1.0 * reaction_Polyubiquitination1) + ( 1.0 * reaction_Deubiqutination7) + (-1.0 * reaction_Deubiqutination8) + (-2.0 * reaction_Aggregation3) + (-1.0 * reaction_Aggregation11) + (-1.0 * reaction_Aggregation19) + (-1.0 * reaction_Aggregation27) + (-1.0 * reaction_Aggregation28) + (-1.0 * reaction_Aggregation29) + (-1.0 * reaction_Aggregation30) + (-1.0 * reaction_Aggregation31) + (-1.0 * reaction_Aggregation32) + (-1.0 * reaction_Aggregation33);
	
% Species:   id = MisP_Ub2, name = MisP_Ub2, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Polyubiquitination1) + (-1.0 * reaction_Polyubiquitination2) + ( 1.0 * reaction_Deubiqutination6) + (-1.0 * reaction_Deubiqutination7) + (-2.0 * reaction_Aggregation4) + (-1.0 * reaction_Aggregation12) + (-1.0 * reaction_Aggregation20) + (-1.0 * reaction_Aggregation27) + (-1.0 * reaction_Aggregation34) + (-1.0 * reaction_Aggregation35) + (-1.0 * reaction_Aggregation36) + (-1.0 * reaction_Aggregation37) + (-1.0 * reaction_Aggregation38) + (-1.0 * reaction_Aggregation39);
	
% Species:   id = MisP_Ub3, name = MisP_Ub3, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Polyubiquitination2) + (-1.0 * reaction_Polyubiquitination3) + ( 1.0 * reaction_Deubiqutination5) + (-1.0 * reaction_Deubiqutination6) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + (-2.0 * reaction_Aggregation5) + (-1.0 * reaction_Aggregation13) + (-1.0 * reaction_Aggregation21) + (-1.0 * reaction_Aggregation28) + (-1.0 * reaction_Aggregation34) + (-1.0 * reaction_Aggregation40) + (-1.0 * reaction_Aggregation41) + (-1.0 * reaction_Aggregation42) + (-1.0 * reaction_Aggregation43) + (-1.0 * reaction_Aggregation44);
	
% Species:   id = MisP_Ub4, name = MisP_Ub4, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_Polyubiquitination3) + (-1.0 * reaction_Polyubiquitination4) + ( 1.0 * reaction_Deubiqutination4) + (-1.0 * reaction_Deubiqutination5) + (-1.0 * reaction_ProteasomeBinding1) + (-2.0 * reaction_Aggregation6) + (-1.0 * reaction_Aggregation14) + (-1.0 * reaction_Aggregation22) + (-1.0 * reaction_Aggregation29) + (-1.0 * reaction_Aggregation35) + (-1.0 * reaction_Aggregation40) + (-1.0 * reaction_Aggregation45) + (-1.0 * reaction_Aggregation46) + (-1.0 * reaction_Aggregation47) + (-1.0 * reaction_Aggregation48);
	
% Species:   id = MisP_Ub5, name = MisP_Ub5, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Polyubiquitination4) + (-1.0 * reaction_Polyubiquitination5) + ( 1.0 * reaction_Deubiqutination3) + (-1.0 * reaction_Deubiqutination4) + (-1.0 * reaction_ProteasomeBinding2) + (-2.0 * reaction_Aggregation7) + (-1.0 * reaction_Aggregation15) + (-1.0 * reaction_Aggregation23) + (-1.0 * reaction_Aggregation30) + (-1.0 * reaction_Aggregation36) + (-1.0 * reaction_Aggregation41) + (-1.0 * reaction_Aggregation45) + (-1.0 * reaction_Aggregation49) + (-1.0 * reaction_Aggregation50) + (-1.0 * reaction_Aggregation51);
	
% Species:   id = MisP_Ub6, name = MisP_Ub6, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_Polyubiquitination5) + (-1.0 * reaction_Polyubiquitination6) + ( 1.0 * reaction_Deubiqutination2) + (-1.0 * reaction_Deubiqutination3) + (-1.0 * reaction_ProteasomeBinding3) + (-2.0 * reaction_Aggregation8) + (-1.0 * reaction_Aggregation16) + (-1.0 * reaction_Aggregation24) + (-1.0 * reaction_Aggregation31) + (-1.0 * reaction_Aggregation37) + (-1.0 * reaction_Aggregation42) + (-1.0 * reaction_Aggregation46) + (-1.0 * reaction_Aggregation49) + (-1.0 * reaction_Aggregation52) + (-1.0 * reaction_Aggregation53);
	
% Species:   id = MisP_Ub7, name = MisP_Ub7, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Polyubiquitination6) + (-1.0 * reaction_Polyubiquitination7) + ( 1.0 * reaction_Deubiqutination1) + (-1.0 * reaction_Deubiqutination2) + (-1.0 * reaction_ProteasomeBinding4) + (-2.0 * reaction_Aggregation9) + (-1.0 * reaction_Aggregation17) + (-1.0 * reaction_Aggregation25) + (-1.0 * reaction_Aggregation32) + (-1.0 * reaction_Aggregation38) + (-1.0 * reaction_Aggregation43) + (-1.0 * reaction_Aggregation47) + (-1.0 * reaction_Aggregation50) + (-1.0 * reaction_Aggregation52) + (-1.0 * reaction_Aggregation54);
	
% Species:   id = MisP_Ub8, name = MisP_Ub8, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Polyubiquitination7) + (-1.0 * reaction_Deubiqutination1) + (-1.0 * reaction_ProteasomeBinding5) + (-2.0 * reaction_Aggregation10) + (-1.0 * reaction_Aggregation18) + (-1.0 * reaction_Aggregation26) + (-1.0 * reaction_Aggregation33) + (-1.0 * reaction_Aggregation39) + (-1.0 * reaction_Aggregation44) + (-1.0 * reaction_Aggregation48) + (-1.0 * reaction_Aggregation51) + (-1.0 * reaction_Aggregation53) + (-1.0 * reaction_Aggregation54);
	
% Species:   id = MisP_Ub4_Proteasome, name = MisP_Ub4_Proteasome, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_ProteasomeBinding1) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_DeubiquitinationBoundMisP1) + (-1.0 * reaction_ProteasomeActivity1);
	
% Species:   id = MisP_Ub5_Proteasome, name = MisP_Ub5_Proteasome, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_ProteasomeBinding2) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_ProteasomeActivity2);
	
% Species:   id = MisP_Ub6_Proteasome, name = MisP_Ub6_Proteasome, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_ProteasomeBinding3) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_ProteasomeActivity3);
	
% Species:   id = MisP_Ub7_Proteasome, name = MisP_Ub7_Proteasome, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_ProteasomeBinding4) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_ProteasomeActivity4);
	
% Species:   id = MisP_Ub8_Proteasome, name = MisP_Ub8_Proteasome, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_ProteasomeBinding5) + (-1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_ProteasomeActivity5);
	
% Species:   id = degUb4, name = degUb4, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_ProteasomeActivity1);
	
% Species:   id = degUb5, name = degUb5, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_ProteasomeActivity2);
	
% Species:   id = degUb6, name = degUb6, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_ProteasomeActivity3);
	
% Species:   id = degUb7, name = degUb7, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_ProteasomeActivity4);
	
% Species:   id = degUb8, name = degUb8, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_ProteasomeActivity5);
	
% Species:   id = totMisP, name = totMisP, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_Misfolding);
	
% Species:   id = refNatP, name = refNatP, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_Refolding);
	
% Species:   id = AggP, name = AggP, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_Aggregation1) + (-1.0 * reaction_Aggregation2) + ( 2.0 * reaction_Aggregation2) + ( 1.0 * reaction_Aggregation3) + ( 1.0 * reaction_Aggregation4) + ( 1.0 * reaction_Aggregation5) + ( 1.0 * reaction_Aggregation6) + ( 1.0 * reaction_Aggregation7) + ( 1.0 * reaction_Aggregation8) + ( 1.0 * reaction_Aggregation9) + ( 1.0 * reaction_Aggregation10) + ( 1.0 * reaction_Aggregation11) + ( 1.0 * reaction_Aggregation12) + ( 1.0 * reaction_Aggregation13) + ( 1.0 * reaction_Aggregation14) + ( 1.0 * reaction_Aggregation15) + ( 1.0 * reaction_Aggregation16) + ( 1.0 * reaction_Aggregation17) + ( 1.0 * reaction_Aggregation18) + (-1.0 * reaction_Aggregation19) + ( 2.0 * reaction_Aggregation19) + (-1.0 * reaction_Aggregation20) + ( 2.0 * reaction_Aggregation20) + (-1.0 * reaction_Aggregation21) + ( 2.0 * reaction_Aggregation21) + (-1.0 * reaction_Aggregation22) + ( 2.0 * reaction_Aggregation22) + (-1.0 * reaction_Aggregation23) + ( 2.0 * reaction_Aggregation23) + (-1.0 * reaction_Aggregation24) + ( 2.0 * reaction_Aggregation24) + (-1.0 * reaction_Aggregation25) + ( 2.0 * reaction_Aggregation25) + (-1.0 * reaction_Aggregation26) + ( 2.0 * reaction_Aggregation26) + ( 1.0 * reaction_Aggregation27) + ( 1.0 * reaction_Aggregation28) + ( 1.0 * reaction_Aggregation29) + ( 1.0 * reaction_Aggregation30) + ( 1.0 * reaction_Aggregation31) + ( 1.0 * reaction_Aggregation32) + ( 1.0 * reaction_Aggregation33) + ( 1.0 * reaction_Aggregation34) + ( 1.0 * reaction_Aggregation35) + ( 1.0 * reaction_Aggregation36) + ( 1.0 * reaction_Aggregation37) + ( 1.0 * reaction_Aggregation38) + ( 1.0 * reaction_Aggregation39) + ( 1.0 * reaction_Aggregation40) + ( 1.0 * reaction_Aggregation41) + ( 1.0 * reaction_Aggregation42) + ( 1.0 * reaction_Aggregation43) + ( 1.0 * reaction_Aggregation44) + ( 1.0 * reaction_Aggregation45) + ( 1.0 * reaction_Aggregation46) + ( 1.0 * reaction_Aggregation47) + ( 1.0 * reaction_Aggregation48) + ( 1.0 * reaction_Aggregation49) + ( 1.0 * reaction_Aggregation50) + ( 1.0 * reaction_Aggregation51) + ( 1.0 * reaction_Aggregation52) + ( 1.0 * reaction_Aggregation53) + ( 1.0 * reaction_Aggregation54) + (-1.0 * reaction_SequesteringOfAggregates) + (-1.0 * reaction_ProteasomeInhibtion);
	
% Species:   id = SeqAggP, name = SeqAggP, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_SequesteringOfAggregates);
	
% Species:   id = AggP_Proteasome, name = AggP_Proteasome, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_ProteasomeInhibtion);
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


