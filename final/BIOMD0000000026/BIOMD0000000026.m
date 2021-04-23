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
% Model name = Markevich2004_MAPK_orderedElementary
%
% is http://identifiers.org/biomodels.db/MODEL6618379269
% is http://identifiers.org/biomodels.db/BIOMD0000000026
% isDescribedBy http://identifiers.org/pubmed/14744999
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 500.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 50.0;
	x0(5) = 100.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
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

% Compartment: id = uVol, name = uVol, constant
	compartment_uVol=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.02;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.01;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.032;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=15.0;
% Parameter:   id =  h1, name = h1
	global_par_h1=0.045;
% Parameter:   id =  h_1, name = h_1
	global_par_h_1=1.0;
% Parameter:   id =  h2, name = h2
	global_par_h2=0.092;
% Parameter:   id =  h3, name = h3
	global_par_h3=1.0;
% Parameter:   id =  h_3, name = h_3
	global_par_h_3=0.01;
% Parameter:   id =  h4, name = h4
	global_par_h4=0.01;
% Parameter:   id =  h_4, name = h_4
	global_par_h_4=1.0;
% Parameter:   id =  h5, name = h5
	global_par_h5=0.5;
% Parameter:   id =  h6, name = h6
	global_par_h6=0.086;
% Parameter:   id =  h_6, name = h_6
	global_par_h_6=0.0011;

% Reaction: id = v1a, name = binding MAPK and PP-MAPKK
	reaction_v1a=compartment_uVol*(global_par_k1*x(1)*x(4)-global_par_k_1*x(6));

% Reaction: id = v1b, name = phosphorylation of MAPK
	reaction_v1b=compartment_uVol*global_par_k2*x(6);

% Reaction: id = v2a, name = binding PP-MAPKK and P-MAPK
	reaction_v2a=compartment_uVol*(global_par_k3*x(2)*x(4)-global_par_k_3*x(7));

% Reaction: id = v2b, name = phosphorylation of P-MAPK
	reaction_v2b=compartment_uVol*global_par_k4*x(7);

% Reaction: id = v3a, name = binding MKP and PP-MAPK
	reaction_v3a=compartment_uVol*(global_par_h1*x(3)*x(5)-global_par_h_1*x(8));

% Reaction: id = v3b, name = dephosphorylation of PP-MAPK
	reaction_v3b=compartment_uVol*global_par_h2*x(8);

% Reaction: id = v3c, name = dissociation of MKP from P-MAPK
	reaction_v3c=global_par_h3*x(9)-global_par_h_3*x(2)*x(5);

% Reaction: id = v4a, name = binding MKP and P-MAPK
	reaction_v4a=compartment_uVol*(global_par_h4*x(2)*x(5)-global_par_h_4*x(10));

% Reaction: id = v4b, name = dephosphorylation of P-MAPK
	reaction_v4b=compartment_uVol*global_par_h5*x(10);

% Reaction: id = v4c, name = dissociation of MKP from MAPK
	reaction_v4c=compartment_uVol*(global_par_h6*x(11)-global_par_h_6*x(1)*x(5));

	xdot=zeros(11,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_uVol))*((-1.0 * reaction_v1a) + ( 1.0 * reaction_v4c));
	
% Species:   id = Mp, name = Mp, affected by kineticLaw
	xdot(2) = (1/(compartment_uVol))*(( 1.0 * reaction_v1b) + (-1.0 * reaction_v2a) + ( 1.0 * reaction_v3c) + (-1.0 * reaction_v4a));
	
% Species:   id = Mpp, name = Mpp, affected by kineticLaw
	xdot(3) = (1/(compartment_uVol))*(( 1.0 * reaction_v2b) + (-1.0 * reaction_v3a));
	
% Species:   id = MAPKK, name = MAPKK, affected by kineticLaw
	xdot(4) = (1/(compartment_uVol))*((-1.0 * reaction_v1a) + ( 1.0 * reaction_v1b) + (-1.0 * reaction_v2a) + ( 1.0 * reaction_v2b));
	
% Species:   id = MKP3, name = MKP, affected by kineticLaw
	xdot(5) = (1/(compartment_uVol))*((-1.0 * reaction_v3a) + ( 1.0 * reaction_v3c) + (-1.0 * reaction_v4a) + ( 1.0 * reaction_v4c));
	
% Species:   id = M_MAPKK, name = M_MAPKK, affected by kineticLaw
	xdot(6) = (1/(compartment_uVol))*(( 1.0 * reaction_v1a) + (-1.0 * reaction_v1b));
	
% Species:   id = Mp_MAPKK, name = Mp_MAPKK, affected by kineticLaw
	xdot(7) = (1/(compartment_uVol))*(( 1.0 * reaction_v2a) + (-1.0 * reaction_v2b));
	
% Species:   id = Mpp_MKP3, name = Mpp_MKP, affected by kineticLaw
	xdot(8) = (1/(compartment_uVol))*(( 1.0 * reaction_v3a) + (-1.0 * reaction_v3b));
	
% Species:   id = Mp_MKP3_dep, name = Mp_MKP, affected by kineticLaw
	xdot(9) = (1/(compartment_uVol))*(( 1.0 * reaction_v3b) + (-1.0 * reaction_v3c));
	
% Species:   id = Mp_MKP3, name = Mp_MKP*, affected by kineticLaw
	xdot(10) = (1/(compartment_uVol))*(( 1.0 * reaction_v4a) + (-1.0 * reaction_v4b));
	
% Species:   id = M_MKP3, name = M_MKP, affected by kineticLaw
	xdot(11) = (1/(compartment_uVol))*(( 1.0 * reaction_v4b) + (-1.0 * reaction_v4c));
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


