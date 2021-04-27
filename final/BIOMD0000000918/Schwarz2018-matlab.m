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
% Model name = Schwarz2018-Cdk Activity Threshold Determines Passage through the Restriction Point
%
% is http://identifiers.org/biomodels.db/MODEL2003030001
% is http://identifiers.org/biomodels.db/BIOMD0000000918
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 55.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 2.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  kE, name = kE
	global_par_kE=0.4;
% Parameter:   id =  kM, name = kM
	global_par_kM=1.0;
% Parameter:   id =  kCD, name = kCD
	global_par_kCD=0.03;
% Parameter:   id =  kCDS, name = kCDS
	global_par_kCDS=0.45;
% Parameter:   id =  kR, name = kR
	global_par_kR=0.18;
% Parameter:   id =  kRE, name = kRE
	global_par_kRE=180.0;
% Parameter:   id =  kb, name = kb
	global_par_kb=0.003;
% Parameter:   id =  KS, name = KS
	global_par_KS=0.5;
% Parameter:   id =  kCE, name = kCE
	global_par_kCE=0.35;
% Parameter:   id =  dM, name = dM
	global_par_dM=0.7;
% Parameter:   id =  dE, name = dE
	global_par_dE=0.25;
% Parameter:   id =  dCD, name = dCD
	global_par_dCD=1.5;
% Parameter:   id =  dCE, name = dCE
	global_par_dCE=1.5;
% Parameter:   id =  dR, name = dR
	global_par_dR=0.06;
% Parameter:   id =  dRP, name = dRP
	global_par_dRP=0.06;
% Parameter:   id =  dRE, name = dRE
	global_par_dRE=0.03;
% Parameter:   id =  kP1, name = kP1
	global_par_kP1=18.0;
% Parameter:   id =  kP2, name = kP2
	global_par_kP2=18.0;
% Parameter:   id =  kDP, name = kDP
	global_par_kDP=3.6;
% Parameter:   id =  KM, name = KM
	global_par_KM=0.15;
% Parameter:   id =  KE, name = KE
	global_par_KE=0.15;
% Parameter:   id =  KCD, name = KCD
	global_par_KCD=0.92;
% Parameter:   id =  KCE, name = KCE
	global_par_KCE=0.92;
% Parameter:   id =  KRP, name = KRP
	global_par_KRP=0.01;
% Parameter:   id =  kpfb, name = kpfb
	global_par_kpfb=4.0;

% Reaction: id = For_Myc, name = For Myc
	reaction_For_Myc=compartment_Cell*Rate_Law_for_For_M__1__1__1(global_par_KS, x(1), global_par_dM, global_par_kM, x(8));

% Reaction: id = For_E2F, name = For E2F
	reaction_For_E2F=compartment_Cell*Rate_Law_for_For_E__1__1(x(3), x(4), x(2), global_par_KCD, global_par_KCE, global_par_KE, global_par_KM, x(1), x(5), x(7), global_par_dE, global_par_kE, global_par_kP1, global_par_kP2, global_par_kRE, global_par_kb, global_par_kpfb);

% Reaction: id = For_CycD, name = For CycD
	reaction_For_CycD=compartment_Cell*Rate_Law_for_For_CD_1(x(3), global_par_KM, global_par_KS, x(1), global_par_dCD, global_par_kCD, global_par_kCDS, x(8));

% Reaction: id = for_CycE, name = for CycE
	reaction_for_CycE=compartment_Cell*Rate_Law_for_for_CE_1(x(4), x(2), global_par_KE, global_par_dCE, global_par_kCE);

% Reaction: id = For_Rb, name = For Rb
	reaction_For_Rb=compartment_Cell*Rate_Law_for_For_R_1(x(3), x(4), x(2), global_par_KCD, global_par_KCE, global_par_KRP, x(6), x(5), global_par_dR, global_par_kDP, global_par_kP1, global_par_kP2, global_par_kR, global_par_kRE);

