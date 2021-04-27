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
% Model name = Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B
%
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 143.8668;
	x0(2) = 63.7332;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 21.289283437936;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=1.4;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=0.45;
% Parameter:   id =  Epo_degradation_BaF3, name = Epo_degradation_BaF3
	global_par_Epo_degradation_BaF3=0.0269765368088175;
% Parameter:   id =  k_exp_hetero, name = k_exp_hetero
	global_par_k_exp_hetero=1.00097114635938E-5;
% Parameter:   id =  k_exp_homo, name = k_exp_homo
	global_par_k_exp_homo=0.0061723799618614;
% Parameter:   id =  k_imp_hetero, name = k_imp_hetero
	global_par_k_imp_hetero=0.0163701561812467;
% Parameter:   id =  k_imp_homo, name = k_imp_homo
	global_par_k_imp_homo=96807.6817909446;
% Parameter:   id =  k_phos, name = k_phos
	global_par_k_phos=15767.6469913504;
% Parameter:   id =  ratio, name = ratio
	global_par_ratio=0.693;
% assignmentRule: variable = pAFull
	x(6)=100*(2*const_species_sp*x(4)+x(3))/(2*const_species_sp*x(4)+const_species_sp*x(1)+x(3));
% assignmentRule: variable = pBFull
	x(7)=100*(2*(1-const_species_sp)*x(5)+x(3))/(2*(1-const_species_sp)*x(5)+(1-const_species_sp)*x(2)+x(3));
% assignmentRule: variable = rAFull
	x(8)=100*(2*const_species_sp*x(4)+const_species_sp*x(1)+x(3))/(2*const_species_sp*x(4)+2*(1-const_species_sp)*x(5)+2*x(3)+const_species_sp*x(1)+(1-const_species_sp)*x(2));
% assignmentRule: variable = ptotFull
	x(9)=(x(8)*x(6)+(100-x(8))*x(7))/100;

% Reaction: id = reaction1, name = reaction1
	reaction_reaction1=compartment_cyt*Function_for_reaction1(time, global_par_Epo_degradation_BaF3, x(1), compartment_cyt, global_par_k_phos);

% Reaction: id = reaction2, name = reaction2
	reaction_reaction2=compartment_cyt*Function_for_reaction2(time, global_par_Epo_degradation_BaF3, x(1), x(2), compartment_cyt, global_par_k_phos);

% Reaction: id = reaction3, name = reaction3
	reaction_reaction3=compartment_cyt*Function_for_reaction3(time, global_par_Epo_degradation_BaF3, x(2), compartment_cyt, global_par_k_phos);

% Reaction: id = reaction4, name = reaction4
	reaction_reaction4=global_par_k_imp_homo*x(4);

% Reaction: id = reaction5, name = reaction5
	reaction_reaction5=global_par_k_imp_hetero*x(3);

% Reaction: id = reaction6, name = reaction6
	reaction_reaction6=global_par_k_imp_homo*x(5);

% Reaction: id = reaction7, name = reaction7
	reaction_reaction7=global_par_k_exp_homo*x(10);

% Reaction: id = reaction8, name = reaction8
	reaction_reaction8=global_par_k_exp_hetero*x(11);

% Reaction: id = reaction9, name = reaction9
	reaction_reaction9=global_par_k_exp_homo*x(12);

% Species:   id = sp, name = sp, constant	const_species_sp=0.107;

	xdot=zeros(12,1);
	
% Species:   id = STAT5A, name = STAT5A, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-2.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + ( 2.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8));
	
% Species:   id = STAT5B, name = STAT5B, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*((-1.0 * reaction_reaction2) + (-2.0 * reaction_reaction3) + ( 1.0 * reaction_reaction8) + ( 2.0 * reaction_reaction9));
	
% Species:   id = pApB, name = pApB, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction2) + (-1.0 * reaction_reaction5));
	
% Species:   id = pApA, name = pApA, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction4));
	
% Species:   id = pBpB, name = pBpB, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction6));
	
% Species:   id = pAFull, name = pAFull, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = pBFull, name = pBFull, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = rAFull, name = rAFull, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = ptotFull, name = ptotFull, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = nucpApA, name = nucpApA, affected by kineticLaw
	xdot(10) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction7));
	
% Species:   id = nucpApB, name = nucpApB, affected by kineticLaw
	xdot(11) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction8));
	
% Species:   id = nucpBpB, name = nucpBpB, affected by kineticLaw
	xdot(12) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction9));
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


