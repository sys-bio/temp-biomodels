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
% Model name = Suh2004_KCNQ_Regulation
%
% is http://identifiers.org/biomodels.db/MODEL4662889298
% is http://identifiers.org/biomodels.db/BIOMD0000000081
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 0.0;
	x0(2) = 6.7;
	x0(3) = 5000.0;
	x0(4) = 0.0;
	x0(5) = 3000.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.1;
	x0(9) = 0.0;
	x0(10) = 95.539074129537;
	x0(11) = 0.0;
	x0(12) = 0.48;
	x0(13) = 0.0;
	x0(14) = 0.065;
	x0(15) = 0.048;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 200000.0;
	x0(19) = 1150.0;
	x0(20) = 33.3;
	x0(21) = 0.0;
	x0(22) = 200.0;


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

% Compartment: id = EX, name = Extracellular, constant
	compartment_EX=1.0;
% Compartment: id = M, name = Membrane, constant
	compartment_M=1.0;
% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  MgSat20, name = MgSat20
% Parameter:   id =  ATPSat300, name = ATPSat300
% Parameter:   id =  MgSat10, name = MgSat10
% Parameter:   id =  OxoSat, name = OxoSat
% Parameter:   id =  Gactive, name = Gactive
% Parameter:   id =  ATPSat1000, name = ATPSat1000
% Parameter:   id =  KMgGTPase, name = KMgGTPase
	global_par_KMgGTPase=10.0;
% Parameter:   id =  Koxom, name = Koxom
	global_par_Koxom=8.0;
% Parameter:   id =  I_KCNQ, name = I_KCNQ
% Parameter:   id =  nHill, name = nHill
	global_par_nHill=1.8;
% Parameter:   id =  fGactive, name = fGactive
% Parameter:   id =  NA_micro, name = NA(micro)
	global_par_NA_micro=6.022E17;
% assignmentRule: variable = MgSat10
	global_par_MgSat10=0.2+0.8*1*1/(1+global_par_KMgGTPase*1/const_species_Mg2_C);
% assignmentRule: variable = I_KCNQ
	global_par_I_KCNQ=1.33*(0.025*x(20))^global_par_nHill;
% assignmentRule: variable = ATPSat300
	global_par_ATPSat300=1*1/(1+300*1/(0.5+x(5)));
% assignmentRule: variable = GTP_C
	x(10)=100-50*exp(-0.00833333333333333*(290+time));
% assignmentRule: variable = ATPSat1000
	global_par_ATPSat1000=1*1/(1+1000*1/(0.5+x(5)));
% assignmentRule: variable = fGactive
	global_par_fGactive=(x(8)+x(21)+x(11))/200;
% assignmentRule: variable = OxoSat
	global_par_OxoSat=1*1/(1+global_par_Koxom*1/(1E-5+x(6)));
% assignmentRule: variable = MgSat20
	global_par_MgSat20=1*1/(1+20*1/const_species_Mg2_C);
% assignmentRule: variable = Gactive
	global_par_Gactive=x(8)+x(21)+x(11);

% Reaction: id = PIP5kinase, name = PIP5kinase	% Local Parameter:   id =  kPIP5Kinase, name = kPIP5Kinase
	reaction_PIP5kinase_kPIP5Kinase=0.06;

	reaction_PIP5kinase=Function_for_PIP5kinase(global_par_ATPSat300, global_par_MgSat20, x(19), reaction_PIP5kinase_kPIP5Kinase);

% Reaction: id = IP3Phosphatase, name = IP3Phosphatase	% Local Parameter:   id =  kIP3ase, name = kIP3ase
	reaction_IP3Phosphatase_kIP3ase=0.3;

	reaction_IP3Phosphatase=compartment_Cytoplasm*Function_for_IP3Phosphatase(global_par_NA_micro, x(12), reaction_IP3Phosphatase_kIP3ase);

% Reaction: id = PIP2binding, name = PIP2binding	% Local Parameter:   id =  kPIP2off, name = kPIP2off
	reaction_PIP2binding_kPIP2off=0.25;
	% Local Parameter:   id =  kPIP2on, name = kPIP2on
	reaction_PIP2binding_kPIP2on=2.5E-4;

	reaction_PIP2binding=compartment_M*Function_for_PIP2binding(x(2), x(3), x(20), reaction_PIP2binding_kPIP2off, reaction_PIP2binding_kPIP2on);

