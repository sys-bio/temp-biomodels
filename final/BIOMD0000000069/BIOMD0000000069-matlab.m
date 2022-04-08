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
% Model name = Fuss2006_MitoticActivation
%
% is http://identifiers.org/biomodels.db/MODEL7146478294
% is http://identifiers.org/biomodels.db/BIOMD0000000069
% isDescribedBy http://identifiers.org/pubmed/16873466
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 1.0;
	x0(10) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.8;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=10.0;
% Parameter:   id =  kPTP, name = kPTP
	global_par_kPTP=1.0;
% Parameter:   id =  kCbp, name = kCbp
	global_par_kCbp=1.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.05;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.15;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.035;
% Parameter:   id =  src_background, name = src_background
	global_par_src_background=1.0E-4;
% Parameter:   id =  PTP_background, name = PTP_background
	global_par_PTP_background=0.0;
% Parameter:   id =  kCSKon, name = kCSKon
	global_par_kCSKon=0.1;
% Parameter:   id =  kCSKoff, name = kCSKoff
	global_par_kCSKoff=0.01;
% Parameter:   id =  rho_srca, name = rho_srca
	global_par_rho_srca=1.0;
% Parameter:   id =  rho_srco, name = rho_srco
	global_par_rho_srco=0.0;
% Parameter:   id =  rho_srcc, name = rho_srcc
	global_par_rho_srcc=1.0;
% Parameter:   id =  Kser, name = Kser
	global_par_Kser=1.0;
% Parameter:   id =  acsk0, name = acsk0
	global_par_acsk0=0.0;
% Parameter:   id =  ptp_activity, name = ptp_activity
% Parameter:   id =  src_activity, name = src_activity
% assignmentRule: variable = src_activity
	global_par_src_activity=global_par_rho_srco*x(2)+global_par_rho_srca*x(3)+global_par_src_background+global_par_rho_srcc*x(4);
% assignmentRule: variable = ptp_activity
	global_par_ptp_activity=global_par_PTP_background+global_par_Kser*x(8);

% Reaction: id = v1
	reaction_v1=(global_par_k2*global_par_ptp_activity*x(1)-global_par_k1*x(5)*x(2))*compartment_default;

% Reaction: id = v2
	reaction_v2=(global_par_k3*global_par_src_activity*x(2)-global_par_p1*x(3))*compartment_default;

% Reaction: id = v3
	reaction_v3=(global_par_k1*x(5)*x(3)-global_par_k2*global_par_ptp_activity*x(4))*compartment_default;

% Reaction: id = v4
	reaction_v4=compartment_default*global_par_k4*global_par_p1*x(4);

% Reaction: id = CSK_translocation
	reaction_CSK_translocation=(x(10)*global_par_kCSKon*x(6)-global_par_kCSKoff*x(5))*compartment_default;

% Reaction: id = PTP_phosphorylation
	reaction_PTP_phosphorylation=compartment_default*((global_par_kPTP*global_par_src_activity+global_par_p3)*x(7)-global_par_p2*x(8));

% Reaction: id = Cbp_phosphorylation
	reaction_Cbp_phosphorylation=global_par_kCbp*global_par_src_activity*x(9)*compartment_default;

	xdot=zeros(10,1);
	
% Species:   id = srci, name = srci, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v4));
	
% Species:   id = srco, name = srco, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = srca, name = srca, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = srcc, name = srcc, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Cbp_P_CSK, name = Cbp_P_CSK, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_CSK_translocation));
	
% Species:   id = CSK_cytoplasm, name = CSK_cytoplasm, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_CSK_translocation));
	
% Species:   id = PTP, name = PTP, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_PTP_phosphorylation));
	
% Species:   id = PTP_pY789, name = PTP_pY789, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_PTP_phosphorylation));
	
% Species:   id = Cbp, name = Cbp, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*((-1.0 * reaction_Cbp_phosphorylation));
	
% Species:   id = Cbp_P, name = Cbp_P, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_CSK_translocation) + ( 1.0 * reaction_Cbp_phosphorylation));
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


