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
% Model name = Sedaghat2002_InsulinSignalling_noFeedback
%
% is http://identifiers.org/biomodels.db/MODEL6526728774
% is http://identifiers.org/biomodels.db/BIOMD0000000137
% isDescribedBy http://identifiers.org/pubmed/12376338
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1201140005
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1201140006
% isDerivedFrom http://identifiers.org/pubmed/1890850
% isDerivedFrom http://identifiers.org/pubmed/1890848
% isDerivedFrom http://identifiers.org/pubmed/8304439
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 1.0E8;
	x0(2) = 900.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 100.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1000.0;
	x0(10) = 0.0;
	x0(11) = 100.0;
	x0(12) = 0.0;
	x0(13) = 0.31;
	x0(14) = 99.4;
	x0(15) = 0.29;
	x0(16) = 100.0;
	x0(17) = 0.0;
	x0(18) = 100.0;
	x0(19) = 0.0;
	x0(20) = 96.0;
	x0(21) = 4.0;


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

% Compartment: id = CellSurface, name = CellSurface, constant
	compartment_CellSurface=1.0;
% Compartment: id = Intracellular, name = Intracellular, constant
	compartment_Intracellular=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=6.0E-8;
% Parameter:   id =  kminus1, name = kminus1
	global_par_kminus1=0.2;
% Parameter:   id =  k2, name = k2
	global_par_k2=6.0E-8;
% Parameter:   id =  kminus2, name = kminus2
	global_par_kminus2=20.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=2500.0;
% Parameter:   id =  kminus3, name = kminus3
	global_par_kminus3=0.2;
% Parameter:   id =  k4, name = k4
	global_par_k4=3.3333334E-4;
% Parameter:   id =  kminus4, name = kminus4
	global_par_kminus4=0.003;
% Parameter:   id =  k4prime, name = k4prime
	global_par_k4prime=0.0021;
% Parameter:   id =  kminus4prime, name = kminus4prime
	global_par_kminus4prime=2.1E-4;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0;
% Parameter:   id =  kminus5, name = kminus5
	global_par_kminus5=1.67E-18;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.461;
% Parameter:   id =  k7, name = k7
	global_par_k7=4.16;
% Parameter:   id =  kminus7, name = kminus7
	global_par_kminus7=1.396;
% Parameter:   id =  k8, name = k8
	global_par_k8=7.06E-4;
% Parameter:   id =  kminus8, name = kminus8
	global_par_kminus8=10.0;
% Parameter:   id =  k9, name = k9
% Parameter:   id =  k9_stimulated, name = k9_stimulated
	global_par_k9_stimulated=1.39;
% Parameter:   id =  k9_basal, name = k9_basal
	global_par_k9_basal=0.13145;
% Parameter:   id =  kminus9, name = kminus9
	global_par_kminus9=42.15;
% Parameter:   id =  k10, name = k10
	global_par_k10=2.961;
% Parameter:   id =  kminus10, name = kminus10
	global_par_kminus10=2.77;
% Parameter:   id =  k11, name = k11
% Parameter:   id =  kminus11, name = kminus11
	global_par_kminus11=6.9315;
% Parameter:   id =  k12, name = k12
% Parameter:   id =  kminus12, name = kminus12
	global_par_kminus12=6.9315;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.00696;
% Parameter:   id =  kminus13, name = kminus13
	global_par_kminus13=0.167;
% Parameter:   id =  k13prime, name = k13prime
% Parameter:   id =  k14, name = k14
	global_par_k14=0.11088;
% Parameter:   id =  kminus14, name = kminus14
	global_par_kminus14=0.001155;
% Parameter:   id =  Effect, name = Effect
% Parameter:   id =  IRp, name = IRp
	global_par_IRp=897.0;
% Parameter:   id =  SHIP, name = SHIP
	global_par_SHIP=1.0;
% Parameter:   id =  PTEN, name = PTEN
	global_par_PTEN=1.0;
% Parameter:   id =  PTP, name = PTP
	global_par_PTP=1.0;
