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
% Model name = Nyman2012_InsulinSignalling
%
% is http://identifiers.org/biomodels.db/MODEL1207270000
% is http://identifiers.org/biomodels.db/BIOMD0000000423
% isDescribedBy http://identifiers.org/pubmed/22248283
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000343
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 8.94067597532632;
	x0(2) = 0.59688996214639;
	x0(3) = 0.0383525925240207;
	x0(4) = 0.424076631823384;
	x0(5) = 4.83863890758515E-6;
	x0(6) = 9.43998194225544;
	x0(7) = 0.560018057744573;
	x0(8) = 9.99635886407151;
	x0(9) = 0.00364113592848386;


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
	compartment_default=1.0;
% Parameter:   id =  k1a, name = k1a
	global_par_k1a=0.153418;
% Parameter:   id =  k1aBasic, name = k1aBasic
	global_par_k1aBasic=0.0383389;
% Parameter:   id =  k1b, name = k1b
	global_par_k1b=3.4699E-6;
% Parameter:   id =  k1c, name = k1c
	global_par_k1c=0.574266;
% Parameter:   id =  k1d, name = k1d
	global_par_k1d=4.78844;
% Parameter:   id =  k1e, name = k1e
	global_par_k1e=5.25027E-5;
% Parameter:   id =  k1f, name = k1f
	global_par_k1f=119.353;
% Parameter:   id =  k1g, name = k1g
	global_par_k1g=4.14899;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=37954.7;
% Parameter:   id =  k21, name = k21
	global_par_k21=538004.0;
% Parameter:   id =  k22, name = k22
	global_par_k22=1.7252E-6;
% Parameter:   id =  km2, name = km2
	global_par_km2=262759.0;
% Parameter:   id =  km23, name = km23
	global_par_km23=88.9096;
% Parameter:   id =  k3, name = k3
	global_par_k3=8.62917E-5;
% Parameter:   id =  km3, name = km3
	global_par_km3=0.132671;
% Parameter:   id =  ins, name = ins
	global_par_ins=100.0;
% Parameter:   id =  measIRS1, name = measIRS1
% Parameter:   id =  measIRp, name = measIRp
% Parameter:   id =  IRmem, name = IRmem
% assignmentRule: variable = measIRS1
	global_par_measIRS1=x(7);
% assignmentRule: variable = measIRp
	global_par_measIRp=x(3)+x(4);
% assignmentRule: variable = IRmem
	global_par_IRmem=x(3)+x(2)+x(1);

% Reaction: id = v1a, name = v1a
	reaction_v1a=global_par_k1a*global_par_ins*x(1)+global_par_k1aBasic*x(1);

% Reaction: id = v1b, name = v1b
	reaction_v1b=global_par_k1b*x(2);

% Reaction: id = v1c, name = v1c
	reaction_v1c=global_par_k1c*x(2);

% Reaction: id = v1d, name = v1d
	reaction_v1d=global_par_k1d*x(3);

% Reaction: id = v1e, name = v1e
	reaction_v1e=x(4)*(global_par_k1e+global_par_k1f*x(9)/(1+x(9)));

% Reaction: id = v1g, name = v1g
	reaction_v1g=global_par_k1g*x(3);

% Reaction: id = v1r, name = v1r
	reaction_v1r=global_par_k1r*x(5);

% Reaction: id = v2, name = v2
	reaction_v2=global_par_k21*x(6)*(x(3)+global_par_k22*x(4))/(1+global_par_km23*x(9));

% Reaction: id = vm2, name = vm2
	reaction_vm2=global_par_km2*x(7);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_k3*x(8)*x(7);

% Reaction: id = vm3, name = vm3
	reaction_vm3=global_par_km3*x(9);

	xdot=zeros(9,1);
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_v1a) + ( 1.0 * reaction_v1b) + ( 1.0 * reaction_v1g) + ( 1.0 * reaction_v1r));
	
% Species:   id = IRins, name = IRins, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_v1a) + (-1.0 * reaction_v1b) + (-1.0 * reaction_v1c));
	
% Species:   id = IRp, name = IRp, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_v1c) + (-1.0 * reaction_v1d) + (-1.0 * reaction_v1g));
	
% Species:   id = IRiP, name = IRiP, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_v1d) + (-1.0 * reaction_v1e));
	
% Species:   id = IRi, name = IRi, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_v1e) + (-1.0 * reaction_v1r));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_v2) + ( 1.0 * reaction_vm2));
	
% Species:   id = IRSiP, name = IRSiP, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_v2) + (-1.0 * reaction_vm2));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_v3) + ( 1.0 * reaction_vm3));
	
% Species:   id = Xp, name = Xp, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_v3) + (-1.0 * reaction_vm3));
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


