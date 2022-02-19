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
% Model name = Ota2015 - Positive regulation of Rho GTPase activity by RhoGDIs as a result of their direct interaction with GAPs (GDI integrated)
%
% isDescribedBy http://identifiers.org/pubmed/25628036
% is http://identifiers.org/biomodels.db/MODEL1912170003
% is http://identifiers.org/biomodels.db/BIOMD0000000899
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.31;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.1;
	x0(9) = 1.0;
	x0(10) = 1.3;
	x0(11) = 0.0;
	x0(12) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;

% Reaction: id = re1, name = re1	% Local Parameter:   id =  k1, name = k1
	reaction_re1_k1=1.0;

	reaction_re1=compartment_default*Function_for_re1(compartment_default, reaction_re1_k1, x(1), x(3));

% Reaction: id = re2, name = re2	% Local Parameter:   id =  k2, name = k2
	reaction_re2_k2=0.1;

	reaction_re2=compartment_default*Function_for_re2(compartment_default, reaction_re2_k2, x(4));

% Reaction: id = re3, name = re3	% Local Parameter:   id =  k3, name = k3
	reaction_re3_k3=0.5;

	reaction_re3=compartment_default*Function_for_re3(compartment_default, reaction_re3_k3, x(1));

% Reaction: id = re4, name = re4	% Local Parameter:   id =  KmGEFGDI, name = KmGEFGDI
	reaction_re4_KmGEFGDI=1.0;
	% Local Parameter:   id =  KmGEFRho, name = KmGEFRho
	reaction_re4_KmGEFRho=24.5;
	% Local Parameter:   id =  kcatGEF, name = kcatGEF
	reaction_re4_kcatGEF=5.64;

	reaction_re4=compartment_default*Function_for_re4(reaction_re4_KmGEFGDI, reaction_re4_KmGEFRho, compartment_default, reaction_re4_kcatGEF, x(4), x(5), x(7));

% Reaction: id = re5, name = re5	% Local Parameter:   id =  KmGAPGDI, name = KmGAPGDI
	reaction_re5_KmGAPGDI=0.1;
	% Local Parameter:   id =  KmGAPRho, name = KmGAPRho
	reaction_re5_KmGAPRho=4.48;
	% Local Parameter:   id =  kcatGAP, name = kcatGAP
	reaction_re5_kcatGAP=95.9;

	reaction_re5=compartment_default*Function_for_re5(reaction_re5_KmGAPGDI, reaction_re5_KmGAPRho, compartment_default, reaction_re5_kcatGAP, x(6), x(7), x(8));

% Reaction: id = re6, name = re6	% Local Parameter:   id =  k4, name = k4
	reaction_re6_k4=0.5;
	% Local Parameter:   id =  k5, name = k5
	reaction_re6_k5=0.05;

	reaction_re6=compartment_default*Function_for_re6(compartment_default, reaction_re6_k4, reaction_re6_k5, x(10), x(5), x(7));

% Reaction: id = re7, name = re7	% Local Parameter:   id =  k6, name = k6
	reaction_re7_k6=0.5;
	% Local Parameter:   id =  k7, name = k7
	reaction_re7_k7=0.05;

	reaction_re7=compartment_default*Function_for_re7(compartment_default, reaction_re7_k6, reaction_re7_k7, x(11), x(6), x(7));

% Reaction: id = re8, name = re8	% Local Parameter:   id =  k8, name = k8
	reaction_re8_k8=28.2;
	% Local Parameter:   id =  k9, name = k9
	reaction_re8_k9=0.18;

	reaction_re8=compartment_default*Function_for_re8(compartment_default, reaction_re8_k8, reaction_re8_k9, x(12), x(6), x(9));

	xdot=zeros(12,1);
	
% Species:   id = s1, name = Activator, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re3));
	
% Species:   id = s2, name = Degrade, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re3));
	
% Species:   id = s3, name = GEF, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re2));
	
% Species:   id = s4, name = Active GEF, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2));
	
% Species:   id = s5, name = GDP-Rho, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_re4) + ( 1.0 * reaction_re5) + (-1.0 * reaction_re6));
	
% Species:   id = s6, name = GTP-Rho, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re7) + (-1.0 * reaction_re8));
	
% Species:   id = s7, name = GDI, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re6) + (-1.0 * reaction_re7));
	
% Species:   id = s8, name = GAP
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = s9, name = Effector, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*((-1.0 * reaction_re8));
	
% Species:   id = s10, name = GDI?GDP-Rho, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re6));
	
% Species:   id = s13, name = GDI?GTP-Rho, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re7));
	
% Species:   id = s16, name = Effector?GTP-Rho, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re8));
end

function z=Function_for_re7(default,k6,k7,s13,s6,s7), z=((k6*s6*s7*default-k7*s13)/default);end

function z=Function_for_re2(default,k2,s4), z=(s4*k2/default);end

function z=Function_for_re1(default,k1,s1,s3), z=(s1*default*s3*default*k1/default);end

function z=Function_for_re8(default,k8,k9,s16,s6,s9), z=((k8*s6*s9*default-k9*s16)/default);end

function z=Function_for_re5(KmGAPGDI,KmGAPRho,default,kcatGAP,s6,s7,s8), z=(kcatGAP*s6*s8*default/(KmGAPRho*(1+s7*default/KmGAPGDI)+s6*(1+s7*default/KmGAPGDI))/default);end

function z=Function_for_re3(default,k3,s1), z=(s1*default*k3/default);end

function z=Function_for_re4(KmGEFGDI,KmGEFRho,default,kcatGEF,s4,s5,s7), z=(kcatGEF*s5*s4/(KmGEFRho*(1+s7*default/KmGEFGDI)+s5*(1+s7*default/KmGEFGDI))/default);end

function z=Function_for_re6(default,k4,k5,s10,s5,s7), z=((k4*s5*s7*default-k5*s10*default)/default);end

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


