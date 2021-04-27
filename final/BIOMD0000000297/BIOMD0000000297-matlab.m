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
% Model name = Ciliberto2003_Morphogenesis_Checkpoint
%
% is http://identifiers.org/biomodels.db/MODEL2504064544
% is http://identifiers.org/biomodels.db/BIOMD0000000297
% isDescribedBy http://identifiers.org/pubmed/14691135
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.084410675;
	x0(2) = 0.18453673;
	x0(3) = 0.0035491784;
	x0(4) = 1.402314E-5;
	x0(5) = 3.0203049E-5;
	x0(6) = 0.12405464;
	x0(7) = 0.52220768;
	x0(8) = 1.4384692;
	x0(9) = 1.1722378;
	x0(10) = 0.99263656;
	x0(11) = 3.1588585E-4;
	x0(12) = 0.018360127;
	x0(13) = 2.0500785E-4;
	x0(14) = 0.013336782;
	x0(15) = 0.80809075;
	x0(16) = 0.93289256;
	x0(17) = 2.4296179E-4;
	x0(18) = 0.053600963;
	x0(19) = 0.80224854;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  kswe, name = kswe
% Parameter:   id =  kswe_prime, name = kswe_prime
	global_par_kswe_prime=2.0;
% Parameter:   id =  kswe_doubleprime, name = kswe_doubleprime
	global_par_kswe_doubleprime=0.01;
% Parameter:   id =  kswe_tripleprime, name = kswe_tripleprime
	global_par_kswe_tripleprime=0.2;
% Parameter:   id =  kmih, name = kmih
% Parameter:   id =  kmih_prime, name = kmih_prime
	global_par_kmih_prime=5.0;
% Parameter:   id =  Mih_ast, name = Mih_ast
	global_par_Mih_ast=0.0;
% Parameter:   id =  kmih_doubleprime, name = kmih_doubleprime
	global_par_kmih_doubleprime=0.5;
% Parameter:   id =  Mih, name = Mih
	global_par_Mih=0.0;
% Parameter:   id =  IEin, name = IEin
% Parameter:   id =  IEtot, name = IEtot
	global_par_IEtot=1.0;
% Parameter:   id =  Cdh1in, name = Cdh1in
% Parameter:   id =  Cdh1tot, name = Cdh1tot
	global_par_Cdh1tot=1.0;
% Parameter:   id =  Mih1, name = Mih1
% Parameter:   id =  Mih1tot, name = Mih1tot
	global_par_Mih1tot=1.0;
% Parameter:   id =  Mcmin, name = Mcmin
% Parameter:   id =  Mcmtot, name = Mcmtot
	global_par_Mcmtot=1.0;
% Parameter:   id =  SBFin, name = SBFin
% Parameter:   id =  SBFtot, name = SBFtot
	global_par_SBFtot=1.0;
% Parameter:   id =  kdiss, name = kdiss
	global_par_kdiss=0.1;
% Parameter:   id =  kdsic_prime, name = kdsic_prime
	global_par_kdsic_prime=1.0;
% Parameter:   id =  kdsic_doubleprime, name = kdsic_doubleprime
	global_par_kdsic_doubleprime=3.0;
% Parameter:   id =  kdsic, name = kdsic
	global_par_kdsic=0.01;
% Parameter:   id =  kdclb_doubleprime, name = kdclb_doubleprime
	global_par_kdclb_doubleprime=1.0;
% Parameter:   id =  kdclb_tripleprime, name = kdclb_tripleprime
	global_par_kdclb_tripleprime=0.1;
% Parameter:   id =  kdclb_prime, name = kdclb_prime
	global_par_kdclb_prime=0.015;
% Parameter:   id =  kass, name = kass
	global_par_kass=300.0;
% Parameter:   id =  ksclb, name = ksclb
	global_par_ksclb=0.015;
% Parameter:   id =  Jm, name = Jm
	global_par_Jm=10.0;
% Parameter:   id =  eps, name = eps
	global_par_eps=0.5;
% Parameter:   id =  kisbf_prime, name = kisbf_prime
	global_par_kisbf_prime=1.0;
% Parameter:   id =  kisbf_doubleprime, name = kisbf_doubleprime
	global_par_kisbf_doubleprime=2.0;
