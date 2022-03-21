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
% Model name = Liu2010_Hormonal_Crosstalk_Arabidopsis
%
% is http://identifiers.org/biomodels.db/MODEL1008260000
% is http://identifiers.org/biomodels.db/BIOMD0000000269
% isDescribedBy http://identifiers.org/pubmed/20531403
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 0.1;
	x0(8) = 0.1;
	x0(9) = 0.1;
	x0(10) = 0.0;
	x0(11) = 0.3;
	x0(12) = 0.3;
	x0(13) = 0.0;
	x0(14) = 0.3;
	x0(15) = 0.3;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;


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

% Compartment: id = compartment_1, name = cell, constant
	compartment_compartment_1=1.0;
% Compartment: id = extra, name = extracellular, constant
	compartment_extra=1.0;
% Parameter:   id =  k1a, name = k1a
	global_par_k1a=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.2;
% Parameter:   id =  k2a, name = k2a
	global_par_k2a=2.8;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=1.0;
% Parameter:   id =  k2c, name = k2c
	global_par_k2c=0.01;
% Parameter:   id =  k3, name = k3
	global_par_k3=2.0;
% Parameter:   id =  k3a, name = k3a
	global_par_k3a=0.45;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.3;
% Parameter:   id =  k6a, name = k6a
	global_par_k6a=0.2;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=3.0E-4;
% Parameter:   id =  k10a, name = k10a
	global_par_k10a=0.5;
% Parameter:   id =  k11, name = k11
	global_par_k11=5.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.1;
% Parameter:   id =  k12a, name = k12a
	global_par_k12a=0.1;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=3.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.085;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.3;
% Parameter:   id =  k16a, name = k16a
	global_par_k16a=1.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.1;
% Parameter:   id =  k18a, name = k18a
	global_par_k18a=1.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.1;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0;
% Parameter:   id =  k_ethylene, name = k_ethylene
	global_par_k_ethylene=0.5;
% Parameter:   id =  k_auxin, name = k_auxin
	global_par_k_auxin=70.0;
% Parameter:   id =  k_cytokinin, name = k_cytokinin
	global_par_k_cytokinin=10.0;
% assignmentRule: variable = Ra
	x(4)=x(6)-x(5);
% assignmentRule: variable = Re
	x(10)=x(11)-x(12);
% assignmentRule: variable = CTR1
	x(13)=x(14)-x(15);

% Reaction: id = reaction_1, name = v1: Auxin Transport to the cell
	reaction_reaction_1=compartment_compartment_1*function_2(global_par_k1a, x(2), global_par_k1);

% Reaction: id = reaction_2, name = v2: Auxin biosynthesis in the cell
	reaction_reaction_2=compartment_compartment_1*function_3(global_par_k2, global_par_k2a, x(8), x(7), global_par_k2b, x(3), global_par_k2c);

% Reaction: id = reaction_3, name = v3: Auxin removal from the cell
	reaction_reaction_3=compartment_compartment_1*function_1(global_par_k3, global_par_k3a, x(2), x(1));

% Reaction: id = reaction_4, name = v4: Conversion of auxin receptor from the inactivated form to the activated form
	reaction_reaction_4=compartment_compartment_1*function_4(global_par_k4, x(1), x(4));

% Reaction: id = reaction_5, name = v5: Conversion of  auxin receptor from the activated form   to the inactivated form
	reaction_reaction_5=compartment_compartment_1*global_par_k5*x(5);

% Reaction: id = reaction_6, name = v6: Transcription of POLARIS gene
	reaction_reaction_6=compartment_compartment_1*function_6(global_par_k6, x(5), x(8), global_par_k6a);

% Reaction: id = reaction_7, name = v7: Decay of mRNA of POLARIS gene
	reaction_reaction_7=compartment_compartment_1*function_7(global_par_k7, x(9));

% Reaction: id = reaction_8, name = v8: Translation of POLARIS gene
	reaction_reaction_8=compartment_compartment_1*function_8(global_par_k8, x(9));

% Reaction: id = reaction_9, name = v9: Decay of protein of POLARIS gene
	reaction_reaction_9=compartment_compartment_1*function_9(global_par_k9, x(3));

% Reaction: id = reaction_10, name = v10: Conversion of the inactivated form of ethylene receptor to its activated form by PLSp 
	reaction_reaction_10=compartment_compartment_1*function_10(global_par_k10, x(3), global_par_k10a, x(10));

% Reaction: id = reaction_11, name = v11: Conversion of the activated form of ethylene receptor to its inactivated form
	reaction_reaction_11=compartment_compartment_1*function_12(x(12), x(8), global_par_k11);

% Reaction: id = reaction_12, name = v12: Ethylene biosynthesis 
	reaction_reaction_12=compartment_compartment_1*function_13(x(1), x(7), global_par_k12, global_par_k12a);

