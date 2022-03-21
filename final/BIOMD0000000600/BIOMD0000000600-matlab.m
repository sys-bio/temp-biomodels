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
% Model name = Celli?re2011 - Plasticity of TGF-? Signalling
%
% is http://identifiers.org/biomodels.db/MODEL1208280000
% is http://identifiers.org/biomodels.db/BIOMD0000000600
% isDescribedBy http://identifiers.org/pubmed/22051045
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 1010.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 7000.0;
	x0(6) = 0.0;
	x0(7) = 12000.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 82000.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 135000.0;
	x0(17) = 0.0;


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

% Compartment: id = c, name = cytoplasm, constant
	compartment_c=2.3;
% Compartment: id = n, name = nucleus, constant
	compartment_n=1.0;
% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Parameter:   id =  h, name = h
	global_par_h=2.06;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.00446;
% Parameter:   id =  k2, name = k2
	global_par_k2=4.39E-6;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.324;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.00192;
% Parameter:   id =  k7, name = k7
	global_par_k7=9.35E-6;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.0104;
% Parameter:   id =  k9, name = k9
	global_par_k9=7.5E-4;
% Parameter:   id =  k10, name = k10
	global_par_k10=5.12E-8;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.00923;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.0513;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.00164;
% Parameter:   id =  k5, name = k5
	global_par_k5=5.49E-4;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.29E-5;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.038;
% Parameter:   id =  k15, name = k15
	global_par_k15=28.52;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.0214;
% Parameter:   id =  k17, name = k17
	global_par_k17=8.05E-5;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.0434;
% Parameter:   id =  k19, name = k19
	global_par_k19=4.12E-4;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_c*global_par_k1*x(2);

% Reaction: id = r2, name = r2
	reaction_r2=global_par_k2*x(1)*const_species_TGFb;

% Reaction: id = r3, name = r3
	reaction_r3=compartment_c*global_par_k3*x(2);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_c*global_par_k4*x(3);

% Reaction: id = r5, name = r5
	reaction_r5=compartment_c*global_par_k5*x(3)*x(11);

% Reaction: id = r6, name = r6
	reaction_r6=compartment_c*global_par_k6*x(4);

% Reaction: id = r7, name = r7
	reaction_r7=compartment_c*Function_for_r7__1(global_par_k7, x(5), x(3));

% Reaction: id = r8, name = r8
	reaction_r8=global_par_k8*x(5);

% Reaction: id = r9, name = r9
	reaction_r9=global_par_k9*x(12);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_c*global_par_k10*x(6)^2;

% Reaction: id = r11, name = r11
	reaction_r11=compartment_c*global_par_k11*x(8);

% Reaction: id = r12, name = r12
	reaction_r12=compartment_c*global_par_k10*x(6)*x(7);

% Reaction: id = r13, name = r13
	reaction_r13=compartment_c*global_par_k11*x(9);

% Reaction: id = r14, name = r14
	reaction_r14=global_par_k8*x(7);

% Reaction: id = r15, name = r15
	reaction_r15=global_par_k9*x(16);

% Reaction: id = r16, name = r16
	reaction_r16=Function_for_r16__1(x(8), global_par_k12, global_par_k8);

% Reaction: id = r17, name = r17
	reaction_r17=global_par_k8*x(6);

% Reaction: id = r18, name = r18
	reaction_r18=global_par_k9*x(14);

% Reaction: id = r19, name = r19
	reaction_r19=Function_for_r16__1(x(9), global_par_k12, global_par_k8);

% Reaction: id = r20, name = r20
	reaction_r20=compartment_n*global_par_k13*x(14);

% Reaction: id = r21, name = r21
	reaction_r21=compartment_n*global_par_k10*x(14)^2;

% Reaction: id = r22, name = r22
	reaction_r22=compartment_n*global_par_k11*x(13);

% Reaction: id = r23, name = r23
	reaction_r23=compartment_n*global_par_k10*x(14)*x(16);

% Reaction: id = r24, name = r24
	reaction_r24=compartment_n*global_par_k11*x(15);

% Reaction: id = r25, name = r25
	reaction_r25=compartment_n*Function_for_r25__1(x(15), global_par_h, global_par_k14, global_par_k15);

% Reaction: id = r26, name = r26
	reaction_r26=global_par_k16*x(17);

% Reaction: id = r27, name = r27
	reaction_r27=compartment_c*global_par_k17*x(10);

% Reaction: id = r28, name = r28
	reaction_r28=compartment_c*Function_for_r28__1(x(10), global_par_k18);

% Reaction: id = r29, name = r29
	reaction_r29=compartment_c*global_par_k19*x(11);

% Species:   id = TGFb, name = TGFb, constant	const_species_TGFb=460.0;

	xdot=zeros(17,1);
	
