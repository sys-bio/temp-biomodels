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
% Model name = Markevich2004_MAPK_AllRandomElementary
%
% is http://identifiers.org/biomodels.db/MODEL6618676537
% is http://identifiers.org/biomodels.db/BIOMD0000000030
% isDescribedBy http://identifiers.org/pubmed/14744999
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 800.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 180.0;
	x0(6) = 100.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
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
% Parameter:   id =  k5, name = k5
	global_par_k5=0.02;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.01;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.032;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=15.0;
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
% Parameter:   id =  h7, name = h7
	global_par_h7=0.01;
% Parameter:   id =  h_7, name = h_7
	global_par_h_7=1.0;
% Parameter:   id =  h8, name = h8
	global_par_h8=0.47;
% Parameter:   id =  h9, name = h9
	global_par_h9=0.14;
% Parameter:   id =  h_9, name = h_9
	global_par_h_9=0.0018;
% Parameter:   id =  h10, name = h10
	global_par_h10=0.045;
% Parameter:   id =  h_10, name = h_10
	global_par_h_10=1.0;
% Parameter:   id =  h11, name = h11
	global_par_h11=0.092;
% Parameter:   id =  h12, name = h12
	global_par_h12=1.0;
% Parameter:   id =  h_12, name = h_12
	global_par_h_12=0.01;

% Reaction: id = reaction_0000001, name = binding MAPKK on Tyr site of MAPK
	reaction_reaction_0000001=compartment_cell*(global_par_k1*x(1)*x(5)-global_par_k_1*x(9));

% Reaction: id = reaction_0000002, name = tyr phosphorylation of MAPK
	reaction_reaction_0000002=compartment_cell*global_par_k2*x(9);

% Reaction: id = reaction_0000003, name = binding of MAPKK on MAPK-PY
	reaction_reaction_0000003=compartment_cell*(global_par_k3*x(2)*x(5)-global_par_k_3*x(7));

% Reaction: id = reaction_0000004, name = thr phosphorylation of MAPK
	reaction_reaction_0000004=compartment_cell*global_par_k4*x(7);

% Reaction: id = reaction_0000005, name = binding of MAPKK on Thr site of MAPK
	reaction_reaction_0000005=compartment_cell*(global_par_k5*x(1)*x(5)-global_par_k_5*x(10));

% Reaction: id = reaction_0000006, name = thr phosphorylation of MAPK
	reaction_reaction_0000006=compartment_cell*global_par_k6*x(10);

% Reaction: id = reaction_0000007, name = binding MAPK-PT and MAPKK
	reaction_reaction_0000007=compartment_cell*(global_par_k7*x(3)*x(5)-global_par_k_7*x(8));

% Reaction: id = reaction_0000008, name = tyr phosphorylation of MAPK
	reaction_reaction_0000008=compartment_cell*global_par_k8*x(8);

% Reaction: id = reaction_0000009, name = binding of MKP on Tyr site of MAPK-PP
	reaction_reaction_0000009=compartment_cell*(global_par_h1*x(4)*x(6)-global_par_h_1*x(11));

% Reaction: id = reaction_0000010, name = dephosphorylation of Tyr on MAPKK-PP
	reaction_reaction_0000010=compartment_cell*global_par_h2*x(11);

% Reaction: id = reaction_0000011, name = dissociation MAPK-PT and MKP
	reaction_reaction_0000011=compartment_cell*(global_par_h3*x(15)-global_par_h_3*x(3)*x(6));

% Reaction: id = reaction_0000013, name = binding of MKP on Thr site of MAPK-PT
	reaction_reaction_0000013=compartment_cell*(global_par_h4*x(3)*x(6)-global_par_h_4*x(16));

% Reaction: id = reaction_0000012, name = dephosphorylation of MAPK-PT
	reaction_reaction_0000012=compartment_cell*global_par_h5*x(16);

% Reaction: id = reaction_0000015, name = dissociation MAPK and MKP
	reaction_reaction_0000015=compartment_cell*(global_par_h6*x(17)-global_par_h_6*x(1)*x(6));

