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
% Model name = Rohwer2000_Phosphotransferase_System
%
% is http://identifiers.org/biomodels.db/MODEL6621395815
% is http://identifiers.org/biomodels.db/BIOMD0000000038
% isDescribedBy http://identifiers.org/pubmed/10889194
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 3.0;
	x0(2) = 0.0;
	x0(3) = 2.0;
	x0(4) = 25.0;
	x0(5) = 0.0;
	x0(6) = 25.0;
	x0(7) = 20.0;
	x0(8) = 0.0;
	x0(9) = 20.0;
	x0(10) = 5.0;
	x0(11) = 0.0;
	x0(12) = 5.0;
	x0(13) = 0.0;
	x0(14) = 2800.0;
	x0(15) = 900.0;
	x0(16) = 50.0;
	x0(17) = 500.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;

% Reaction: id = v1	% Local Parameter:   id =  k1f, name = k1f
	reaction_v1_k1f=1960.0;
	% Local Parameter:   id =  k1r, name = k1r
	reaction_v1_k1r=480000.0;

	reaction_v1=compartment_compartment*(reaction_v1_k1f*x(14)*x(1)-reaction_v1_k1r*x(2));

% Reaction: id = v2	% Local Parameter:   id =  k2f, name = k2f
	reaction_v2_k2f=108000.0;
	% Local Parameter:   id =  k2r, name = k2r
	reaction_v2_k2r=294.0;

	reaction_v2=compartment_compartment*(reaction_v2_k2f*x(2)-reaction_v2_k2r*x(15)*x(3));

% Reaction: id = v3	% Local Parameter:   id =  k3f, name = k3f
	reaction_v3_k3f=14000.0;
	% Local Parameter:   id =  k3r, name = k3r
	reaction_v3_k3r=14000.0;

	reaction_v3=compartment_compartment*(reaction_v3_k3f*x(3)*x(4)-reaction_v3_k3r*x(5));

% Reaction: id = v4	% Local Parameter:   id =  k4f, name = k4f
	reaction_v4_k4f=84000.0;
	% Local Parameter:   id =  k4r, name = k4r
	reaction_v4_k4r=3360.0;

	reaction_v4=compartment_compartment*(reaction_v4_k4f*x(5)-reaction_v4_k4r*x(1)*x(6));

% Reaction: id = v5	% Local Parameter:   id =  k5f, name = k5f
	reaction_v5_k5f=21960.0;
	% Local Parameter:   id =  k5r, name = k5r
	reaction_v5_k5r=21960.0;

	reaction_v5=compartment_compartment*(reaction_v5_k5f*x(6)*x(7)-reaction_v5_k5r*x(8));

% Reaction: id = v6	% Local Parameter:   id =  k6f, name = k6f
	reaction_v6_k6f=4392.0;
	% Local Parameter:   id =  k6r, name = k6r
	reaction_v6_k6r=3384.0;

	reaction_v6=compartment_compartment*(reaction_v6_k6f*x(8)-reaction_v6_k6r*x(4)*x(9));

% Reaction: id = v7	% Local Parameter:   id =  k7f, name = k7f
	reaction_v7_k7f=880.0;
	% Local Parameter:   id =  k7r, name = k7r
	reaction_v7_k7r=880.0;

	reaction_v7=compartment_compartment*(reaction_v7_k7f*x(9)*x(10)-reaction_v7_k7r*x(11));

% Reaction: id = v8	% Local Parameter:   id =  k8f, name = k8f
	reaction_v8_k8f=2640.0;
	% Local Parameter:   id =  k8r, name = k8r
	reaction_v8_k8r=960.0;

	reaction_v8=compartment_compartment*(reaction_v8_k8f*x(11)-reaction_v8_k8r*x(7)*x(12));

% Reaction: id = v9	% Local Parameter:   id =  k9f, name = k9f
	reaction_v9_k9f=260.0;
	% Local Parameter:   id =  k9r, name = k9r
	reaction_v9_k9r=389.0;

	reaction_v9=compartment_compartment*(reaction_v9_k9f*x(12)*x(17)-reaction_v9_k9r*x(13));

% Reaction: id = v10	% Local Parameter:   id =  k10f, name = k10f
	reaction_v10_k10f=4800.0;
	% Local Parameter:   id =  k10r, name = k10r
	reaction_v10_k10r=0.0054;

	reaction_v10=compartment_compartment*(reaction_v10_k10f*x(13)-reaction_v10_k10r*x(10)*x(16));

	xdot=zeros(17,1);
	
% Species:   id = EI, name = EI, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v4));
	
% Species:   id = PyrPI, name = PyrPI, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = EIP, name = EIP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = HPr, name = HPr, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_v3) + ( 1.0 * reaction_v6));
	
% Species:   id = EIPHPr, name = EIPHPr, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = HPrP, name = HPrP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
	
% Species:   id = EIIA, name = EIIA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v8));
	
% Species:   id = HPrPIIA, name = HPrPIIA, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = EIIAP, name = EIIAP, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7));
	
% Species:   id = EIICB, name = EIICB, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v10));
	
% Species:   id = EIIAPIICB, name = EIIAPIICB, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = EIICBP, name = EIICBP, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9));
	
% Species:   id = EIICBPGlc, name = EIICBPGlc, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = PEP, name = PEP
%WARNING speciesID: PEP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = Pyr, name = Pyr
%WARNING speciesID: Pyr, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = GlcP, name = GlcP
%WARNING speciesID: GlcP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = Glc, name = Glc
%WARNING speciesID: Glc, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
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