% Reaction: id = MgonGGTPgS, name = MgonGGTPgS	% Local Parameter:   id =  kMg2onGTPgS, name = kMg2onGTPgS
	reaction_MgonGGTPgS_kMg2onGTPgS=0.002;

	reaction_MgonGGTPgS=Function_for_MgonGGTPgS(x(17), compartment_M, const_species_Mg2_C, reaction_MgonGGTPgS_kMg2onGTPgS);

% Reaction: id = GGTPase, name = GGTPase	% Local Parameter:   id =  kGGTPase, name = kGGTPase
	reaction_GGTPase_kGGTPase=1.8;

	reaction_GGTPase=compartment_M*Function_for_GGTPase(x(8), global_par_MgSat10, reaction_GGTPase_kGGTPase);

% Reaction: id = GTPon, name = GTPon	% Local Parameter:   id =  kGTPoff, name = kGTPoff
	reaction_GTPon_kGTPoff=0.08;
	% Local Parameter:   id =  kGTPon, name = kGTPon
	reaction_GTPon_kGTPon=0.45;

	reaction_GTPon=Function_for_GTPon(x(15), x(10), x(14), compartment_M, reaction_GTPon_kGTPoff, reaction_GTPon_kGTPon);

% Reaction: id = GTPgSon, name = GTPgSon	% Local Parameter:   id =  kGTPgSoff, name = kGTPgSoff
	reaction_GTPgSon_kGTPgSoff=0.005;
	% Local Parameter:   id =  kGTPgSon, name = kGTPgSon
	reaction_GTPgSon_kGTPgSon=0.006;

	reaction_GTPgSon=Function_for_GTPgSon(x(17), x(1), x(14), compartment_M, reaction_GTPgSon_kGTPgSoff, reaction_GTPgSon_kGTPgSon);

% Reaction: id = GDPbSon, name = GDPbSon	% Local Parameter:   id =  kGDPbSon, name = kGDPbSon
	reaction_GDPbSon_kGDPbSon=0.28;
	% Local Parameter:   id =  kGGDPbSoff, name = kGGDPbSoff
	reaction_GDPbSon_kGGDPbSoff=0.1;

	reaction_GDPbSon=Function_for_GDPbSon(x(7), x(4), x(14), compartment_M, global_par_OxoSat, reaction_GDPbSon_kGDPbSon, reaction_GDPbSon_kGGDPbSoff);

% Reaction: id = MgGTPon, name = MgGTPon	% Local Parameter:   id =  kMg2onGTP, name = kMg2onGTP
	reaction_MgGTPon_kMg2onGTP=0.003;

	reaction_MgGTPon=Function_for_MgGTPon(x(15), compartment_M, const_species_Mg2_C, reaction_MgGTPon_kMg2onGTP);

% Reaction: id = GDPdissoc, name = GDPdissoc	% Local Parameter:   id =  TonicAct, name = TonicAct
	reaction_GDPdissoc_TonicAct=0.002;
	% Local Parameter:   id =  kGDPoff, name = kGDPoff
	reaction_GDPdissoc_kGDPoff=0.5;
	% Local Parameter:   id =  kGDPon, name = kGDPon
	reaction_GDPdissoc_kGDPon=0.003;

	reaction_GDPdissoc=Function_for_GDPdissoc(x(9), x(22), x(14), compartment_M, global_par_OxoSat, reaction_GDPdissoc_TonicAct, reaction_GDPdissoc_kGDPoff, reaction_GDPdissoc_kGDPon);

% Reaction: id = PIP2_5Pase, name = PIP2_5Pase	% Local Parameter:   id =  kPIP2Pase, name = kPIP2Pase
	reaction_PIP2_5Pase_kPIP2Pase=0.005;

	reaction_PIP2_5Pase=compartment_M*Function_for_PIP2_5Pase(global_par_MgSat20, x(3), reaction_PIP2_5Pase_kPIP2Pase);

% Reaction: id = PLC, name = PLC	% Local Parameter:   id =  PLCspont, name = PLCspont
	reaction_PLC_PLCspont=7.5E-4;
	% Local Parameter:   id =  kPLC, name = kPLC
	reaction_PLC_kPLC=4.8;

	reaction_PLC=Function_for_PLC(compartment_M, x(3), reaction_PLC_PLCspont, global_par_fGactive, reaction_PLC_kPLC);

% Reaction: id = AlF4on, name = AIF4on	% Local Parameter:   id =  kAlF4off, name = kAlF4off
	reaction_AlF4on_kAlF4off=0.005;
	% Local Parameter:   id =  kAlF4on, name = kAlF4on
	reaction_AlF4on_kAlF4on=7.0E-6;

	reaction_AlF4on=Function_for_AIF4on(x(13), x(16), x(22), compartment_M, reaction_AlF4on_kAlF4off, reaction_AlF4on_kAlF4on);

