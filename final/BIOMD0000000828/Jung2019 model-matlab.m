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
% Model name = Jung2019 - Regulating glioblastoma signaling pathways and anti-invasion therapy - core control model
%
% is http://identifiers.org/biomodels.db/MODEL1909300005
% is http://identifiers.org/biomodels.db/BIOMD0000000828
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 6.64215616170866E-22;
	x0(2) = 0.0;
	x0(3) = 3.05539183438598E-21;
	x0(4) = 2.07567380053396E-21;
	x0(5) = 4.58308775157897E-21;
	x0(6) = 1.0;


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
% Parameter:   id =  myu_G, name = myu_G
	global_par_myu_G=0.5;
% Parameter:   id =  l_1, name = l_1
	global_par_l_1=4.0;
% Parameter:   id =  l_2, name = l_2
	global_par_l_2=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.6;
% Parameter:   id =  l_3, name = l_3
	global_par_l_3=4.0;
% Parameter:   id =  l_4, name = l_4
	global_par_l_4=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;
% Parameter:   id =  S_1, name = S_1
	global_par_S_1=0.2;
% Parameter:   id =  epsilon_1, name = epsilon_1
	global_par_epsilon_1=0.02;
% Parameter:   id =  l_5, name = l_5
	global_par_l_5=4.0;
% Parameter:   id =  l_6, name = l_6
	global_par_l_6=1.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  S_2, name = S_2
	global_par_S_2=1.2;
% Parameter:   id =  epsilon_2, name = epsilon_2
	global_par_epsilon_2=0.02;
% Parameter:   id =  myu_D, name = myu_D
	global_par_myu_D=1.316;
% Parameter:   id =  u_1, name = u_1
	global_par_u_1=0.0;
% Parameter:   id =  u_2, name = u_2
	global_par_u_2=0.0;
% assignmentRule: variable = deltaD
	x(6)=exp(-x(2));

% Reaction: id = Consumption_of_Glucose, name = Consumption of Glucose
	reaction_Consumption_of_Glucose=compartment_compartment*Consumption_of_Glucose_0(global_par_myu_G, x(1));

% Reaction: id = Decay_of_Drug, name = Decay of Drug
	reaction_Decay_of_Drug=compartment_compartment*Decay_of_Drug_0(global_par_myu_D, x(2));

% Reaction: id = Production_of_miR_451, name = Production of miR-451
	reaction_Production_of_miR_451=compartment_compartment*production_of_miR_451(x(1), global_par_l_1, global_par_l_2, global_par_alpha, x(4));

% Reaction: id = loss_of_miR_451, name = loss of miR-451
	reaction_loss_of_miR_451=compartment_compartment*loss_of_miR_451_0(x(3));

% Reaction: id = signal_source_of_AMPK, name = signal source of AMPK
	reaction_signal_source_of_AMPK=compartment_compartment*signal_source_of_AMPK_0(global_par_S_1, global_par_epsilon_1);

% Reaction: id = Production_of_AMPK, name = Production of AMPK
	reaction_Production_of_AMPK=compartment_compartment*production_of_AMPK(global_par_l_3, global_par_l_4, global_par_epsilon_1, global_par_beta, x(3));

% Reaction: id = loss_of_AMPK, name = loss of AMPK
	reaction_loss_of_AMPK=compartment_compartment*loss_of_AMPK_0(x(4), global_par_epsilon_1);

% Reaction: id = signal_source_of_mTOR, name = signal source of mTOR
	reaction_signal_source_of_mTOR=compartment_compartment*signal_source_of_mTOR_0(global_par_S_2, global_par_epsilon_2);

% Reaction: id = Production_of_mTOR, name = Production of mTOR
	reaction_Production_of_mTOR=compartment_compartment*production_of_mTOR(global_par_l_5, global_par_l_6, global_par_epsilon_2, x(6), global_par_gamma, x(4));

% Reaction: id = loss_of_mTOR, name = loss of mTOR
	reaction_loss_of_mTOR=compartment_compartment*loss_of_mTOR_0(x(5), global_par_epsilon_2);

%Event: id=event
	event_event=piecewise(time-12*ceil(time/12),  xor (time < 0, 12 < 0), time-12*floor(time/12)) == 0;

	if(event_event) 
		global_par_u_1=global_par_u_1+1;
		global_par_u_2=global_par_u_2+1;
	end

%Event: id=event_2
	event_event_2=(((((((((time == 3) || (time == 15)) || (time == 27)) || (time == 39)) || (time == 51)) || (time == 63)) || (time == 75)) || (time == 87)) || (time == 99)) || (time == 111);

	if(event_event_2) 
		global_par_u_1=global_par_u_1-1;
		global_par_u_2=global_par_u_2-1;
	end

	xdot=zeros(6,1);
	
% Species:   id = Glucose_G, name = Glucose G, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Dose_for_Glucose) + (-1.0 * reaction_Consumption_of_Glucose));
	
% Species:   id = Drug_D, name = Drug D, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Dose_for_Drug) + (-1.0 * reaction_Decay_of_Drug));
	
% Species:   id = miR_451_M, name = miR-451 M, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_miR_451) + (-1.0 * reaction_loss_of_miR_451));
	
% Species:   id = AMPK_A, name = AMPK A, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_signal_source_of_AMPK) + ( 1.0 * reaction_Production_of_AMPK) + (-1.0 * reaction_loss_of_AMPK));
	
% Species:   id = mTOR_R, name = mTOR R, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_signal_source_of_mTOR) + ( 1.0 * reaction_Production_of_mTOR) + (-1.0 * reaction_loss_of_mTOR));
	
% Species:   id = deltaD, name = deltaD, involved in a rule 	xdot(6) = x(6);
end

function z=signal_source_of_mTOR_0(S_2,epsilon_2), z=(S_2/epsilon_2);end

function z=Dose_for_Glucose_0(u_1), z=(u_1);end

function z=Consumption_of_Glucose_0(myu_G,G), z=(myu_G*G);end

function z=loss_of_AMPK_0(A,epsilon_1), z=(A/epsilon_1);end

function z=production_of_mTOR(l_5,l_6,epsilon_2,dletaD,gamma,A), z=(l_5*l_6^2/(epsilon_2*(l_6^2+dletaD*gamma*A^2)));end

function z=loss_of_mTOR_0(R,epsilon_2), z=(R/epsilon_2);end

function z=Decay_of_Drug_0(myu_D,D), z=(myu_D*D);end

function z=Dose_for_Drug_0(u_2), z=(u_2);end

function z=production_of_miR_451(G,l_1,l_2,alpha,A), z=(G+l_1*l_2^2/(l_2^2+alpha*A^2));end

function z=loss_of_miR_451_0(M), z=(M);end

function z=signal_source_of_AMPK_0(S_1,episilon_1), z=(S_1/episilon_1);end

function z=production_of_AMPK(l_3,l_4,epsilon_1,beta,M), z=(l_3*l_4^2/(epsilon_1*(l_4^2+beta*M^2)));end

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


