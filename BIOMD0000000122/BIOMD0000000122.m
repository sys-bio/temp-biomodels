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
% Model name = Fisher2006_Ca_Oscillation_dpdnt_NFAT_dynamics
%
% is http://identifiers.org/biomodels.db/MODEL2977476330
% is http://identifiers.org/biomodels.db/BIOMD0000000122
% isDescribedBy http://identifiers.org/pubmed/17031595
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 5.219E-4;
	x0(4) = 5.05E-5;
	x0(5) = 2.272E-4;
	x0(6) = 9.477E-4;
	x0(7) = 2.5E-6;
	x0(8) = 0.049198;
	x0(9) = 1.101E-4;
	x0(10) = 9.1E-6;
	x0(11) = 0.0094397;
	x0(12) = 6.1E-6;
	x0(13) = 2.2E-6;
	x0(14) = 0.0097108;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=2.69E-13;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.13E-13;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.56E-5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.00256;
% Parameter:   id =  k16, name = k16
	global_par_k16=6.63;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.00168;
% Parameter:   id =  k18, name = k18
	global_par_k18=9.6E-4;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.0015;
% Parameter:   id =  k6, name = k6
	global_par_k6=9.2E-4;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0019;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.00256;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.5;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.00168;
% Parameter:   id =  k11, name = k11
	global_par_k11=6.63;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.005;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.5;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.005;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.5;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.005;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.5;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=1.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.21;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.5;
% Parameter:   id =  Time_in_Seconds, name = Time_in_Seconds
	global_par_Time_in_Seconds=100.0;

% Reaction: id = R1, name = Calcineurin dpdnt NFAT dephosphorylation
	reaction_R1=compartment_nucleus*(global_par_k1*x(5)-global_par_k2*x(3));

% Reaction: id = R2, name = NFAT Calcineurin complex formation
	reaction_R2=compartment_nucleus*(global_par_k16*x(3)*x(4)-global_par_k15*x(6));

% Reaction: id = R3, name = NFAT transport
	reaction_R3=compartment_nucleus*global_par_k18*x(3)-compartment_cytosol*global_par_k17*x(9);

% Reaction: id = R4, name = Active Calcineurin transport
	reaction_R4=compartment_nucleus*global_par_k6*x(4)-compartment_cytosol*global_par_k5*x(10);

% Reaction: id = R5, name = NFAT Calcineurin complex phosphorylation
	reaction_R5=compartment_nucleus*(global_par_k14*x(6)-global_par_k13*x(7));

% Reaction: id = R6, name = Phosphorylated NFAT Calcineurin complex disassembly
	reaction_R6=compartment_nucleus*(global_par_k12*x(7)-global_par_k11*x(5)*x(4));

% Reaction: id = R7, name = NFAT Calcineurin complex transport
	reaction_R7=compartment_nucleus*global_par_k10*x(6)-compartment_cytosol*global_par_k9*x(12);

% Reaction: id = R8, name = NFAT Calcineurin complex phosphorylation
	reaction_R8=compartment_cytosol*(global_par_k14*x(12)-global_par_k13*x(13));

% Reaction: id = R9, name = Phosphorylated NFAT Calcineurin complex disassembly
	reaction_R9=compartment_cytosol*(global_par_k12*x(13)-global_par_k11*x(11)*x(10));

% Reaction: id = R10, name = Phosphorylated NFAT transport
	reaction_R10=compartment_cytosol*global_par_k3*x(11)-compartment_nucleus*global_par_k4*x(5);

% Reaction: id = R11, name = NFAT Calcineurin complex disassembly
	reaction_R11=compartment_cytosol*(global_par_k15*x(12)-global_par_k16*x(9)*x(10));

% Reaction: id = R17, name = Phosphorylated NFAT Calcineurin complex transport
	reaction_R17=compartment_cytosol*global_par_k7*x(13)-compartment_nucleus*global_par_k8*x(7);

% Reaction: id = R12, name = Calcineurin dpdnt NFAT dephosphorylation
	reaction_R12=compartment_cytosol*(global_par_k1*x(11)-global_par_k2*x(9));

% Reaction: id = R13, name = Calcineurin activation
	reaction_R13=compartment_cytosol*(global_par_k19*x(14)*x(2)^3-global_par_k20*x(10));

% Reaction: id = R14, name = Calcineurin activation
	reaction_R14=compartment_nucleus*(global_par_k19*x(8)*x(1)^3-global_par_k20*x(4));

% Reaction: id = R15, name = Inactive Calcineurin transport
	reaction_R15=compartment_cytosol*global_par_k5*x(14)-compartment_nucleus*global_par_k6*x(8);

% Reaction: id = R16, name = Calcium transport
	reaction_R16=compartment_cytosol*global_par_k21*x(2)-compartment_nucleus*global_par_k22*x(1);

%Event: id=event_0000001
	event_event_0000001=((global_par_Time_in_Seconds-t) <= 0) && (t < 1500);

	if(event_event_0000001) 
		global_par_Time_in_Seconds=global_par_Time_in_Seconds+100;
		x(2)=1;
		x(1)=1;
	end

%Event: id=event_0000002
	event_event_0000002=((global_par_Time_in_Seconds-t) <= 90) && (t < 1500);

	if(event_event_0000002) 
		x(2)=0.1;
		x(1)=0.1;
	end

%Event: id=event_0000003
	event_event_0000003=t >= 1500;

	if(event_event_0000003) 
		x(2)=0.1;
		x(1)=0.1;
	end

	xdot=zeros(14,1);
	
% Species:   id = Ca_Nuc, name = Calcium in Nucleus	xdot(1) = ;
	
% Species:   id = Ca_Cyt, name = Calcium in Cytosol	xdot(2) = ;
	
% Species:   id = NFAT_Nuc, name = NFAT_nuc, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = Act_C_Nuc, name = Active Calcineurin in Nucleus, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R6) + ( 1.0 * reaction_R14));
	
% Species:   id = NFAT_Pi_Nuc, name = Phosphorylated NFAT in nucleus, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R6) + ( 1.0 * reaction_R10));
	
% Species:   id = NFAT_Act_C_Nuc, name = NFAT Calcineurin complex in nucleus, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R5) + (-1.0 * reaction_R7));
	
% Species:   id = NFAT_Pi_Act_C_Nuc, name = Phosphorylated NFAT Calcineurin complex in nucleus, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R17));
	
% Species:   id = Inact_C_Nuc, name = Inactive Calcineurin in nucleus, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*((-1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = NFAT_Cyt, name = NFAT_Cyt, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_R3) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R12));
	
% Species:   id = Act_C_Cyt, name = Active Calcineurin in cytosol, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_R4) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12) + ( 1.0 * reaction_R13));
	
% Species:   id = NFAT_Pi_Cyt, name = Phosphorylated NFAT in cytosol, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10) + (-1.0 * reaction_R12));
	
% Species:   id = NFAT_Act_C_Cyt, name = NFAT Calcineurin complex in cytosol, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R11));
	
% Species:   id = NFAT_Pi_Act_C_Cyt, name = Phosphorylated NFAT Calcineurin complex in cytosol, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R17));
	
% Species:   id = Inact_C_Cyt, name = Inactive Calcineurin in cytosol, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*((-1.0 * reaction_R13) + (-1.0 * reaction_R15));
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


