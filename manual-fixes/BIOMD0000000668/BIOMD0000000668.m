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
% Model name = Zhu2015 - Combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model
%
% is http://identifiers.org/biomodels.db/MODEL1604270000
% isInstanceOf http://identifiers.org/kegg.drug/D02368
% isInstanceOf http://identifiers.org/kegg.drug/D10417
% isInstanceOf http://identifiers.org/biomodels.db/MODEL1604270000
% isInstanceOf http://identifiers.org/bto/BTO:0000988
% isInstanceOf http://identifiers.org/ncit/C191
% isDescribedBy http://identifiers.org/pubmed/26252969
% is http://identifiers.org/biomodels.db/BIOMD0000000668
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(15) = 307000.0;
	x0(16) = 1940.0;
	x0(1) = 307000.0;
	x0(2) = 1940.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;


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

% Compartment: id = Pancreas, name = Pancreas, constant
	compartment_Pancreas=1.0;
% Parameter:   id =  Ra_0, name = Ra_0
	global_par_Ra_0=307000.0;
% Parameter:   id =  Rd_0, name = Rd_0
	global_par_Rd_0=1940.0;
% Parameter:   id =  Rss, name = Rss
	global_par_Rss=5490000.0;
% Parameter:   id =  kg, name = kg
	global_par_kg=0.0209;
% Parameter:   id =  kd, name = kd
	global_par_kd=3.85E-4;
% Parameter:   id =  Imax_g, name = Imax_g
	global_par_Imax_g=0.991;
% Parameter:   id =  Imax_b, name = Imax_b
	global_par_Imax_b=0.375;
% Parameter:   id =  IC50_g, name = IC50_g
	global_par_IC50_g=20.8;
% Parameter:   id =  IC50_b, name = IC50_b
	global_par_IC50_b=145.0;
% Parameter:   id =  Hi_g, name = Hi_g
	global_par_Hi_g=3.57;
% Parameter:   id =  Hi_b, name = Hi_b
	global_par_Hi_b=1.06;
% Parameter:   id =  Smax_g, name = Smax_g
	global_par_Smax_g=4.09;
% Parameter:   id =  Smax_b, name = Smax_b
	global_par_Smax_b=17.5;
% Parameter:   id =  SC50_g, name = SC50_g
	global_par_SC50_g=14.0;
% Parameter:   id =  SC50_b, name = SC50_b
	global_par_SC50_b=168.0;
% Parameter:   id =  Hs_g, name = Hs_g
	global_par_Hs_g=5.0;
% Parameter:   id =  Hs_b, name = Hs_b
	global_par_Hs_b=0.984;
% Parameter:   id =  ktau_g, name = ktau_g
	global_par_ktau_g=0.086;
% Parameter:   id =  ktau_b, name = ktau_b
	global_par_ktau_b=0.611;
% Parameter:   id =  Psi_i, name = Psi_i
	global_par_Psi_i=1.0;
% Parameter:   id =  Psi_s, name = Psi_s
	global_par_Psi_s=1.0;
% Parameter:   id =  C_g, name = C_g
	global_par_C_g=0.0;
% Parameter:   id =  C_b, name = C_b
	global_par_C_b=0.0;
% Parameter:   id =  ModelValue_2, name = Initial for Rss
	global_par_ModelValue_2=5490000.0;
% Parameter:   id =  ModelValue_4, name = Initial for kd
	global_par_ModelValue_4=3.85E-4;
% Parameter:   id =  ModelValue_3, name = Initial for kg
	global_par_ModelValue_3=0.0209;
% assignmentRule: variable = Inh_g
	x(3)=global_par_Imax_g*global_par_C_g^global_par_Hi_g/((global_par_Psi_i*global_par_IC50_g)^global_par_Hi_g+global_par_C_g^global_par_Hi_g);
% assignmentRule: variable = Inh_b
	x(4)=global_par_Imax_b*global_par_C_b^global_par_Hi_b/((global_par_Psi_i*global_par_IC50_b)^global_par_Hi_b+global_par_C_b^global_par_Hi_b);
% assignmentRule: variable = Sti_g
	x(5)=global_par_Smax_g*global_par_C_g^global_par_Hs_g/((global_par_Psi_s*global_par_SC50_g)^global_par_Hs_g+global_par_C_g^global_par_Hs_g);
% assignmentRule: variable = Sti_b
	x(6)=global_par_Smax_b*global_par_C_b^global_par_Hs_b/((global_par_Psi_s*global_par_SC50_b)^global_par_Hs_b+global_par_C_b^global_par_Hs_b);
% rateRule: variable = Ra
x(1) = x(15);
% rateRule: variable = Rd
x(2) = x(16);

% Reaction: id = g_death_stimulus_delay_1, name = g_death_stimulus delay 1
	reaction_g_death_stimulus_delay_1=compartment_Pancreas*global_par_ktau_g*x(5);

