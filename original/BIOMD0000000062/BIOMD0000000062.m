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
% Model name = Bhartiya2003_Tryptophan_operon
%
% is http://identifiers.org/biomodels.db/MODEL6624111460
% is http://identifiers.org/biomodels.db/BIOMD0000000062
% isDescribedBy http://identifiers.org/pubmed/12787031
% isDerivedFrom http://identifiers.org/pubmed/11171956
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  Tomax, name = Tomax
	global_par_Tomax=100.0;
% Parameter:   id =  Tex, name = Tex
	global_par_Tex=0.14;
% Parameter:   id =  e_val, name = e_val
	global_par_e_val=0.9;
% Parameter:   id =  f_val, name = f_val
	global_par_f_val=380.0;
% Parameter:   id =  Ts_norm, name = Ts_norm
% Parameter:   id =  To_norm, name = To_norm
% Parameter:   id =  Tt_norm, name = Tt_norm
% Parameter:   id =  Enz_norm, name = Enz_norm
% assignmentRule: variable = To
	x(4)=global_par_Tomax*global_par_Tex/(global_par_Tex*(1+x(2)/global_par_f_val)+global_par_e_val);
% assignmentRule: variable = Tt
	x(3)=x(4)+x(2);
% assignmentRule: variable = Enz_norm
	global_par_Enz_norm=x(1)/1;
% assignmentRule: variable = Ts_norm
	global_par_Ts_norm=x(2)/82;
% assignmentRule: variable = Tt_norm
	global_par_Tt_norm=x(3)/82;
% assignmentRule: variable = To_norm
	global_par_To_norm=x(4)/82;

% Reaction: id = Enzyme_synthesis, name = Anthranilate synthase synthesis	% Local Parameter:   id =  k1, name = k1
	reaction_Enzyme_synthesis_k1=65.0;
	% Local Parameter:   id =  ki1, name = ki1
	reaction_Enzyme_synthesis_ki1=3.53;
	% Local Parameter:   id =  nH, name = nH
	reaction_Enzyme_synthesis_nH=1.92;
	% Local Parameter:   id =  Ot, name = Ot
	reaction_Enzyme_synthesis_Ot=0.0033;

	reaction_Enzyme_synthesis=compartment_compartment*reaction_Enzyme_synthesis_k1*reaction_Enzyme_synthesis_ki1^reaction_Enzyme_synthesis_nH*reaction_Enzyme_synthesis_Ot/(reaction_Enzyme_synthesis_ki1^reaction_Enzyme_synthesis_nH+x(3)^reaction_Enzyme_synthesis_nH);

% Reaction: id = Enzyme_dilution, name = Enzyme dilution due to cell growth	% Local Parameter:   id =  mu, name = mu
	reaction_Enzyme_dilution_mu=0.01;

	reaction_Enzyme_dilution=compartment_compartment*reaction_Enzyme_dilution_mu*x(1);

% Reaction: id = tryptophan_synthesis, name = Tryptophan synthesis	% Local Parameter:   id =  k2, name = k2
	reaction_tryptophan_synthesis_k2=25.0;
	% Local Parameter:   id =  Ki2, name = Ki2
	reaction_tryptophan_synthesis_Ki2=810.0;

	reaction_tryptophan_synthesis=compartment_compartment*reaction_tryptophan_synthesis_k2*x(1)*reaction_tryptophan_synthesis_Ki2/(reaction_tryptophan_synthesis_Ki2+x(3));

% Reaction: id = tryptophan_consumption, name = Tryptophan consumption for protein synthesis	% Local Parameter:   id =  g, name = g
	reaction_tryptophan_consumption_g=25.0;
	% Local Parameter:   id =  Kg, name = Kg
	reaction_tryptophan_consumption_Kg=0.2;

	reaction_tryptophan_consumption=compartment_compartment*reaction_tryptophan_consumption_g*x(2)/(reaction_tryptophan_consumption_Kg+x(2));

% Reaction: id = tryptophan_dilution, name = Tryptophan dilution due to cell growth	% Local Parameter:   id =  mu, name = mu
	reaction_tryptophan_dilution_mu=0.01;

	reaction_tryptophan_dilution=compartment_compartment*reaction_tryptophan_dilution_mu*x(2);

	xdot=zeros(4,1);
	
% Species:   id = Enz, name = Anthranilate synthase, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Enzyme_synthesis) + (-1.0 * reaction_Enzyme_dilution));
	
% Species:   id = Ts, name = Synthesized tryptophan, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_tryptophan_synthesis) + (-1.0 * reaction_tryptophan_consumption) + (-1.0 * reaction_tryptophan_dilution));
	
% Species:   id = Tt, name = Total tryptophan, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = To, name = exog. Trp, involved in a rule 	xdot(4) = x(4);
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


