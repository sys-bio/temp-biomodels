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
% Model name = Goldbeter1995_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6617161845
% is http://identifiers.org/biomodels.db/BIOMD0000000016
% isDescribedBy http://identifiers.org/pubmed/8587874
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.1;
	x0(2) = 0.25;
	x0(3) = 0.25;
	x0(4) = 0.25;
	x0(5) = 0.25;
	x0(6) = 1.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0E-15;
% Compartment: id = CYTOPLASM, name = CYTOPLASM, constant
	compartment_CYTOPLASM=1.0E-15;
% Compartment: id = compartment_0000004, name = NUCLEUS, constant
	compartment_compartment_0000004=1.0E-15;
% assignmentRule: variable = Pt
	x(6)=x(2)+x(3)+x(4)+x(5);

% Reaction: id = rM, name = transcription of PER	% Local Parameter:   id =  Vs, name = Vs
	reaction_rM_Vs=0.76;
	% Local Parameter:   id =  KI, name = KI
	reaction_rM_KI=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_rM_n=4.0;

	reaction_rM=compartment_default*reaction_rM_Vs*reaction_rM_KI^reaction_rM_n/(reaction_rM_KI^reaction_rM_n+x(5)^reaction_rM_n);

% Reaction: id = rTL, name = translation of PER	% Local Parameter:   id =  ks, name = ks
	reaction_rTL_ks=0.38;

	reaction_rTL=reaction_rTL_ks*x(1)*compartment_default;

% Reaction: id = rP01, name = first phosphorylation of PER	% Local Parameter:   id =  V1, name = V1
	reaction_rP01_V1=3.2;
	% Local Parameter:   id =  K1, name = K1
	reaction_rP01_K1=2.0;

	reaction_rP01=compartment_CYTOPLASM*reaction_rP01_V1*x(2)/(reaction_rP01_K1+x(2));

% Reaction: id = rP10, name = removal of the first PER phosphate	% Local Parameter:   id =  V2, name = V2
	reaction_rP10_V2=1.58;
	% Local Parameter:   id =  K2, name = K2
	reaction_rP10_K2=2.0;

	reaction_rP10=compartment_CYTOPLASM*reaction_rP10_V2*x(3)/(reaction_rP10_K2+x(3));

% Reaction: id = rP12, name = second phosphorylation of PER	% Local Parameter:   id =  V3, name = V3
	reaction_rP12_V3=5.0;
	% Local Parameter:   id =  K3, name = K3
	reaction_rP12_K3=2.0;

	reaction_rP12=compartment_CYTOPLASM*reaction_rP12_V3*x(3)/(reaction_rP12_K3+x(3));

% Reaction: id = rP21, name = removal of the second PER phosphate	% Local Parameter:   id =  V4, name = V4
	reaction_rP21_V4=2.5;
	% Local Parameter:   id =  K4, name = K4
	reaction_rP21_K4=2.0;

	reaction_rP21=compartment_CYTOPLASM*reaction_rP21_V4*x(4)/(reaction_rP21_K4+x(4));

% Reaction: id = rP2n, name = translocation of PER to the nucleus	% Local Parameter:   id =  k1, name = k1
	reaction_rP2n_k1=1.9;

	reaction_rP2n=reaction_rP2n_k1*x(4)*compartment_CYTOPLASM;

% Reaction: id = rPn2, name = translocation of PER to the cytoplasm	% Local Parameter:   id =  k2, name = k2
	reaction_rPn2_k2=1.3;

	reaction_rPn2=reaction_rPn2_k2*x(5)*compartment_compartment_0000004;

% Reaction: id = rmRNAd, name = degradation of PER mRNA	% Local Parameter:   id =  Km, name = Km
	reaction_rmRNAd_Km=0.5;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_rmRNAd_Vm=0.65;

	reaction_rmRNAd=reaction_rmRNAd_Vm*x(1)*compartment_CYTOPLASM/(reaction_rmRNAd_Km+x(1));

% Reaction: id = rVd, name = degradation of PER	% Local Parameter:   id =  Vd, name = Vd
	reaction_rVd_Vd=0.95;
	% Local Parameter:   id =  Kd, name = Kd
	reaction_rVd_Kd=0.2;

	reaction_rVd=compartment_CYTOPLASM*reaction_rVd_Vd*x(4)/(reaction_rVd_Kd+x(4));

% Species:   id = EmptySet, name = EmptySet, constant	const_species_EmptySet=0.0;

	xdot=zeros(6,1);
	
% Species:   id = M, name = PER mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_rM) + (-1.0 * reaction_rmRNAd));
	
% Species:   id = P0, name = unphosphorylated PER, affected by kineticLaw
	xdot(2) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_rTL) + (-1.0 * reaction_rP01) + ( 1.0 * reaction_rP10));
	
% Species:   id = P1, name = monophosphorylated PER, affected by kineticLaw
	xdot(3) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_rP01) + (-1.0 * reaction_rP10) + (-1.0 * reaction_rP12) + ( 1.0 * reaction_rP21));
	
% Species:   id = P2, name = biphosphorylated PER, affected by kineticLaw
	xdot(4) = (1/(compartment_CYTOPLASM))*(( 1.0 * reaction_rP12) + (-1.0 * reaction_rP21) + (-1.0 * reaction_rP2n) + ( 1.0 * reaction_rPn2) + (-1.0 * reaction_rVd));
	
% Species:   id = Pn, name = nuclear PER, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000004))*(( 1.0 * reaction_rP2n) + (-1.0 * reaction_rPn2));
	
% Species:   id = Pt, name = total PER, defined in a rule 	xdot(6) = x(6);
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