% Reaction: id = for_Phosphorylated_Rb, name = for Phosphorylated Rb
	reaction_for_Phosphorylated_Rb=compartment_Cell*Rate_Law_for_for_RP__1__1__1(x(3), x(4), global_par_KCD, global_par_KCE, x(6), x(5), x(7), global_par_dRP, global_par_kP1, global_par_kP2);

% Reaction: id = for_Rb_E2F_complex, name = for Rb-E2F complex
	reaction_for_Rb_E2F_complex=compartment_Cell*Rate_Law_for_for_RE__1__1__1(x(3), x(4), global_par_KCD, global_par_KCE, x(7), global_par_dRE, global_par_kP1, global_par_kP2, global_par_kRE);

%Event: id=Serum_Pulse
	event_Serum_Pulse=time > 10;

	if(event_Serum_Pulse) 
		x(8)=0;
	end

	xdot=zeros(8,1);
	
% Species:   id = Myc, name = Myc, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_For_Myc));
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_For_E2F));
	
% Species:   id = CycD, name = CycD, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_For_CycD));
	
% Species:   id = CycE, name = CycE, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_for_CycE));
	
% Species:   id = Rb, name = Rb, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_For_Rb));
	
% Species:   id = Phosphorylated_Rb, name = Phosphorylated Rb, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_for_Phosphorylated_Rb));
	
% Species:   id = Rb_E2F_complex, name = Rb-E2F complex, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_for_Rb_E2F_complex));
	
% Species:   id = serum, name = serum
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
end

function z=Rate_Law_for_for_RE__1__1__1(CycD,CycE,KCD,KCE,Rb_E2F_complex,dRE,kP1,kP2,kRE), z=(kRE-kP1*CycD*Rb_E2F_complex/(KCD+Rb_E2F_complex)+kP2*CycE*Rb_E2F_complex/(KCE+Rb_E2F_complex)-dRE*Rb_E2F_complex);end

function z=Rate_Law_for_For_E__1__1(CycD,CycE,E2F,KCD,KCE,KE,KM,Myc,Rb,Rb_E2F_complex,dE,kE,kP1,kP2,kRE,kb,kpfb), z=(kE*(kpfb+Myc/(KM+Myc))*E2F/(KE+E2F)+kb*Myc/(KM+Myc)+kP1*CycD*Rb_E2F_complex/(KCD+Rb_E2F_complex)+kP2*CycE*Rb_E2F_complex/(KCE+Rb_E2F_complex)-dE*E2F-kRE*Rb*E2F);end

function z=Rate_Law_for_for_CE_1(CycE,E2F,KE,dCE,kCE), z=(kCE*E2F/(KE+E2F)-dCE*CycE);end

function z=Rate_Law_for_For_CD_1(CycD,KM,KS,Myc,dCD,kCD,kCDS,serum), z=(kCD*Myc/(KM+Myc)+kCDS*serum/(KS+serum)-dCD*CycD);end

function z=Rate_Law_for_For_R_1(CycD,CycE,E2F,KCD,KCE,KRP,Phosphorylated_Rb,Rb,dR,kDP,kP1,kP2,kR,kRE), z=(kR+kDP*Phosphorylated_Rb/(KRP+Phosphorylated_Rb)-kRE*Rb*E2F-kP1*CycD*Rb/(KCD+Rb)-kP2*CycE*Rb/(KCE+Rb)-dR*Rb);end

function z=Rate_Law_for_for_RP__1__1__1(CycD,CycE,KCD,KCE,Phosphorylated_Rb,Rb,Rb_E2F_complex,dRP,kP1,kP2), z=(kP1*CycD*Rb/(KCD+Rb)+kP2*CycE*Rb/(KCE+Rb_E2F_complex)+kP1*CycD*Rb_E2F_complex/(KCD+Rb_E2F_complex)+kP2*CycE*Rb_E2F_complex/(KCE+Rb_E2F_complex)-dRP*Phosphorylated_Rb);end

function z=Rate_Law_for_For_M__1__1__1(KS,Myc,dM,kM,serum), z=(kM*Myc/(KS+serum)-dM*Myc);end

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


