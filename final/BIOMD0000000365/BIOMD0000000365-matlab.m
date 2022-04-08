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
% Model name = Hockin1999_BloodCoagulation_VaInactivation
%
% is http://identifiers.org/biomodels.db/MODEL1108260001
% is http://identifiers.org/biomodels.db/BIOMD0000000365
% isDescribedBy http://identifiers.org/pubmed/10346914
% is http://identifiers.org/go/GO:0007596
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 1.0E-8;
	x0(2) = 2.0E-7;
	x0(3) = 0.0;
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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E8;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.7;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.064;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=5.2E-4;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.028;
% Parameter:   id =  k8, name = k8
	global_par_k8=2570.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.72E-5;
% Parameter:   id =  k10, name = k10
	global_par_k10=2630.0;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_compartment_1*(global_par_k1*x(2)*x(1)-global_par_k2*x(3));

% Reaction: id = r2, name = r2
	reaction_r2=compartment_compartment_1*(global_par_k1*x(4)*x(1)-global_par_k2*x(5));

% Reaction: id = r3, name = r3
	reaction_r3=compartment_compartment_1*(global_par_k1*x(6)*x(1)-global_par_k2*x(7));

% Reaction: id = r4, name = r4
	reaction_r4=compartment_compartment_1*(global_par_k1*x(8)*x(1)-global_par_k2*x(9));

% Reaction: id = r5, name = r5
	reaction_r5=compartment_compartment_1*(global_par_k1*x(10)*x(1)-global_par_k2*x(11));

% Reaction: id = r6, name = r6
	reaction_r6=compartment_compartment_1*(global_par_k1*x(12)*x(1)-global_par_k2*x(13));

% Reaction: id = r7, name = r7
	reaction_r7=compartment_compartment_1*(global_par_k1*x(14)*x(1)-global_par_k2*x(15));

% Reaction: id = r8, name = r8
	reaction_r8=compartment_compartment_1*global_par_k5*x(3);

% Reaction: id = r9, name = r9
	reaction_r9=compartment_compartment_1*global_par_k6*x(7);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_compartment_1*global_par_k3*x(11);

% Reaction: id = r11, name = r11
	reaction_r11=compartment_compartment_1*global_par_k3*x(7);

% Reaction: id = r12, name = r12
	reaction_r12=compartment_compartment_1*global_par_k6*x(9);

% Reaction: id = r13, name = r13
	reaction_r13=compartment_compartment_1*global_par_k3*x(3);

% Reaction: id = r14, name = r14
	reaction_r14=compartment_compartment_1*global_par_k6*x(5);

% Reaction: id = r15, name = r15
	reaction_r15=compartment_compartment_1*global_par_k5*x(13);

% Reaction: id = r16, name = r16
	reaction_r16=compartment_compartment_1*global_par_k5*x(5);

% Reaction: id = r17, name = r17
	reaction_r17=compartment_compartment_1*(global_par_k9*x(2)-global_par_k10*x(16)*x(17));

% Reaction: id = r18, name = r18
	reaction_r18=compartment_compartment_1*(global_par_k9*x(6)-global_par_k10*x(18)*x(17));

% Reaction: id = r19, name = r19
	reaction_r19=compartment_compartment_1*(global_par_k9*x(4)-global_par_k10*x(19)*x(17));

% Reaction: id = r20, name = r20
	reaction_r20=compartment_compartment_1*(global_par_k9*x(10)-global_par_k10*x(20)*x(17));

% Reaction: id = r21, name = r21
	reaction_r21=compartment_compartment_1*(global_par_k9*x(8)-global_par_k10*x(24)*x(17));

% Reaction: id = r22, name = r22
	reaction_r22=compartment_compartment_1*(global_par_k9*x(12)-global_par_k10*x(21)*x(17));

% Reaction: id = r23, name = r23
	reaction_r23=compartment_compartment_1*(global_par_k9*x(14)-global_par_k10*x(22)*x(17));

% Reaction: id = r24, name = r24
	reaction_r24=compartment_compartment_1*(global_par_k1*x(17)*x(1)-global_par_k2*x(23));

% Reaction: id = r25, name = r25
	reaction_r25=compartment_compartment_1*(global_par_k7*x(4)-global_par_k8*x(25)*x(29));

% Reaction: id = r26, name = r26
	reaction_r26=compartment_compartment_1*(global_par_k7*x(8)-global_par_k8*x(26)*x(29));

% Reaction: id = r27, name = r27
	reaction_r27=compartment_compartment_1*(global_par_k7*x(12)-global_par_k8*x(27)*x(29));

% Reaction: id = r28, name = r28
	reaction_r28=compartment_compartment_1*(global_par_k7*x(14)-global_par_k8*x(28)*x(29));

% Reaction: id = r29, name = r29
	reaction_r29=compartment_compartment_1*(global_par_k7*x(5)-global_par_k8*x(25)*x(30));

