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
% Model name = Tiago2010_FeMetabolism_FeDeficient
%
% is http://identifiers.org/biomodels.db/MODEL4152801381
% is http://identifiers.org/biomodels.db/BIOMD0000000259
% isDescribedBy http://identifiers.org/pubmed/20704761
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 100.0;
	x0(2) = 0.0;
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

% Compartment: id = default, name = Environment, constant
	compartment_default=1.0;
% Compartment: id = c1, name = Organism, constant
	compartment_c1=1.0;

% Reaction: id = re1	% Local Parameter:   id =  k1, name = 1kp_bon
	reaction_re1_k1=13.22;

	reaction_re1=x(1)*reaction_re1_k1;

% Reaction: id = re2	% Local Parameter:   id =  k1, name = 27kbon_rbc
	reaction_re2_k1=1.85;

	reaction_re2=x(2)*reaction_re2_k1;

% Reaction: id = re3	% Local Parameter:   id =  k1, name = 29krbc_spl
	reaction_re3_k1=0.03;

	reaction_re3=x(3)*reaction_re3_k1;

% Reaction: id = re4	% Local Parameter:   id =  k1, name = 23kspl_p
	reaction_re4_k1=14.61;

	reaction_re4=x(4)*reaction_re4_k1;

% Reaction: id = re5	% Local Parameter:   id =  k1, name = 28kbon_spl
	reaction_re5_k1=0.56;

	reaction_re5=x(2)*reaction_re5_k1;

% Reaction: id = re6	% Local Parameter:   id =  k1, name = 4kp_liv
	reaction_re6_k1=2.27;

	reaction_re6=x(1)*reaction_re6_k1;

% Reaction: id = re7	% Local Parameter:   id =  k1, name = 15kliv_p
	reaction_re7_k1=0.25;

	reaction_re7=x(5)*reaction_re7_k1;

% Reaction: id = re8	% Local Parameter:   id =  k1, name = 8kp_mus
	reaction_re8_k1=0.96;

	reaction_re8=x(1)*reaction_re8_k1;

% Reaction: id = re9	% Local Parameter:   id =  k1, name = 18kmus_p
	reaction_re9_k1=0.03;

	reaction_re9=x(6)*reaction_re9_k1;

% Reaction: id = re10	% Local Parameter:   id =  k1, name = 10kp_duo
	reaction_re10_k1=0.02;

	reaction_re10=x(1)*reaction_re10_k1;

% Reaction: id = re11	% Local Parameter:   id =  k1, name = 3kp_int
	reaction_re11_k1=0.98;

	reaction_re11=x(1)*reaction_re11_k1;

% Reaction: id = re12	% Local Parameter:   id =  k1, name = 6kp_intg
	reaction_re12_k1=1.04;

	reaction_re12=x(1)*reaction_re12_k1;

% Reaction: id = re14	% Local Parameter:   id =  k1, name = 25kint_out
	reaction_re14_k1=0.3;

	reaction_re14=x(9)*reaction_re14_k1;

% Reaction: id = re15	% Local Parameter:   id =  k1, name = 24kintg_out
	reaction_re15_k1=0.03;

	reaction_re15=x(8)*reaction_re15_k1;

% Reaction: id = re16	% Local Parameter:   id =  k1, name = 12kp_hea
	reaction_re16_k1=0.11;

	reaction_re16=x(1)*reaction_re16_k1;

% Reaction: id = re17	% Local Parameter:   id =  k1, name = 21khea_p
	reaction_re17_k1=0.06;

	reaction_re17=x(11)*reaction_re17_k1;

% Reaction: id = re18	% Local Parameter:   id =  k1, name = 9kp_lun
	reaction_re18_k1=0.79;

	reaction_re18=x(1)*reaction_re18_k1;

% Reaction: id = re19	% Local Parameter:   id =  k1, name = 19klung_p
	reaction_re19_k1=0.41;

	reaction_re19=x(12)*reaction_re19_k1;

% Reaction: id = re22	% Local Parameter:   id =  k1, name = 2kp_kid
	reaction_re22_k1=0.42;

	reaction_re22=x(1)*reaction_re22_k1;

% Reaction: id = re23	% Local Parameter:   id =  k1, name = 14kkid_p
	reaction_re23_k1=0.2;

	reaction_re23=x(13)*reaction_re23_k1;

