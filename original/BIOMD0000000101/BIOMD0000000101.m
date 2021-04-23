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
% Model name = Vilar2006_TGFbeta
%
% is http://identifiers.org/biomodels.db/MODEL4023382414
% is http://identifiers.org/biomodels.db/BIOMD0000000101
% isDescribedBy http://identifiers.org/pubmed/16446785
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 20.0;
	x0(2) = 20.0;
	x0(3) = 0.0;
	x0(4) = 40.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = PM, name = Plasma membrane, constant
	compartment_PM=1.0;
% Compartment: id = Endosome, name = Endosome, constant
	compartment_Endosome=1.0;
% Parameter:   id =  ka, name = ka
	global_par_ka=1.0;
% Parameter:   id =  ligand, name = ligand
	global_par_ligand=3.0E-5;
% Parameter:   id =  kcd, name = kcd
	global_par_kcd=0.0277777778;
% Parameter:   id =  klid, name = klid
	global_par_klid=0.25;
% Parameter:   id =  ki, name = ki
	global_par_ki=0.3333333333333;
% Parameter:   id =  pRI, name = pRI
	global_par_pRI=8.0;
% Parameter:   id =  kr, name = kr
	global_par_kr=0.0333333333333333;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0;
% Parameter:   id =  pRII, name = pRII
	global_par_pRII=4.0;

% Reaction: id = v1, name = Ligand receptor complex formation
	reaction_v1=global_par_ka*global_par_ligand*x(1)*x(2);

% Reaction: id = v2, name = Ligand receptor complex constitutive degradation
	reaction_v2=global_par_kcd*x(3);

% Reaction: id = v3, name = Ligand independent complex degradation
	reaction_v3=global_par_klid*x(3);

% Reaction: id = v4, name = Ligand receptor complex internalization
	reaction_v4=global_par_ki*x(3);

% Reaction: id = v5, name = RI synthesis
	reaction_v5=global_par_pRI;

% Reaction: id = v6, name = RI constitutive degradation
	reaction_v6=global_par_kcd*x(1);

% Reaction: id = v7, name = RI internalization
	reaction_v7=global_par_ki*x(1);

% Reaction: id = v8, name = RI recycling
	reaction_v8=global_par_kr*x(5);

% Reaction: id = v9, name = Ligand Receptor complex recycling
	reaction_v9=global_par_kr*x(4);

% Reaction: id = v10, name = RII synthesis
	reaction_v10=global_par_pRII;

% Reaction: id = v11, name = RII constitutive degradation
	reaction_v11=global_par_kcd*x(2);

% Reaction: id = v12, name = RII internalization
	reaction_v12=global_par_ki*x(2);

% Reaction: id = v13, name = RII recycling
	reaction_v13=global_par_kr*x(6);

%Event: id=event_0000001
	event_event_0000001=t >= 2500;

	if(event_event_0000001) 
		global_par_ligand=0.01;
	end

	xdot=zeros(6,1);
	
% Species:   id = RI, name = Receptor 1, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_v1) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v8) + ( 1.0 * reaction_v9);
	
% Species:   id = RII, name = Receptor 2, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_v1) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v10) + (-1.0 * reaction_v11) + (-1.0 * reaction_v12) + ( 1.0 * reaction_v13);
	
% Species:   id = lRIRII, name = ligand receptor complex-plasma membrane, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4);
	
% Species:   id = lRIRII_endo, name = ligand receptor complex-endosome, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_v4) + (-1.0 * reaction_v9);
	
% Species:   id = RI_endo, name = Receptor 1-endosome, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_v7) + (-1.0 * reaction_v8);
	
% Species:   id = RII_endo, name = Receptor 2 endosome, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_v12) + (-1.0 * reaction_v13);
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