% Parameter:   id =  APequil, name = APequil
	global_par_APequil=9.09091;
% Parameter:   id =  PI3K, name = PI3K
	global_par_PI3K=5.0;
% Parameter:   id =  x4x5, name = x4x5
% assignmentRule: variable = k9
	global_par_k9=(global_par_k9_stimulated+global_par_k9_basal)*x(12)/global_par_PI3K+global_par_k9_basal;
% assignmentRule: variable = k11
	global_par_k11=0.1*global_par_kminus11*(x(13)-0.31)/(3.1-0.31);
% assignmentRule: variable = k12
	global_par_k12=0.1*global_par_kminus12*(x(13)-0.31)/(3.1-0.31);
% assignmentRule: variable = Effect
	global_par_Effect=(0.2*x(17)+0.8*x(19))/global_par_APequil;
% assignmentRule: variable = k13prime
	global_par_k13prime=(40/60-4/96)*global_par_kminus13*global_par_Effect;
% assignmentRule: variable = x4x5
	global_par_x4x5=x(5)+x(4);

% Reaction: id = R1, name = Insulin binding
	reaction_R1=compartment_CellSurface*(global_par_k1*x(1)*x(2)-global_par_kminus1*x(3));

% Reaction: id = R2, name = Receptor Autophosphorylation
	reaction_R2=compartment_CellSurface*global_par_k3*x(3);

% Reaction: id = R3, name = Insulin Binding
	reaction_R3=compartment_CellSurface*global_par_k2*x(1)*x(4)-global_par_kminus2*x(5);

% Reaction: id = R4, name = Receptor dephosphorylation
	reaction_R4=compartment_CellSurface*global_par_kminus3*global_par_PTP*x(4);

% Reaction: id = R5, name = Receptor endocytosis
	reaction_R5=compartment_CellSurface*(global_par_k4*x(2)-global_par_kminus4*x(6));

% Reaction: id = R6, name = Receptor transport
	reaction_R6=compartment_CellSurface*(global_par_k4prime*x(5)-global_par_kminus4prime*x(7));

% Reaction: id = R7, name = Receptor transport
	reaction_R7=compartment_CellSurface*(global_par_k4prime*x(4)-global_par_kminus4prime*x(8));

% Reaction: id = R8, name = Receptor synthesis
	reaction_R8=compartment_Intracellular*global_par_k5;

% Reaction: id = R9, name = Receptor degradation
	reaction_R9=compartment_Intracellular*global_par_kminus5*x(6);

% Reaction: id = R10, name = Intracellular receptor dephosphorylation
	reaction_R10=compartment_Intracellular*global_par_k6*global_par_PTP*x(7);

% Reaction: id = R11, name = Intracellular receptor dephosphorylation
	reaction_R11=compartment_Intracellular*global_par_k6*global_par_PTP*x(8);

% Reaction: id = R12, name = IRS1 activation
	reaction_R12=compartment_Intracellular*(global_par_k7*x(9)*(x(5)+x(4))/global_par_IRp-global_par_kminus7*global_par_PTP*x(10));

% Reaction: id = R13, name = IRS1-PI3K complex formation
	reaction_R13=compartment_Intracellular*(global_par_k8*x(10)*x(11)-global_par_kminus8*x(12));

% Reaction: id = R14, name = PI 3,4,5 P3 generation
	reaction_R14=compartment_Intracellular*(global_par_k9*x(14)-global_par_kminus9*global_par_PTEN*x(13));

% Reaction: id = R15, name = PI 3,4,5P3 generation
	reaction_R15=compartment_Intracellular*(global_par_k10*x(15)-global_par_kminus10*global_par_SHIP*x(13));

% Reaction: id = R16, name = Akt activation
	reaction_R16=compartment_Intracellular*(global_par_k11*x(16)-global_par_kminus11*x(17));

% Reaction: id = R17, name = PKC activation
	reaction_R17=compartment_Intracellular*(global_par_k12*x(18)-global_par_kminus12*x(19));

