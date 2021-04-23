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
% Model name = NguyenLK2011 - Ubiquitination dynamics in Ring1B/Bmi1 system
%
% is http://identifiers.org/biomodels.db/MODEL1611160000
% is http://identifiers.org/biomodels.db/BIOMD0000000622
% isDescribedBy http://identifiers.org/pubmed/22194680
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.1;
	x0(2) = 1.08;
	x0(3) = 0.1;
	x0(4) = 0.12;
	x0(5) = 0.2;
	x0(6) = 0.12;
	x0(7) = 0.44;
	x0(8) = 0.02;
	x0(9) = 0.1;
	x0(10) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;

% Reaction: id = R1, name = R1	% Local Parameter:   id =  k1, name = k1
	reaction_R1_k1=0.002;

	reaction_R1=compartment_compartment*reaction_R1_k1*x(1);

% Reaction: id = R2, name = R2	% Local Parameter:   id =  k1, name = k1
	reaction_R2_k1=0.002;

	reaction_R2=compartment_compartment*reaction_R2_k1*x(2);

% Reaction: id = R3, name = R3	% Local Parameter:   id =  k1, name = k1
	reaction_R3_k1=0.01;

	reaction_R3=compartment_compartment*reaction_R3_k1*x(3);

% Reaction: id = R4, name = R4	% Local Parameter:   id =  k, name = k
	reaction_R4_k=0.001;

	reaction_R4=compartment_compartment*Mod_MA1(reaction_R4_k, const_species_USP7tot, x(4));

% Reaction: id = R5, name = R5	% Local Parameter:   id =  k1, name = k1
	reaction_R5_k1=2.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_R5_k2=0.2;

	reaction_R5=compartment_compartment*(reaction_R5_k1*x(1)*x(3)-reaction_R5_k2*x(5));

% Reaction: id = R6, name = R6	% Local Parameter:   id =  k1, name = k1
	reaction_R6_k1=0.02;
	% Local Parameter:   id =  k2, name = k2
	reaction_R6_k2=0.2;

	reaction_R6=compartment_compartment*R6_Rate(x(5), reaction_R6_k1, reaction_R6_k2, x(6));

% Reaction: id = R7, name = R7	% Local Parameter:   id =  kc, name = kc
	reaction_R7_kc=0.005;
	% Local Parameter:   id =  Km, name = Km
	reaction_R7_Km=0.0025;

	reaction_R7=compartment_compartment*MM_mod(reaction_R7_kc, const_species_USP7tot, x(6), reaction_R7_Km);

% Reaction: id = R8, name = R8	% Local Parameter:   id =  k1, name = k1
	reaction_R8_k1=0.012;
	% Local Parameter:   id =  k2, name = k2
	reaction_R8_k2=2.0E-5;

	reaction_R8=compartment_compartment*(reaction_R8_k1*x(6)-reaction_R8_k2*x(7)*x(1));

% Reaction: id = R9, name = R9	% Local Parameter:   id =  k1, name = k1
	reaction_R9_k1=0.2;
	% Local Parameter:   id =  k2, name = k2
	reaction_R9_k2=0.2;

	reaction_R9=compartment_compartment*R6_Rate(x(3), reaction_R9_k1, reaction_R9_k2, x(8));

% Reaction: id = R10, name = R10	% Local Parameter:   id =  k, name = k
	reaction_R10_k=0.0075;

	reaction_R10=compartment_compartment*Mod_MA1(reaction_R10_k, const_species_USP7tot, x(8));

% Reaction: id = R11, name = R11	% Local Parameter:   id =  k, name = k
	reaction_R11_k=0.005;

	reaction_R11=compartment_compartment*Mod_MA1(reaction_R11_k, const_species_USP7tot, x(7));

% Reaction: id = R12, name = R12	% Local Parameter:   id =  k1, name = k1
	reaction_R12_k1=0.002;
	% Local Parameter:   id =  k2, name = k2
	reaction_R12_k2=2.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_R12_k3=0.2;

	reaction_R12=compartment_compartment*R12_Rate(x(9), reaction_R12_k1, x(8), reaction_R12_k2, x(6), reaction_R12_k3, x(7));

% Reaction: id = R13, name = R13	% Local Parameter:   id =  k1, name = k1
	reaction_R13_k1=0.01;

	reaction_R13=compartment_compartment*reaction_R13_k1*x(10);

% Reaction: id = R1Bdeg, name = R1Bdeg	% Local Parameter:   id =  k1, name = k1
	reaction_R1Bdeg_k1=3.0E-5;

	reaction_R1Bdeg=compartment_compartment*reaction_R1Bdeg_k1*x(4);

% Reaction: id = Bmi1deg, name = Bmi1deg	% Local Parameter:   id =  k1, name = k1
	reaction_Bmi1deg_k1=3.0E-5;

	reaction_Bmi1deg=compartment_compartment*reaction_Bmi1deg_k1*x(2);

% Species:   id = USP7tot, name = USP7tot, constant	const_species_USP7tot=1.0;

	xdot=zeros(10,1);
	
% Species:   id = Bmi1, name = Bmi1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R8) + ( 1.0 * reaction_Bmi1prod));
	
% Species:   id = Bmi1ubd, name = Bmi1ubd, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_Bmi1deg));
	
% Species:   id = R1B, name = R1B, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R1Bprod));
	
% Species:   id = R1Bubd, name = R1Bubd, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R1Bdeg));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R7));
	
% Species:   id = Zub, name = Zub, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = R1Buba, name = R1Buba, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R11));
	
% Species:   id = R1Bub, name = R1Bub, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = H2A, name = H2A, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_R12) + ( 1.0 * reaction_R13));
	
% Species:   id = H2Auba, name = H2Auba, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=R6_Rate(subs,k1,k2,prod), z=(subs*(k1*subs+k2*prod));end

function z=R12_Rate(subs,k1,mod1,k2,mod2,k3,mod3), z=(subs*(k1*mod1+k2*mod2+k3*mod3));end

function z=MM_mod(kc,mod,subs,Km), z=(kc*mod*subs/(Km+subs));end

function z=Mod_MA1(k,mod,subs), z=(k*mod*subs);end

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