% Parameter:   id =  jisbf, name = jisbf
	global_par_jisbf=0.01;
% Parameter:   id =  kasbf_prime, name = kasbf_prime
	global_par_kasbf_prime=1.0;
% Parameter:   id =  kasbf_doubleprime, name = kasbf_doubleprime
	global_par_kasbf_doubleprime=0.0;
% Parameter:   id =  jasbf, name = jasbf
	global_par_jasbf=0.01;
% Parameter:   id =  kiie, name = kiie
	global_par_kiie=0.04;
% Parameter:   id =  jiie, name = jiie
	global_par_jiie=0.01;
% Parameter:   id =  kaie, name = kaie
	global_par_kaie=0.1;
% Parameter:   id =  jaie, name = jaie
	global_par_jaie=0.01;
% Parameter:   id =  kicdc20, name = kicdc20
	global_par_kicdc20=0.25;
% Parameter:   id =  jicdc20, name = jicdc20
	global_par_jicdc20=0.001;
% Parameter:   id =  kdcdc20, name = kdcdc20
	global_par_kdcdc20=0.1;
% Parameter:   id =  kacdc20, name = kacdc20
	global_par_kacdc20=1.0;
% Parameter:   id =  jacdc20, name = jacdc20
	global_par_jacdc20=0.001;
% Parameter:   id =  kicdh, name = kicdh
	global_par_kicdh=35.0;
% Parameter:   id =  kicdh_prime, name = kicdh_prime
	global_par_kicdh_prime=2.0;
% Parameter:   id =  jicdh, name = jicdh
	global_par_jicdh=0.01;
% Parameter:   id =  Kacdh_prime, name = Kacdh_prime
	global_par_Kacdh_prime=1.0;
% Parameter:   id =  Kacdh_doubleprime, name = Kacdh_doubleprime
	global_par_Kacdh_doubleprime=10.0;
% Parameter:   id =  jacdh, name = jacdh
	global_par_jacdh=0.01;
% Parameter:   id =  khsl1, name = khsl1
	global_par_khsl1=1.0;
% Parameter:   id =  BUD, name = BUD
	global_par_BUD=0.0;
% Parameter:   id =  Viwee, name = Viwee
	global_par_Viwee=1.0;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.05;
% Parameter:   id =  kdswe_prime, name = kdswe_prime
	global_par_kdswe_prime=0.007;
% Parameter:   id =  khsl1r, name = khsl1r
	global_par_khsl1r=0.01;
% Parameter:   id =  Vawee, name = Vawee
	global_par_Vawee=0.3;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.05;
% Parameter:   id =  ksswe, name = ksswe
	global_par_ksswe=0.0025;
% Parameter:   id =  kssweC, name = kssweC
	global_par_kssweC=0.0;
% Parameter:   id =  Vimih, name = Vimih
	global_par_Vimih=0.3;
% Parameter:   id =  jimih, name = jimih
	global_par_jimih=0.1;
% Parameter:   id =  Vamih, name = Vamih
	global_par_Vamih=1.0;
% Parameter:   id =  Jamih, name = Jamih
	global_par_Jamih=0.1;
% Parameter:   id =  kimcm, name = kimcm
	global_par_kimcm=0.15;
% Parameter:   id =  jimcm, name = jimcm
	global_par_jimcm=0.1;
% Parameter:   id =  kamcm, name = kamcm
	global_par_kamcm=1.0;
% Parameter:   id =  jamcm, name = jamcm
	global_par_jamcm=0.1;
% Parameter:   id =  kdbud, name = kdbud
	global_par_kdbud=0.1;
% Parameter:   id =  ksbud, name = ksbud
	global_par_ksbud=0.1;
% Parameter:   id =  kssic, name = kssic
	global_par_kssic=0.1;
% Parameter:   id =  kdcln, name = kdcln
	global_par_kdcln=0.1;
% Parameter:   id =  kscln, name = kscln
	global_par_kscln=0.1;
% Parameter:   id =  kscdc20_prime, name = kscdc20_prime
	global_par_kscdc20_prime=0.005;
% Parameter:   id =  kscdc20_doubleprime, name = kscdc20_doubleprime
	global_par_kscdc20_doubleprime=0.3;