% Reaction: id = R18, name = GLUT4 synthesis
	reaction_R18=compartment_Intracellular*global_par_k14;

% Reaction: id = R19, name = GLUT4 degradation
	reaction_R19=compartment_Intracellular*global_par_kminus14*x(20);

% Reaction: id = R20, name = GLUT4 translocation
	reaction_R20=compartment_Intracellular*((global_par_k13+global_par_k13prime)*x(20)-global_par_kminus13*x(21));

%Event: id=event_0000001
	event_event_0000001=t >= 15;

	if(event_event_0000001) 
		x(1)=0;
	end

%Event: id=event_0000002
	event_event_0000002=(x(6)+x(7)+x(8)) > 100;

	if(event_event_0000002) 
		global_par_k5=1.67E-2;
	end

%Event: id=event_0000003
	event_event_0000003=(x(6)+x(7)+x(8)) <= 100;

	if(event_event_0000003) 
		global_par_k5=0.1002;
	end

	xdot=zeros(21,1);
	
% Species:   id = x1, name = Insulin
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = x2, name = Unbound Insulin Receptor, affected by kineticLaw
	xdot(2) = (1/(compartment_CellSurface))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = x3, name = Unphosphorylated once bound receptor, affected by kineticLaw
	xdot(3) = (1/(compartment_CellSurface))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = x5, name = Phosphorylated once bound receptor, affected by kineticLaw
	xdot(4) = (1/(compartment_CellSurface))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R7));
	
% Species:   id = x4, name = Phosphorylated twice bound receptor, affected by kineticLaw
	xdot(5) = (1/(compartment_CellSurface))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R6));
	
% Species:   id = x6, name = Unbound unphosphorylated intracellular receptor, affected by kineticLaw
	xdot(6) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11));
	
% Species:   id = x7, name = Phosphorylated twice bound intracellular receptor, affected by kineticLaw
	xdot(7) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R10));
	
% Species:   id = x8, name = Phosphorylated once bound intracellular receptor, affected by kineticLaw
	xdot(8) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R11));
	
% Species:   id = x9, name = Unphosphorylated IRS1, affected by kineticLaw
	xdot(9) = (1/(compartment_Intracellular))*((-1.0 * reaction_R12));
	
% Species:   id = x10, name = Phosphorylated IRS1, affected by kineticLaw
	xdot(10) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13));
	
% Species:   id = x11, name = PI3 Kinase, affected by kineticLaw
	xdot(11) = (1/(compartment_Intracellular))*((-1.0 * reaction_R13));
	
% Species:   id = x12, name = IRS1- PI3 Kinase Complex, affected by kineticLaw
	xdot(12) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R13));
	
% Species:   id = x13, name = PI3,4,5P3, affected by kineticLaw
	xdot(13) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = x14, name = PI4,5P2, affected by kineticLaw
	xdot(14) = (1/(compartment_Intracellular))*((-1.0 * reaction_R14));
	
% Species:   id = x15, name = PI3,4P2, affected by kineticLaw
	xdot(15) = (1/(compartment_Intracellular))*((-1.0 * reaction_R15));
	
% Species:   id = x16, name = Unactivated Akt, affected by kineticLaw
	xdot(16) = (1/(compartment_Intracellular))*((-1.0 * reaction_R16));
	
% Species:   id = x17, name = Activated Akt, affected by kineticLaw
	xdot(17) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R16));
	
% Species:   id = x18, name = Unactivated PKC, affected by kineticLaw
	xdot(18) = (1/(compartment_Intracellular))*((-1.0 * reaction_R17));
	
% Species:   id = x19, name = Activated PKC, affected by kineticLaw
	xdot(19) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R17));
	
% Species:   id = x20, name = Intracellular GLUT4, affected by kineticLaw
	xdot(20) = (1/(compartment_Intracellular))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = x21, name = Cell surface GLUT4, affected by kineticLaw
	xdot(21) = (1/(compartment_CellSurface))*(( 1.0 * reaction_R20));
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


