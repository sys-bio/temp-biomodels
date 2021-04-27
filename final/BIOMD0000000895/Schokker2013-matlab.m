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
% Model name = Schokker2013 - A mathematical model representing cellular immune development and response to Salmonella of chicken intestinal tissue
%
% isDescribedBy http://identifiers.org/pubmed/23603730
% is http://identifiers.org/biomodels.db/MODEL1912160004
% is http://identifiers.org/biomodels.db/BIOMD0000000895
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 9000000.0;
	x0(2) = 7000000.0;
	x0(3) = 9000000.0;
	x0(4) = 0.0;
	x0(5) = 100.0;
	x0(6) = 200.0;
	x0(7) = 100.0;
	x0(8) = 2.7E7;
	x0(9) = 2.0E7;


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
% Parameter:   id =  sMr, name = sMr
	global_par_sMr=300000.0;
% Parameter:   id =  drMr, name = drMr
	global_par_drMr=0.011;
% Parameter:   id =  aMr, name = aMr
	global_par_aMr=100.0;
% Parameter:   id =  cSeMr, name = cSeMr
	global_par_cSeMr=1.0;
% Parameter:   id =  iMr, name = iMr
	global_par_iMr=0.1;
% Parameter:   id =  cSeMri, name = cSeMri
	global_par_cSeMri=600000.0;
% Parameter:   id =  kSeMr, name = kSeMr
	global_par_kSeMr=5.0E-8;
% Parameter:   id =  gbMr, name = gbMr
	global_par_gbMr=1.2;
% Parameter:   id =  ccMr, name = ccMr
	global_par_ccMr=2.5E7;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.65;
% Parameter:   id =  vrecMr, name = vrecMr
	global_par_vrecMr=1.0;
% Parameter:   id =  kmrecMr, name = kmrecMr
	global_par_kmrecMr=1000.0;
% Parameter:   id =  drMa, name = drMa
	global_par_drMa=0.08;
% Parameter:   id =  kSeMa, name = kSeMa
	global_par_kSeMa=2.6E-7;
% Parameter:   id =  daMa, name = daMa
	global_par_daMa=40.0;
% Parameter:   id =  cdaMa, name = cdaMa
	global_par_cdaMa=3.0E7;
% Parameter:   id =  N, name = N
	global_par_N=30.0;
% Parameter:   id =  bMi, name = bMi
	global_par_bMi=0.4;
% Parameter:   id =  mMi, name = mMi
	global_par_mMi=2.0;
% Parameter:   id =  lMi, name = lMi
	global_par_lMi=0.8;
% Parameter:   id =  cCD4CD8, name = cCD4CD8
	global_par_cCD4CD8=10.0;
% Parameter:   id =  apop, name = apop
	global_par_apop=0.7;
% Parameter:   id =  drMi, name = drMi
	global_par_drMi=0.011;
% Parameter:   id =  sCD4, name = sCD4
	global_par_sCD4=490000.0;
% Parameter:   id =  drCD4, name = drCD4
	global_par_drCD4=0.016;
% Parameter:   id =  gbCD4, name = gbCD4
	global_par_gbCD4=0.19;
% Parameter:   id =  cc1CD4, name = cc1CD4
	global_par_cc1CD4=8.2E7;
% Parameter:   id =  ngbCD4, name = ngbCD4
	global_par_ngbCD4=2.0;
% Parameter:   id =  k2CD4, name = k2CD4
	global_par_k2CD4=8700000.0;
% Parameter:   id =  kmrecCD4, name = kmrecCD4
	global_par_kmrecCD4=1.0;
% Parameter:   id =  vrecCD4, name = vrecCD4
	global_par_vrecCD4=100.0;
% Parameter:   id =  CD4n, name = CD4n
	global_par_CD4n=0.4;
% Parameter:   id =  ndCD4, name = ndCD4
	global_par_ndCD4=8.0;
% Parameter:   id =  kSedCD4, name = kSedCD4
	global_par_kSedCD4=4200.0;
% Parameter:   id =  kSeCD4, name = kSeCD4
	global_par_kSeCD4=1.0E-9;
% Parameter:   id =  drCD8, name = drCD8
	global_par_drCD8=0.001;