% Reaction: id = re24	% Local Parameter:   id =  k1, name = 13kp_tes
	reaction_re24_k1=0.04;

	reaction_re24=x(1)*reaction_re24_k1;

% Reaction: id = re25	% Local Parameter:   id =  k1, name = 22ktes_p
	reaction_re25_k1=0.05;

	reaction_re25=x(14)*reaction_re25_k1;

% Reaction: id = re26	% Local Parameter:   id =  k1, name = 5kp_sto
	reaction_re26_k1=0.09;

	reaction_re26=x(1)*reaction_re26_k1;

% Reaction: id = re28	% Local Parameter:   id =  k1, name = 7kp_fat
	reaction_re28_k1=0.04;

	reaction_re28=x(1)*reaction_re28_k1;

% Reaction: id = re29	% Local Parameter:   id =  k1, name = 17kfat_p
	reaction_re29_k1=0.1;

	reaction_re29=x(16)*reaction_re29_k1;

% Reaction: id = re30	% Local Parameter:   id =  k1, name = 11kp_bra
	reaction_re30_k1=0.03;

	reaction_re30=x(1)*reaction_re30_k1;

% Reaction: id = re31	% Local Parameter:   id =  k1, name = 20kbra_p
	reaction_re31_k1=0.02;

	reaction_re31=x(17)*reaction_re31_k1;

% Reaction: id = re33	% Local Parameter:   id =  k1, name = 26kduo_p
	reaction_re33_k1=0.17;

	reaction_re33=reaction_re33_k1*x(7);

% Reaction: id = re34	% Local Parameter:   id =  k1, name = 16ksto_out
	reaction_re34_k1=0.18;

	reaction_re34=reaction_re34_k1*x(15);

	xdot=zeros(17,1);
	
% Species:   id = s1, name = iron_in_Plasma, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re4) + (-1.0 * reaction_re6) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + ( 1.0 * reaction_re9) + (-1.0 * reaction_re10) + (-1.0 * reaction_re11) + (-1.0 * reaction_re12) + (-1.0 * reaction_re16) + ( 1.0 * reaction_re17) + (-1.0 * reaction_re18) + ( 1.0 * reaction_re19) + (-1.0 * reaction_re22) + ( 1.0 * reaction_re23) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re25) + (-1.0 * reaction_re26) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re29) + (-1.0 * reaction_re30) + ( 1.0 * reaction_re31) + ( 1.0 * reaction_re33));
	
% Species:   id = s2, name = iron_in_Bone Marrow, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + (-1.0 * reaction_re5));
	
% Species:   id = s3, name = iron_in_RBC, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re3));
	
% Species:   id = s4, name = iron_in_Spleen, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*(( 1.0 * reaction_re3) + (-1.0 * reaction_re4) + ( 1.0 * reaction_re5));
	
% Species:   id = s5, name = iron_in_Liver, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_re6) + (-1.0 * reaction_re7));
	
% Species:   id = s6, name = iron_in_Muscle, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*(( 1.0 * reaction_re8) + (-1.0 * reaction_re9));
	
% Species:   id = s7, name = iron_in_Duodenum, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_re10) + (-1.0 * reaction_re33));
	
% Species:   id = s8, name = iron_in_Integument, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re15));
	
% Species:   id = s9, name = iron_in_Intestine, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re14));
	
% Species:   id = s10, name = iron_Ions_Outside, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re14) + ( 1.0 * reaction_re15) + ( 1.0 * reaction_re34));
	
% Species:   id = s11, name = iron_in_Heart, affected by kineticLaw
	xdot(11) = (1/(compartment_c1))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re17));
	
% Species:   id = s12, name = iron_in_Lungs, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re19));
	
% Species:   id = s13, name = iron_in_Kidneys, affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*(( 1.0 * reaction_re22) + (-1.0 * reaction_re23));
	
% Species:   id = s14, name = iron_in_Testes, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*(( 1.0 * reaction_re24) + (-1.0 * reaction_re25));
	
% Species:   id = s15, name = iron_in_Stomach, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re34));
	
% Species:   id = s16, name = iron_in_Fat, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*(( 1.0 * reaction_re28) + (-1.0 * reaction_re29));
	
% Species:   id = s17, name = iron_in_Brain, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*(( 1.0 * reaction_re30) + (-1.0 * reaction_re31));
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


