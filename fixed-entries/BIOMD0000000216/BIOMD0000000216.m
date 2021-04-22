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
% Model name = Hong2009_CircadianClock
%
% is http://identifiers.org/biomodels.db/MODEL7984093336
% is http://identifiers.org/biomodels.db/BIOMD0000000216
% isDescribedBy http://identifiers.org/pubmed/19424508
% isDerivedFrom http://identifiers.org/pubmed/18057329
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.4;
	x0(2) = 0.13;
	x0(3) = 0.037;
	x0(4) = 0.046;
	x0(5) = 0.37;
	x0(6) = 0;


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

% Compartment: id = system, name = system, constant
	compartment_system=1.0;
% Parameter:   id =  Dex, name = Dex
	global_par_Dex=0.0;
% Parameter:   id =  kms, name = kms
	global_par_kms=1.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  J, name = J
	global_par_J=0.3;
% Parameter:   id =  kmd, name = kmd
	global_par_kmd=0.1;
% Parameter:   id =  kcps, name = kcps
	global_par_kcps=0.5;
% Parameter:   id =  kcpd, name = kcpd
	global_par_kcpd=0.525;
% Parameter:   id =  ka, name = ka
	global_par_ka=100.0;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.01;
% Parameter:   id =  kp1, name = kp1
	global_par_kp1=10.0;
% Parameter:   id =  Jp, name = Jp
	global_par_Jp=0.05;
% Parameter:   id =  chk2, name = chk2
	global_par_chk2=0.0;
% Parameter:   id =  kicd, name = kicd
	global_par_kicd=0.01;
% Parameter:   id =  kcp2d, name = kcp2d
	global_par_kcp2d=0.0525;
% Parameter:   id =  kica, name = kica
	global_par_kica=20.0;
% Parameter:   id =  chk2c, name = chk2c
	global_par_chk2c=0.0;
% Parameter:   id =  kp2, name = kp2
	global_par_kp2=0.1;
% Parameter:   id =  ICtot, name = TFtot
	global_par_ICtot=1.0;
% assignmentRule: variable = CPtot
	x(6)=x(3)+2*x(4)+2*x(5);

% Reaction: id = r1, name = r1
	reaction_r1=compartment_system*function_4_r1(global_par_Dex, compartment_system);

% Reaction: id = r2, name = r2
	reaction_r2=compartment_system*function_4_r2(global_par_J, x(2), global_par_kms, global_par_n, compartment_system);

% Reaction: id = r3, name = r3
	reaction_r3=compartment_system*global_par_kmd*x(1);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_system*function_1(global_par_kcps, x(1));

% Reaction: id = r5, name = r5
	reaction_r5=compartment_system*global_par_kcpd*x(3);

% Reaction: id = r6, name = r6
	reaction_r6=compartment_system*global_par_ka*x(3)^2;

% Reaction: id = r7, name = r7
	reaction_r7=compartment_system*global_par_kd*x(4);

% Reaction: id = r8, name = r8
	reaction_r8=compartment_system*function_4_r8(x(3), x(4), x(5), global_par_Jp, global_par_kp1, compartment_system);

% Reaction: id = r9, name = r9
	reaction_r9=compartment_system*global_par_chk2*x(3);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_system*global_par_kicd*x(5);

% Reaction: id = r11, name = r11
	reaction_r11=compartment_system*global_par_kcp2d*x(4);

% Reaction: id = r12, name = r12
	reaction_r12=compartment_system*global_par_kica*x(4)*x(2);

% Reaction: id = r13, name = r13
	reaction_r13=compartment_system*function_4_r13(x(3), x(4), x(5), global_par_Jp, global_par_kp2, compartment_system);

% Reaction: id = r14, name = r14
	reaction_r14=compartment_system*global_par_chk2*x(4);

% Reaction: id = r15, name = r15
	reaction_r15=compartment_system*global_par_kcp2d*x(5);

% Reaction: id = r16, name = r16
	reaction_r16=compartment_system*global_par_chk2c*x(5);

% Reaction: id = r17, name = r17
	reaction_r17=compartment_system*function_4_r17(x(3), x(4), x(5), global_par_Jp, global_par_kp2, compartment_system);

	xdot=zeros(6,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_system))*(( 1.0 * reaction_r1) + ( 1.0 * reaction_r2) + (-1.0 * reaction_r3));
	
% Species:   id = TF, name = TF, affected by kineticLaw
	xdot(2) = (1/(compartment_system))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r15) + ( 1.0 * reaction_r16) + ( 1.0 * reaction_r17));
	
% Species:   id = CP, name = CP, affected by kineticLaw
	xdot(3) = (1/(compartment_system))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r5) + (-2.0 * reaction_r6) + ( 2.0 * reaction_r7) + (-1.0 * reaction_r8) + (-1.0 * reaction_r9));
	
% Species:   id = CP2, name = CP2, affected by kineticLaw
	xdot(4) = (1/(compartment_system))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r7) + ( 1.0 * reaction_r10) + (-1.0 * reaction_r11) + (-1.0 * reaction_r12) + (-1.0 * reaction_r13) + (-1.0 * reaction_r14));
	
% Species:   id = IC, name = IC, affected by kineticLaw
	xdot(5) = (1/(compartment_system))*((-1.0 * reaction_r10) + ( 1.0 * reaction_r12) + (-1.0 * reaction_r15) + (-1.0 * reaction_r16) + (-1.0 * reaction_r17));
	
% Species:   id = CPtot, name = CPtot, involved in a rule 	xdot(6) = x(6);
end

function z=function_4_r1(Dex,system), z=(Dex/system);end

function z=function_4_r8(CP,CP2,IC,Jp,kp1,system), z=(kp1*CP/(Jp+CP+2*CP2+2*IC)/system);end

function z=function_4_r2(J,TF,kms,n,system), z=(kms*TF^n/(J^n+TF^n)/system);end

function z=function_4_r17(CP,CP2,IC,Jp,kp2,system), z=(kp2*IC/(Jp+CP+2*CP2+2*IC)/system);end

function z=function_4_r13(CP,CP2,IC,Jp,kp2,system), z=(kp2*CP2/(Jp+CP+2*CP2+2*IC)/system);end

function z=function_1(kcps,M), z=(kcps*M);end

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


