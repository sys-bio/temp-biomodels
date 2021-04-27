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
% Model name = Perez-Garcia19 - Computational design of improved standardized chemotherapy protocols for grade 2 oligodendrogliomas
%
% is http://identifiers.org/biomodels.db/MODEL1909170002
% is http://identifiers.org/biomodels.db/BIOMD0000000814
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 144.952075141053;
	x0(3) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.1027971308;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.1396877593;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=8.3184;
% Parameter:   id =  K, name = K
	global_par_K=261.799;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=1.0;
% Parameter:   id =  d, name = d
	global_par_d=150.0;
% Parameter:   id =  b, name = b
	global_par_b=1.9;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0021;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.002931927433;
% Parameter:   id =  dose1, name = dose1
	global_par_dose1=0.0;
% Parameter:   id =  dose2, name = dose2
	global_par_dose2=0.0;
% Parameter:   id =  dose3, name = dose3
	global_par_dose3=0.0;
% Parameter:   id =  dose_4, name = dose 4
	global_par_dose_4=0.0;
% Parameter:   id =  dose_5, name = dose 5
	global_par_dose_5=0.0;

% Reaction: id = Tumor_Cell_P_logistic_growth, name = Tumor Cell P logistic growth
	reaction_Tumor_Cell_P_logistic_growth=compartment_compartment*Function_for_Tumor_Cell_P_logistic_growth(x(2), x(3), global_par_K, global_par_rho);

% Reaction: id = Tumor_Cell_P_early_death, name = Tumor Cell P early death
	reaction_Tumor_Cell_P_early_death=compartment_compartment*Function_for_Tumor_Cell_P_early_death(global_par_alpha_1, x(2), x(1));

% Reaction: id = Tumor_Cell_P_delayed_death, name = Tumor Cell P delayed death
	reaction_Tumor_Cell_P_delayed_death=compartment_compartment*Function_for_Tumor_Cell_P_delayed_death(global_par_alpha_2, x(2), x(1));

% Reaction: id = Damaged_Tumor_Cell_D_death, name = Damaged Tumor Cell D death
	reaction_Damaged_Tumor_Cell_D_death=compartment_compartment*Function_for_Damaged_Tumor_Cell_D_death(global_par_rho, x(3), x(2), global_par_K, global_par_kappa);

% Reaction: id = Elimination_of_Chemotherapy, name = Elimination of Chemotherapy
	reaction_Elimination_of_Chemotherapy=compartment_compartment*Function_for_Elimination_of_Chemotherapy(global_par_lambda, x(1));

%Event: id=injection_1
	event_injection_1=((piecewise(time-28*ceil(time/28),  xor (time < 0, 28 < 0), time-28*floor(time/28)) == 27) && (time > 54)) && (time < 608);

	if(event_injection_1) 
		global_par_dose1=global_par_dose1+1;
		x(1)=x(1)+global_par_beta*global_par_b*global_par_d;
	end

%Event: id=injection_2
	event_injection_2=((piecewise(time-28*ceil(time/28),  xor (time < 0, 28 < 0), time-28*floor(time/28)) == 0) && (time > 54)) && (time < 608);

	if(event_injection_2) 
		x(1)=x(1)+global_par_beta*global_par_d*global_par_b;
		global_par_dose2=global_par_dose2+1;
	end

%Event: id=injection_3
	event_injection_3=(((((((((((((((((((time == 57) || (time == 85)) || (time == 113)) || (time == 141)) || (time == 169)) || (time == 197)) || (time == 225)) || (time == 253)) || (time == 281)) || (time == 309)) || (time == 337)) || (time == 365)) || (time == 393)) || (time == 421)) || (time == 449)) || (time == 477)) || (time == 505)) || (time == 533)) || (time == 561)) || (time == 589);

	if(event_injection_3) 
		x(1)=x(1)+global_par_beta*global_par_b*global_par_d;
		global_par_dose3=global_par_dose3+1;
	end

%Event: id=injection_4
	event_injection_4=(((((((((((((((((((time == 58) || (time == 86)) || (time == 114)) || (time == 142)) || (time == 170)) || (time == 198)) || (time == 226)) || (time == 254)) || (time == 282)) || (time == 310)) || (time == 338)) || (time == 366)) || (time == 394)) || (time == 422)) || (time == 450)) || (time == 478)) || (time == 506)) || (time == 534)) || (time == 562)) || (time == 590);

	if(event_injection_4) 
		x(1)=x(1)+global_par_beta*global_par_b*global_par_d;
		global_par_dose_4=global_par_dose_4+1;
	end

%Event: id=injection_5
	event_injection_5=(((((((((((((((((((time == 59) || (time == 87)) || (time == 115)) || (time == 143)) || (time == 171)) || (time == 199)) || (time == 227)) || (time == 255)) || (time == 283)) || (time == 311)) || (time == 339)) || (time == 367)) || (time == 395)) || (time == 423)) || (time == 451)) || (time == 479)) || (time == 507)) || (time == 535)) || (time == 563)) || (time == 591);

	if(event_injection_5) 
		x(1)=x(1)+global_par_beta*global_par_b*global_par_d;
		global_par_dose_5=global_par_dose_5+1;
	end

	xdot=zeros(3,1);
	
% Species:   id = Drug_Concentration_C, name = Drug Concentration C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Elimination_of_Chemotherapy));
	
% Species:   id = Tumor_Cell_Population_P, name = Tumor Cell Population P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_P_logistic_growth) + (-1.0 * reaction_Tumor_Cell_P_early_death) + (-1.0 * reaction_Tumor_Cell_P_delayed_death));
	
% Species:   id = Damaged_Tumor_Cells_D, name = Damaged Tumor Cells D, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_P_early_death) + (-1.0 * reaction_Damaged_Tumor_Cell_D_death));
end

function z=Function_for_Tumor_Cell_P_delayed_death(alpha_2,P,C), z=(alpha_2*P*C);end

function z=Function_for_Tumor_Cell_P_early_death(alpha_1,P,C), z=(alpha_1*P*C);end

function z=Function_for_Damaged_Tumor_Cell_D_death(rho,D,P,K,kappa), z=(rho*D*(1-(P+D)/K)/kappa);end

function z=Function_for_Elimination_of_Chemotherapy(lambda,C), z=(lambda*C);end

function z=Function_for_Tumor_Cell_P_logistic_growth(P,D,K,rho), z=(rho*P*(1-(P+D)/K));end

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


