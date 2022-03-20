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
% Model name = Stone1996 - activation of soluble guanylate cyclase by nitric oxide
%
% is http://identifiers.org/biomodels.db/MODEL4779732381
% is http://identifiers.org/biomodels.db/BIOMD0000000198
% isDescribedBy http://identifiers.org/pubmed/8573563
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.5;
	x0(2) = 0.112;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.288;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=700.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=800.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=850.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=20.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.2;
% Parameter:   id =  k6, name = k6
	global_par_k6=700.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=800.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=850.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=5.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=25.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.6;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.02;
% Parameter:   id =  e5c, name = ext_5coord
	global_par_e5c=0.11;
% Parameter:   id =  e5c_NO, name = ext_5coord_NO
	global_par_e5c_NO=0.025;
% Parameter:   id =  e6c_NO, name = ext_6coord_NO
	global_par_e6c_NO=0.064;
% Parameter:   id =  ext, name = extinction
% assignmentRule: variable = NO_sGC_5coord_tot
	x(11)=x(5)+x(10);
% assignmentRule: variable = sGC_inact_tot
	x(12)=x(2)+x(3)+x(4)+x(6)+x(7)+x(8)+x(9);
% assignmentRule: variable = ext
	global_par_ext=global_par_e5c*(x(2)+x(3)+x(6)+x(7))+global_par_e5c_NO*(x(5)+x(10))+global_par_e6c_NO*(x(4)+x(8)+x(9));

% Reaction: id = r1fast, name = r1fast
	reaction_r1fast=compartment_cytosol*(global_par_k1*x(1)*x(2)-global_par_k2*x(3));

% Reaction: id = r2fast, name = r2fast
	reaction_r2fast=global_par_k3*compartment_cytosol*x(3);

% Reaction: id = r3fast, name = r3fast
	reaction_r3fast=compartment_cytosol*(global_par_k4*x(4)-global_par_k5*x(5));

% Reaction: id = r1slow, name = r1slow
	reaction_r1slow=compartment_cytosol*(global_par_k6*x(1)*x(6)-global_par_k7*x(7));

% Reaction: id = r2slow, name = r2slow
	reaction_r2slow=global_par_k8*compartment_cytosol*x(7);

% Reaction: id = r3slow, name = r3slow
	reaction_r3slow=compartment_cytosol*(global_par_k9*x(1)*x(8)-global_par_k10*x(9));

% Reaction: id = r4slow, name = r4slow
	reaction_r4slow=compartment_cytosol*(global_par_k11*x(9)-global_par_k12*x(10));

	xdot=zeros(12,1);
	
% Species:   id = NO, name = NO
%WARNING speciesID: NO, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = sGCfast, name = sGCfast, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*((-1.0 * reaction_r1fast));
	
% Species:   id = NO_sGCfast, name = NO_sGCfast, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_r1fast) + (-1.0 * reaction_r2fast));
	
% Species:   id = NO_sGCfast_6coord, name = NO_sGCfast_6coord, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_r2fast) + (-1.0 * reaction_r3fast));
	
% Species:   id = NO_sGCfast_5coord, name = NO_sGCfast_5coord, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_r3fast));
	
% Species:   id = sGCslow, name = sGCslow, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*((-1.0 * reaction_r1slow));
	
% Species:   id = NO_sGCslow, name = NO_sGCslow, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_r1slow) + (-1.0 * reaction_r2slow));
	
% Species:   id = NO_sGCslow_6coord, name = NO_sGCslow_6coord, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_r2slow) + (-1.0 * reaction_r3slow));
	
% Species:   id = NO_sGCslow_6coord_NO_int, name = NO_sGCslow_6coord_NO_int, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_r3slow) + (-1.0 * reaction_r4slow));
	
% Species:   id = NO_sGCslow_5coord, name = NO_sGCslow_5coord, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_r4slow));
	
% Species:   id = NO_sGC_5coord_tot, name = NO_sGC_5coord_tot, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = sGC_inact_tot, name = sGC_inact_tot, defined in a rule 	xdot(12) = x(12);
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