% Parameter:   id =  jscdc20, name = jscdc20
	global_par_jscdc20=0.3;
% Parameter:   id =  kdswe_doubleprime, name = kdswe_doubleprime
	global_par_kdswe_doubleprime=0.05;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.005;
% Parameter:   id =  flag, name = flag
	global_par_flag=0.0;
% Parameter:   id =  Swe1T, name = Swe1T
% assignmentRule: variable = kswe
	global_par_kswe=global_par_kswe_prime*x(11)+global_par_kswe_doubleprime*x(12)+global_par_kswe_tripleprime*x(13);
% assignmentRule: variable = kmih
	global_par_kmih=global_par_kmih_prime*global_par_Mih_ast+global_par_kmih_doubleprime*global_par_Mih;
% assignmentRule: variable = Swe1T
	global_par_Swe1T=x(11)+x(12)+x(13)+x(14);
% assignmentRule: variable = IEin
	global_par_IEin=global_par_IEtot-x(7);
% assignmentRule: variable = Cdh1in
	global_par_Cdh1in=global_par_Cdh1tot-x(10);
% assignmentRule: variable = Mih1
	global_par_Mih1=global_par_Mih1tot-x(15);
% assignmentRule: variable = Mcmin
	global_par_Mcmin=global_par_Mcmtot-x(16);
% assignmentRule: variable = SBFin
	global_par_SBFin=global_par_SBFtot-x(6);

% Reaction: id = R1, name = Clb-Sic dissociation
	reaction_R1=global_par_kdiss*x(1);

% Reaction: id = R2, name = Clb2 removal from complex
	reaction_R2=x(1)*(global_par_kdsic_prime*x(18)+global_par_kdsic_doubleprime*x(2)+global_par_kdsic);

% Reaction: id = R3, name = Sic1 removal from complex
	reaction_R3=x(1)*(global_par_kdclb_doubleprime*x(10)+global_par_kdclb_tripleprime*x(8)+global_par_kdclb_prime);

% Reaction: id = R4, name = Phosphorylation of Cdc28-Clb2-Sic1 complex
	reaction_R4=x(1)*global_par_kswe;

% Reaction: id = R5, name = Complex formation
	reaction_R5=global_par_kass*x(3)*x(2);

% Reaction: id = R6, name = Dephosphorylation of complex
	reaction_R6=x(4)*global_par_kmih;

% Reaction: id = R7, name = Clb2 degradation
	reaction_R7=x(2)*(global_par_kdclb_doubleprime*x(10)+global_par_kdclb_tripleprime*x(8)+global_par_kdclb_prime);

% Reaction: id = R8, name = Clb2 phosphorylation
	reaction_R8=global_par_kswe*x(2);

% Reaction: id = R9, name = Clb2 synthesis
	reaction_R9=global_par_ksclb*x(19)*global_par_Jm*(global_par_eps+x(16))/(x(19)+global_par_Jm);

% Reaction: id = R10, name = Clb2 dephosphorylation
	reaction_R10=global_par_kmih*x(5);

% Reaction: id = R11, name = SBF inhibition
	reaction_R11=x(6)*(global_par_kisbf_prime+global_par_kisbf_doubleprime*x(2))/(global_par_jisbf+x(6));

% Reaction: id = R12, name = SBF synthesis
	reaction_R12=global_par_SBFin*(global_par_kasbf_prime*x(19)+global_par_kasbf_doubleprime*x(18))/(global_par_jasbf+global_par_SBFin);

% Reaction: id = R13, name = IE inhibition
	reaction_R13=x(7)*global_par_kiie/(global_par_jiie+x(7));

% Reaction: id = R14, name = IE synthesis
	reaction_R14=global_par_kaie*global_par_IEin*x(2)/(global_par_jaie+global_par_IEin);

% Reaction: id = R15, name = Cdc20 deactivation
	reaction_R15=x(8)*global_par_kicdc20/(global_par_jicdc20+x(8));

% Reaction: id = R16, name = activated Cdc20 degradation
	reaction_R16=global_par_kdcdc20*x(8);

% Reaction: id = R18, name = Cdc20 activation
	reaction_R18=global_par_kacdc20*x(9)*x(7)/(global_par_jacdc20+x(9));

