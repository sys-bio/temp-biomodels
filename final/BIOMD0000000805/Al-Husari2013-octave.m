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
% Model name = Al-Husari2013 - pH and lactate in tumor
%
% isDescribedBy http://identifiers.org/pubmed/23340437
% is http://identifiers.org/biomodels.db/MODEL1909030001
% is http://identifiers.org/biomodels.db/BIOMD0000000805
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.501187233627272;
	x0(2) = 1.0;
	x0(3) = 0.00125;
	x0(4) = 0.00125;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  lh, name = lh
	global_par_lh=0.017174;
% Parameter:   id =  f1, name = f1
	global_par_f1=17174.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.4316;
% Parameter:   id =  d1, name = d1
	global_par_d1=7999.6;
% Parameter:   id =  p1, name = p1
	global_par_p1=20095.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.2857;
% Parameter:   id =  fg, name = fg
	global_par_fg=0.2823;
% Parameter:   id =  p, name = p
	global_par_p=14000.0;
% Parameter:   id =  vv, name = vv
	global_par_vv=0.5;
% Parameter:   id =  pHe, name = pHe
% Parameter:   id =  pHi, name = pHi
% Parameter:   id =  v, name = v
	global_par_v=1.49968483550237;
% assignmentRule: variable = pHe
	global_par_pHe=-log(10, x(2))+7;
% assignmentRule: variable = pHi
	global_par_pHi=-log(10, x(1))+7;

% Reaction: id = H_leak, name = H leak
	reaction_H_leak=compartment_tme*(global_par_lh*x(2)-global_par_lh*x(1));

% Reaction: id = H_antiporter, name = H antiporter
	reaction_H_antiporter=compartment_tme*H_antiport(global_par_f1, x(1), x(2));

% Reaction: id = MCT, name = MCT
	reaction_MCT=compartment_tme*mct(global_par_k3, global_par_p, x(1), x(3), x(2), x(4));

% Reaction: id = glycolysis_H, name = glycolysis-H
	reaction_glycolysis_H=compartment_tme*glycolysis_H_0(global_par_fg, x(1), global_par_v, global_par_vv, global_par_p);

% Reaction: id = removal_of_H, name = removal of H+
	reaction_removal_of_H=compartment_tme*removal(global_par_p1, global_par_v, x(2));

% Reaction: id = lactate_degradation, name = lactate degradation	% Local Parameter:   id =  k1, name = k1
	reaction_lactate_degradation_k1=1.0;

	reaction_lactate_degradation=compartment_tme*reaction_lactate_degradation_k1*x(3);

% Reaction: id = removal_of_lactate, name = removal of lactate
	reaction_removal_of_lactate=compartment_tme*removal(global_par_p2, reaction_lactate_source_v, x(4));

% Reaction: id = glycolysis_L, name = glycolysis-L
	reaction_glycolysis_L=compartment_tme*glycolysis_L_0(global_par_fg, x(1), reaction_lactate_source_v, global_par_vv);

	xdot=zeros(4,1);
	
% Species:   id = Hi, name = Hi, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_H_leak) + (-1.0 * reaction_H_antiporter) + (-1.0 * reaction_MCT) + ( 1.0 * reaction_glycolysis_H) + ( 1.0 * reaction_H__source));
	
% Species:   id = He, name = He, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*((-1.0 * reaction_H_leak) + ( 1.0 * reaction_H_antiporter) + ( 1.0 * reaction_MCT) + (-1.0 * reaction_removal_of_H));
	
% Species:   id = Li, name = Li, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*((-1.0 * reaction_MCT) + ( 1.0 * reaction_lactate_source) + (-1.0 * reaction_lactate_degradation) + ( 1.0 * reaction_glycolysis_L));
	
% Species:   id = Le, name = Le, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_MCT) + (-1.0 * reaction_removal_of_lactate));
end

function z=removal(pn,v,e), z=(pn*v*e);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=mct(k3,f,Hi,Li,He,Le), z=(k3*f*(Hi*Li-He*Le));end

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


