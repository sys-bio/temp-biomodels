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
% Model name = Monta?ez2008_Arginine_catabolism
%
% is http://identifiers.org/biomodels.db/MODEL7416883636
% is http://identifiers.org/biomodels.db/BIOMD0000000191
% isDescribedBy http://identifiers.org/pubmed/17520329
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;

% Reaction: id = Arginase, name = Arginase	% Local Parameter:   id =  Vmaxarg, name = Vmaxarg
	reaction_Arginase_Vmaxarg=110.0;
	% Local Parameter:   id =  Kmarg, name = Kmarg
	reaction_Arginase_Kmarg=1500.0;
	% Local Parameter:   id =  Kioarg, name = Kioarg
	reaction_Arginase_Kioarg=1000.0;

	reaction_Arginase=compartment_cytosol*reaction_Arginase_Vmaxarg*x(2)/(reaction_Arginase_Kmarg*(1+x(1)/reaction_Arginase_Kioarg)+x(2));

% Reaction: id = Arginine_transport, name = Arginine transport	% Local Parameter:   id =  Kmhat, name = Kmhat
	reaction_Arginine_transport_Kmhat=70.0;
	% Local Parameter:   id =  Vmaxhat, name = Vmaxhat
	reaction_Arginine_transport_Vmaxhat=160.5;
	% Local Parameter:   id =  Kmlat, name = Kmlat
	reaction_Arginine_transport_Kmlat=847.0;
	% Local Parameter:   id =  Vmaxlat, name = Vmaxlat
	reaction_Arginine_transport_Vmaxlat=420.0;
	% Local Parameter:   id =  Kiornhat, name = Kiornhat
	reaction_Arginine_transport_Kiornhat=360.0;

	reaction_Arginine_transport=compartment_extracellular*(const_species_ARGex/(reaction_Arginine_transport_Kmhat+const_species_ARGex)*reaction_Arginine_transport_Vmaxhat/(1+x(1)/reaction_Arginine_transport_Kiornhat+x(2)/reaction_Arginine_transport_Kmhat)+const_species_ARGex/(reaction_Arginine_transport_Kmlat+const_species_ARGex)*reaction_Arginine_transport_Vmaxlat/(1+x(1)/reaction_Arginine_transport_Kiornhat+x(2)/reaction_Arginine_transport_Kmlat));

% Reaction: id = Ornithine_efflux, name = Ornithine efflux	% Local Parameter:   id =  Kmhat, name = Kmhat
	reaction_Ornithine_efflux_Kmhat=70.0;
	% Local Parameter:   id =  Kmlat, name = Kmlat
	reaction_Ornithine_efflux_Kmlat=847.0;
	% Local Parameter:   id =  Vmaxefflhat, name = Vmaxefflhat
	reaction_Ornithine_efflux_Vmaxefflhat=160.5;
	% Local Parameter:   id =  Vmaxeffllat, name = Vmaxeffllat
	reaction_Ornithine_efflux_Vmaxeffllat=420.0;
	% Local Parameter:   id =  Kmeffllat, name = Kmeffllat
	reaction_Ornithine_efflux_Kmeffllat=847.0;
	% Local Parameter:   id =  Kiornhat, name = Kiornhat
	reaction_Ornithine_efflux_Kiornhat=360.0;

	reaction_Ornithine_efflux=compartment_cytosol*(reaction_Ornithine_efflux_Vmaxefflhat/(1+const_species_ARGex/reaction_Ornithine_efflux_Kmhat)*x(1)/(reaction_Ornithine_efflux_Kiornhat*(1+x(2)/reaction_Ornithine_efflux_Kmhat)+x(1))+reaction_Ornithine_efflux_Vmaxeffllat/(1+const_species_ARGex/reaction_Ornithine_efflux_Kmlat)*x(1)/(reaction_Ornithine_efflux_Kmeffllat*(1+x(2)/reaction_Ornithine_efflux_Kmlat)+x(1)));

% Reaction: id = NOS, name = Nitric oxide synthase	% Local Parameter:   id =  Vmaxnos1, name = Vmaxnos1
	reaction_NOS_Vmaxnos1=1.33;
	% Local Parameter:   id =  Kmnos1, name = Kmnos1
	reaction_NOS_Kmnos1=16.0;

	reaction_NOS=compartment_cytosol*reaction_NOS_Vmaxnos1*x(2)/(reaction_NOS_Kmnos1+x(2));

% Reaction: id = ODC, name = Ornithine decarboxylase	% Local Parameter:   id =  Vmaxodc, name = Vmaxodc
	reaction_ODC_Vmaxodc=0.013;
	% Local Parameter:   id =  Kmodc, name = Kmodc
	reaction_ODC_Kmodc=90.0;

	reaction_ODC=compartment_cytosol*reaction_ODC_Vmaxodc*x(1)/(reaction_ODC_Kmodc+x(1));

% Species:   id = ARGex, name = Arginine ex, constant	const_species_ARGex=330.0;

	xdot=zeros(2,1);
	
% Species:   id = ORN, name = Ornithine, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_Arginase) + (-1.0 * reaction_Ornithine_efflux) + (-1.0 * reaction_ODC));
	
% Species:   id = ARGin, name = Arginine in, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*((-1.0 * reaction_Arginase) + ( 1.0 * reaction_Arginine_transport) + (-1.0 * reaction_NOS));
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


