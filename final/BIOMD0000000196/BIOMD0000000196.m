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
% Model name = Srividhya2006_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL1502077979
% is http://identifiers.org/biomodels.db/BIOMD0000000196
% isDescribedBy http://identifiers.org/pubmed/16473373
% isDerivedFrom http://identifiers.org/pubmed/11371173
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.01;
	x0(2) = 0;
	x0(3) = 0.1;
	x0(4) = 0;
	x0(5) = 0.1;
	x0(6) = 0.1;
	x0(7) = 0.473;
	x0(8) = 0.9;
	x0(9) = 0;
	x0(10) = 0;
	x0(11) = 0.2;


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
% Parameter:   id =  vf, name = vf
	global_par_vf=0.215;
% Parameter:   id =  kf, name = kf
	global_par_kf=1.0;
% Parameter:   id =  kc, name = kc
	global_par_kc=0.05;
% Parameter:   id =  Bc, name = Bc
	global_par_Bc=3.5;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.2;
% Parameter:   id =  B2, name = B2
	global_par_B2=3.3;
% Parameter:   id =  vM1, name = vM1
	global_par_vM1=0.7;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.2;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=0.5;
% Parameter:   id =  j1, name = j1
	global_par_j1=0.01;
% Parameter:   id =  B1, name = B1
	global_par_B1=5.0;
% Parameter:   id =  vM1_2, name = v'M1
	global_par_vM1_2=0.55;
% Parameter:   id =  j1_2, name = j'1
	global_par_j1_2=0.01;
% Parameter:   id =  vM2, name = vM2
	global_par_vM2=0.41;
% Parameter:   id =  a2, name = a2
	global_par_a2=1.0;
% Parameter:   id =  j2, name = j2
	global_par_j2=0.01;
% Parameter:   id =  vM2_2, name = v'M2
	global_par_vM2_2=1.0;
% Parameter:   id =  j3, name = j'3
	global_par_j3=0.01;
% Parameter:   id =  j2_2, name = j'2
	global_par_j2_2=0.01;
% Parameter:   id =  vM3, name = vM3
	global_par_vM3=1.0;
% Parameter:   id =  j3_2, name = j3
	global_par_j3_2=0.01;
% Parameter:   id =  vM3_2, name = v'M3
	global_par_vM3_2=1.0;
% Parameter:   id =  B3, name = B3
	global_par_B3=1.0;
% Parameter:   id =  vM4, name = vM4
	global_par_vM4=0.7;
% Parameter:   id =  a4, name = a4
	global_par_a4=2.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=5.0;
% Parameter:   id =  j4, name = j4
	global_par_j4=0.01;
% Parameter:   id =  vM4_2, name = v'M4
	global_par_vM4_2=1.0;
% Parameter:   id =  j4_2, name = j'4
	global_par_j4_2=0.01;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.01;
% Parameter:   id =  a, name = a
	global_par_a=10.0;
% Parameter:   id =  totcdc25, name = totcdc25
	global_par_totcdc25=1.0;
% Parameter:   id =  totwee1, name = totwee1
	global_par_totwee1=1.0;
% Parameter:   id =  totAPC, name = totAPC
	global_par_totAPC=1.0;
% Parameter:   id =  c, name = totcdk
	global_par_c=1.1;
% assignmentRule: variable = x4
	x(4)=global_par_totcdc25-x(8);
% assignmentRule: variable = y5
	x(9)=global_par_totwee1-x(5);
% assignmentRule: variable = y6
	x(10)=global_par_totAPC-x(6);
% assignmentRule: variable = x2
	x(2)=global_par_c-x(11)-x(3);

% Reaction: id = cyclincdkcomplexformation, name = cyclin/cdk complex formation
	reaction_cyclincdkcomplexformation=Mass_Action_2(global_par_kf, x(1), x(2));

% Reaction: id = cyclindegradation, name = cyclin degradation
	reaction_cyclindegradation=x(1)*(global_par_kc+global_par_Bc*x(6));

