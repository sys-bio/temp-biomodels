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
% Model name = Ratushny2012_SPF_I
%
% is http://identifiers.org/biomodels.db/MODEL1203010004
% is http://identifiers.org/biomodels.db/BIOMD0000000419
% isDescribedBy http://identifiers.org/pubmed/22531117
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 10.0;
	x0(2) = 10.0;
	x0(3) = 10.0;


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

% Compartment: id = univ, name = univ, constant
	compartment_univ=1.0;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=1.0E-5;
% Parameter:   id =  Ksp, name = Ksp
	global_par_Ksp=0.001;
% Parameter:   id =  dsp1ksp, name = dsp1ksp
% Parameter:   id =  dsp1p2kd, name = dsp1p2kd
% Parameter:   id =  h, name = h
	global_par_h=2.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=0.1;
% Parameter:   id =  ka, name = ka
	global_par_ka=40.0;
% Parameter:   id =  ks, name = ks
	global_par_ks=10.0;
% Parameter:   id =  ku, name = ku
	global_par_ku=0.1;
% Parameter:   id =  s, name = s
	global_par_s=1000.0;
% assignmentRule: variable = dsp1ksp
	global_par_dsp1ksp=global_par_Ksp/2*(1+(global_par_s+x(1)*compartment_univ)/global_par_Ksp-((1+(global_par_s+x(1)*compartment_univ)/global_par_Ksp)^2-4*global_par_s*x(1)*compartment_univ/global_par_Ksp^2)^0.5);
% assignmentRule: variable = dsp1p2kd
	global_par_dsp1p2kd=global_par_Kd/2*(1+(global_par_dsp1ksp+x(2)*compartment_univ)/global_par_Kd-((1+(global_par_dsp1ksp+x(2)*compartment_univ)/global_par_Kd)^2-4*global_par_dsp1ksp*x(2)*compartment_univ/global_par_Kd^2)^0.5);

% Reaction: id = ___r1
	reaction____r1=global_par_ks*(global_par_k0+(global_par_dsp1p2kd/global_par_ka)^global_par_h)/(1+(global_par_dsp1p2kd/global_par_ka)^global_par_h);

% Reaction: id = ___r2	% Local Parameter:   id =  __RATE__, name = __RATE__
	reaction____r2___RATE__=0.1;

	reaction____r2=reaction____r2___RATE__*x(1);

% Reaction: id = ___r3
	reaction____r3=global_par_ks*(global_par_k0+(global_par_dsp1p2kd/global_par_ka)^global_par_h)/(1+(global_par_dsp1p2kd/global_par_ka)^global_par_h);

% Reaction: id = ___r4	% Local Parameter:   id =  __RATE__, name = __RATE__
	reaction____r4___RATE__=0.1;

	reaction____r4=reaction____r4___RATE__*x(2);

% Reaction: id = ___r5
	reaction____r5=global_par_ks*(global_par_k0+(global_par_dsp1p2kd/global_par_ka)^global_par_h)/(1+(global_par_dsp1p2kd/global_par_ka)^global_par_h);

% Reaction: id = ___r6	% Local Parameter:   id =  __RATE__, name = __RATE__
	reaction____r6___RATE__=0.1;

	reaction____r6=reaction____r6___RATE__*x(3);

	xdot=zeros(3,1);
	
% Species:   id = P1, name = P1, affected by kineticLaw
	xdot(1) = (1/(compartment_univ))*(( 1.0 * reaction____r1) + (-1.0 * reaction____r2));
	
% Species:   id = P2, name = P2, affected by kineticLaw
	xdot(2) = (1/(compartment_univ))*(( 1.0 * reaction____r3) + (-1.0 * reaction____r4));
	
% Species:   id = Target, name = Target, affected by kineticLaw
	xdot(3) = (1/(compartment_univ))*(( 1.0 * reaction____r5) + (-1.0 * reaction____r6));
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


