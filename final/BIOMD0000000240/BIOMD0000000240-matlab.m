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
% Model name = Veening2008_DegU_Regulation
%
% is http://identifiers.org/biomodels.db/MODEL8237240421
% is http://identifiers.org/biomodels.db/BIOMD0000000240
% isDescribedBy http://identifiers.org/pubmed/18414485
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 10.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = univ, name = univ, constant
	compartment_univ=1.0;
% Parameter:   id =  Imax, name = Imax
	global_par_Imax=0.048;
% Parameter:   id =  Io, name = Io
	global_par_Io=0.004;
% Parameter:   id =  Irmax, name = Irmax
	global_par_Irmax=0.4;
% Parameter:   id =  Iro, name = Iro
	global_par_Iro=0.02;
% Parameter:   id =  K, name = K
	global_par_K=7.0;
% Parameter:   id =  Kdim, name = Kdim
	global_par_Kdim=12.0;
% Parameter:   id =  Kr, name = Kr
	global_par_Kr=7.0;
% Parameter:   id =  Kr1, name = Kr1
	global_par_Kr1=7.0;
% Parameter:   id =  R, name = R
	global_par_R=7.0;
% Parameter:   id =  V, name = V
	global_par_V=1.0;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.025;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.1;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=4.0E-4;
% Parameter:   id =  kdegA, name = kdegA
	global_par_kdegA=1.0E-4;
% Parameter:   id =  kdegm, name = kdegm
	global_par_kdegm=0.01;
% Parameter:   id =  kdephos, name = kdephos
% Parameter:   id =  kphos, name = kphos
% Parameter:   id =  ksyn, name = ksyn
	global_par_ksyn=0.04;
% Parameter:   id =  ksyn1, name = ksyn1
	global_par_ksyn1=0.04;
% Parameter:   id =  p, name = p
	global_par_p=0.15;
% Parameter:   id =  q, name = q
	global_par_q=0.004;
% Parameter:   id =  ratio, name = kphosratiokdephos
	global_par_ratio=0.026666667;
% Parameter:   id =  DegU_Total, name = DegU_Total
% assignmentRule: variable = kphos
	global_par_kphos=global_par_ratio*global_par_p;
% assignmentRule: variable = kdephos
	global_par_kdephos=global_par_q/global_par_ratio;
% assignmentRule: variable = DegU_Total
	global_par_DegU_Total=x(2)+x(3)+2*x(4);

% Reaction: id = AprEdeg
	reaction_AprEdeg=global_par_kdeg*x(1);

% Reaction: id = AprEsyn
	reaction_AprEsyn=global_par_ksyn*x(5)*compartment_univ;

% Reaction: id = DimerAss
	reaction_DimerAss=global_par_ka*x(3)^2;

% Reaction: id = DimerDis
	reaction_DimerDis=global_par_kd*x(4);

% Reaction: id = degradation1
	reaction_degradation1=global_par_kdeg*x(2)*compartment_univ;

% Reaction: id = degradation2
	reaction_degradation2=global_par_kdeg*x(3)*compartment_univ;

% Reaction: id = degradation3
	reaction_degradation3=global_par_kdeg*x(4)*compartment_univ;

% Reaction: id = degradationmRNA
	reaction_degradationmRNA=global_par_kdegm*x(6);

% Reaction: id = dephosphorylation
	reaction_dephosphorylation=global_par_kdephos*x(3);

% Reaction: id = mRNAAprEdeg
	reaction_mRNAAprEdeg=global_par_kdegm*x(5);

% Reaction: id = mRNAAprEsyn
	reaction_mRNAAprEsyn=global_par_Kr1/(global_par_R+global_par_Kr1)*(global_par_Iro*(x(4)*compartment_univ/global_par_Kdim+1)/(1+x(4)*compartment_univ/global_par_Kdim+(x(4)*compartment_univ)^2/global_par_Kdim^2+global_par_R/global_par_Kr)+global_par_Irmax*(x(4)*compartment_univ)^2/(global_par_Kdim^2*(1+x(4)*compartment_univ/global_par_Kdim+(x(4)*compartment_univ)^2/global_par_Kdim^2+global_par_R/global_par_Kr)));

% Reaction: id = phosphorylation
	reaction_phosphorylation=global_par_kphos*x(2);

% Reaction: id = synthesisDegU
	reaction_synthesisDegU=global_par_ksyn1*x(6)*compartment_univ;

% Reaction: id = synthesismRNA
	reaction_synthesismRNA=global_par_Io*global_par_K/(x(4)*compartment_univ+global_par_K)+global_par_Imax*x(4)*compartment_univ/(x(4)*compartment_univ+global_par_K);

	xdot=zeros(6,1);
	
% Species:   id = AprE, name = AprE, affected by kineticLaw
	xdot(1) = (1/(compartment_univ))*((-1.0 * reaction_AprEdeg) + ( 1.0 * reaction_AprEsyn));
	
% Species:   id = DegU, name = DegU, affected by kineticLaw
	xdot(2) = (1/(compartment_univ))*((-1.0 * reaction_degradation1) + ( 1.0 * reaction_dephosphorylation) + (-1.0 * reaction_phosphorylation) + ( 1.0 * reaction_synthesisDegU));
	
% Species:   id = DegUP, name = DegUP, affected by kineticLaw
	xdot(3) = (1/(compartment_univ))*((-2.0 * reaction_DimerAss) + ( 2.0 * reaction_DimerDis) + (-1.0 * reaction_degradation2) + (-1.0 * reaction_dephosphorylation) + ( 1.0 * reaction_phosphorylation));
	
% Species:   id = Dim, name = Dim, affected by kineticLaw
	xdot(4) = (1/(compartment_univ))*(( 1.0 * reaction_DimerAss) + (-1.0 * reaction_DimerDis) + (-1.0 * reaction_degradation3));
	
% Species:   id = mAprE, name = mAprE, affected by kineticLaw
	xdot(5) = (1/(compartment_univ))*((-1.0 * reaction_mRNAAprEdeg) + ( 1.0 * reaction_mRNAAprEsyn));
	
% Species:   id = mDegU, name = mDegU, affected by kineticLaw
	xdot(6) = (1/(compartment_univ))*((-1.0 * reaction_degradationmRNA) + ( 1.0 * reaction_synthesismRNA));
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


