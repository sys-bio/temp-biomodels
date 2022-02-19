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
% Model name = Smallbone2013 - Metabolic Control Analysis - Example 2
%
% is http://identifiers.org/biomodels.db/MODEL1305030001
% is http://identifiers.org/biomodels.db/BIOMD0000000455
% isDescribedBy http://arxiv.org/pdf/1305.6449v1.pdf
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.05625738310526;
	x0(2) = 0.76876151899652;
	x0(3) = 4.23123848100348;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = v1, name = v1	% Local Parameter:   id =  e1, name = e1
	reaction_v1_e1=1.0;
	% Local Parameter:   id =  p1, name = p1
	reaction_v1_p1=10.0;

	reaction_v1=reaction_v1_e1*(reaction_v1_p1*const_species_y1*x(2)-x(1)*x(3))/(1+const_species_y1+x(2)+x(1)+x(3)+const_species_y1*x(2)+x(1)*x(3));

% Reaction: id = v2, name = v2	% Local Parameter:   id =  e2, name = e2
	reaction_v2_e2=1.0;
	% Local Parameter:   id =  p2, name = p2
	reaction_v2_p2=10.0;

	reaction_v2=reaction_v2_e2*(reaction_v2_p2*const_species_y4*x(3)-const_species_y5*x(2))/(1+x(3)+x(2)+const_species_y4+const_species_y5+x(3)*const_species_y4+x(2)*const_species_y5);

% Reaction: id = v3, name = v3	% Local Parameter:   id =  e3, name = e3
	reaction_v3_e3=1.0;
	% Local Parameter:   id =  p3, name = p3
	reaction_v3_p3=50.0;

	reaction_v3=reaction_v3_e3*(reaction_v3_p3*x(1)-const_species_y2)/(1+x(1)+const_species_y2);

% Reaction: id = v4, name = v4	% Local Parameter:   id =  e4, name = e4
	reaction_v4_e4=1.0;
	% Local Parameter:   id =  p4, name = p4
	reaction_v4_p4=10.0;

	reaction_v4=reaction_v4_e4*(reaction_v4_p4*x(1)-const_species_y3)/(1+x(1)+const_species_y3);

% Reaction: id = v5, name = v5	% Local Parameter:   id =  e5, name = e5
	reaction_v5_e5=1.0;
	% Local Parameter:   id =  p5, name = p5
	reaction_v5_p5=0.0;

	reaction_v5=reaction_v5_e5*reaction_v5_p5*x(3);

% Species:   id = y1, name = y1, constant	const_species_y1=10.0;

% Species:   id = y2, name = y2, constant	const_species_y2=0.0;

% Species:   id = y3, name = y3, constant	const_species_y3=0.0;

% Species:   id = y4, name = y4, constant	const_species_y4=1.0;

% Species:   id = y5, name = y5, constant	const_species_y5=1.0;

% Species:   id = y6, name = y6, constant	const_species_y6=0.0;

	xdot=zeros(3,1);
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2));
	
% Species:   id = x3, name = x3, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v5));
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


