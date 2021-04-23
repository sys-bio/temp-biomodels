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
% Model name = Bartholome2007_MDCKII
%
% is http://identifiers.org/biomodels.db/MODEL0212154960
% is http://identifiers.org/biomodels.db/BIOMD0000000197
% isDescribedBy http://identifiers.org/pubmed/17548463
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 88.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0;
	x0(7) = 0;


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

% Compartment: id = basolat, name = basolateral extrocellular space, constant
	compartment_basolat=1.0;
% Compartment: id = cell, name = intracellular, constant
	compartment_cell=1.0;
% Compartment: id = apical, name = apical extracellular space, constant
	compartment_apical=1.5;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.0025;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.0784;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.0013;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.0827;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.0091;
% Parameter:   id =  p6, name = p6
	global_par_p6=6.4E-5;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.0397;
% Parameter:   id =  p8, name = p8
	global_par_p8=1000.0;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.0098;
% Parameter:   id =  p10, name = p10
	global_par_p10=1.6;
% Parameter:   id =  p11, name = p11
	global_par_p11=1000.0;
% Parameter:   id =  p12, name = p12
	global_par_p12=3.0E-4;
% assignmentRule: variable = BSP_tot
	x(6)=x(1)+x(2)+x(3)+x(4)+x(5);
% assignmentRule: variable = BSP_cell
	x(7)=x(3)+x(4);

% Reaction: id = OATP1B3, name = OATP1B3 mediated import
	reaction_OATP1B3=global_par_p1*x(1);

% Reaction: id = ABCC2, name = ABCC2 mediated export
	reaction_ABCC2=global_par_p2*x(3);

% Reaction: id = endo_in_bl, name = endogenous basolateral import
	reaction_endo_in_bl=global_par_p3*x(1);

% Reaction: id = endo_ex_bl, name = endogenous basolateral export
	reaction_endo_ex_bl=global_par_p4*x(3);

% Reaction: id = endo_ex_ap, name = endogenous apical export
	reaction_endo_ex_ap=global_par_p5*x(3);

% Reaction: id = bl_BSP_binding, name = basolateral BSP binding
	reaction_bl_BSP_binding=global_par_p6*x(1)*(global_par_p8-x(2));

% Reaction: id = bl_BSP_dissoc, name = basolateral BSP dissoc
	reaction_bl_BSP_dissoc=global_par_p7*x(2);

% Reaction: id = cellular_BSP_binding, name = cellular BSP binding
	reaction_cellular_BSP_binding=global_par_p9*x(3)*(global_par_p11-x(4));

% Reaction: id = cellular_BSP_dissoc, name = cellular BSP dissoc
	reaction_cellular_BSP_dissoc=global_par_p10*x(4);

% Reaction: id = paracell_transp, name = paracellular transport
	reaction_paracell_transp=global_par_p12*(x(1)/compartment_basolat-x(5)/compartment_apical);

	xdot=zeros(7,1);
	
% Species:   id = x1, name = free basolateral BSP, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_OATP1B3) + (-1.0 * reaction_endo_in_bl) + ( 1.0 * reaction_endo_ex_bl) + (-1.0 * reaction_bl_BSP_binding) + ( 1.0 * reaction_bl_BSP_dissoc) + (-1.0 * reaction_paracell_transp);
	
% Species:   id = x2, name = basolateral bound BSP, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_bl_BSP_binding) + (-1.0 * reaction_bl_BSP_dissoc);
	
% Species:   id = x3, name = free intracellular BSP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_OATP1B3) + (-1.0 * reaction_ABCC2) + ( 1.0 * reaction_endo_in_bl) + (-1.0 * reaction_endo_ex_bl) + (-1.0 * reaction_endo_ex_ap) + (-1.0 * reaction_cellular_BSP_binding) + ( 1.0 * reaction_cellular_BSP_dissoc);
	
% Species:   id = x4, name = bound intracellular BSP, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_cellular_BSP_binding) + (-1.0 * reaction_cellular_BSP_dissoc);
	
% Species:   id = x5, name = apical BSP, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_ABCC2) + ( 1.0 * reaction_endo_ex_ap) + ( 1.0 * reaction_paracell_transp);
	
% Species:   id = BSP_tot, name = total BSP, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = BSP_cell, name = intracellular BSP, involved in a rule 	xdot(7) = x(7);
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


