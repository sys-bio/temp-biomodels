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
% Model name = Yao2008_Rb_E2F_Switch
%
% is http://identifiers.org/biomodels.db/MODEL1102090000
% is http://identifiers.org/biomodels.db/BIOMD0000000318
% isDescribedBy http://identifiers.org/pubmed/18364697
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.55;
	x0(7) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  S, name = S
	global_par_S=1.0;

% Reaction: id = r1	% Local Parameter:   id =  KS, name = KS
	reaction_r1_KS=0.5;
	% Local Parameter:   id =  kM, name = kM
	reaction_r1_kM=1.0;

	reaction_r1=compartment_cell*reaction_r1_kM*global_par_S/(reaction_r1_KS+global_par_S);

% Reaction: id = r2	% Local Parameter:   id =  KS, name = KS
	reaction_r2_KS=0.5;
	% Local Parameter:   id =  kkCDS, name = kkCDS
	reaction_r2_kkCDS=0.45;

	reaction_r2=compartment_cell*reaction_r2_kkCDS*global_par_S/(reaction_r2_KS+global_par_S);

% Reaction: id = r3	% Local Parameter:   id =  KEF, name = KEF
	reaction_r3_KEF=0.15;
	% Local Parameter:   id =  KMC, name = KMC
	reaction_r3_KMC=0.15;
	% Local Parameter:   id =  kkEF, name = kkEF
	reaction_r3_kkEF=0.4;
	% Local Parameter:   id =  kkb, name = kkb
	reaction_r3_kkb=0.003;

	reaction_r3=compartment_cell*(reaction_r3_kkEF*x(1)*x(2)/((reaction_r3_KMC+x(1))*(reaction_r3_KEF+x(2)))+reaction_r3_kkb*x(1)/(reaction_r3_KMC+x(1)));

% Reaction: id = r4	% Local Parameter:   id =  KEF, name = KEF
	reaction_r4_KEF=0.15;
	% Local Parameter:   id =  kkCE, name = kkCE
	reaction_r4_kkCE=0.35;

	reaction_r4=compartment_cell*reaction_r4_kkCE*x(2)/(reaction_r4_KEF+x(2));

% Reaction: id = r5	% Local Parameter:   id =  KMC, name = KMC
	reaction_r5_KMC=0.15;
	% Local Parameter:   id =  kkCD, name = kkCD
	reaction_r5_kkCD=0.03;

	reaction_r5=compartment_cell*reaction_r5_kkCD*x(1)/(reaction_r5_KMC+x(1));

% Reaction: id = r6	% Local Parameter:   id =  kkRB, name = kkRB
	reaction_r6_kkRB=0.18;

	reaction_r6=compartment_cell*reaction_r6_kkRB;

% Reaction: id = r7	% Local Parameter:   id =  KD, name = KD
	reaction_r7_KD=0.92;
	% Local Parameter:   id =  KE, name = KE
	reaction_r7_KE=0.92;
	% Local Parameter:   id =  kkRBPP, name = kkRBPP
	reaction_r7_kkRBPP=18.0;

	reaction_r7=compartment_cell*(reaction_r7_kkRBPP*x(3)*x(6)/(reaction_r7_KD+x(6))+reaction_r7_kkRBPP*x(4)*x(6)/(reaction_r7_KE+x(6)));

% Reaction: id = r8	% Local Parameter:   id =  kkRE, name = kkRE
	reaction_r8_kkRE=180.0;

	reaction_r8=compartment_cell*reaction_r8_kkRE*x(5)*x(2);

% Reaction: id = r9	% Local Parameter:   id =  KD, name = KD
	reaction_r9_KD=0.92;
	% Local Parameter:   id =  KE, name = KE
	reaction_r9_KE=0.92;
	% Local Parameter:   id =  kkRBP, name = kkRBP
	reaction_r9_kkRBP=18.0;
	% Local Parameter:   id =  kkRBP2, name = kkRBP2
	reaction_r9_kkRBP2=18.0;

	reaction_r9=compartment_cell*(reaction_r9_kkRBP*x(3)*x(5)/(reaction_r9_KD+x(5))+reaction_r9_kkRBP2*x(4)*x(5)/(reaction_r9_KE+x(5)));

% Reaction: id = r10	% Local Parameter:   id =  Kp, name = Kp
	reaction_r10_Kp=0.01;
	% Local Parameter:   id =  kkRBUP, name = kkRBUP
	reaction_r10_kkRBUP=3.6;

	reaction_r10=compartment_cell*reaction_r10_kkRBUP*x(7)/(reaction_r10_Kp+x(7));

% Reaction: id = r11	% Local Parameter:   id =  dMC, name = dMC
	reaction_r11_dMC=0.7;

	reaction_r11=compartment_cell*reaction_r11_dMC*x(1);

% Reaction: id = r12	% Local Parameter:   id =  dEF, name = dEF
	reaction_r12_dEF=0.25;

	reaction_r12=compartment_cell*reaction_r12_dEF*x(2);

% Reaction: id = r13	% Local Parameter:   id =  dCE, name = dCE
	reaction_r13_dCE=1.5;

	reaction_r13=compartment_cell*reaction_r13_dCE*x(4);

% Reaction: id = r14	% Local Parameter:   id =  dCD, name = dCD
	reaction_r14_dCD=1.5;

	reaction_r14=compartment_cell*reaction_r14_dCD*x(3);

% Reaction: id = r15	% Local Parameter:   id =  dRB, name = dRB
	reaction_r15_dRB=0.06;

	reaction_r15=compartment_cell*reaction_r15_dRB*x(5);

% Reaction: id = r16	% Local Parameter:   id =  dRP, name = dRP
	reaction_r16_dRP=0.06;

	reaction_r16=compartment_cell*reaction_r16_dRP*x(7);

% Reaction: id = r17	% Local Parameter:   id =  dRE, name = dRE
	reaction_r17_dRE=0.03;

	reaction_r17=compartment_cell*reaction_r17_dRE*x(6);

%Event: id=e1
	event_e1=t > 0;

	if(event_e1) 
		global_par_S=20;
	end

%Event: id=e2
	event_e2=t > 5;

	if(event_e2) 
		global_par_S=1;
	end

	xdot=zeros(7,1);
	
% Species:   id = MC, name = Myc, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r11));
	
% Species:   id = EF, name = E2F, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_r3) + ( 1.0 * reaction_r7) + (-1.0 * reaction_r8) + (-1.0 * reaction_r12));
	
% Species:   id = CD, name = CycD, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r2) + ( 1.0 * reaction_r5) + (-1.0 * reaction_r14));
	
% Species:   id = CE, name = CycE, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r13));
	
% Species:   id = RB, name = Rb, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r8) + (-1.0 * reaction_r9) + ( 1.0 * reaction_r10) + (-1.0 * reaction_r15));
	
% Species:   id = RE, name = Rb-E2F complex, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_r7) + ( 1.0 * reaction_r8) + (-1.0 * reaction_r17));
	
% Species:   id = RP, name = phosphorylated Rb, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_r7) + ( 1.0 * reaction_r9) + (-1.0 * reaction_r10) + (-1.0 * reaction_r16));
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