% Reaction: id = g_death_stimulus_delay_2, name = g_death_stimulus delay 2
	reaction_g_death_stimulus_delay_2=compartment_Pancreas*global_par_ktau_g*x(7);

% Reaction: id = g_death_stimulus_delay_3, name = g_death_stimulus delay 3
	reaction_g_death_stimulus_delay_3=compartment_Pancreas*global_par_ktau_g*x(8);

% Reaction: id = g_death_stimulus_delay_4, name = g_death_stimulus delay 4
	reaction_g_death_stimulus_delay_4=compartment_Pancreas*global_par_ktau_g*x(9);

% Reaction: id = g_death_stimulus_delay_4_degradation, name = g_death_stimulus delay 4 degradation
	reaction_g_death_stimulus_delay_4_degradation=compartment_Pancreas*global_par_ktau_g*x(10);

% Reaction: id = b_death_stimulus_delay_1, name = b_death_stimulus delay 1
	reaction_b_death_stimulus_delay_1=compartment_Pancreas*global_par_ktau_b*x(6);

% Reaction: id = b_death_stimulus_delay_2, name = b_death_stimulus delay 2
	reaction_b_death_stimulus_delay_2=compartment_Pancreas*global_par_ktau_b*x(11);

% Reaction: id = b_death_stimulus_delay_3, name = b_death_stimulus delay 3
	reaction_b_death_stimulus_delay_3=compartment_Pancreas*global_par_ktau_b*x(12);

% Reaction: id = b_death_stimulus_delay_4, name = b_death_stimulus delay 4
	reaction_b_death_stimulus_delay_4=compartment_Pancreas*global_par_ktau_b*x(13);

% Reaction: id = b_death_stimulus_delay_4_degradation, name = b_death_stimulus delay 4 degradation
	reaction_b_death_stimulus_delay_4_degradation=compartment_Pancreas*global_par_ktau_b*x(14);

	xdot=zeros(16,1);
	% rateRule: variable = Ra
	xdot(15) = (1-x(3))*(1-x(4))*global_par_ModelValue_3*x(1)*(1-x(1)/global_par_ModelValue_2)-(1+x(10))*(1+x(14))*global_par_ModelValue_4*x(1);
	% rateRule: variable = Rd
	xdot(16) = (1+x(10))*(1+x(14))*global_par_ModelValue_4*x(1)-global_par_ModelValue_4*x(2);
	
% Species:   id = Ra, name = Ra, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Rd, name = Rd, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = Inh_g, name = Inh_g, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Inh_b, name = Inh_b, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Sti_g, name = Sti_g, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Sti_b, name = Sti_b, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Sti_g1, name = Sti_g1, affected by kineticLaw
	xdot(7) = (1/(compartment_Pancreas))*(( 1.0 * reaction_g_death_stimulus_delay_1) + (-1.0 * reaction_g_death_stimulus_delay_2));
	
% Species:   id = Sti_g2, name = Sti_g2, affected by kineticLaw
	xdot(8) = (1/(compartment_Pancreas))*(( 1.0 * reaction_g_death_stimulus_delay_2) + (-1.0 * reaction_g_death_stimulus_delay_3));
	
% Species:   id = Sti_g3, name = Sti_g3, affected by kineticLaw
	xdot(9) = (1/(compartment_Pancreas))*(( 1.0 * reaction_g_death_stimulus_delay_3) + (-1.0 * reaction_g_death_stimulus_delay_4));
	
% Species:   id = Sti_g4, name = Sti_g4, affected by kineticLaw
	xdot(10) = (1/(compartment_Pancreas))*(( 1.0 * reaction_g_death_stimulus_delay_4) + (-1.0 * reaction_g_death_stimulus_delay_4_degradation));
	
% Species:   id = Sti_b1, name = Sti_b1, affected by kineticLaw
	xdot(11) = (1/(compartment_Pancreas))*(( 1.0 * reaction_b_death_stimulus_delay_1) + (-1.0 * reaction_b_death_stimulus_delay_2));
	
% Species:   id = Sti_b2, name = Sti_b2, affected by kineticLaw
	xdot(12) = (1/(compartment_Pancreas))*(( 1.0 * reaction_b_death_stimulus_delay_2) + (-1.0 * reaction_b_death_stimulus_delay_3));
	
% Species:   id = Sti_b3, name = Sti_b3, affected by kineticLaw
	xdot(13) = (1/(compartment_Pancreas))*(( 1.0 * reaction_b_death_stimulus_delay_3) + (-1.0 * reaction_b_death_stimulus_delay_4));
	
% Species:   id = Sti_b4, name = Sti_b4, affected by kineticLaw
	xdot(14) = (1/(compartment_Pancreas))*(( 1.0 * reaction_b_death_stimulus_delay_4) + (-1.0 * reaction_b_death_stimulus_delay_4_degradation));
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


