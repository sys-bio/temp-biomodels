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
% Model name = Markevich2004_MAPK_phosphoRandomMM
%
% is http://identifiers.org/biomodels.db/MODEL6618620128
% is http://identifiers.org/biomodels.db/BIOMD0000000029
% isDescribedBy http://identifiers.org/pubmed/14744999
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 800.0;
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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=410.0;
% Parameter:   id =  kcat1, name = kcat1
	global_par_kcat1=1.08;
% Parameter:   id =  Km2, name = Km2
	global_par_Km2=40.0;
% Parameter:   id =  kcat2, name = kcat2
	global_par_kcat2=0.007;
% Parameter:   id =  Km3, name = Km3
	global_par_Km3=20.0;
% Parameter:   id =  kcat3, name = kcat3
	global_par_kcat3=0.008;
% Parameter:   id =  Km4, name = Km4
	global_par_Km4=300.0;
% Parameter:   id =  kcat4, name = kcat4
	global_par_kcat4=0.45;
% Parameter:   id =  Km5, name = Km5
	global_par_Km5=22.0;
% Parameter:   id =  kcat5, name = kcat5
	global_par_kcat5=0.084;
% Parameter:   id =  Km6, name = Km6
	global_par_Km6=18.0;
% Parameter:   id =  kcat6, name = kcat6
	global_par_kcat6=0.06;
% Parameter:   id =  Km7, name = Km7
	global_par_Km7=34.0;
% Parameter:   id =  kcat7, name = kcat7
	global_par_kcat7=0.108;
% Parameter:   id =  Km8, name = Km8
	global_par_Km8=40.0;

% Reaction: id = v1, name = phosphorylation of ERK on Tyr
	reaction_v1=compartment_cell*global_par_kcat1*const_species_MEK*x(1)/global_par_Km1/(1+x(1)*(global_par_Km1+global_par_Km3)/(global_par_Km1*global_par_Km3)+x(2)/global_par_Km2+x(3)/global_par_Km4);

% Reaction: id = v2, name = phosphorylation of ERK-PY on Thr
	reaction_v2=compartment_cell*global_par_kcat2*const_species_MEK*x(2)/global_par_Km2/(1+x(1)*(global_par_Km1+global_par_Km3)/(global_par_Km1*global_par_Km3)+x(2)/global_par_Km2+x(3)/global_par_Km4);

% Reaction: id = v3, name = phosphorylation of ERK on Thr
	reaction_v3=compartment_cell*global_par_kcat3*const_species_MEK*x(1)/global_par_Km3/(1+x(1)*(global_par_Km1+global_par_Km3)/(global_par_Km1*global_par_Km3)+x(2)/global_par_Km2+x(3)/global_par_Km4);

% Reaction: id = v4, name = phosphorylation of ERK-PT on Tyr
	reaction_v4=compartment_cell*global_par_kcat4*const_species_MEK*x(3)/global_par_Km4/(1+x(1)*(global_par_Km1+global_par_Km3)/(global_par_Km1*global_par_Km3)+x(2)/global_par_Km2+x(3)/global_par_Km4);

% Reaction: id = v5, name = dephosphorylation of ERK-PP on Tyr
	reaction_v5=compartment_cell*global_par_kcat5*const_species_MKP3*x(4)/global_par_Km5/(1+x(4)/global_par_Km5+x(3)/global_par_Km6+x(2)/global_par_Km7+x(1)/global_par_Km8);

% Reaction: id = v6, name = dephosphorylation of ERK-PT
	reaction_v6=compartment_cell*global_par_kcat6*const_species_MKP3*x(3)/global_par_Km6/(1+x(4)/global_par_Km5+x(3)/global_par_Km6+x(2)/global_par_Km7+x(1)/global_par_Km8);

% Reaction: id = v7, name = dephosphorylation of ERK-PY
	reaction_v7=compartment_cell*global_par_kcat7*const_species_MKP3*x(2)/global_par_Km7/(1+x(4)/global_par_Km5+x(3)/global_par_Km6+x(2)/global_par_Km7+x(1)/global_par_Km8);

% Species:   id = MEK, name = MEK, constant	const_species_MEK=180.0;

% Species:   id = MKP3, name = MKP3, constant	const_species_MKP3=100.0;

	xdot=zeros(4,1);
	
% Species:   id = M, name = ERK, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_v1) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v6) + ( 1.0 * reaction_v7));
	
% Species:   id = MpY, name = ERK-PY, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v7));
	
% Species:   id = MpT, name = ERK-PT, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = Mpp, name = ERK-PP, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_v2) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5));
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


