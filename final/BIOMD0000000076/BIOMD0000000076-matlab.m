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
% Model name = Cronwright2002_Glycerol_Synthesis
%
% is http://identifiers.org/biomodels.db/MODEL6624139162
% is http://identifiers.org/biomodels.db/BIOMD0000000076
% isDescribedBy http://identifiers.org/pubmed/12200299
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 15.1;
	x0(3) = 0.59;


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

% Compartment: id = compartment, name = Cytoplasm, constant
	compartment_compartment=1.0;

% Reaction: id = Gpd_p, name = Glycerol 3-phosphate dehydrogenase	% Local Parameter:   id =  Vf1, name = Vf1
	reaction_Gpd_p_Vf1=47.0;
	% Local Parameter:   id =  K1nadh, name = K1nadh
	reaction_Gpd_p_K1nadh=0.023;
	% Local Parameter:   id =  K1dhap, name = K1dhap
	reaction_Gpd_p_K1dhap=0.54;
	% Local Parameter:   id =  NADH, name = NADH
	reaction_Gpd_p_NADH=1.87;
	% Local Parameter:   id =  NAD, name = NAD
	reaction_Gpd_p_NAD=1.45;
	% Local Parameter:   id =  Keq1, name = Keq1
	reaction_Gpd_p_Keq1=10000.0;
	% Local Parameter:   id =  F16BP, name = F16BP
	reaction_Gpd_p_F16BP=6.01;
	% Local Parameter:   id =  K1f16bp, name = K1f16bp
	reaction_Gpd_p_K1f16bp=4.8;
	% Local Parameter:   id =  ATP, name = ATP
	reaction_Gpd_p_ATP=2.37;
	% Local Parameter:   id =  K1atp, name = K1atp
	reaction_Gpd_p_K1atp=0.73;
	% Local Parameter:   id =  ADP, name = ADP
	reaction_Gpd_p_ADP=2.17;
	% Local Parameter:   id =  K1adp, name = K1adp
	reaction_Gpd_p_K1adp=2.0;
	% Local Parameter:   id =  K1nad, name = K1nad
	reaction_Gpd_p_K1nad=0.93;
	% Local Parameter:   id =  K1g3p, name = K1g3p
	reaction_Gpd_p_K1g3p=1.2;

	reaction_Gpd_p=compartment_compartment*reaction_Gpd_p_Vf1/(reaction_Gpd_p_K1nadh*reaction_Gpd_p_K1dhap)*(reaction_Gpd_p_NADH*x(3)-reaction_Gpd_p_NAD*x(1)/reaction_Gpd_p_Keq1)/((1+reaction_Gpd_p_F16BP/reaction_Gpd_p_K1f16bp+reaction_Gpd_p_ATP/reaction_Gpd_p_K1atp+reaction_Gpd_p_ADP/reaction_Gpd_p_K1adp)*(1+reaction_Gpd_p_NADH/reaction_Gpd_p_K1nadh+reaction_Gpd_p_NAD/reaction_Gpd_p_K1nad)*(1+x(3)/reaction_Gpd_p_K1dhap+x(1)/reaction_Gpd_p_K1g3p));

% Reaction: id = Gpp_p, name = Glycerol 3-phosphatase	% Local Parameter:   id =  V2, name = V2
	reaction_Gpp_p_V2=53.0;
	% Local Parameter:   id =  K2g3p, name = K2g3p
	reaction_Gpp_p_K2g3p=3.5;
	% Local Parameter:   id =  Phi, name = Phi
	reaction_Gpp_p_Phi=1.0;
	% Local Parameter:   id =  K2phi, name = K2phi
	reaction_Gpp_p_K2phi=1.0;

	reaction_Gpp_p=compartment_compartment*reaction_Gpp_p_V2*x(1)/reaction_Gpp_p_K2g3p/((1+x(1)/reaction_Gpp_p_K2g3p)*(1+reaction_Gpp_p_Phi/reaction_Gpp_p_K2phi));

	xdot=zeros(3,1);
	
% Species:   id = G3P, name = Glycerol 3-phosphate, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Gpd_p) + (-1.0 * reaction_Gpp_p));
	
% Species:   id = Gly, name = Glycerol
%WARNING speciesID: Gly, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = DHAP, name = DHAP
%WARNING speciesID: DHAP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
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