% Parameter:   id =  sCD8, name = sCD8
	global_par_sCD8=430000.0;
% Parameter:   id =  gbCD8, name = gbCD8
	global_par_gbCD8=1.44;
% Parameter:   id =  cc1CD8, name = cc1CD8
	global_par_cc1CD8=1.3E7;
% Parameter:   id =  k2CD8, name = k2CD8
	global_par_k2CD8=4.7E7;
% Parameter:   id =  ncompCD4, name = ncompCD4
	global_par_ncompCD4=0.5;
% Parameter:   id =  kcompCD4, name = kcompCD4
	global_par_kcompCD4=3.4E7;
% Parameter:   id =  compCD8, name = compCD8
	global_par_compCD8=0.85;
% Parameter:   id =  w1, name = w1
	global_par_w1=1.0E-25;
% Parameter:   id =  drSe, name = drSe
	global_par_drSe=27.8;
% Parameter:   id =  pSe, name = pSe
	global_par_pSe=35.0;
% Parameter:   id =  ccSe, name = ccSe
	global_par_ccSe=500000.0;
% Parameter:   id =  drSi, name = drSi
	global_par_drSi=0.05;
% Parameter:   id =  pSi, name = pSi
	global_par_pSi=4.1;

% Reaction: id = Mr_Growth_Boost, name = Mr_Growth_Boost
	reaction_Mr_Growth_Boost=compartment_compartment*Function_for_Mr_Growth_Boost(x(3), global_par_ccMr, global_par_p1, global_par_gbMr);

% Reaction: id = Mr_Recruitment, name = Mr_Recruitment
	reaction_Mr_Recruitment=compartment_compartment*Function_for_Mr_Recruitment(x(9), global_par_vrecMr, x(6), global_par_kmrecMr);

% Reaction: id = Ma_Deactivation, name = Ma_Deactivation
	reaction_Ma_Deactivation=compartment_compartment*Function_for_Ma_Deactivation(global_par_daMa, x(4), x(1), global_par_cdaMa);

% Reaction: id = Mr_Infection, name = Mr_Infection
	reaction_Mr_Infection=compartment_compartment*Function_for_Mr_Infection(global_par_iMr, x(3), x(6), global_par_cSeMri);

% Reaction: id = Mr_Activation, name = Mr_Activation
	reaction_Mr_Activation=compartment_compartment*Function_for_Mr_Activation(global_par_aMr, x(3), x(6), global_par_cSeMr);

% Reaction: id = Se_Killing_Mr, name = Se_Killing_Mr
	reaction_Se_Killing_Mr=compartment_compartment*global_par_kSeMr*x(3)*x(6);

% Reaction: id = Mr_Death, name = Mr_Death
	reaction_Mr_Death=compartment_compartment*global_par_drMr*x(3);

% Reaction: id = CD4_Growth_Boost, name = CD4_Growth_Boost
	reaction_CD4_Growth_Boost=compartment_compartment*Function_for_CD4_Growth_Boost(global_par_gbCD4, x(1), global_par_cc1CD4, global_par_ngbCD4, global_par_k2CD4);

% Reaction: id = CD4_Recruitment, name = CD4_Recruitment
	reaction_CD4_Recruitment=compartment_compartment*Function_for_CD4_Recruitment(x(8), global_par_vrecCD4, x(6), global_par_kmrecCD4);

% Reaction: id = Se_Killing_CD4, name = Se_Killing_CD4
	reaction_Se_Killing_CD4=compartment_compartment*global_par_kSeCD4*x(1)*x(6);

% Reaction: id = CD4_Interaction_Naive_Se, name = CD4_Interaction_Naive_Se
	reaction_CD4_Interaction_Naive_Se=compartment_compartment*Function_for_CD4_Interaction_Naive_Se(global_par_CD4n, x(1), x(6), global_par_ndCD4, global_par_kSedCD4);

% Reaction: id = CD4_Death, name = CD4_Death
	reaction_CD4_Death=compartment_compartment*global_par_drCD4*x(1);

% Reaction: id = CD8_Growth_Boost, name = CD8_Growth_Boost
	reaction_CD8_Growth_Boost=compartment_compartment*Function_for_CD8_Growth_Boost(global_par_gbCD8, x(2), global_par_cc1CD8, global_par_k2CD8);

