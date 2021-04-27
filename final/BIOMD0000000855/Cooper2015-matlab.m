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
% Model name = Cooper2015 - Modeling the effects of systemic mediators on the inflammatory phase of wound healing
%
% isDescribedBy http://identifiers.org/pubmed/25446708
% is http://identifiers.org/biomodels.db/MODEL1911130002
% is http://identifiers.org/biomodels.db/BIOMD0000000855
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.1;
	x0(2) = 2.0;
	x0(3) = 0.0;
	x0(4) = 0.1;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  kpn, name = kpn
	global_par_kpn=35.03;
% Parameter:   id =  kpm, name = kpm
	global_par_kpm=34.8;
% Parameter:   id =  Ninf, name = Ninf
	global_par_Ninf=0.11;
% Parameter:   id =  kptn, name = kptn
	global_par_kptn=2.03;
% Parameter:   id =  kptm, name = kptm
	global_par_kptm=3.16;
% Parameter:   id =  mupt, name = mupt
	global_par_mupt=0.37;
% Parameter:   id =  knp, name = knp
	global_par_knp=17.58;
% Parameter:   id =  knpt, name = knpt
	global_par_knpt=2.97;
% Parameter:   id =  snr, name = snr
	global_par_snr=0.38;
% Parameter:   id =  munr, name = munr
	global_par_munr=3.3;
% Parameter:   id =  mun, name = mun
	global_par_mun=1.02;
% Parameter:   id =  knm, name = knm
	global_par_knm=6.42;
% Parameter:   id =  kmp, name = kmp
	global_par_kmp=18.52;
% Parameter:   id =  kmm, name = kmm
	global_par_kmm=0.06;
% Parameter:   id =  kmn, name = kmn
	global_par_kmn=10.58;
% Parameter:   id =  kmpt, name = kmpt
	global_par_kmpt=41.5;
% Parameter:   id =  smr, name = smr
	global_par_smr=0.17;
% Parameter:   id =  mumr, name = mumr
	global_par_mumr=0.54;
% Parameter:   id =  mum, name = mum
	global_par_mum=0.5;
% Parameter:   id =  fi2, name = fi2
% Parameter:   id =  fEN, name = fEN
% Parameter:   id =  R1, name = R1
% Parameter:   id =  R2, name = R2
% Parameter:   id =  ENinf, name = ENinf
	global_par_ENinf=6.8;
% Parameter:   id =  ken, name = ken
	global_par_ken=5.37;
% Parameter:   id =  EMinf, name = EMinf
	global_par_EMinf=5.0;
% Parameter:   id =  kem, name = kem
	global_par_kem=4.97;
% Parameter:   id =  Cn, name = Cn
	global_par_Cn=175.72;
% Parameter:   id =  Cm1, name = Cm1
	global_par_Cm1=72.84;
% Parameter:   id =  Cm2, name = Cm2
	global_par_Cm2=13.06;
% Parameter:   id =  kpg, name = kpg
	global_par_kpg=14.4;
% Parameter:   id =  pinf, name = pinf
	global_par_pinf=20.0;
% Parameter:   id =  kbp, name = kbp
	global_par_kbp=0.2;
% Parameter:   id =  sb, name = sb
	global_par_sb=0.12;
% Parameter:   id =  mub, name = mub
	global_par_mub=0.048;
% Parameter:   id =  kpb, name = kpb
	global_par_kpb=14.4;
% Parameter:   id =  C, name = C
	global_par_C=0.0;
% Parameter:   id =  E, name = E
	global_par_E=0.0;
% Parameter:   id =  fEM_Kmm_E, name = fEM_Kmm_E
% assignmentRule: variable = fEM_Kmm_E
	global_par_fEM_Kmm_E=global_par_kmm/(1+(global_par_E/global_par_EMinf)^2);
% assignmentRule: variable = fi2
	global_par_fi2=x(3)/(1+(x(4)/global_par_Ninf)^2+(global_par_C/global_par_Cm1)^2);
% assignmentRule: variable = R1
	global_par_R1=(global_par_kmpt*x(2)+global_par_kmp*x(1)+global_par_fEM_Kmm_E*x(3)+global_par_kmn*x(4))/(1+(global_par_C/global_par_Cm2)^2);
% assignmentRule: variable = R2
	global_par_R2=(global_par_knpt*x(2)+global_par_knp*x(1))/(1+(global_par_C/global_par_Cn)^2);
% assignmentRule: variable = fEN
	global_par_fEN=global_par_snr*global_par_R2/(global_par_munr+global_par_R2)/(1+(global_par_E/global_par_ENinf)^2);

% Reaction: id = Pathogen_Growth, name = Pathogen_Growth
	reaction_Pathogen_Growth=compartment_compartment*Function_for_Pathogen_Growth(global_par_kpg, x(1), global_par_pinf);

