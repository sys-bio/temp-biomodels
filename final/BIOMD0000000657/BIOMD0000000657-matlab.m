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
% Model name = Araujo2016 - Positive feedback in Cdk1 signalling keeps mitotic duration short and constant
%
% is http://identifiers.org/biomodels.db/MODEL1710040001
% is http://identifiers.org/biomodels.db/BIOMD0000000657
% isDescribedBy http://identifiers.org/pubmed/27768873
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 20.0;
	x0(2) = 0.0;
	x0(3) = 59.9999999999999;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Ks, name = Ks
	global_par_Ks=0.1;
% Parameter:   id =  Adeg, name = Adeg
	global_par_Adeg=0.001;
% Parameter:   id =  Bdeg, name = Bdeg
	global_par_Bdeg=0.02;
% Parameter:   id =  Acdc, name = Acdc
	global_par_Acdc=0.5;
% Parameter:   id =  Bcdc, name = Bcdc
	global_par_Bcdc=1.5;
% Parameter:   id =  EC50cdc, name = EC50cdc
	global_par_EC50cdc=30.0;
% Parameter:   id =  n_cdc, name = n_cdc
	global_par_n_cdc=10.0;
% Parameter:   id =  Awee, name = Awee
	global_par_Awee=0.5;
% Parameter:   id =  Bwee, name = Bwee
	global_par_Bwee=1.0;
% Parameter:   id =  EC50wee, name = EC50wee
	global_par_EC50wee=30.0;
% Parameter:   id =  n_wee, name = n_wee
	global_par_n_wee=10.0;
% Parameter:   id =  EC50apc, name = EC50apc
	global_par_EC50apc=0.5;
% Parameter:   id =  n_apc, name = n_apc
	global_par_n_apc=10.0;
% Parameter:   id =  AK, name = AK
	global_par_AK=0.0;
% Parameter:   id =  BK, name = BK
	global_par_BK=0.25;
% Parameter:   id =  EC50K, name = EC50K
	global_par_EC50K=0.18;
% Parameter:   id =  n_K, name = n_K
	global_par_n_K=5.0;
% Parameter:   id =  AP, name = AP
	global_par_AP=0.025;
% Parameter:   id =  BP, name = BP
	global_par_BP=0.5;
% Parameter:   id =  EC50P, name = EC50P
	global_par_EC50P=0.18;
% Parameter:   id =  n_P, name = n_P
	global_par_n_P=5.0;

% Reaction: id = R1, name = R1
	reaction_R1=compartment_Cell*func1_Cdk1_activation(global_par_Ks, global_par_Adeg, x(1), global_par_Bdeg, x(2), global_par_n_apc, global_par_EC50apc, global_par_Acdc, global_par_Bcdc, global_par_n_cdc, global_par_EC50cdc, x(3), global_par_Awee, global_par_Bwee, global_par_EC50wee, global_par_n_wee);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_Cell*func2_CycB_regulation(global_par_Ks, global_par_Adeg, x(3), global_par_Bdeg, x(2), global_par_n_apc, global_par_EC50apc);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_Cell*func3_APC_regulation(global_par_AK, global_par_BK, x(1), global_par_n_K, global_par_EC50K, x(2), global_par_AP, global_par_BP, global_par_EC50P, global_par_n_P);

	xdot=zeros(3,1);
	
% Species:   id = Cdk1CycB, name = Cdk1CycB, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_R1));
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_R3));
	
% Species:   id = CycB, name = CycB, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_R2));
end

function z=func1_Cdk1_activation(Ks,Adeg,Cdk1CycB,Bdeg,APC,napc,EC50apc,Acdc,Bcdc,ncdc,EC50cdc,CycB,Awee,Bwee,EC50wee,nwee), z=(Ks-Adeg*Cdk1CycB-Bdeg*APC^napc*Cdk1CycB/(EC50apc^napc+APC^napc)+(Acdc+Bcdc*Cdk1CycB^ncdc/(EC50cdc^ncdc+Cdk1CycB^ncdc))*(CycB-Cdk1CycB)-(Awee+Bwee*EC50wee^nwee/(EC50wee^nwee+Cdk1CycB^nwee))*Cdk1CycB);end

function z=func2_CycB_regulation(Ks,Adeg,CycB,Bdeg,APC,napc,EC50apc), z=(Ks-Adeg*CycB-Bdeg*APC^napc*CycB/(EC50apc^napc+APC^napc));end

function z=func3_APC_regulation(AK,BK,Cdk1CycB,nK,EC50K,APC,AP,BP,EC50P,nP), z=((AK+BK*(Cdk1CycB/200)^nK/((Cdk1CycB/200)^nK+EC50K^nK))*(1-APC)-(AP+BP*EC50P^nP/(APC^nP+EC50P^nP))*APC);end

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


