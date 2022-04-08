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
% Model name = Abernathy2016 - glioblastoma treatment
%
% isDescribedBy http://identifiers.org/pubmed/27022405
% is http://identifiers.org/biomodels.db/MODEL1907240001
% is http://identifiers.org/biomodels.db/BIOMD0000000757
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 70.0;
	x0(2) = 30.0;
	x0(3) = 250.0;
	x0(4) = 50.0;
	x0(5) = 50.0;
	x0(6) = 50.0;
	x0(7) = 50.0;
	x0(8) = 7.0E-7;
	x0(9) = 3.0E-6;
	x0(10) = 2.5;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.001;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E8;
% Parameter:   id =  at, name = at
	global_par_at=0.12;
% Parameter:   id =  et, name = et
	global_par_et=50.0;
% Parameter:   id =  atb, name = atb
	global_par_atb=0.69;
% Parameter:   id =  etb, name = etb
	global_par_etb=10000.0;
% Parameter:   id =  ht, name = ht
	global_par_ht=5.0E8;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0E7;
% Parameter:   id =  ra, name = ra
	global_par_ra=0.006;
% Parameter:   id =  as, name = as
% Parameter:   id =  es, name = es
% Parameter:   id =  asb, name = asb
% Parameter:   id =  esb, name = esb
% Parameter:   id =  hs, name = hs
% Parameter:   id =  uc, name = uc
	global_par_uc=0.007;
% Parameter:   id =  gb, name = gb
	global_par_gb=63945.0;
% Parameter:   id =  abt, name = abt
	global_par_abt=5.75E-6;
% Parameter:   id =  abs, name = abs
% Parameter:   id =  ub, name = ub
	global_par_ub=7.0;
% Parameter:   id =  gm1, name = gm1
	global_par_gm1=1.44;
% Parameter:   id =  am1y, name = am1y
	global_par_am1y=2.88;
% Parameter:   id =  em1y, name = em1y
	global_par_em1y=338000.0;
% Parameter:   id =  um1, name = um1
	global_par_um1=0.0144;
% Parameter:   id =  am2y, name = am2y
	global_par_am2y=8660.0;
% Parameter:   id =  em2y, name = em2y
	global_par_em2y=1420.0;
% Parameter:   id =  am2b, name = am2b
	global_par_am2b=0.012;
% Parameter:   id =  em2b, name = em2b
	global_par_em2b=100000.0;
% Parameter:   id =  um2, name = um2
	global_par_um2=0.0144;
% Parameter:   id =  ayc, name = ayc
	global_par_ayc=1.02E-4;
% Parameter:   id =  uy, name = uy
	global_par_uy=0.102;
% Parameter:   id =  N, name = N
	global_par_N=0.0;
% assignmentRule: variable = Tumor_Plot
	x(8)=x(1)/100000000;
% assignmentRule: variable = CSC_Plot
	x(9)=x(2)/10000000;
% assignmentRule: variable = CTL_Plot
	x(10)=x(3)/100;
% assignmentRule: variable = as
	global_par_as=global_par_at*0.1;
% assignmentRule: variable = es
	global_par_es=global_par_et;
% assignmentRule: variable = asb
	global_par_asb=global_par_atb;
% assignmentRule: variable = esb
	global_par_esb=global_par_etb;
% assignmentRule: variable = hs
	global_par_hs=global_par_ht;
% assignmentRule: variable = abs
	global_par_abs=global_par_abt;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*logistic(global_par_r1, x(1), global_par_k1);

% Reaction: id = tumor_transformation, name = tumor transformation
	reaction_tumor_transformation=compartment_tumor_microenvironment*transformation(global_par_ra, x(1), global_par_k1, x(2), global_par_k2);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tumor_microenvironment*killing(global_par_at, x(6), global_par_etb, global_par_atb, x(4), x(3), x(1), global_par_ht);

% Reaction: id = csc_growth, name = csc growth
	reaction_csc_growth=compartment_tumor_microenvironment*logistic(global_par_r2, x(2), global_par_k2);