% Reaction: id = CD8_Competition, name = CD8_Competition
	reaction_CD8_Competition=compartment_compartment*Function_for_CD8_Competition(global_par_compCD8, x(2), x(6), global_par_w1, x(1), global_par_ncompCD4, global_par_kcompCD4);

% Reaction: id = CD8_Death, name = CD8_Death
	reaction_CD8_Death=compartment_compartment*global_par_drCD8*x(2);

% Reaction: id = Ma_Death, name = Ma_Death
	reaction_Ma_Death=compartment_compartment*global_par_drMa*x(4);

% Reaction: id = Se_Killing_Ma, name = Se_Killing_Ma
	reaction_Se_Killing_Ma=compartment_compartment*global_par_kSeMa*x(4)*x(6);

% Reaction: id = Mi_Bursting, name = Mi_Bursting
	reaction_Mi_Bursting=compartment_compartment*Function_for_Mi_Bursting(global_par_bMi, x(5), x(7), global_par_mMi, global_par_N);

% Reaction: id = Mi_Lysis, name = Mi_Lysis
	reaction_Mi_Lysis=compartment_compartment*Function_for_Mi_Lysis(global_par_lMi, x(1), x(2), x(5), global_par_cCD4CD8, global_par_apop, x(7), global_par_N);

% Reaction: id = Mi_Death, name = Mi_Death
	reaction_Mi_Death=compartment_compartment*global_par_drMi*x(5);

% Reaction: id = Se_Proliferation, name = Se_Proliferation
	reaction_Se_Proliferation=compartment_compartment*Function_for_Se_Proliferation(global_par_pSe, x(6), global_par_ccSe);

% Reaction: id = Se_Death, name = Se_Death
	reaction_Se_Death=compartment_compartment*global_par_drSe*x(6);

% Reaction: id = Si_Death, name = Si_Death
	reaction_Si_Death=compartment_compartment*global_par_drSi*x(7);

% Reaction: id = Si_Proliferation, name = Si_Proliferation
	reaction_Si_Proliferation=compartment_compartment*Function_for_Si_Proliferation(global_par_pSi, x(7), global_par_N, x(5));

% Reaction: id = Mr_Infection_Si, name = Mr_Infection_Si
	reaction_Mr_Infection_Si=compartment_compartment*Function_for_Mr_Infection_Si(global_par_iMr, x(3), x(7), global_par_cSeMr);

% Reaction: id = Mi_Lysis_Si, name = Mi_Lysis_Si
	reaction_Mi_Lysis_Si=compartment_compartment*Function_for_Mi_Lysis_Si(global_par_lMi, x(1), x(2), x(5), global_par_cCD4CD8);

	xdot=zeros(9,1);
	
% Species:   id = CD4, name = CD4, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4_Source) + ( 1.0 * reaction_CD4_Growth_Boost) + ( 1.0 * reaction_CD4_Recruitment) + (-1.0 * reaction_Se_Killing_CD4) + (-1.0 * reaction_CD4_Interaction_Naive_Se) + (-1.0 * reaction_CD4_Death));
	
% Species:   id = CD8, name = CD8, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CD8_Source) + ( 1.0 * reaction_CD8_Growth_Boost) + (-1.0 * reaction_CD8_Competition) + (-1.0 * reaction_CD8_Death));
	
% Species:   id = Mr, name = Mr, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Mr_Source) + ( 1.0 * reaction_Mr_Growth_Boost) + ( 1.0 * reaction_Mr_Recruitment) + ( 1.0 * reaction_Ma_Deactivation) + (-1.0 * reaction_Mr_Infection) + (-1.0 * reaction_Mr_Activation) + (-1.0 * reaction_Se_Killing_Mr) + (-1.0 * reaction_Mr_Death));
	
% Species:   id = Ma, name = Ma, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_Ma_Deactivation) + ( 1.0 * reaction_Mr_Activation) + (-1.0 * reaction_Ma_Death) + (-1.0 * reaction_Se_Killing_Ma));
	