% Reaction: id = R19, name = Cdh1inhibition
	reaction_R19=x(10)*(global_par_kicdh*x(2)+global_par_kicdh_prime*x(18))/(global_par_jicdh+x(10));

% Reaction: id = R20, name = Cdh1 synthesis
	reaction_R20=global_par_Cdh1in*(global_par_Kacdh_prime+global_par_Kacdh_doubleprime*x(8))/(global_par_jacdh+global_par_Cdh1in);

% Reaction: id = R21, name = Swe1 modification
	reaction_R21=global_par_khsl1*global_par_BUD*x(11);

% Reaction: id = R22, name = Phosphorylated Swe1 modification
	reaction_R22=global_par_khsl1*global_par_BUD*x(13);

% Reaction: id = R23, name = Swe1 phosphorylation
	reaction_R23=global_par_Viwee*x(11)*x(2)/(global_par_Jiwee+x(11));

% Reaction: id = R24, name = Swe1M phosphorylation
	reaction_R24=global_par_Viwee*x(12)*x(2)/(global_par_Jiwee+x(12));

% Reaction: id = R25, name = Swe1 degradation
	reaction_R25=global_par_kdswe_prime*x(11);

% Reaction: id = R26, name = Swe1 production from its modified form
	reaction_R26=global_par_khsl1r*x(12);

% Reaction: id = R27, name = PSwe1 production from its modified form
	reaction_R27=global_par_khsl1r*x(14);

% Reaction: id = R28, name = PSwe1 dephosphorylation
	reaction_R28=x(13)*global_par_Vawee/(global_par_Jawee+x(13));

% Reaction: id = R29, name = PSwe1M dephosphorylation
	reaction_R29=x(14)*global_par_Vawee/(global_par_Jawee+x(14));

% Reaction: id = R30, name = SBF dependent Swe1 synthesis
	reaction_R30=global_par_ksswe*x(6);

% Reaction: id = R31, name = Swe1 synthesis
	reaction_R31=global_par_kssweC;

% Reaction: id = R32, name = PSwe1 degradation
	reaction_R32=global_par_kdswe_prime*x(13);

% Reaction: id = R33, name = PTrim complex dissociation
	reaction_R33=global_par_kdiss*x(4);

% Reaction: id = R34, name = Sic1 dissociation from PTrim complex
	reaction_R34=x(4)*(global_par_kdclb_doubleprime*x(10)+global_par_kdclb_tripleprime*x(8)+global_par_kdclb_prime);

% Reaction: id = R35, name = PClb dissociation from PTrim complex
	reaction_R35=x(4)*(global_par_kdsic_prime*x(18)+global_par_kdsic_doubleprime*x(2)+global_par_kdsic);

% Reaction: id = R36, name = PTrim complex formation
	reaction_R36=global_par_kass*x(5)*x(3);

% Reaction: id = R37, name = Mih1a inhibition
	reaction_R37=x(15)*global_par_Vimih/(global_par_jimih+x(15));

% Reaction: id = R38, name = Mih1a synthesis
	reaction_R38=global_par_Vamih*global_par_Mih1*x(2)/(global_par_Jamih+global_par_Mih1);

% Reaction: id = R39, name = Mcm inhibition
	reaction_R39=x(16)*global_par_kimcm/(global_par_jimcm+x(16));

% Reaction: id = R40, name = Mcm synthesis
	reaction_R40=global_par_Mcmin*x(2)*global_par_kamcm/(global_par_jamcm+global_par_Mcmin);

% Reaction: id = R41, name = BE degradation
	reaction_R41=global_par_kdbud*x(17);

% Reaction: id = R42, name = BE formation
	reaction_R42=global_par_ksbud*x(18);

% Reaction: id = R43, name = Sic1 degradation
	reaction_R43=x(3)*(global_par_kdsic_prime*x(18)+global_par_kdsic_doubleprime*x(2)+global_par_kdsic);

% Reaction: id = R44, name = Sic1 synthesis
	reaction_R44=global_par_kssic;

% Reaction: id = R45, name = Cln degradation
	reaction_R45=global_par_kdcln*x(18);

% Reaction: id = R46, name = SBF dependent Cln synthesis
	reaction_R46=global_par_kscln*x(6);

