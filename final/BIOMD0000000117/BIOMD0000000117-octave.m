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
% Model name = Dupont1991_CaOscillation
%
% is http://identifiers.org/biomodels.db/MODEL0466937756
% is http://identifiers.org/biomodels.db/BIOMD0000000117
% isDescribedBy http://identifiers.org/pubmed/1647878
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.1;
	x0(2) = 1.4;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = intracellular_Ca_storepool, name = intracellular_Ca_storepool, constant
	compartment_intracellular_Ca_storepool=1.0;
% Parameter:   id =  v0, name = v0
	global_par_v0=1.0;
% Parameter:   id =  v1, name = v1
	global_par_v1=7.3;
% Parameter:   id =  VM2, name = VM2
	global_par_VM2=65.0;
% Parameter:   id =  VM3, name = VM3
	global_par_VM3=500.0;
% Parameter:   id =  KR, name = KR
	global_par_KR=2.0;
% Parameter:   id =  KA, name = KA
	global_par_KA=0.9;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.0;
% Parameter:   id =  kf, name = kf
	global_par_kf=1.0;
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  p, name = p
	global_par_p=4.0;
% Parameter:   id =  tstim, name = stimulation time
	global_par_tstim=4.0;
% Parameter:   id =  beta, name = beta
% Parameter:   id =  flag, name = flag
	global_par_flag=0.0;
% assignmentRule: variable = beta
	global_par_beta=global_par_flag*0.96*exp((-0.2)*(time-global_par_tstim));

% Reaction: id = reaction_0000001, name = InsP3 modulated release of Ca from the InsP3 sensitive store
	reaction_reaction_0000001=global_par_v1*global_par_beta*compartment_Cytosol;

% Reaction: id = reaction_0000002, name = Constant input of Ca from the extracellular medium
	reaction_reaction_0000002=global_par_v0*compartment_Cytosol;

% Reaction: id = reaction_0000003, name = Leak Ca from pool to cytosol
	reaction_reaction_0000003=global_par_kf*x(2)*compartment_Cytosol;

% Reaction: id = reaction_0000004, name = Pumping Ca into the InsP3-insensitive store
	reaction_reaction_0000004=compartment_intracellular_Ca_storepool*global_par_VM2*x(1)^global_par_n/(global_par_K2^global_par_n+x(1)^global_par_n);

% Reaction: id = reaction_0000005, name = Release of Ca from the pool into the cytosol
	reaction_reaction_0000005=compartment_Cytosol*global_par_VM3*x(2)^global_par_m/(global_par_KR^global_par_m+x(2)^global_par_m)*x(1)^global_par_p/(global_par_KA^global_par_p+x(1)^global_par_p);

% Reaction: id = reaction_0000006, name = Transport of cytosolic ca into the extracellular medium
	reaction_reaction_0000006=global_par_k*x(1)*compartment_extracellular;

%Event: id=event_0000001
	event_event_0000001=time > global_par_tstim;

	if(event_event_0000001) 
		global_par_flag=1;
	end

	xdot=zeros(2,1);
	
% Species:   id = z, name = Ca in the cytosol, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*(( 1.0 * reaction_reaction_0000001) + ( 1.0 * reaction_reaction_0000002) + ( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004) + ( 1.0 * reaction_reaction_0000005) + (-1.0 * reaction_reaction_0000006));
	
% Species:   id = y, name = Ca in the InsP3-insensitive pool, affected by kineticLaw
	xdot(2) = (1/(compartment_intracellular_Ca_storepool))*((-1.0 * reaction_reaction_0000003) + ( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000005));
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


