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
% Model name = Ibrahim2008_Cdc20_Sequestring_Template_Model
%
% is http://identifiers.org/biomodels.db/MODEL1667525941
% is http://identifiers.org/biomodels.db/BIOMD0000000194
% isDescribedBy http://identifiers.org/pubmed/18295960
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 5.0E-8;
	x0(2) = 1.5E-7;
	x0(3) = 0.0;
	x0(4) = 2.2E-7;
	x0(5) = 0.0;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  eta_T, name = eta_T
	global_par_eta_T=0.01;
% Parameter:   id =  gamma_T, name = gamma_T
	global_par_gamma_T=1.0E9;
% Parameter:   id =  alpha_T, name = alpha_T
	global_par_alpha_T=200000.0;
% Parameter:   id =  beta_T, name = beta_T
	global_par_beta_T=0.2;
% Parameter:   id =  u, name = u
	global_par_u=1.0;
% Parameter:   id =  const_val_0, name = const_val_0
	global_par_const_val_0=0.0;
% Parameter:   id =  const_val_1, name = const_val_1
	global_par_const_val_1=1.0;

% Reaction: id = R6
	reaction_R6=compartment_Cytoplasm*(global_par_u*global_par_alpha_T*x(1)*x(2)-global_par_beta_T*x(3));

% Reaction: id = R7
	reaction_R7=compartment_Cytoplasm*global_par_u*global_par_gamma_T*x(3)*x(4);

% Reaction: id = R8
	reaction_R8=compartment_Cytoplasm*global_par_eta_T*x(5);

%Event: id=mt_attachment
	event_mt_attachment=time > 2000;

	if(event_mt_attachment) 
		global_par_u=global_par_const_val_0;
	end

	xdot=zeros(5,1);
	
% Species:   id = Mad1_CMad2, name = Mad1:C-Mad2, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R7));
	
% Species:   id = OMad2, name = O-Mad2, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R8));
	
% Species:   id = Mad1_CMad2_OMad2, name = Mad1:C-Mad2:O-Mad2*, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
	
% Species:   id = Cdc20, name = Cdc20, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R8));
	
% Species:   id = Cdc20_CMad2, name = Cdc20:C-Mad2, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
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