% Reaction: id = R47, name = Swe1M degradation
	reaction_R47=global_par_kdswe_prime*x(12);

% Reaction: id = R48, name = Cdc20 degradation
	reaction_R48=global_par_kdcdc20*x(9);

% Reaction: id = R49, name = Clb2 dependent Cdc20 synthesis
	reaction_R49=global_par_kscdc20_prime+global_par_kscdc20_doubleprime*x(2)^4/(global_par_jscdc20^4+x(2)^4);

% Reaction: id = R50, name = PSwe1M degradation
	reaction_R50=global_par_kdswe_doubleprime*x(14);

% Reaction: id = R51, name = PClb degradation
	reaction_R51=x(5)*(global_par_kdclb_doubleprime*x(10)+global_par_kdclb_tripleprime*x(8)+global_par_kdclb_prime);

% Reaction: id = R52, name = cell mass
	reaction_R52=global_par_mu*x(19);

%Event: id=event_0000002
	event_event_0000002=x(2) > 0.2;

	if(event_event_0000002) 
		global_par_flag=1;
	end

%Event: id=event_0000004
	event_event_0000004=(x(2) < 0.2) && (global_par_flag > 0);

	if(event_event_0000004) 
		x(17)=0;
		x(19)=0.5*x(19);
	end

%Event: id=event_0000003
	event_event_0000003=(x(2) >= 0.2) || (x(17) >= 0.6);

	if(event_event_0000003) 
		global_par_BUD=1;
	end

%Event: id=event_0000005
	event_event_0000005=(x(2) < 0.2) && (x(17) < 0.6);

	if(event_event_0000005) 
		global_par_BUD=0;
	end

	xdot=zeros(19,1);
	
% Species:   id = Trim, name = CDC28_Clb2_Sic1_Complex, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5) + ( 1.0 * reaction_R6));
	
% Species:   id = Clb, name = Clb2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R5) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R10));
	
% Species:   id = Sic, name = Sic1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R34) + (-1.0 * reaction_R36) + (-1.0 * reaction_R43) + ( 1.0 * reaction_R44));
	
% Species:   id = PTrim, name = Phosphorylated Cdc28_Clb2_Sic1 Complex, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R6) + (-1.0 * reaction_R33) + (-1.0 * reaction_R34) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R36));
	
% Species:   id = PClb, name = Phosphorylated Clb2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R35) + (-1.0 * reaction_R36) + (-1.0 * reaction_R51));
	
% Species:   id = SBF, name = SBF, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_R11) + ( 1.0 * reaction_R12));
	
% Species:   id = IE, name = Intermediary Enzyme, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R14));
	
% Species:   id = Cdc20a, name = Cdc20 activated, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_R15) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R18));
	
% Species:   id = Cdc20, name = Cdc20, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R18) + (-1.0 * reaction_R48) + ( 1.0 * reaction_R49));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_R19) + ( 1.0 * reaction_R20));
	
% Species:   id = Swe1, name = Swe1, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_R21) + (-1.0 * reaction_R23) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R26) + ( 1.0 * reaction_R28) + ( 1.0 * reaction_R30) + ( 1.0 * reaction_R31));
	
% Species:   id = Swe1M, name = Swe1 modified, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R24) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R29) + (-1.0 * reaction_R47));
	
% Species:   id = PSwe1, name = Phosphorylated Swe1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_R22) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R27) + (-1.0 * reaction_R28) + (-1.0 * reaction_R32));
	
% Species:   id = PSwe1M, name = Phosphorylated Swe1M, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R22) + ( 1.0 * reaction_R24) + (-1.0 * reaction_R27) + (-1.0 * reaction_R29) + (-1.0 * reaction_R50));
	
% Species:   id = Mih1a, name = Mih1a, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_R37) + ( 1.0 * reaction_R38));
	
% Species:   id = Mcm, name = Mcm, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*((-1.0 * reaction_R39) + ( 1.0 * reaction_R40));
	
% Species:   id = BE, name = BE, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_R41) + ( 1.0 * reaction_R42));
	
% Species:   id = Cln, name = Cln, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*((-1.0 * reaction_R45) + ( 1.0 * reaction_R46));
	
% Species:   id = mass, name = mass, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_R52));
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


