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
% Model name = Bindschadler2001_coupled_Ca_oscillators
%
% is http://identifiers.org/biomodels.db/MODEL9107330008
% is http://identifiers.org/biomodels.db/BIOMD0000000058
% isDescribedBy http://identifiers.org/pubmed/12779457
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL9200487367
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.3;
	x0(2) = 0.8;
	x0(3) = 0.1;
	x0(4) = 0.1;


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
% Parameter:   id =  Phi1_c1, name = Phi1_c1
% Parameter:   id =  r2, name = r2
	global_par_r2=100.0;
% Parameter:   id =  R1, name = R1
	global_par_R1=6.0;
% Parameter:   id =  Phi_minus1_c1, name = Phi_minus1_c1
% Parameter:   id =  k1, name = k1
	global_par_k1=44.0;
% Parameter:   id =  R3, name = R3
	global_par_R3=50.0;
% Parameter:   id =  Phi2_c1, name = Phi2_c1
% Parameter:   id =  k2, name = k2
	global_par_k2=26.5;
% Parameter:   id =  r4, name = r4
	global_par_r4=20.0;
% Parameter:   id =  Phi3_c1, name = Phi3_c1
% Parameter:   id =  k3, name = k3
	global_par_k3=1.6;
% Parameter:   id =  R5, name = R5
	global_par_R5=1.6;
% Parameter:   id =  Phi1_c2, name = Phi1_c2
% Parameter:   id =  Phi_minus1_c2, name = Phi_minus1_c2
% Parameter:   id =  Phi2_c2, name = Phi2_c2
% Parameter:   id =  Phi3_c2, name = Phi3_c2
% assignmentRule: variable = Phi1_c1
	global_par_Phi1_c1=global_par_r2*x(1)/(global_par_R1+x(1));
% assignmentRule: variable = Phi_minus1_c1
	global_par_Phi_minus1_c1=global_par_k1/(global_par_R3+x(1));
% assignmentRule: variable = Phi2_c1
	global_par_Phi2_c1=(global_par_k2+global_par_r4*x(1))/(global_par_R3+x(1));
% assignmentRule: variable = Phi3_c1
	global_par_Phi3_c1=global_par_k3/(global_par_R5+x(1));
% assignmentRule: variable = Phi1_c2
	global_par_Phi1_c2=global_par_r2*x(3)/(global_par_R1+x(3));
% assignmentRule: variable = Phi_minus1_c2
	global_par_Phi_minus1_c2=global_par_k1/(global_par_R3+x(3));
% assignmentRule: variable = Phi2_c2
	global_par_Phi2_c2=(global_par_k2+global_par_r4*x(3))/(global_par_R3+x(3));
% assignmentRule: variable = Phi3_c2
	global_par_Phi3_c2=global_par_k3/(global_par_R5+x(3));

% Reaction: id = Jreceptor_Cell1, name = IP3R mediated Ca release Cell1	% Local Parameter:   id =  kf, name = kf
	reaction_Jreceptor_Cell1_kf=28.0;
	% Local Parameter:   id =  p, name = p
	reaction_Jreceptor_Cell1_p=0.2778;

	reaction_Jreceptor_Cell1=compartment_compartment*reaction_Jreceptor_Cell1_kf*(reaction_Jreceptor_Cell1_p*x(2)*global_par_Phi1_c1/(global_par_Phi1_c1*reaction_Jreceptor_Cell1_p+global_par_Phi_minus1_c1))^4;

% Reaction: id = Jpump_Cell1, name = ATPase pump mediated Ca efflux Cell1	% Local Parameter:   id =  Vp, name = Vp
	reaction_Jpump_Cell1_Vp=1.2;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_Jpump_Cell1_Kp=0.18;

	reaction_Jpump_Cell1=compartment_compartment*reaction_Jpump_Cell1_Vp*x(1)^2/(reaction_Jpump_Cell1_Kp^2+x(1)^2);

% Reaction: id = Jleak_Cell1, name = IP3R independent Ca release Cell1	% Local Parameter:   id =  Jleak, name = Jleak
	reaction_Jleak_Cell1_Jleak=0.2;

	reaction_Jleak_Cell1=compartment_compartment*reaction_Jleak_Cell1_Jleak;

