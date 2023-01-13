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
% Model name = Kwang2003 - The influence of RKIP on the ERK signaling pathway
%
% is http://identifiers.org/biomodels.db/MODEL1708250000
% is http://identifiers.org/biomodels.db/BIOMD0000000647
% isDescribedBy http://identifiers.org/doi/10.1007/3-540-36481-1_11
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 2.0;
	x0(2) = 2.5;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 2.5;
	x0(8) = 0.0;
	x0(9) = 2.5;
	x0(10) = 3.0;
	x0(11) = 0.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.53;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0072;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.625;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.00245;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0315;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.8;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.0075;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.071;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.92;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.00122;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.87;

% Reaction: id = Raf1_RKIP_complex_formation, name = Raf1_RKIP complex formation
	reaction_Raf1_RKIP_complex_formation=compartment_cytoplasm*global_par_k1*x(1)*x(2);

% Reaction: id = Raf1_RKIP_complex_disassembly, name = Raf1_RKIP complex disassembly
	reaction_Raf1_RKIP_complex_disassembly=compartment_cytoplasm*global_par_k2*x(3);

% Reaction: id = Raf1_RKIP_ERKPP_complex_formation, name = Raf1_RKIP_ERKPP complex formation
	reaction_Raf1_RKIP_ERKPP_complex_formation=compartment_cytoplasm*global_par_k3*x(3)*x(9);

% Reaction: id = Raf1_RKIP_ERKPP_complex_disassembly__ERK_phosphorylation, name = Raf1_RKIP_ERKPP complex disassembly (ERK phosphorylation)
	reaction_Raf1_RKIP_ERKPP_complex_disassembly__ERK_phosphorylation=compartment_cytoplasm*global_par_k4*x(4);

% Reaction: id = Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation, name = Raf1_RKIP_ERKPP complex disassembly (RKIP phosphorylation)
	reaction_Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation=compartment_cytoplasm*global_par_k5*x(4);

% Reaction: id = MEKPP_ERK_complex_formation, name = MEKPP_ERK complex formation
	reaction_MEKPP_ERK_complex_formation=compartment_cytoplasm*global_par_k6*x(5)*x(7);

% Reaction: id = MEKPP_ERK_complex_disassembly__ERK_unphosphorylated, name = MEKPP_ERK complex disassembly (ERK unphosphorylated)
	reaction_MEKPP_ERK_complex_disassembly__ERK_unphosphorylated=compartment_cytoplasm*global_par_k7*x(8);

% Reaction: id = MEKPP_ERK_complex_disassembly__ERK_phosphorylated, name = MEKPP_ERK complex disassembly (ERK phosphorylated)
	reaction_MEKPP_ERK_complex_disassembly__ERK_phosphorylated=compartment_cytoplasm*global_par_k8*x(8);

% Reaction: id = RKIPP_RP_comlex_formation, name = RKIPP_RP comlex formation
	reaction_RKIPP_RP_comlex_formation=compartment_cytoplasm*global_par_k9*x(6)*x(10);

% Reaction: id = RKIPP_RP_complex_disassembly__phosphorylated_RKIP, name = RKIPP_RP complex disassembly (phosphorylated RKIP)
	reaction_RKIPP_RP_complex_disassembly__phosphorylated_RKIP=compartment_cytoplasm*global_par_k10*x(11);

% Reaction: id = RKIPP_RP_complex_disassembly__unphosphorylated_RKIP, name = RKIPP_RP complex disassembly (unphosphorylated RKIP)
	reaction_RKIPP_RP_complex_disassembly__unphosphorylated_RKIP=compartment_cytoplasm*global_par_k11*x(11);

	xdot=zeros(11,1);
	
% Species:   id = Raf1, name = Raf1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Raf1_RKIP_complex_formation) + ( 1.0 * reaction_Raf1_RKIP_complex_disassembly) + ( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation));
	
% Species:   id = RKIP, name = RKIP, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Raf1_RKIP_complex_formation) + ( 1.0 * reaction_Raf1_RKIP_complex_disassembly) + ( 1.0 * reaction_RKIPP_RP_complex_disassembly__unphosphorylated_RKIP));
	
% Species:   id = Raf1_RKIP, name = Raf1_RKIP, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Raf1_RKIP_complex_formation) + (-1.0 * reaction_Raf1_RKIP_complex_disassembly) + (-1.0 * reaction_Raf1_RKIP_ERKPP_complex_formation) + ( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__ERK_phosphorylation));
	
% Species:   id = Raf1_RKIP_ERKPP, name = Raf1_RKIP_ERKPP, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_formation) + (-1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__ERK_phosphorylation) + (-1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation) + (-1.0 * reaction_MEKPP_ERK_complex_formation) + ( 1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_unphosphorylated));
	
% Species:   id = RKIPP, name = RKIPP, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__RKIP_phosphorylation) + (-1.0 * reaction_RKIPP_RP_comlex_formation) + ( 1.0 * reaction_RKIPP_RP_complex_disassembly__phosphorylated_RKIP));
	
% Species:   id = MEKPP, name = MEKPP, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*((-1.0 * reaction_MEKPP_ERK_complex_formation) + ( 1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_unphosphorylated) + ( 1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_phosphorylated));
	
% Species:   id = MEKPP_ERK, name = MEKPP_ERK, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_MEKPP_ERK_complex_formation) + (-1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_unphosphorylated) + (-1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_phosphorylated));
	
% Species:   id = ERKPP, name = ERKPP, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*((-1.0 * reaction_Raf1_RKIP_ERKPP_complex_formation) + ( 1.0 * reaction_Raf1_RKIP_ERKPP_complex_disassembly__ERK_phosphorylation) + ( 1.0 * reaction_MEKPP_ERK_complex_disassembly__ERK_phosphorylated));
	
% Species:   id = RP, name = RP, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*((-1.0 * reaction_RKIPP_RP_comlex_formation) + ( 1.0 * reaction_RKIPP_RP_complex_disassembly__phosphorylated_RKIP) + ( 1.0 * reaction_RKIPP_RP_complex_disassembly__unphosphorylated_RKIP));
	
% Species:   id = RKIPP_RP, name = RKIPP_RP, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_RKIPP_RP_comlex_formation) + (-1.0 * reaction_RKIPP_RP_complex_disassembly__phosphorylated_RKIP) + (-1.0 * reaction_RKIPP_RP_complex_disassembly__unphosphorylated_RKIP));
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