% Reaction: id = csc_killing, name = csc killing
	reaction_csc_killing=compartment_tumor_microenvironment*killing(global_par_as, x(6), global_par_esb, global_par_asb, x(4), x(3), x(2), global_par_hs);

% Reaction: id = ctl_death, name = ctl death
	reaction_ctl_death=compartment_tumor_microenvironment*global_par_uc*x(3);

% Reaction: id = tgfb_by_tumor, name = tgfb by tumor
	reaction_tgfb_by_tumor=compartment_tumor_microenvironment*one_mod(global_par_abt, x(1));

% Reaction: id = tgfb_by_csc, name = tgfb by csc
	reaction_tgfb_by_csc=compartment_tumor_microenvironment*one_mod(global_par_abs, x(2));

% Reaction: id = tgfb_decay, name = tgfb decay
	reaction_tgfb_decay=compartment_tumor_microenvironment*global_par_ub*x(4);

% Reaction: id = ifny_production, name = ifny production
	reaction_ifny_production=compartment_tumor_microenvironment*one_mod(global_par_ayc, x(3));

% Reaction: id = ifny_decay, name = ifny decay
	reaction_ifny_decay=compartment_tumor_microenvironment*global_par_uy*x(5);

% Reaction: id = mhc1_decay, name = mhc1 decay
	reaction_mhc1_decay=compartment_tumor_microenvironment*global_par_um1*x(6);

% Reaction: id = mhc1_stimulation, name = mhc1 stimulation
	reaction_mhc1_stimulation=compartment_tumor_microenvironment*M1(global_par_am1y, x(5), global_par_em1y);

% Reaction: id = mhc2_production, name = mhc2 production
	reaction_mhc2_production=compartment_tumor_microenvironment*M2(global_par_am2y, x(5), global_par_em2y, global_par_em2b, global_par_am2b, x(4));

% Reaction: id = mhc2_decay, name = mhc2 decay
	reaction_mhc2_decay=compartment_tumor_microenvironment*global_par_um2*x(7);

	xdot=zeros(10,1);
	
% Species:   id = Tumor, name = Tumor, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + ( 1.0 * reaction_tumor_transformation) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = CancerStemCell, name = CancerStemCell, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_tumor_transformation) + ( 1.0 * reaction_csc_growth) + (-1.0 * reaction_csc_killing));
	
% Species:   id = CytotoxicTcell, name = CytotoxicTcell, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_ctl_death) + ( 1.0 * reaction_ctl_source));
	
% Species:   id = TGFb, name = TGFb, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tgfb_source) + ( 1.0 * reaction_tgfb_by_tumor) + ( 1.0 * reaction_tgfb_by_csc) + (-1.0 * reaction_tgfb_decay));
	
% Species:   id = IFNy, name = IFNy, affected by kineticLaw
	xdot(5) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_ifny_production) + (-1.0 * reaction_ifny_decay));
	
% Species:   id = MHC1, name = MHC1, affected by kineticLaw
	xdot(6) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_mhc1_source) + (-1.0 * reaction_mhc1_decay) + ( 1.0 * reaction_mhc1_stimulation));
	
% Species:   id = MHC2, name = MHC2, affected by kineticLaw
	xdot(7) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_mhc2_production) + (-1.0 * reaction_mhc2_decay));
	
% Species:   id = Tumor_Plot, name = Tumor Plot, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = CSC_Plot, name = CSC Plot, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = CTL_Plot, name = CTL Plot, involved in a rule 	xdot(10) = x(10);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=logistic(r,P,k), z=(r*P*(1-P/k));end

function z=killing(a1,M1,e,a2,Fb,C,sub,h), z=(a1*M1()/(M1()+e)*(a2+e*(1-a2)/(Fb+e))*C*sub/(h+sub));end

function z=transformation(ra,T,k1,S,k2), z=(ra*T/k1*S/k2*(k1-T));end

function z=one_mod(k,mod), z=(k*mod);end

function z=M2(am2y,Fy,em2y,em2b,am2b,Fb), z=(am2y*Fy/(Fy+em2y)*(em2b*(1-am2b)/(Fb+em2b)+am2b));end

function z=M1(am1y,Fy,em1y), z=(am1y*Fy/(Fy+em1y));end

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