% Species:   id = TGFbR, name = TGFbR, affected by kineticLaw
	xdot(1) = (1/(compartment_c))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = TGFb_TGFbR, name = TGFb_TGFbR, affected by kineticLaw
	xdot(2) = (1/(compartment_c))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r2) + (-1.0 * reaction_r3) + ( 1.0 * reaction_r4) + ( 1.0 * reaction_r6));
	
% Species:   id = TGFb_TGFbR_P, name = TGFb_TGFbR_P, affected by kineticLaw
	xdot(3) = (1/(compartment_c))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4) + (-1.0 * reaction_r5));
	
% Species:   id = I_Smad_TGFb_TGFbR_P, name = I_Smad_TGFb_TGFbR_P, affected by kineticLaw
	xdot(4) = (1/(compartment_c))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r6));
	
% Species:   id = Smad, name = Smad, affected by kineticLaw
	xdot(5) = (1/(compartment_c))*((-1.0 * reaction_r7) + (-1.0 * reaction_r8) + ( 1.0 * reaction_r9));
	
% Species:   id = Smad_P, name = Smad_P, affected by kineticLaw
	xdot(6) = (1/(compartment_c))*(( 1.0 * reaction_r7) + (-2.0 * reaction_r10) + ( 2.0 * reaction_r11) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r13) + (-1.0 * reaction_r17) + ( 1.0 * reaction_r18));
	
% Species:   id = CoSmad, name = CoSmad, affected by kineticLaw
	xdot(7) = (1/(compartment_c))*((-1.0 * reaction_r12) + ( 1.0 * reaction_r13) + (-1.0 * reaction_r14) + ( 1.0 * reaction_r15));
	
% Species:   id = Smad_P_Smad_P, name = Smad_P_Smad_P, affected by kineticLaw
	xdot(8) = (1/(compartment_c))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r11) + (-1.0 * reaction_r16));
	
% Species:   id = Smad_P_CoSmad, name = Smad_P_CoSmad, affected by kineticLaw
	xdot(9) = (1/(compartment_c))*(( 1.0 * reaction_r12) + (-1.0 * reaction_r13) + (-1.0 * reaction_r19));
	
% Species:   id = I_Smad_mRNA2, name = I_Smad_mRNA2, affected by kineticLaw
	xdot(10) = (1/(compartment_c))*(( 1.0 * reaction_r26) + (-1.0 * reaction_r27));
	
% Species:   id = I_Smad, name = I_Smad, affected by kineticLaw
	xdot(11) = (1/(compartment_c))*((-1.0 * reaction_r5) + ( 1.0 * reaction_r6) + ( 1.0 * reaction_r28) + (-1.0 * reaction_r29));
	
% Species:   id = Smad_N, name = Smad_N, affected by kineticLaw
	xdot(12) = (1/(compartment_n))*(( 1.0 * reaction_r8) + (-1.0 * reaction_r9) + ( 1.0 * reaction_r20));
	
% Species:   id = Smad_P_Smad_P_N, name = Smad_P_Smad_P_N, affected by kineticLaw
	xdot(13) = (1/(compartment_n))*(( 1.0 * reaction_r16) + ( 1.0 * reaction_r21) + (-1.0 * reaction_r22));
	
% Species:   id = Smad_P_N, name = Smad_P_N, affected by kineticLaw
	xdot(14) = (1/(compartment_n))*(( 1.0 * reaction_r17) + (-1.0 * reaction_r18) + (-1.0 * reaction_r20) + (-2.0 * reaction_r21) + ( 2.0 * reaction_r22) + (-1.0 * reaction_r23) + ( 1.0 * reaction_r24));
	
% Species:   id = Smad_P_CoSmad_N, name = Smad_P_CoSmad_N, affected by kineticLaw
	xdot(15) = (1/(compartment_n))*(( 1.0 * reaction_r19) + ( 1.0 * reaction_r23) + (-1.0 * reaction_r24));
	
% Species:   id = CoSmad_N, name = CoSmad_N, affected by kineticLaw
	xdot(16) = (1/(compartment_n))*(( 1.0 * reaction_r14) + (-1.0 * reaction_r15) + (-1.0 * reaction_r23) + ( 1.0 * reaction_r24));
	
% Species:   id = I_Smad_mRNA1, name = I_Smad_mRNA1, affected by kineticLaw
	xdot(17) = (1/(compartment_n))*(( 1.0 * reaction_r25) + (-1.0 * reaction_r26));
end

function z=Function_for_r25__1(Smad_P_CoSmad_N,h,k14,k15), z=(k14*Smad_P_CoSmad_N^h/(Smad_P_CoSmad_N^h+k15^h));end

function z=Function_for_r16__1(Smad_P_Smad_P,k12,k8), z=(k12*k8*Smad_P_Smad_P);end

function z=Function_for_r28__1(I_Smad_mRNA2,k18), z=(k18*I_Smad_mRNA2);end

function z=Function_for_r7__1(k7,Smad,TGFb_TGFbR_P), z=(k7*Smad*TGFb_TGFbR_P);end

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


