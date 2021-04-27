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
% Model name = Tyson1999_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6619720081
% is http://identifiers.org/biomodels.db/BIOMD0000000036
% isDescribedBy http://identifiers.org/pubmed/20540926
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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
% Compartment: id = CYTOPLASM, name = CYTOPLASM, constant
	compartment_CYTOPLASM=1.0;
% Parameter:   id =  N_A, name = N_A
	global_par_N_A=6.0221367E23;

% Reaction: id = TC, name = transcription	% Local Parameter:   id =  Vm, name = Vm
	reaction_TC_Vm=1.0;
	% Local Parameter:   id =  Pcrit, name = Pcrit
	reaction_TC_Pcrit=0.1;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_TC_Keq=200.0;

	reaction_TC=compartment_CYTOPLASM*reaction_TC_Vm/(1+(x(2)*(1-2/(1+(1+8*reaction_TC_Keq*x(2))^0.5))/(2*reaction_TC_Pcrit))^2);

% Reaction: id = TL, name = translation	% Local Parameter:   id =  V, name = Vp
	reaction_TL_V=0.5;

	reaction_TL=reaction_TL_V*x(1)*compartment_CYTOPLASM;

% Reaction: id = mRNAD, name = mRNA degradation	% Local Parameter:   id =  D, name = km
	reaction_mRNAD_D=0.1;

	reaction_mRNAD=reaction_mRNAD_D*x(1)*compartment_CYTOPLASM;

% Reaction: id = ProteinD, name = protein degradation	% Local Parameter:   id =  D, name = kp3
	reaction_ProteinD_D=0.1;

	reaction_ProteinD=reaction_ProteinD_D*x(2)*compartment_CYTOPLASM;

% Reaction: id = DBT, name = Per phosphorylation and degradation	% Local Parameter:   id =  k1, name = kp1
	reaction_DBT_k1=10.0;
	% Local Parameter:   id =  k2, name = kp2
	reaction_DBT_k2=0.03;
	% Local Parameter:   id =  J, name = Jp
	reaction_DBT_J=0.05;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_DBT_Keq=200.0;

	reaction_DBT=compartment_CYTOPLASM*(reaction_DBT_k1*x(2)*2/(1+(1+8*reaction_DBT_Keq*x(2))^0.5)+reaction_DBT_k2*x(2))/(reaction_DBT_J+x(2));

% Species:   id = EmptySet, name = EmptySet, constant	const_species_EmptySet=0.0;

	xdot=zeros(2,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_TC) + (-1.0 * reaction_mRNAD));
	
% Species:   id = P, name = Pt, affected by kineticLaw
	xdot(2) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_TL) + (-1.0 * reaction_ProteinD) + (-1.0 * reaction_DBT));
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


