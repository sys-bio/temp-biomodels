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
% Model name = Ribba2012 - Low-grade gliomas, tumour growth inhibition model
%
% is http://identifiers.org/biomodels.db/MODEL1402250000
% is http://identifiers.org/biomodels.db/BIOMD0000000521
% isDescribedBy http://identifiers.org/pubmed/22761472
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(5) = 1.0;
	x0(6) = 7.13;
	x0(7) = 41.2;
	x0(8) = 0.0;
	x0(1) = 1.0;
	x0(2) = 7.13;
	x0(3) = 41.2;
	x0(4) = 0.0;


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

% Compartment: id = plama, name = plasma, constant
	compartment_plama=1.0;
% Compartment: id = tissue, name = tissue, constant
	compartment_tissue=1.0;
% Parameter:   id =  Pstar, name = Pstar
% Parameter:   id =  P0, name = P0
	global_par_P0=7.13;
% Parameter:   id =  Q0, name = Q0
	global_par_Q0=41.2;
% Parameter:   id =  lambda_P, name = lambda_P
	global_par_lambda_P=0.121;
% Parameter:   id =  k_PQ, name = k_PQ
	global_par_k_PQ=0.00295;
% Parameter:   id =  k_Qp_P, name = k_Qp_P
	global_par_k_Qp_P=0.0031;
% Parameter:   id =  delta_QP, name = delta_QP
	global_par_delta_QP=0.0087;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.729;
% Parameter:   id =  KDE, name = KDE
	global_par_KDE=0.24;
% Parameter:   id =  K, name = K
	global_par_K=100.0;
% assignmentRule: variable = Pstar
	global_par_Pstar=x(2)+x(3)+x(4);
% rateRule: variable = C
x(1) = x(5);
% rateRule: variable = P
x(2) = x(6);
% rateRule: variable = Q
x(3) = x(7);
% rateRule: variable = Qp
x(4) = x(8);

	xdot=zeros(8,1);
	% rateRule: variable = C
	xdot(5) = (-global_par_KDE)*x(1);
	% rateRule: variable = P
	xdot(6) = global_par_lambda_P*x(2)*(1-global_par_Pstar/global_par_K)+global_par_k_Qp_P*x(4)-global_par_k_PQ*x(2)-global_par_gamma*x(1)*global_par_KDE*x(2);
	% rateRule: variable = Q
	xdot(7) = global_par_k_PQ-global_par_gamma*x(1)*global_par_KDE*x(3);
	% rateRule: variable = Qp
	xdot(8) = global_par_gamma*x(1)*global_par_KDE*x(3)-global_par_k_Qp_P*x(4)-global_par_delta_QP*x(4);
	
% Species:   id = C, name = PCV_plasma, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = P, name = Proliferative tissue, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Q, name = nonproliferative quiescent tissue, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Qp, name = damaged quiescent cells, defined in a rule 	xdot(4) = x(4);
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


