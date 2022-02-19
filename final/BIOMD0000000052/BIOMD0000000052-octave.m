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
% Model name = Brands2002 - Monosaccharide-casein systems
%
% is http://identifiers.org/biomodels.db/MODEL8177704759
% is http://identifiers.org/biomodels.db/BIOMD0000000052
% isDescribedBy http://identifiers.org/pubmed/12405768
% isDerivedFrom http://identifiers.org/pubmed/11600005
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 160.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 15.0;
	x0(11) = 0.0;


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

% Reaction: id = _J1	% Local Parameter:   id =  K1, name = K1
	reaction__J1_K1=0.01;

	reaction__J1=reaction__J1_K1*x(1);

% Reaction: id = _J2	% Local Parameter:   id =  K2, name = K2
	reaction__J2_K2=0.00509;

	reaction__J2=reaction__J2_K2*x(2);

% Reaction: id = _J3	% Local Parameter:   id =  K3, name = K3
	reaction__J3_K3=4.7E-4;

	reaction__J3=reaction__J3_K3*x(1);

% Reaction: id = _J4	% Local Parameter:   id =  K4, name = K4
	reaction__J4_K4=0.0011;

	reaction__J4=reaction__J4_K4*x(2);

% Reaction: id = _J5	% Local Parameter:   id =  K5, name = K5
	reaction__J5_K5=0.00712;

	reaction__J5=reaction__J5_K5*x(2);

% Reaction: id = _J6	% Local Parameter:   id =  K6, name = K6
	reaction__J6_K6=0.00439;

	reaction__J6=reaction__J6_K6*x(4);

% Reaction: id = _J7	% Local Parameter:   id =  K7, name = K7
	reaction__J7_K7=1.8E-4;

	reaction__J7=reaction__J7_K7*x(1)*x(10);

% Reaction: id = _J8	% Local Parameter:   id =  K8, name = K8
	reaction__J8_K8=0.11134;

	reaction__J8=reaction__J8_K8*x(7);

% Reaction: id = _J9	% Local Parameter:   id =  K9, name = K9
	reaction__J9_K9=0.14359;

	reaction__J9=reaction__J9_K9*x(7);

% Reaction: id = _J10	% Local Parameter:   id =  K10, name = K10
	reaction__J10_K10=1.5E-4;

	reaction__J10=reaction__J10_K10*x(2)*x(10);

% Reaction: id = _J11	% Local Parameter:   id =  K11, name = K11
	reaction__J11_K11=0.12514;

	reaction__J11=reaction__J11_K11*x(8);

	xdot=zeros(11,1);
	
% Species:   id = Glu, name = Glu, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction__J1) + ( 1.0 * reaction__J2) + (-1.0 * reaction__J3) + (-1.0 * reaction__J7));
	
% Species:   id = Fru, name = Fru, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction__J1) + (-1.0 * reaction__J2) + (-1.0 * reaction__J4) + (-1.0 * reaction__J5) + (-1.0 * reaction__J10));
	
% Species:   id = Formic_acid, name = Formic_acid, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction__J3) + ( 1.0 * reaction__J4));
	
% Species:   id = Triose, name = Triose, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 2.0 * reaction__J5) + (-1.0 * reaction__J6));
	
% Species:   id = Acetic_acid, name = Acetic_acid, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction__J6) + ( 1.0 * reaction__J8));
	
% Species:   id = Cn, name = Cn, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction__J6));
	
% Species:   id = Amadori, name = Amadori, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction__J7) + (-1.0 * reaction__J8) + (-1.0 * reaction__J9));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction__J9) + ( 1.0 * reaction__J10) + (-1.0 * reaction__J11));
	
% Species:   id = C5, name = C5, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction__J3) + ( 1.0 * reaction__J4));
	
% Species:   id = lys_R, name = lys_R, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction__J7) + ( 1.0 * reaction__J8) + (-1.0 * reaction__J10));
	
% Species:   id = Melanoidin, name = Melanoidin, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction__J11));
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


