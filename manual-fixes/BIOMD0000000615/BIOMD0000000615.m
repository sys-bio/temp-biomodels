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
% Model name = Kuznetsov2016(II) - α-syn aggregation kinetics in Parkinson's Disease
%
% is http://identifiers.org/biomodels.db/MODEL1608150000
% is http://identifiers.org/biomodels.db/BIOMD0000000615
% isDescribedBy http://identifiers.org/pubmed/27211070
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.006;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = default_compartment, name = Neuron, constant
	compartment_default_compartment=1.0;
% Parameter:   id =  nA, name = nA
	global_par_nA=2.91E-20;
% Parameter:   id =  k1, name = k1
	global_par_k1=3.0E-7;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.0E-9;
% Parameter:   id =  qA, name = qA
	global_par_qA=4.17E-8;
% Parameter:   id =  QBs, name = QBs
	global_par_QBs=0.0;
% Parameter:   id =  QBsyn, name = QBsyn
	global_par_QBsyn=0.0;
% Parameter:   id =  TAh1, name = TAh1
	global_par_TAh1=72000.0;
% Parameter:   id =  TBh1, name = TBh1
	global_par_TBh1=720000.0;
% Parameter:   id =  Vs, name = Vs
	global_par_Vs=4.19E-15;
% Parameter:   id =  Vsyn, name = Vsyn
	global_par_Vsyn=4.19E-15;
% Parameter:   id =  t1, name = t1
	global_par_t1=0.0;
% Parameter:   id =  t2, name = t2
	global_par_t2=0.0;

% Reaction: id = R1, name = R1
	reaction_R1=compartment_default_compartment*Function_for_R1(global_par_qA, compartment_default_compartment);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_default_compartment*Function_for_R2(x(1), global_par_k1, compartment_default_compartment);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_default_compartment*Function_for_R3(x(1), x(2), global_par_k2, compartment_default_compartment);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_default_compartment*Function_for_R4(x(1), global_par_TAh1, compartment_default_compartment);

% Reaction: id = R5, name = R5
	reaction_R5=compartment_default_compartment*Function_for_R5(x(1), global_par_nA, global_par_Vs, compartment_default_compartment);

% Reaction: id = R6, name = R6
	reaction_R6=compartment_default_compartment*Function_for_R6(global_par_QBs, compartment_default_compartment);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_default_compartment*Function_for_R7(x(1), global_par_k1, compartment_default_compartment);

% Reaction: id = R8, name = R8
	reaction_R8=compartment_default_compartment*Function_for_R8(x(1), x(2), global_par_k2, compartment_default_compartment);

% Reaction: id = R9, name = R9
	reaction_R9=compartment_default_compartment*Function_for_R9(x(2), global_par_TBh1, compartment_default_compartment);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_default_compartment*Function_for_R10(x(1), global_par_nA, global_par_Vsyn, compartment_default_compartment);

% Reaction: id = R11, name = R11
	reaction_R11=compartment_default_compartment*Function_for_R11(x(3), global_par_k1, compartment_default_compartment);

% Reaction: id = R12, name = R12
	reaction_R12=compartment_default_compartment*Function_for_R12(x(3), x(4), global_par_k2, compartment_default_compartment);

% Reaction: id = R13, name = R13
	reaction_R13=compartment_default_compartment*Function_for_R13(x(3), global_par_TAh1, compartment_default_compartment);

% Reaction: id = R14, name = R14
	reaction_R14=compartment_default_compartment*Function_for_R14(global_par_QBsyn, compartment_default_compartment);

% Reaction: id = R15, name = R15
	reaction_R15=compartment_default_compartment*Function_for_R15(x(3), global_par_k1, compartment_default_compartment);

% Reaction: id = R16, name = R16
	reaction_R16=compartment_default_compartment*Function_for_R16(x(3), x(4), global_par_k2, compartment_default_compartment);

% Reaction: id = R17, name = R17
	reaction_R17=compartment_default_compartment*Function_for_R17(x(4), global_par_TBh1, compartment_default_compartment);

	xdot=zeros(4,1);
	
% Species:   id = As, name = As, affected by kineticLaw
	xdot(1) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = Bs, name = Bs, affected by kineticLaw
	xdot(2) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R6) + ( 1.0 * reaction_R7) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R9));
	
% Species:   id = Asyn, name = Asyn, affected by kineticLaw
	xdot(3) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R13));
	
% Species:   id = Bsyn, name = Bsyn, affected by kineticLaw
	xdot(4) = (1/(compartment_default_compartment))*(( 1.0 * reaction_R14) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R16) + (-1.0 * reaction_R17));
end

function z=Function_for_R8(As,Bs,ModelValue_2,default_compartment), z=(ModelValue_2*As*Bs/default_compartment);end

function z=Function_for_R17(Bsyn,ModelValue_7,default_compartment), z=(Bsyn*log(2)/ModelValue_7/default_compartment);end

function z=Function_for_R1(ModelValue_3,default_compartment), z=(ModelValue_3/default_compartment);end

function z=Function_for_R5(As,ModelValue_0,ModelValue_8,default_compartment), z=(ModelValue_0*As/ModelValue_8/default_compartment);end

function z=Function_for_R9(Bs,ModelValue_7,default_compartment), z=(Bs*log(2)/ModelValue_7/default_compartment);end

function z=Function_for_R2(As,ModelValue_1,default_compartment), z=(ModelValue_1*As/default_compartment);end

function z=Function_for_R16(Asyn,Bsyn,ModelValue_2,default_compartment), z=(ModelValue_2*Asyn*Bsyn/default_compartment);end

function z=Function_for_R15(Asyn,ModelValue_1,default_compartment), z=(ModelValue_1*Asyn/default_compartment);end

function z=Function_for_R4(As,ModelValue_6,default_compartment), z=(As*log(2)/ModelValue_6/default_compartment);end

function z=Function_for_R11(Asyn,ModelValue_1,default_compartment), z=(ModelValue_1*Asyn/default_compartment);end

function z=Function_for_R6(ModelValue_4,default_compartment), z=(ModelValue_4/default_compartment);end

function z=Function_for_R12(Asyn,Bsyn,ModelValue_2,default_compartment), z=(ModelValue_2*Asyn*Bsyn/default_compartment);end

function z=Function_for_R7(As,ModelValue_1,default_compartment), z=(ModelValue_1*As/default_compartment);end

function z=Function_for_R13(Asyn,ModelValue_6,default_compartment), z=(Asyn*log(2)/ModelValue_6/default_compartment);end

function z=Function_for_R14(ModelValue_5,default_compartment), z=(ModelValue_5/default_compartment);end

function z=Function_for_R3(As,Bs,ModelValue_2,default_compartment), z=(ModelValue_2*As*Bs/default_compartment);end

function z=Function_for_R10(As,ModelValue_0,ModelValue_9,default_compartment), z=(ModelValue_0*As/ModelValue_9/default_compartment);end

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


