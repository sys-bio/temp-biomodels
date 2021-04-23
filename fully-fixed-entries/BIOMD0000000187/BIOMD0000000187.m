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
% Model name = Ibrahim2008 - Mitotic Spindle Assembly Checkpoint - Convey variant
%
% is http://identifiers.org/biomodels.db/MODEL6655578762
% is http://identifiers.org/biomodels.db/BIOMD0000000187
% isDescribedBy http://identifiers.org/pubmed/18253502
% isDerivedFrom http://identifiers.org/pubmed/15694304
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 5.0E-8;
	x0(2) = 1.3E-7;
	x0(3) = 0.0;
	x0(4) = 2.2E-7;
	x0(5) = 0.0;
	x0(6) = 1.27E-7;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 9.0E-8;
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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  k3f, name = k3f
	global_par_k3f=0.01;
% Parameter:   id =  kf6, name = kf6
	global_par_kf6=1000.0;
% Parameter:   id =  k5f, name = k5f
	global_par_k5f=10000.0;
% Parameter:   id =  k5r, name = k5r
	global_par_k5r=0.2;
% Parameter:   id =  k2f, name = k2f
	global_par_k2f=1.0E8;
% Parameter:   id =  k1f, name = k1f
	global_par_k1f=200000.0;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=0.2;
% Parameter:   id =  k4f, name = k4f
	global_par_k4f=1.0E7;
% Parameter:   id =  k4r, name = k4r
	global_par_k4r=0.02;
% Parameter:   id =  k7f, name = k7f
	global_par_k7f=1.0E8;
% Parameter:   id =  k7bf, name = k7bf
	global_par_k7bf=0.08;
% Parameter:   id =  k8f, name = k8f
	global_par_k8f=5000000.0;
% Parameter:   id =  k8r, name = k8r
	global_par_k8r=0.08;
% Parameter:   id =  u, name = u
	global_par_u=1.0;
% Parameter:   id =  u_prime, name = u_prime
	global_par_u_prime=0.0;
% Parameter:   id =  const_val_0, name = const_val_0
	global_par_const_val_0=0.0;
% Parameter:   id =  const_val_1, name = const_val_1
	global_par_const_val_1=1.0;

% Reaction: id = R1
	reaction_R1=compartment_Cytoplasm*(global_par_u*global_par_k1f*x(1)*x(2)-global_par_k1r*x(3));

% Reaction: id = R2
	reaction_R2=global_par_u*global_par_k2f*x(3)*x(4)*compartment_Cytoplasm;

% Reaction: id = R3
	reaction_R3=global_par_k3f*x(5)*compartment_Cytoplasm;

% Reaction: id = R4
	reaction_R4=compartment_Cytoplasm*(global_par_u*global_par_k4f*x(5)*x(6)-global_par_k4r*x(7));

% Reaction: id = R5
	reaction_R5=compartment_Cytoplasm*(global_par_u*global_par_k5f*x(6)*x(4)-global_par_k5r*x(8));

% Reaction: id = R6
	reaction_R6=global_par_kf6*x(2)*x(4)*compartment_Cytoplasm;

% Reaction: id = R7
	reaction_R7=global_par_u*global_par_k7f*x(7)*x(9)*compartment_Cytoplasm;

% Reaction: id = R7b
	reaction_R7b=global_par_u_prime*global_par_k7bf*x(10)*compartment_Cytoplasm;

% Reaction: id = R8
	reaction_R8=compartment_Cytoplasm*(global_par_k8f*x(9)*x(4)-global_par_k8r*x(11));

%Event: id=mt_attachment
	event_mt_attachment=time > 2000;

	if(event_mt_attachment) 
		global_par_u=global_par_const_val_0;
		global_par_u_prime=global_par_const_val_1;
	end

	xdot=zeros(11,1);
	
% Species:   id = Mad1_CMad2, name = Mad1:C-Mad2, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R2));
	
% Species:   id = OMad2, name = O-Mad2, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R7b));
	
% Species:   id = Mad1_CMad2_OMad2, name = Mad1:C-Mad2:O-Mad2*, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = Cdc20, name = Cdc20, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R8));
	
% Species:   id = Cdc20_CMad2, name = Cdc20:C-Mad2, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R6));
	
% Species:   id = Bub3_BubR1, name = Bub3:BubR1, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R4) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R7b));
	
% Species:   id = MCC, name = MCC, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R7));
	
% Species:   id = Bub3_BubR1_Cdc20, name = Bub3:BubR1:Cdc20, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R5));
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = MCC_APC, name = MCC:APC, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R7b));
	
% Species:   id = APC_Cdc20, name = APC:Cdc20, affected by kineticLaw
	xdot(11) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R7b) + ( 1.0 * reaction_R8));
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


