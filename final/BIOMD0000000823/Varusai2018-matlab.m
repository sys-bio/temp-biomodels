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
% Model name = Varusai2018 - Dynamic modelling of the mTOR signalling network reveals complex emergent behaviours conferred by DEPTOR
%
% isDescribedBy http://identifiers.org/pubmed/29330362
% is http://identifiers.org/biomodels.db/MODEL1909250003
% is http://identifiers.org/biomodels.db/BIOMD0000000823
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 50.0;
	x0(2) = 0.0;
	x0(3) = 100.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 100.0;
	x0(7) = 0.0;
	x0(8) = 250.0;
	x0(9) = 0.0;
	x0(10) = 200.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 350.0;
	x0(16) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  V1, name = V1
	global_par_V1=1.0;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=95.0;
% Parameter:   id =  V2, name = V2
	global_par_V2=1.0;
% Parameter:   id =  Km2, name = Km2
	global_par_Km2=35.0;
% Parameter:   id =  k3c, name = k3c
	global_par_k3c=0.1;
% Parameter:   id =  Km3, name = Km3
	global_par_Km3=50.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=1.0;
% Parameter:   id =  Km4, name = Km4
	global_par_Km4=50.0;
% Parameter:   id =  k5ca, name = k5ca
	global_par_k5ca=0.05;
% Parameter:   id =  Km5a, name = Km5a
	global_par_Km5a=7.0;
% Parameter:   id =  k5cb, name = k5cb
	global_par_k5cb=1.5;
% Parameter:   id =  Km5b, name = Km5b
	global_par_Km5b=4.0;
% Parameter:   id =  V6, name = V6
	global_par_V6=2.0;
% Parameter:   id =  Km6, name = Km6
	global_par_Km6=34.0;
% Parameter:   id =  k7c, name = k7c
	global_par_k7c=0.1;
% Parameter:   id =  Km7, name = Km7
	global_par_Km7=2.0;
% Parameter:   id =  V8, name = V8
	global_par_V8=6.0;
% Parameter:   id =  Km8, name = Km8
	global_par_Km8=1.0;
% Parameter:   id =  k9c, name = k9c
	global_par_k9c=0.3;
% Parameter:   id =  Km9, name = Km9
	global_par_Km9=160.0;
% Parameter:   id =  V10, name = V10
	global_par_V10=3.0;
% Parameter:   id =  Km10, name = Km10
	global_par_Km10=7.0;
% Parameter:   id =  k11ca, name = k11ca
	global_par_k11ca=0.1;
% Parameter:   id =  Km11a, name = Km11a
	global_par_Km11a=120.0;
% Parameter:   id =  k11cb, name = k11cb
	global_par_k11cb=0.13;
% Parameter:   id =  Km11b, name = Km11b
	global_par_Km11b=11.0;
% Parameter:   id =  V12, name = V12
	global_par_V12=4.0;
% Parameter:   id =  Km12, name = Km12
	global_par_Km12=7.0;
% Parameter:   id =  k13f, name = k13f
	global_par_k13f=0.001;
% Parameter:   id =  k13r, name = k13r
	global_par_k13r=0.006;
% Parameter:   id =  k14f, name = k14f
	global_par_k14f=0.007;
% Parameter:   id =  k14r, name = k14r
	global_par_k14r=0.006;
% Parameter:   id =  k15c, name = k15c
	global_par_k15c=0.1;
% Parameter:   id =  Km15, name = Km15
	global_par_Km15=50.0;
% Parameter:   id =  V16, name = V16
	global_par_V16=1.0;
% Parameter:   id =  Km16, name = Km16
	global_par_Km16=50.0;
% Parameter:   id =  ks17, name = ks17
	global_par_ks17=0.0;
% Parameter:   id =  kd18, name = kd18
	global_par_kd18=0.0;

% Reaction: id = v1, name = v1
	reaction_v1=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(1), global_par_Km1, global_par_V1);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(2), global_par_Km2, global_par_V2);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_compartment*HMM_Mod(global_par_k3c, x(3), x(2), global_par_Km3);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(4), global_par_Km4, global_par_V4);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_compartment*Function_for_v5(global_par_k5ca, x(4), x(6), global_par_Km5a, global_par_k5cb, x(11), global_par_Km5b);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(7), global_par_Km6, global_par_V6);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_compartment*HMM_Mod(global_par_k7c, x(8), x(7), global_par_Km7);

% Reaction: id = v8, name = v8
	reaction_v8=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(9), global_par_Km8, global_par_V8);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_compartment*HMM_Mod(global_par_k9c, x(10), x(2), global_par_Km9);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(11), global_par_Km10, global_par_V10);

% Reaction: id = v11, name = v11
	reaction_v11=compartment_compartment*Function_for_v11(global_par_k11ca, x(9), x(15), global_par_Km11a, x(16), global_par_k11cb, x(11), global_par_Km11b);

% Reaction: id = v12, name = v12
	reaction_v12=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(16), global_par_Km12, global_par_V12);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_compartment*(global_par_k13f*x(8)*x(15)-global_par_k13r*x(13));

% Reaction: id = v14, name = v14
	reaction_v14=compartment_compartment*(global_par_k14f*x(10)*x(15)-global_par_k14r*x(14));

% Reaction: id = v15, name = v15
	reaction_v15=compartment_compartment*HMM_Mod(global_par_k15c, x(3), x(9), global_par_Km15);

% Reaction: id = v16, name = v16
	reaction_v16=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(5), global_par_Km16, global_par_V16);

% Reaction: id = v18, name = v18
	reaction_v18=compartment_compartment*global_par_kd18*x(16);

	xdot=zeros(16,1);
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2));
	
% Species:   id = pIR, name = pIR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v16));
	
% Species:   id = pIRS, name = pIRS, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = iIRS, name = iIRS, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v16));
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v6));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = mTORC1, name = mTORC1, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v13));
	
% Species:   id = pmTORC1, name = pmTORC1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = mTORC2, name = mTORC2, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_v9) + ( 1.0 * reaction_v10) + (-1.0 * reaction_v14));
	
% Species:   id = pmTORC2, name = pmTORC2, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = imTORC2, name = imTORC2
% Warning species is not changed by either rules or reactions
	xdot(12) = ;
	
% Species:   id = mTORC1_DEPTOR, name = mTORC1_DEPTOR, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v13));
	
% Species:   id = mTORC2_DEPTOR, name = mTORC2_DEPTOR, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_v14));
	
% Species:   id = DEPTOR, name = DEPTOR, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_v11) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v13) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v17));
	
% Species:   id = pDEPTOR, name = pDEPTOR, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12) + (-1.0 * reaction_v18));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=HMM_Mod(V,s,m,Km), z=(V*s*m/(Km+s));end

function z=Function_for_v11(k11ca,pmTORC1,DEPTOR,Km11a,pDEPTOR,k11cb,pmTORC2,Km11b), z=(k11ca*pmTORC1*DEPTOR/(Km11a+pDEPTOR)+k11cb*pmTORC2*DEPTOR/(Km11b+DEPTOR));end

function z=Function_for_v5(k5ca,pIRS,Akt,Km5a,k5cb,pmTORC2,Km5b), z=(k5ca*pIRS*Akt/(Km5a+Akt)+k5cb*pmTORC2*Akt/(Km5b+Akt));end

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