% Species:   id = Mi, name = Mi, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Mr_Infection) + (-1.0 * reaction_Mi_Bursting) + (-1.0 * reaction_Mi_Lysis) + (-1.0 * reaction_Mi_Death));
	
% Species:   id = Se, name = Se, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_Mr_Infection) + (-1.0 * reaction_Se_Killing_Mr) + (-1.0 * reaction_Se_Killing_CD4) + (-1.0 * reaction_Se_Killing_Ma) + ( 1.0 * reaction_Mi_Bursting) + ( 1.0 * reaction_Se_Proliferation) + (-1.0 * reaction_Se_Death));
	
% Species:   id = Si, name = Si, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Mi_Bursting) + (-1.0 * reaction_Si_Death) + ( 1.0 * reaction_Si_Proliferation) + ( 1.0 * reaction_Mr_Infection_Si) + (-1.0 * reaction_Mi_Lysis_Si));
	
% Species:   id = CD4rec, name = CD4rec, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_CD4_Recruitment));
	
% Species:   id = Mrrec, name = Mrrec, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Mr_Recruitment));
end

function z=Function_for_Si_Proliferation(pSi,Si,N,Mi), z=(pSi*Si*(1-Si/(Si+N*Mi)));end

function z=Function_for_Mi_Lysis_Si(lMi,CD4,CD8,Mi,cCD4CD8), z=(lMi*(CD4+CD8/Mi)/(CD4+CD8/Mi+cCD4CD8));end

function z=Function_for_CD8_Growth_Boost(gbCD8,CD8,cc1CD8,k2CD8), z=(gbCD8*CD8*(1-CD8/cc1CD8)*CD8/(CD8+k2CD8));end

function z=Function_for_Mi_Lysis(lMi,CD4,CD8,Mi,cCD4CD8,apop,Si,N), z=((1-apop*Si/(Si+N+Mi))*lMi*(CD4+CD8/Mi)/(CD4+CD8/Mi+cCD4CD8));end

function z=Function_for_Mr_Infection_Si(iMr,Mr,Se,cSeMr), z=(iMr*Mr*Se/(Se+cSeMr));end

function z=Function_for_CD4_Interaction_Naive_Se(CD4n,CD4,Se,ndCD4,kSedCD4), z=(CD4n*CD4*Se^ndCD4/(Se^ndCD4+kSedCD4^ndCD4));end

function z=Function_for_CD8_Competition(compCD8,CD8,Se,w1,CD4,ncompcd8,kcompCD4), z=(compCD8*CD8*Se/(Se+w1)*CD4^ncompcd8/(CD4^ncompcd8+kcompCD4^ncompcd8));end

function z=Function_for_Mi_Bursting(bMi,Mi,Si,mMi,N), z=(bMi*Mi*Si^mMi/(Si^mMi+(N*Mi)^mMi));end

function z=Function_for_CD4_Recruitment(CD4rec,vrecCD4,Se,kmrecCD4), z=(CD4rec*vrecCD4*Se/(Se+kmrecCD4));end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Mr_Recruitment(Mrrec,vrecMr,Se,kmrecMr), z=(Mrrec*vrecMr*Se/(Se+kmrecMr));end

function z=Function_for_Mr_Infection(iMr,Mr,Se,cSeMri), z=(iMr*Mr*Se/(Se+cSeMri));end

function z=Function_for_Mr_Growth_Boost(Mr,ccMr,p1,gbMr), z=(gbMr*Mr*(1-Mr/(ccMr-ccMr*p1)));end

function z=Function_for_Mr_Activation(aMr,Mr,Se,cSeMr), z=(aMr*Mr*Se/(Se+cSeMr));end

function z=Function_for_CD4_Growth_Boost(gbCD4,CD4,cc1CD4,ngbCD4,k2CD4), z=(gbCD4*CD4*(1-CD4/cc1CD4)*CD4^ngbCD4/(CD4^ngbCD4+k2CD4^ngbCD4));end

function z=Function_for_Se_Proliferation(pSe,Se,ccSe), z=(pSe*Se*(1-Se/ccSe));end

function z=Function_for_Ma_Deactivation(daMa,Ma,CD4,cdaMA), z=(daMa*Ma*CD4/(CD4+cdaMA));end

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


