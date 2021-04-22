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
% Model name = Akman2008_Circadian_Clock_Model1
%
% is http://identifiers.org/biomodels.db/MODEL8306248909
% is http://identifiers.org/biomodels.db/BIOMD0000000295
% isDescribedBy http://identifiers.org/pubmed/18277380
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000299
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 2.46246334204771;
	x0(2) = 2.7123114824279;
	x0(3) = 1.84400040515923;
	x0(4) = 2.74224951500791;
	x0(5) = 0.725579308537909;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  vs, name = vs
	global_par_vs=1.2236333742524;
% Parameter:   id =  ki, name = ki
	global_par_ki=5.04543346939346;
% Parameter:   id =  n, name = n
	global_par_n=6.3958;
% Parameter:   id =  vm, name = vm
	global_par_vm=0.885376326739544;
% Parameter:   id =  km, name = km
	global_par_km=0.0846004096489894;
% Parameter:   id =  ks, name = ks
	global_par_ks=0.313846476998244;
% Parameter:   id =  vd, name = vd
	global_par_vd=0.161111487362275;
% Parameter:   id =  k1n, name = k1n
	global_par_k1n=0.222636680929471;
% Parameter:   id =  k2n, name = k2n
	global_par_k2n=0.331484503209686;
% Parameter:   id =  ksp, name = ksp
	global_par_ksp=0.294840169149965;
% Parameter:   id =  vdp, name = vdp
	global_par_vdp=0.139750313979272;
% Parameter:   id =  k1np, name = k1np
	global_par_k1np=0.272306464006464;
% Parameter:   id =  k2np, name = k2np
	global_par_k2np=0.295420749525813;
% Parameter:   id =  amp, name = amp
	global_par_amp=0.0;
% Parameter:   id =  dawn, name = dawn
	global_par_dawn=6.0;
% Parameter:   id =  dusk, name = dusk
	global_par_dusk=18.0;
% Parameter:   id =  Tot_FRQ, name = Tot_FRQ
% assignmentRule: variable = Tot_FRQ
	global_par_Tot_FRQ=x(1)+x(2)+x(3)+x(4);

% Reaction: id = MFtrn, name = MFtrn
	reaction_MFtrn=(global_par_vs+global_par_amp*(1+tanh(2*(time-24*floor(time/24)-global_par_dawn)))*(1-tanh(2*(time-24*floor(time/24)-global_par_dusk)))/4)*global_par_ki^global_par_n/(global_par_ki^global_par_n+(x(3)+x(4))^global_par_n);

% Reaction: id = MFdeg, name = MFdeg
	reaction_MFdeg=global_par_vm*x(5)/(global_par_km+x(5));

% Reaction: id = FCtrl, name = FCtrl
	reaction_FCtrl=global_par_ks*x(5);

% Reaction: id = FCdeg, name = FCdeg
	reaction_FCdeg=global_par_vd*x(1);

% Reaction: id = FCtrs, name = FCtrs
	reaction_FCtrs=global_par_k1n*x(1)-global_par_k2n*x(3);

% Reaction: id = FCptrl, name = FCptrl
	reaction_FCptrl=global_par_ksp*x(5);

% Reaction: id = FCpdeg, name = FCpdeg
	reaction_FCpdeg=global_par_vdp*x(2);

% Reaction: id = FCptrs, name = FCptrs
	reaction_FCptrs=global_par_k1np*x(2)-global_par_k2np*x(4);

	xdot=zeros(5,1);
	
% Species:   id = FC, name = FC, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_FCtrl) + (-1.0 * reaction_FCdeg) + (-1.0 * reaction_FCtrs));
	
% Species:   id = FCp, name = FCp, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_FCptrl) + (-1.0 * reaction_FCpdeg) + (-1.0 * reaction_FCptrs));
	
% Species:   id = FN, name = FN, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_FCtrs));
	
% Species:   id = FNp, name = FNp, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*(( 1.0 * reaction_FCptrs));
	
% Species:   id = MF, name = MF, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_MFtrn) + (-1.0 * reaction_MFdeg));
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


