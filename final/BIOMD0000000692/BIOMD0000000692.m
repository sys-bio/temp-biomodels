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
% Model name = Phillips2003 - The Mechanism of Ras GTPase Activation by Neurofibromin
%
% is http://identifiers.org/biomodels.db/MODEL4968912141
% isDescribedBy http://identifiers.org/pubmed/12667087
% is http://identifiers.org/biomodels.db/BIOMD0000000692
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 9.99936338171632;


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

% Compartment: id = geometry, name = E. coli, constant
	compartment_geometry=5.236E-13;
% Parameter:   id =  Pi_curve, name = Pi_curve
% Parameter:   id =  hplc_curve, name = hplc_curve
% assignmentRule: variable = Pi_curve
	global_par_Pi_curve=100*(x(1)-1)/1;
% assignmentRule: variable = hplc_curve
	global_par_hplc_curve=x(2)*100/1;

% Reaction: id = GTP_hydrolysis_sbo_1_sbc_, name = GTP_hydrolysis_sbo_1_sbc_	% Local Parameter:   id =  kb, name = kb
	reaction_GTP_hydrolysis_sbo_1_sbc__kb=1.15192E-13;
	% Local Parameter:   id =  kf, name = kf
	reaction_GTP_hydrolysis_sbo_1_sbc__kf=1.02102E-11;

	reaction_GTP_hydrolysis_sbo_1_sbc_=compartment_geometry*Function_for_GTP_hydrolysis_sbo_1_sbc(x(5), x(4), compartment_geometry, reaction_GTP_hydrolysis_sbo_1_sbc__kb, reaction_GTP_hydrolysis_sbo_1_sbc__kf);

% Reaction: id = GTP_hydrolysis_sbo_2_sbc_, name = GTP_hydrolysis_sbo_2_sbc_	% Local Parameter:   id =  kb, name = kb
	reaction_GTP_hydrolysis_sbo_2_sbc__kb=5.65482E-17;
	% Local Parameter:   id =  kf, name = kf
	reaction_GTP_hydrolysis_sbo_2_sbc__kf=2.0944E-11;

	reaction_GTP_hydrolysis_sbo_2_sbc_=compartment_geometry*Function_for_GTP_hydrolysis_sbo_2_sbc(x(1), x(6), x(5), compartment_geometry, reaction_GTP_hydrolysis_sbo_2_sbc__kb, reaction_GTP_hydrolysis_sbo_2_sbc__kf);

% Reaction: id = Ras_activation, name = Ras_activation	% Local Parameter:   id =  kb, name = kb
	reaction_Ras_activation_kb=2.8798E-12;
	% Local Parameter:   id =  kf, name = kf
	reaction_Ras_activation_kf=2.18865E-10;

	reaction_Ras_activation=compartment_geometry*Function_for_Ras_activation(x(3), x(4), compartment_geometry, reaction_Ras_activation_kb, reaction_Ras_activation_kf);

% Reaction: id = GAP_dissociation, name = GAP_dissociation	% Local Parameter:   id =  kb, name = kb
	reaction_GAP_dissociation_kb=6.28318E-13;
	% Local Parameter:   id =  kf, name = kf
	reaction_GAP_dissociation_kf=2.43474E-11;

	reaction_GAP_dissociation=compartment_geometry*Function_for_GAP_dissociation(x(8), x(7), x(6), compartment_geometry, reaction_GAP_dissociation_kb, reaction_GAP_dissociation_kf);

% Reaction: id = NF1_binding, name = NF1_binding	% Local Parameter:   id =  kb, name = kb
	reaction_NF1_binding_kb=3.3301E-12;
	% Local Parameter:   id =  kf, name = kf
	reaction_NF1_binding_kf=6.28318E-13;

	reaction_NF1_binding=compartment_geometry*Function_for_NF1_binding(x(8), x(2), x(3), compartment_geometry, reaction_NF1_binding_kb, reaction_NF1_binding_kf);

	xdot=zeros(8,1);
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(1) = (1/(compartment_geometry))*(( 1.0 * reaction_GTP_hydrolysis_sbo_2_sbc_));
	
% Species:   id = RasGTP, name = RasGTP, affected by kineticLaw
	xdot(2) = (1/(compartment_geometry))*((-1.0 * reaction_NF1_binding));
	
% Species:   id = RasGTP_minus_NF1, name = RasGTP_minus_NF1, affected by kineticLaw
	xdot(3) = (1/(compartment_geometry))*((-1.0 * reaction_Ras_activation) + ( 1.0 * reaction_NF1_binding));
	
% Species:   id = RasGTP_minus_NF1_star_, name = RasGTP_minus_NF1_star_, affected by kineticLaw
	xdot(4) = (1/(compartment_geometry))*((-1.0 * reaction_GTP_hydrolysis_sbo_1_sbc_) + ( 1.0 * reaction_Ras_activation));
	
% Species:   id = RasGDP_minus_NF1_Pi, name = RasGDP_minus_NF1_Pi, affected by kineticLaw
	xdot(5) = (1/(compartment_geometry))*(( 1.0 * reaction_GTP_hydrolysis_sbo_1_sbc_) + (-1.0 * reaction_GTP_hydrolysis_sbo_2_sbc_));
	
% Species:   id = RasGDP_NF1, name = RasGDP_NF1, affected by kineticLaw
	xdot(6) = (1/(compartment_geometry))*(( 1.0 * reaction_GTP_hydrolysis_sbo_2_sbc_) + (-1.0 * reaction_GAP_dissociation));
	
% Species:   id = RasGDP, name = RasGDP, affected by kineticLaw
	xdot(7) = (1/(compartment_geometry))*(( 1.0 * reaction_GAP_dissociation));
	
% Species:   id = NF1, name = NF1, affected by kineticLaw
	xdot(8) = (1/(compartment_geometry))*(( 1.0 * reaction_GAP_dissociation) + (-1.0 * reaction_NF1_binding));
end

function z=Function_for_GTP_hydrolysis_sbo_2_sbc(Pi,RasGDP_NF1,RasGDP_minus_NF1_Pi,geometry,kb,kf), z=((kf*RasGDP_minus_NF1_Pi-kb*Pi*RasGDP_NF1)/geometry);end

function z=Function_for_NF1_binding(NF1,RasGTP,RasGTP_minus_NF1,geometry,kb,kf), z=((kf*RasGTP*NF1-kb*RasGTP_minus_NF1)/geometry);end

function z=Function_for_Ras_activation(RasGTP_minus_NF1,RasGTP_minus_NF1_star_,geometry,kb,kf), z=((kf*RasGTP_minus_NF1-kb*RasGTP_minus_NF1_star_)/geometry);end

function z=Function_for_GAP_dissociation(NF1,RasGDP,RasGDP_NF1,geometry,kb,kf), z=((kf*RasGDP_NF1-kb*RasGDP*NF1)/geometry);end

function z=Function_for_GTP_hydrolysis_sbo_1_sbc(RasGDP_minus_NF1_Pi,RasGTP_minus_NF1_star_,geometry,kb,kf), z=((kf*RasGTP_minus_NF1_star_-kb*RasGDP_minus_NF1_Pi)/geometry);end

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