% Reaction: id = r30, name = r30
	reaction_r30=compartment_compartment_1*(global_par_k7*x(9)-global_par_k8*x(26)*x(30));

% Reaction: id = r31, name = r31
	reaction_r31=compartment_compartment_1*(global_par_k7*x(13)-global_par_k8*x(27)*x(30));

% Reaction: id = r32, name = r32
	reaction_r32=compartment_compartment_1*(global_par_k7*x(15)-global_par_k7*x(28)*x(30));

% Reaction: id = r33, name = r33
	reaction_r33=compartment_compartment_1*(global_par_k1*x(29)*x(1)-global_par_k2*x(30));

	xdot=zeros(30,1);
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r3) + (-1.0 * reaction_r4) + (-1.0 * reaction_r5) + (-1.0 * reaction_r6) + (-1.0 * reaction_r7) + (-1.0 * reaction_r24) + (-1.0 * reaction_r33));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_r1) + (-1.0 * reaction_r17));
	
% Species:   id = Va_APC, name = Va_APC, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r8) + (-1.0 * reaction_r13));
	
% Species:   id = Va3, name = Va3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_r2) + (-1.0 * reaction_r19) + (-1.0 * reaction_r25));
	
% Species:   id = Va3_APC, name = Va3_APC, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r2) + ( 1.0 * reaction_r13) + (-1.0 * reaction_r14) + (-1.0 * reaction_r16) + (-1.0 * reaction_r29));
	
% Species:   id = Va5, name = Va5, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_r3) + (-1.0 * reaction_r18));
	
% Species:   id = Va5_APC, name = Va5_APC, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r3) + ( 1.0 * reaction_r8) + (-1.0 * reaction_r9) + (-1.0 * reaction_r11));
	
% Species:   id = Va53, name = Va53, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_r4) + (-1.0 * reaction_r21) + (-1.0 * reaction_r26));
	
% Species:   id = Va53_APC, name = Va53_APC, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r4) + ( 1.0 * reaction_r11) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r16) + (-1.0 * reaction_r30));
	
% Species:   id = Va56, name = Va56, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_r5) + (-1.0 * reaction_r20));
	
% Species:   id = Va56_APC, name = Va56_APC, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r5) + ( 1.0 * reaction_r9) + (-1.0 * reaction_r10));
	
% Species:   id = Va36, name = Va36, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*((-1.0 * reaction_r6) + (-1.0 * reaction_r22) + (-1.0 * reaction_r27));
	
% Species:   id = Va36_APC, name = Va36_APC, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r6) + ( 1.0 * reaction_r14) + (-1.0 * reaction_r15) + (-1.0 * reaction_r31));
	
% Species:   id = Va536, name = Va536, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-1.0 * reaction_r7) + (-1.0 * reaction_r23) + (-1.0 * reaction_r28));
	
% Species:   id = Va536_APC, name = Va536_APC, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r7) + ( 1.0 * reaction_r10) + ( 1.0 * reaction_r12) + ( 1.0 * reaction_r15) + (-1.0 * reaction_r32));
	
% Species:   id = HC, name = HC, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r17));
	
% Species:   id = LC, name = LC, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r17) + ( 1.0 * reaction_r18) + ( 1.0 * reaction_r19) + ( 1.0 * reaction_r20) + ( 1.0 * reaction_r21) + ( 1.0 * reaction_r22) + ( 1.0 * reaction_r23) + (-1.0 * reaction_r24));
	
% Species:   id = HC5, name = HC5, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r18));
	
% Species:   id = HC3, name = HC3, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r19));
	
% Species:   id = HC56, name = HC56, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r20));
	
% Species:   id = HC36, name = HC36, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r22));
	
% Species:   id = HC536, name = HC536, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r23));
	
% Species:   id = LC_APC, name = LC_APC, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r24));
	
% Species:   id = HC53, name = HC53, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r21));
	
% Species:   id = VaA3, name = VaA3, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r25) + ( 1.0 * reaction_r29));
	
% Species:   id = VaA53, name = VaA53, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r26) + ( 1.0 * reaction_r30));
	
% Species:   id = VaA36, name = VaA36, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r27) + ( 1.0 * reaction_r31));
	
% Species:   id = VaA536, name = VaA536, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r28) + ( 1.0 * reaction_r32));
	
% Species:   id = VaLCA1, name = VaLCA1, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r25) + ( 1.0 * reaction_r26) + ( 1.0 * reaction_r27) + ( 1.0 * reaction_r28) + (-1.0 * reaction_r33));
	
% Species:   id = VaLCA1_APC, name = VaLCA1_APC, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r29) + ( 1.0 * reaction_r30) + ( 1.0 * reaction_r31) + ( 1.0 * reaction_r32) + ( 1.0 * reaction_r33));
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