% Reaction: id = PI4Kinase, name = PI4Kinase	% Local Parameter:   id =  kPI4Kinase, name = kPI4Kinase
	reaction_PI4Kinase_kPI4Kinase=1.0E-4;

	reaction_PI4Kinase=Function_for_PI4Kinase(global_par_ATPSat1000, compartment_M, global_par_MgSat20, x(18), reaction_PI4Kinase_kPI4Kinase);

% Reaction: id = MgonGDPAlF4, name = MgonGDPAIF4	% Local Parameter:   id =  kMgonAlF4, name = kMgonAlF4
	reaction_MgonGDPAlF4_kMgonAlF4=0.002;

	reaction_MgonGDPAlF4=Function_for_MgonGDPAIF4(x(16), compartment_M, const_species_Mg2_C, reaction_MgonGDPAlF4_kMgonAlF4);

% Species:   id = Mg2_C, name = Mg2_C, constant	const_species_Mg2_C=2100.0;

%Event: id=event_0000001_0
	event_event_0000001_0=time >= 3;

	if(event_event_0000001_0) 
		x(6)=10;
	end

%Event: id=event_0000002_0
	event_event_0000002_0=time >= 8;

	if(event_event_0000002_0) 
		x(6)=0;
	end

	xdot=zeros(22,1);
	
% Species:   id = GTPgS_C, name = GTPgS_C, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*((-9.967E-4 * reaction_GTPgSon));
	
% Species:   id = KCNQsites_M, name = KCNQsites_M, affected by kineticLaw
	xdot(2) = (1/(compartment_M))*((-1.0 * reaction_PIP2binding));
	
% Species:   id = PIP2_M, name = PIP2_M, affected by kineticLaw
	xdot(3) = (1/(compartment_M))*(( 1.0 * reaction_PIP5kinase) + (-1.0 * reaction_PIP2binding) + (-1.0 * reaction_PIP2_5Pase) + (-1.0 * reaction_PLC));
	
% Species:   id = GGDPbS_M, name = GGDPbS_M, affected by kineticLaw
	xdot(4) = (1/(compartment_M))*(( 1.0 * reaction_GDPbSon));
	
% Species:   id = ATP_C, name = ATP_C, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*((-9.967E-4 * reaction_PIP5kinase) + (-9.967E-4 * reaction_PI4Kinase));
	
% Species:   id = oxoM_EX, name = oxoM_EX
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = GDPbS_C, name = GDPbS_C, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytoplasm))*((-9.967E-4 * reaction_GDPbSon));
	
% Species:   id = GGTPMg_M, name = GGTPMg_M, affected by kineticLaw
	xdot(8) = (1/(compartment_M))*((-1.0 * reaction_GGTPase) + ( 1.0 * reaction_MgGTPon));
	
% Species:   id = GDP_C, name = GDP_C, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytoplasm))*(( 9.967E-4 * reaction_GDPdissoc));
	
% Species:   id = GTP_C, name = GTP_C, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = GGDPAlF4Mg_M, name = GGDPAIF4Mg_M, affected by kineticLaw
	xdot(11) = (1/(compartment_M))*(( 1.0 * reaction_MgonGDPAlF4));
	
% Species:   id = ip3_C, name = IP3_C, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytoplasm))*((-1.666111296E-18 * reaction_IP3Phosphatase) + ( 9.967E-4 * reaction_PLC));
	
% Species:   id = AlF4_C, name = AIF4_C, affected by kineticLaw
	xdot(13) = (1/(compartment_Cytoplasm))*((-9.967E-4 * reaction_AlF4on));
	
% Species:   id = G_M, name = G_M, affected by kineticLaw
	xdot(14) = (1/(compartment_M))*((-1.0 * reaction_GTPon) + (-1.0 * reaction_GTPgSon) + (-1.0 * reaction_GDPbSon) + ( 1.0 * reaction_GDPdissoc));
	
% Species:   id = GGTP_M, name = GGTP_M, affected by kineticLaw
	xdot(15) = (1/(compartment_M))*(( 1.0 * reaction_GTPon) + (-1.0 * reaction_MgGTPon));
	
% Species:   id = GGDPAlF4_M, name = GGDPAIF4_M, affected by kineticLaw
	xdot(16) = (1/(compartment_M))*(( 1.0 * reaction_AlF4on) + (-1.0 * reaction_MgonGDPAlF4));
	
% Species:   id = GGTPgS_M, name = GGTPgS_M, affected by kineticLaw
	xdot(17) = (1/(compartment_M))*((-1.0 * reaction_MgonGGTPgS) + ( 1.0 * reaction_GTPgSon));
	