% Reaction: id = reaction_13, name = v13: Removal of ethylene
	reaction_reaction_13=compartment_compartment_1*function_15(x(8), global_par_k13);

% Reaction: id = reaction_14, name = v14: Conversion of the inactivated form of CTR1 protein to its activated form by Re*
	reaction_reaction_14=compartment_compartment_1*function_16(x(12), global_par_k14, x(13));

% Reaction: id = reaction_15, name = v15: Conversion of the activated form of CTR1 protein to its inactivated form
	reaction_reaction_15=compartment_compartment_1*function_17(x(15), global_par_k15);

% Reaction: id = reaction_16, name = v16: Activation of the downstream of ethylene signalling response is inhibited by  CTR1*
	reaction_reaction_16=compartment_compartment_1*function_18(x(15), global_par_k16, global_par_k16a);

% Reaction: id = reaction_17, name = v17: Removal of the unknown molecule X
	reaction_reaction_17=compartment_compartment_1*function_19(x(2), global_par_k17);

% Reaction: id = reaction_18, name = v18: Biosynthesis of cytokinin
	reaction_reaction_18=compartment_compartment_1*function_20(x(1), global_par_k18a, global_par_k18);

% Reaction: id = reaction_19, name = v19: removal of cytokinin
	reaction_reaction_19=compartment_compartment_1*function_21(x(7), global_par_k19);

% Reaction: id = v_Ethylene, name = vEthylene: Uptake rate of exogenous ACC (1-aminocyclopropane-1-carboxylic acid)
	reaction_v_Ethylene=compartment_compartment_1*global_par_k_ethylene*x(17);

% Reaction: id = v_Auxin, name = vAuxin: Uptake rate of exogenous auxin (indole-3-acetic acid, IAA)
	reaction_v_Auxin=compartment_compartment_1*global_par_k_auxin*x(16);

% Reaction: id = v_Cytokinin, name = vCytokinin: Uptake rate of exogenous cytokinin
	reaction_v_Cytokinin=compartment_compartment_1*global_par_k_cytokinin*x(18);

	xdot=zeros(18,1);
	
% Species:   id = Auxin, name = Auxin, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_v_Auxin));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = PLSp, name = PLSp, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = Ra, name = Ra, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Ra_star, name = Ra*, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = RaT, name = Ra_total
%WARNING speciesID: RaT, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = CK, name = CK, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_v_Cytokinin));
	
% Species:   id = ET, name = ET, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_v_Ethylene));
	
% Species:   id = PLSm, name = PLSm, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = Re, name = Re, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = ReT, name = Re_total
%WARNING speciesID: ReT, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = Re_star, name = Re*, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = CTR1, name = CTR1, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = CTR1T, name = CTR1_total
%WARNING speciesID: CTR1T, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = CTR1_star, name = CTR1*, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = IAA, name = IAA
%WARNING speciesID: IAA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = ACC, name = ACC
%WARNING speciesID: ACC, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
	
% Species:   id = CK_ex, name = Cytokinin_ext
%WARNING speciesID: CK_ex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
end

function z=function_1(k3,k3a,X,Auxin), z=((k3+k3a*X)*Auxin);end

function z=function_2(k1a,X,k1), z=(k1a/(1+X/k1));end

function z=function_3(k2,k2a,ET,CK,k2b,PLSp,k2c), z=(k2+k2a*ET/(1+CK/k2b)*PLSp/(k2c+PLSp));end

function z=function_4(k4,Auxin,Ra), z=(k4*Auxin*Ra);end

function z=function_6(k6,Ra_star,ET,k6a), z=(k6*Ra_star/(1+ET/k6a));end

function z=function_7(k7,PLSm), z=(k7*PLSm);end

function z=function_8(k8,PLSm), z=(k8*PLSm);end

function z=function_9(k9,PLSp), z=(k9*PLSp);end

function z=function_10(k10,PLSp,k10a,Re), z=((k10+k10a*PLSp)*Re);end

function z=function_12(Re_star,ET,k11), z=(k11*Re_star*ET);end

function z=function_13(Auxin,CK,k12,k12a), z=(k12+k12a*Auxin*CK);end

function z=function_15(ET,k13), z=(k13*ET);end

function z=function_16(Re_star,k14,CTR1), z=(k14*Re_star*CTR1);end

function z=function_17(CTR1_star,k15), z=(k15*CTR1_star);end

function z=function_20(Auxin,k18a,k18), z=(k18a/(1+Auxin/k18));end

function z=function_18(CTR1_star,k16,k16a), z=(k16-k16a*CTR1_star);end

function z=function_19(X,k17), z=(k17*X);end

function z=function_21(CK,k19), z=(k19*CK);end

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