% Reaction: id = Pathogen_Destruction_Background_Response, name = Pathogen_Destruction_Background_Response
	reaction_Pathogen_Destruction_Background_Response=compartment_compartment*Function_for_Pathogen_Destruction_Background_Response(global_par_kpb, global_par_sb, x(1), global_par_mub, global_par_kbp);

% Reaction: id = Pathogen_Destruction_Neutrophils, name = Pathogen_Destruction_Neutrophils
	reaction_Pathogen_Destruction_Neutrophils=compartment_compartment*Function_for_Pathogen_Destruction_Neutrophils(global_par_kpn, x(1), x(4), global_par_ken, global_par_E);

% Reaction: id = Pathogen_Destruction_Macrophages, name = Pathogen_Destruction_Macrophages
	reaction_Pathogen_Destruction_Macrophages=compartment_compartment*Function_for_Pathogen_Destruction_Macrophages(global_par_kpm, x(1), global_par_fi2, global_par_kem, global_par_E);

% Reaction: id = Debris_Destruction_Neutrophils, name = Debris_Destruction_Neutrophils
	reaction_Debris_Destruction_Neutrophils=compartment_compartment*Function_for_Debris_Destruction_Neutrophils(global_par_kptn, x(2), x(4), global_par_ken);

% Reaction: id = Debris_Destruction_Macrophages, name = Debris_Destruction_Macrophages
	reaction_Debris_Destruction_Macrophages=compartment_compartment*Function_for_Debris_Destruction_Macrophages(global_par_kptm, x(2), global_par_fi2, global_par_kem, global_par_E);

% Reaction: id = Debris_Neutrophil_Decay, name = Debris_Neutrophil_Decay
	reaction_Debris_Neutrophil_Decay=compartment_compartment*global_par_mun*x(4);

% Reaction: id = Debris_Decay_Intrinsic, name = Debris_Decay_Intrinsic
	reaction_Debris_Decay_Intrinsic=compartment_compartment*global_par_mupt*x(2);

% Reaction: id = Macrophage_Recruitment, name = Macrophage_Recruitment
	reaction_Macrophage_Recruitment=compartment_compartment*Function_for_Macrophage_Recruitment(global_par_smr, global_par_R1, global_par_mumr);

% Reaction: id = Macrophage_Activation, name = Macrophage_Activation
	reaction_Macrophage_Activation=compartment_compartment*global_par_mum*x(3);

% Reaction: id = Neutrophil_Destruction_Macrophage, name = Neutrophil_Destruction_Macrophage
	reaction_Neutrophil_Destruction_Macrophage=compartment_compartment*Function_for_Neutrophil_Destruction_Macrophage(global_par_knm, x(4), global_par_fi2);

	xdot=zeros(4,1);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Pathogen_Growth) + (-1.0 * reaction_Pathogen_Destruction_Background_Response) + (-1.0 * reaction_Pathogen_Destruction_Neutrophils) + (-1.0 * reaction_Pathogen_Destruction_Macrophages));
	
% Species:   id = Pt, name = Pt, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Debris_Destruction_Neutrophils) + (-1.0 * reaction_Debris_Destruction_Macrophages) + ( 1.0 * reaction_Debris_Neutrophil_Decay) + (-1.0 * reaction_Debris_Decay_Intrinsic));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Macrophage_Recruitment) + (-1.0 * reaction_Macrophage_Activation));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Debris_Neutrophil_Decay) + ( 1.0 * reaction_Neutrophil_Activation) + (-1.0 * reaction_Neutrophil_Destruction_Macrophage));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Pathogen_Growth(kpg,P,pinf), z=(kpg*P*(1-P/pinf));end

function z=Function_for_Pathogen_Destruction_Neutrophils(kpn,P,N,ken,E), z=(kpn*P*N*(1+ken*E));end

function z=Function_for_Pathogen_Destruction_Background_Response(kpb,sb,P,mub,kbp), z=(kpb*sb*P/(mub+kbp*P));end

function z=Function_for_Macrophage_Recruitment(smr,R1,mumr), z=(smr*R1/(mumr+R1));end

function z=Function_for_Debris_Destruction_Macrophages(kptm,Pt,fi2,kem,E), z=(kptm*Pt*fi2*(1+kem*E));end

function z=Function_for_Debris_Destruction_Neutrophils(kptn,Pt,N,ken), z=(kptn*Pt*N*(1+ken*N));end

function z=Function_for_Pathogen_Destruction_Macrophages(kpm,P,fi2,kem,E), z=(kpm*P*fi2*(1+kem*E));end

function z=Function_for_Neutrophil_Destruction_Macrophage(knm,N,fi2), z=(knm*N*fi2);end

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