% Reaction: id = MPFdissociation, name = MPF cyclin subunit degradation
	reaction_MPFdissociation=global_par_kd*(1+global_par_B2*x(6))*x(3);

% Reaction: id = PreMPFMPFtransition, name = Pre-MPF -> MPF transition
	reaction_PreMPFMPFtransition=global_par_vM1*(1+global_par_a1*x(4)/(global_par_Ka+x(4)))*x(11)/(global_par_j1+x(11));

% Reaction: id = MPFPreMPFtransition, name = MPF -> Pre-MPF transition
	reaction_MPFPreMPFtransition=global_par_vM1_2*(1+global_par_B1*x(5)/(global_par_Ka+x(5)))*x(3)/(global_par_j1_2+x(3));

% Reaction: id = cdc25phosphorylation, name = cdc25 phosphorylation
	reaction_cdc25phosphorylation=global_par_vM2*(1+global_par_a2*x(7)*x(3)/(global_par_Ka+x(7)*x(3)))*(1-x(4))/(global_par_j2+1-x(4));

% Reaction: id = cdc25dephosphorylation, name = cdc25 dephosphorylation
	reaction_cdc25dephosphorylation=global_par_vM2_2*x(4)/(global_par_j2_2+x(4));

% Reaction: id = wee1dephosphorylation, name = wee1 dephosphorylation
	reaction_wee1dephosphorylation=global_par_vM3*(1-x(5))/(global_par_j3_2+1-x(5));

% Reaction: id = wee1phosphorylation, name = wee1 phosphorylation
	reaction_wee1phosphorylation=global_par_vM3_2*(1+global_par_B3*x(7)*x(3)/(global_par_Ka+x(7)*x(3)))*x(5)/(global_par_j3+x(5));

% Reaction: id = _2, name = APC phosphorylation
	reaction__2=global_par_vM4*(1+global_par_a4*x(7)*delay(x(3), global_par_tau)/(global_par_Ka+x(7)*delay(x(3), global_par_tau)))*(1-x(6))/(global_par_j4+(1-x(6)));

% Reaction: id = APCdephosphorylation, name = APC dephosphorylation
	reaction_APCdephosphorylation=global_par_vM4_2*x(6)/(global_par_j4_2+x(6));

% Reaction: id = cellmass, name = cell growth
	reaction_cellmass=global_par_mu*x(7)*(1-x(7)/global_par_a);

%Event: id=
	event_=x(3) < 0.2;

	if(event_) 
		x(7)=x(7)/2;
	end

	xdot=zeros(11,1);
	
% Species:   id = x1, name = cyclin, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_cyclinsythesis) + (-1.0 * reaction_cyclincdkcomplexformation) + (-1.0 * reaction_cyclindegradation));
	
% Species:   id = x2, name = free CDK, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = x3, name = MPF, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_MPFdissociation) + ( 1.0 * reaction_PreMPFMPFtransition) + (-1.0 * reaction_MPFPreMPFtransition));
	
% Species:   id = x4, name = cdc25_P, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = x5, name = Wee1, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_wee1dephosphorylation) + (-1.0 * reaction_wee1phosphorylation));
	
% Species:   id = x6, name = APC_P, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction__2) + (-1.0 * reaction_APCdephosphorylation));
	
% Species:   id = m, name = cell_mass, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_cellmass));
	
% Species:   id = y4, name = cdc25, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_cdc25phosphorylation) + ( 1.0 * reaction_cdc25dephosphorylation));
	
% Species:   id = y5, name = Wee1_P, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = y6, name = APC, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = Pre_MPF, name = Pre_MPF, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_cyclincdkcomplexformation) + (-1.0 * reaction_PreMPFMPFtransition) + ( 1.0 * reaction_MPFPreMPFtransition));
end

function z=Mass_Action_0(k1), z=(k1);end

function z=Mass_Action_2(k1,S1,S2), z=(k1*S1*S2);end

function z=Mass_Action_1(k1,S1), z=(k1*S1);end

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


