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
% Model name = Grigolon2018 - Feedback Loop in ARF and IAA Response
%
% is http://identifiers.org/biomodels.db/MODEL1706070000
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 10.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 18.51;
	x0(10) = 0.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  Sauxin, name = Sauxin
	global_par_Sauxin=0.02;
% Parameter:   id =  muaux, name = muaux
	global_par_muaux=0.1;
% Parameter:   id =  lambda1, name = lambda1
	global_par_lambda1=0.48;
% Parameter:   id =  thetaARF, name = thetaARF
	global_par_thetaARF=100.0;
% Parameter:   id =  thetaARF2, name = thetaARF2
	global_par_thetaARF2=100.0;
% Parameter:   id =  thetaARFIAA, name = thetaARFIAA
	global_par_thetaARFIAA=100.0;
% Parameter:   id =  muIAAm, name = muIAAm
	global_par_muIAAm=0.003;
% Parameter:   id =  muIAA, name = muIAA
	global_par_muIAA=0.003;
% Parameter:   id =  delta, name = delta
	global_par_delta=4.0;
% Parameter:   id =  qa, name = qa
	global_par_qa=0.5;
% Parameter:   id =  qd, name = qd
	global_par_qd=0.44;
% Parameter:   id =  pa, name = pa
	global_par_pa=1.0;
% Parameter:   id =  pd, name = pd
	global_par_pd=0.072;
% Parameter:   id =  ka, name = ka
	global_par_ka=8.2E-4;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.33;
% Parameter:   id =  la, name = la
	global_par_la=5.75;
% Parameter:   id =  ld, name = ld
	global_par_ld=0.045;
% Parameter:   id =  lm, name = lm
	global_par_lm=0.9;
% Parameter:   id =  muIAAstar, name = muIAAstar
	global_par_muIAAstar=0.1;

% Reaction: id = auxin_production, name = auxin_production
	reaction_auxin_production=global_par_Sauxin;

% Reaction: id = auxin_degradation, name = auxin_degradation
	reaction_auxin_degradation=x(1)*global_par_muaux;

% Reaction: id = mRNA_production, name = mRNA_production
	reaction_mRNA_production=x(4)*global_par_lambda1*(global_par_thetaARF*(x(4)*global_par_thetaARF^-1+x(6)*global_par_thetaARF2^-1+x(5)*global_par_thetaARFIAA^-1+1))^-1;

% Reaction: id = mRNA_degradation, name = mRNA_degradation
	reaction_mRNA_degradation=x(2)*global_par_muIAAm;

% Reaction: id = IAA_degradation, name = IAA_degradation
	reaction_IAA_degradation=x(3)*global_par_muIAA;

% Reaction: id = mRNA_translation, name = mRNA_translation
	reaction_mRNA_translation=global_par_delta*x(2);

% Reaction: id = ARF2_formation, name = ARF2_formation
	reaction_ARF2_formation=x(4)^2*global_par_qa;

% Reaction: id = ARF2_dissociation, name = ARF2_dissociation
	reaction_ARF2_dissociation=x(6)*global_par_qd;

% Reaction: id = ARFIAA_formation, name = ARFIAA_formation
	reaction_ARFIAA_formation=x(4)*x(3)*global_par_pa;

% Reaction: id = ARFIAA_dissociation, name = ARFIAA_dissociation
	reaction_ARFIAA_dissociation=x(5)*global_par_pd;

% Reaction: id = auxTIR1_formation, name = auxTIR1_formation
	reaction_auxTIR1_formation=x(1)*global_par_ka*x(9);

% Reaction: id = auxTIR1_dissociation, name = auxTIR1_dissociation
	reaction_auxTIR1_dissociation=x(7)*global_par_kd;

% Reaction: id = auxTIR1IAA_formation, name = auxTIR1IAA_formation
	reaction_auxTIR1IAA_formation=x(7)*x(3)*global_par_la;

% Reaction: id = auxTIR1IAA_dissociation, name = auxTIR1IAA_dissociation
	reaction_auxTIR1IAA_dissociation=x(8)*global_par_ld;

% Reaction: id = IAA_ubiquitination, name = IAA_ubiquitination
	reaction_IAA_ubiquitination=x(8)*global_par_lm;

% Reaction: id = IAAstar_degradation, name = IAAstar_degradation
	reaction_IAAstar_degradation=x(10)*global_par_muIAAstar;

% Species:   id = null, name = null, constant	const_species_null=0.0;

	xdot=zeros(10,1);
	
% Species:   id = aux, name = aux, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_auxin_production) + (-1.0 * reaction_auxin_degradation) + (-1.0 * reaction_auxTIR1_formation) + ( 1.0 * reaction_auxTIR1_dissociation));
	
% Species:   id = IAAm, name = IAAm, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_mRNA_production) + (-1.0 * reaction_mRNA_degradation) + (-1.0 * reaction_mRNA_translation) + ( 1.0 * reaction_mRNA_translation));
	
% Species:   id = IAAp, name = IAAp, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*((-1.0 * reaction_IAA_degradation) + ( 1.0 * reaction_mRNA_translation) + (-1.0 * reaction_ARFIAA_formation) + ( 1.0 * reaction_ARFIAA_dissociation) + (-1.0 * reaction_auxTIR1IAA_formation) + ( 1.0 * reaction_auxTIR1IAA_dissociation));
	
% Species:   id = ARF, name = ARF, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-2.0 * reaction_ARF2_formation) + ( 2.0 * reaction_ARF2_dissociation) + (-1.0 * reaction_ARFIAA_formation) + ( 1.0 * reaction_ARFIAA_dissociation));
	
% Species:   id = ARFIAA, name = ARFIAA, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_ARFIAA_formation) + (-1.0 * reaction_ARFIAA_dissociation));
	
% Species:   id = ARF2, name = ARF2, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_ARF2_formation) + (-1.0 * reaction_ARF2_dissociation));
	
% Species:   id = auxTIR1, name = auxTIR1, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_auxTIR1_formation) + (-1.0 * reaction_auxTIR1_dissociation) + (-1.0 * reaction_auxTIR1IAA_formation) + ( 1.0 * reaction_auxTIR1IAA_dissociation) + ( 1.0 * reaction_IAA_ubiquitination));
	
% Species:   id = auxTIR1IAA, name = auxTIR1IAA, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_auxTIR1IAA_formation) + (-1.0 * reaction_auxTIR1IAA_dissociation) + (-1.0 * reaction_IAA_ubiquitination));
	
% Species:   id = TIR1, name = TIR1, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*((-1.0 * reaction_auxTIR1_formation) + ( 1.0 * reaction_auxTIR1_dissociation));
	
% Species:   id = IAAstar, name = IAAstar, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_IAA_ubiquitination) + (-1.0 * reaction_IAAstar_degradation));
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