% Reaction: id = Inactivated_to_S_Cell1, name = Inactivated to Shut state transition Cell1
	reaction_Inactivated_to_S_Cell1=compartment_compartment*global_par_Phi3_c1*(1-x(2));

% Reaction: id = Open_to_Inactivated_Cell1, name = Open to Inactivated state transition Cell1	% Local Parameter:   id =  p, name = p
	reaction_Open_to_Inactivated_Cell1_p=0.2778;

	reaction_Open_to_Inactivated_Cell1=compartment_compartment*global_par_Phi1_c1*global_par_Phi2_c1*x(2)*reaction_Open_to_Inactivated_Cell1_p/(global_par_Phi1_c1*reaction_Open_to_Inactivated_Cell1_p+global_par_Phi_minus1_c1);

% Reaction: id = Jreceptor_Cell2, name = IP3R mediated Ca release Cell2	% Local Parameter:   id =  kf, name = kf
	reaction_Jreceptor_Cell2_kf=28.0;
	% Local Parameter:   id =  p, name = p
	reaction_Jreceptor_Cell2_p=0.2778;

	reaction_Jreceptor_Cell2=compartment_compartment*reaction_Jreceptor_Cell2_kf*(reaction_Jreceptor_Cell2_p*x(4)*global_par_Phi1_c2/(global_par_Phi1_c2*reaction_Jreceptor_Cell2_p+global_par_Phi_minus1_c2))^4;

% Reaction: id = Jpump_Cell2, name = ATPase pump mediated Ca efflux Cell2	% Local Parameter:   id =  Vp, name = Vp
	reaction_Jpump_Cell2_Vp=1.2;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_Jpump_Cell2_Kp=0.18;

	reaction_Jpump_Cell2=compartment_compartment*reaction_Jpump_Cell2_Vp*x(3)^2/(reaction_Jpump_Cell2_Kp^2+x(3)^2);

% Reaction: id = Jleak_Cell2, name = IP3R independent Ca release Cell2	% Local Parameter:   id =  Jleak, name = Jleak
	reaction_Jleak_Cell2_Jleak=0.2;

	reaction_Jleak_Cell2=compartment_compartment*reaction_Jleak_Cell2_Jleak;

% Reaction: id = Inactivated_to_S_Cell2, name = Inactivated to Shut state transition Cell2
	reaction_Inactivated_to_S_Cell2=compartment_compartment*global_par_Phi3_c2*(1-x(4));

% Reaction: id = Open_to_Inactivated_Cell2, name = Open to Inactivated state transition Cell2	% Local Parameter:   id =  p, name = p
	reaction_Open_to_Inactivated_Cell2_p=0.2778;

	reaction_Open_to_Inactivated_Cell2=compartment_compartment*global_par_Phi1_c2*global_par_Phi2_c2*x(4)*reaction_Open_to_Inactivated_Cell2_p/(global_par_Phi1_c2*reaction_Open_to_Inactivated_Cell2_p+global_par_Phi_minus1_c2);

% Reaction: id = diffusion, name = Diffusion of Ca between cells	% Local Parameter:   id =  D, name = D
	reaction_diffusion_D=0.01;

	reaction_diffusion=compartment_compartment*reaction_diffusion_D*(x(3)-x(1));

	xdot=zeros(4,1);
	
% Species:   id = c1, name = Calcium ion Cell1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Jreceptor_Cell1) + (-1.0 * reaction_Jpump_Cell1) + ( 1.0 * reaction_Jleak_Cell1) + ( 1.0 * reaction_diffusion));
	
% Species:   id = h1, name = Receptor fraction Cell1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Inactivated_to_S_Cell1) + (-1.0 * reaction_Open_to_Inactivated_Cell1));
	
% Species:   id = c2, name = Calcium ion Cell2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Jreceptor_Cell2) + (-1.0 * reaction_Jpump_Cell2) + ( 1.0 * reaction_Jleak_Cell2) + (-1.0 * reaction_diffusion));
	
% Species:   id = h2, name = Receptor fraction Cell2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Inactivated_to_S_Cell2) + (-1.0 * reaction_Open_to_Inactivated_Cell2));
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


