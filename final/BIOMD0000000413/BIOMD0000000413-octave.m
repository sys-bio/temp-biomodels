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
% Model name = Band2012_DII-Venus_FullModel
%
% is http://identifiers.org/biomodels.db/MODEL1203230002
% is http://identifiers.org/biomodels.db/BIOMD0000000413
% isDescribedBy http://identifiers.org/pubmed/22393022
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 7.38;
	x0(2) = 15.4;
	x0(3) = 0.28;
	x0(4) = 2.78;
	x0(5) = 40.4;


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
% Parameter:   id =  kd, name = kd
	global_par_kd=0.334;
% Parameter:   id =  ka, name = ka
	global_par_ka=8.22E-4;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.79;
% Parameter:   id =  ld, name = ld
	global_par_ld=4.49;
% Parameter:   id =  lm, name = lm
	global_par_lm=0.175;
% Parameter:   id =  la, name = la
	global_par_la=1.15;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.486;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.00316;
% Parameter:   id =  TIR1T, name = TIR1T
	global_par_TIR1T=18.5;
% Parameter:   id =  alpha_tr, name = alpha_tr
	global_par_alpha_tr=30.5;

% Reaction: id = auxin_TIR1association
	reaction_auxin_TIR1association=global_par_ka*x(1)*x(2);

% Reaction: id = auxin_TIR1dissociation
	reaction_auxin_TIR1dissociation=global_par_kd*x(3);

% Reaction: id = auxin_TIR1_VENUSassociation
	reaction_auxin_TIR1_VENUSassociation=global_par_la*x(3)*x(5);

% Reaction: id = auxin_TIR1_VENUSdissociation
	reaction_auxin_TIR1_VENUSdissociation=global_par_ld*x(4);

% Reaction: id = auxin_TIR1_VENUSdissociationleadingtoubiquitination
	reaction_auxin_TIR1_VENUSdissociationleadingtoubiquitination=global_par_lm*x(4);

% Reaction: id = auxinproduction
	reaction_auxinproduction=global_par_alpha_tr;

% Reaction: id = auxindecay
	reaction_auxindecay=global_par_mu*x(1);

% Reaction: id = VENUSproduction
	reaction_VENUSproduction=global_par_delta;

% Reaction: id = VENUSphotobleachingdecay
	reaction_VENUSphotobleachingdecay=global_par_lambda*x(5);

	xdot=zeros(5,1);
	
% Species:   id = auxin, name = auxin, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_auxin_TIR1association) + ( 1.0 * reaction_auxin_TIR1dissociation) + ( 1.0 * reaction_auxinproduction) + (-1.0 * reaction_auxindecay));
	
% Species:   id = TIR1, name = TIR1, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_auxin_TIR1association) + ( 1.0 * reaction_auxin_TIR1dissociation));
	
% Species:   id = auxinTIR1, name = auxinTIR1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_auxin_TIR1association) + (-1.0 * reaction_auxin_TIR1dissociation) + (-1.0 * reaction_auxin_TIR1_VENUSassociation) + ( 1.0 * reaction_auxin_TIR1_VENUSdissociation) + ( 1.0 * reaction_auxin_TIR1_VENUSdissociationleadingtoubiquitination));
	
% Species:   id = auxinTIR1VENUS, name = auxinTIR1VENUS, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_auxin_TIR1_VENUSassociation) + (-1.0 * reaction_auxin_TIR1_VENUSdissociation) + (-1.0 * reaction_auxin_TIR1_VENUSdissociationleadingtoubiquitination));
	
% Species:   id = VENUS, name = VENUS, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_auxin_TIR1_VENUSassociation) + ( 1.0 * reaction_auxin_TIR1_VENUSdissociation) + ( 1.0 * reaction_VENUSproduction) + (-1.0 * reaction_VENUSphotobleachingdecay));
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


