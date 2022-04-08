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
% Model name = Marhl2000_CaOscillations
%
% is http://identifiers.org/biomodels.db/MODEL6621933497
% is http://identifiers.org/biomodels.db/BIOMD0000000039
% isDescribedBy http://identifiers.org/pubmed/11004387
% isDerivedFrom http://identifiers.org/pubmed/17029696
% isDerivedFrom http://identifiers.org/pubmed/12362939
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.35;
	x0(2) = 0.76;
	x0(3) = 0.29;
	x0(4) = 85.45;
	x0(5) = 34.55;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = Endoplasmic_Reticulum, name = Endoplasmic_Reticulum, constant
	compartment_Endoplasmic_Reticulum=1.0;
% Compartment: id = Mitochondria, name = Mitochondria, constant
	compartment_Mitochondria=1.0;

% Reaction: id = v1, name = Jch	% Local Parameter:   id =  Kch, name = Kch
	reaction_v1_Kch=4100.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_v1_K1=5.0;

	reaction_v1=compartment_Cytosol*reaction_v1_Kch*x(1)^2*(x(2)-x(1))/(reaction_v1_K1^2+x(1)^2);

% Reaction: id = v3, name = Jleak	% Local Parameter:   id =  Kleak, name = Kleak
	reaction_v3_Kleak=0.05;

	reaction_v3=compartment_Cytosol*reaction_v3_Kleak*(x(2)-x(1));

% Reaction: id = v5, name = Jpump	% Local Parameter:   id =  Kpump, name = Kpump
	reaction_v5_Kpump=20.0;

	reaction_v5=compartment_Endoplasmic_Reticulum*reaction_v5_Kpump*x(1);

% Reaction: id = v7, name = Jout	% Local Parameter:   id =  Kout, name = Kout
	reaction_v7_Kout=125.0;
	% Local Parameter:   id =  K3, name = K3
	reaction_v7_K3=5.0;
	% Local Parameter:   id =  Km, name = Km
	reaction_v7_Km=0.00625;

	reaction_v7=compartment_Cytosol*x(3)*(reaction_v7_Kout*x(1)^2/(reaction_v7_K3^2+x(1)^2)+reaction_v7_Km);

% Reaction: id = v9, name = Jin	% Local Parameter:   id =  Kin, name = Kin
	reaction_v9_Kin=300.0;
	% Local Parameter:   id =  K2, name = K2
	reaction_v9_K2=0.8;

	reaction_v9=compartment_Mitochondria*reaction_v9_Kin*x(1)^8/(reaction_v9_K2^8+x(1)^8);

% Reaction: id = v11, name = dissociation of CaPr	% Local Parameter:   id =  Kminus, name = Kminus
	reaction_v11_Kminus=0.01;

	reaction_v11=compartment_Cytosol*reaction_v11_Kminus*x(4);

% Reaction: id = v12, name = binding of Ca on Pr	% Local Parameter:   id =  Kplus, name = Kplus
	reaction_v12_Kplus=0.1;

	reaction_v12=compartment_Cytosol*reaction_v12_Kplus*x(1)*x(5);

	xdot=zeros(5,1);
	
% Species:   id = Ca_cyt, name = Ca_cyt, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*(( 1.0 * reaction_v1) + ( 1.0 * reaction_v3) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = CaER, name = CaER, affected by kineticLaw
	xdot(2) = (1/(compartment_Endoplasmic_Reticulum))*((-0.25 * reaction_v1) + (-0.25 * reaction_v3) + ( 0.25 * reaction_v5));
	
% Species:   id = CaM, name = CaM, affected by kineticLaw
	xdot(3) = (1/(compartment_Mitochondria))*((-0.25 * reaction_v7) + ( 0.25 * reaction_v9));
	
% Species:   id = CaPr, name = CaPr, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytosol))*((-1.0 * reaction_v11) + ( 1.0 * reaction_v12));
	
% Species:   id = Pr, name = Pr, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
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