% Reaction: id = reaction_0000017, name = binding of MKP on the Tyr site of MAPK-PY
	reaction_reaction_0000017=compartment_cell*(global_par_h7*x(2)*x(6)-global_par_h_7*x(13));

% Reaction: id = reaction_0000014, name = dephosphorylation of MAPK-PY
	reaction_reaction_0000014=compartment_cell*global_par_h8*x(13);

% Reaction: id = reaction_0000019, name = Dissociation MAPK and MKP
	reaction_reaction_0000019=compartment_cell*(global_par_h9*x(18)-global_par_h_9*x(1)*x(6));

% Reaction: id = reaction_0000020, name = binding of MKP on Thr site of MAPK-PP
	reaction_reaction_0000020=compartment_cell*(global_par_h10*x(4)*x(6)-global_par_h_10*x(12));

% Reaction: id = reaction_0000021, name = dephosphorylation of Thr on MAPKK-PP
	reaction_reaction_0000021=compartment_cell*global_par_h11*x(12);

% Reaction: id = reaction_0000022, name = dissociation MAPK-PY and MKP
	reaction_reaction_0000022=compartment_cell*(global_par_h12*x(14)-global_par_h_12*x(2)*x(6));

	xdot=zeros(18,1);
	
% Species:   id = M, name = MAPK, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000005) + ( 1.0 * reaction_reaction_0000015) + ( 1.0 * reaction_reaction_0000019));
	
% Species:   id = MpY, name = MAPK-PY, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000017) + ( 1.0 * reaction_reaction_0000022));
	
% Species:   id = MpT, name = MAPK-PT, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000007) + ( 1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000013));
	
% Species:   id = Mpp, name = MAPK-PP, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000004) + ( 1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000020));
	
% Species:   id = MAPKK, name = MAPKK, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000001) + ( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + ( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000005) + ( 1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000007) + ( 1.0 * reaction_reaction_0000008));
	
% Species:   id = MKP, name = MKP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0000009) + ( 1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000013) + ( 1.0 * reaction_reaction_0000015) + (-1.0 * reaction_reaction_0000017) + ( 1.0 * reaction_reaction_0000019) + (-1.0 * reaction_reaction_0000020) + ( 1.0 * reaction_reaction_0000022));
	
% Species:   id = MpY_MAPKK, name = MAPK-PY_MAPKK, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004));
	
% Species:   id = MpT_MAPKK, name = MAPK-PT_MAPKK, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000007) + (-1.0 * reaction_reaction_0000008));
	
% Species:   id = M_MAPKK_Y, name = MAPK_MAPKK_Y, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000002));
	
% Species:   id = M_MAPKK_T, name = MAPK_MAPKK_T, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000005) + (-1.0 * reaction_reaction_0000006));
	
% Species:   id = Mpp_MKP_Y, name = MAPK-PP_MKP_T, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000010));
	
% Species:   id = Mpp_MKP_T, name = MAPK-PP_MKP_Y, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000020) + (-1.0 * reaction_reaction_0000021));
	
% Species:   id = MpY_MKP_Y, name = MAPK-PY_MKP_Y, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000017) + (-1.0 * reaction_reaction_0000014));
	
% Species:   id = MpY_MKP_T, name = MAPK-PY_MKP_T, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000021) + (-1.0 * reaction_reaction_0000022));
	
% Species:   id = MpT_MKP_Y, name = MAPK-PT_MKP_Y, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000010) + (-1.0 * reaction_reaction_0000011));
	
% Species:   id = MpT_MKP_T, name = MAPK-PT_MKP_T, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000013) + (-1.0 * reaction_reaction_0000012));
	
% Species:   id = M_MKP_T, name = MAPK_MKP_T, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000012) + (-1.0 * reaction_reaction_0000015));
	
% Species:   id = M_MKP_Y, name = MAPK_MKP_Y, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0000014) + (-1.0 * reaction_reaction_0000019));
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