% Species:   id = PI_M, name = PI_M, affected by kineticLaw
	xdot(18) = (1/(compartment_M))*((-1.0 * reaction_PI4Kinase));
	
% Species:   id = PIP_M, name = PIP_M, affected by kineticLaw
	xdot(19) = (1/(compartment_M))*((-1.0 * reaction_PIP5kinase) + ( 1.0 * reaction_PIP2_5Pase) + ( 1.0 * reaction_PI4Kinase));
	
% Species:   id = PIP2xKCNQ_M, name = PIP2xKCNQ_M, affected by kineticLaw
	xdot(20) = (1/(compartment_M))*(( 1.0 * reaction_PIP2binding));
	
% Species:   id = GGTPgSMg_M, name = GGTPgSMg_M, affected by kineticLaw
	xdot(21) = (1/(compartment_M))*(( 1.0 * reaction_MgonGGTPgS));
	
% Species:   id = GGDP_M, name = GGDP_M, affected by kineticLaw
	xdot(22) = (1/(compartment_M))*(( 1.0 * reaction_GGTPase) + (-1.0 * reaction_GDPdissoc) + (-1.0 * reaction_AlF4on));
end

function z=Function_for_PIP2_5Pase(MgSat20,PIP2_M,kPIP2Pase), z=(MgSat20*kPIP2Pase*PIP2_M);end

function z=Function_for_MgonGDPAIF4(GGDPAlF4_M,M,Mg2_C,kMgonAlF4), z=(kMgonAlF4*GGDPAlF4_M*Mg2_C*M);end

function z=Function_for_MgGTPon(GGTP_M,M,Mg2_C,kMg2onGTP), z=(kMg2onGTP*GGTP_M*Mg2_C*M);end

function z=Function_for_PI4Kinase(ATPSat1000,M,MgSat20,PI_M,kPI4Kinase), z=((0.2+0.8*MgSat20)*kPI4Kinase*PI_M*ATPSat1000*M);end

function z=Function_for_PIP2binding(KCNQsites_M,PIP2_M,PIP2xKCNQ_M,kPIP2off,kPIP2on), z=(kPIP2on*KCNQsites_M*PIP2_M+(-kPIP2off*PIP2xKCNQ_M));end

function z=Function_for_IP3Phosphatase(NA_micro,ip3_C,kIP3ase), z=(ip3_C*kIP3ase*NA_micro);end

function z=Function_for_PLC(M,PIP2_M,PLCspont,fGactive,kPLC), z=(kPLC*(fGactive+PLCspont)*PIP2_M*M);end

function z=Function_for_AIF4on(AlF4_C,GGDPAlF4_M,GGDP_M,M,kAlF4off,kAlF4on), z=((kAlF4on*AlF4_C*GGDP_M+(-kAlF4off*GGDPAlF4_M))*M);end

function z=Function_for_GGTPase(GGTPMg_M,MgSat10,kGGTPase), z=(kGGTPase*MgSat10*GGTPMg_M);end

function z=Function_for_PIP5kinase(ATPSat300,MgSat20,PIP_M,kPIP5Kinase), z=((0.2+0.8*MgSat20)*kPIP5Kinase*PIP_M*ATPSat300);end

function z=Function_for_GDPdissoc(GDP_C,GGDP_M,G_M,M,OxoSat,TonicAct,kGDPoff,kGDPon), z=((kGDPoff*GGDP_M*(OxoSat+TonicAct)+(-kGDPon*GDP_C*G_M))*M);end

function z=Function_for_GTPon(GGTP_M,GTP_C,G_M,M,kGTPoff,kGTPon), z=((kGTPon*G_M*GTP_C+(-kGTPoff*GGTP_M))*M);end

function z=Function_for_GTPgSon(GGTPgS_M,GTPgS_C,G_M,M,kGTPgSoff,kGTPgSon), z=((kGTPgSon*G_M*GTPgS_C+(-kGTPgSoff*GGTPgS_M))*M);end

function z=Function_for_GDPbSon(GDPbS_C,GGDPbS_M,G_M,M,OxoSat,kGDPbSon,kGGDPbSoff), z=((kGDPbSon*G_M*GDPbS_C+(-kGGDPbSoff*(1+20*OxoSat)*GGDPbS_M))*M);end

function z=Function_for_MgonGGTPgS(GGTPgS_M,M,Mg2_C,kMg2onGTPgS), z=(kMg2onGTPgS*GGTPgS_M*Mg2_C*M);end

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


