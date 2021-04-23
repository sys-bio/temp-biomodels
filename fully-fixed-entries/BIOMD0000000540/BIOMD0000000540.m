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
% Model name = Yugi2014 - Insulin induced signalling (PFKL phosphorylation) - model 1
%
% is http://identifiers.org/biomodels.db/MODEL1406130000
% is http://identifiers.org/biomodels.db/BIOMD0000000540
% isDescribedBy http://identifiers.org/pubmed/25131207
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 14.0774258421;
	x0(4) = 104.07239819;
	x0(5) = 108.094519859;
	x0(6) = 1.79487179487;
	x0(7) = 25.1885369533;
	x0(8) = 68.8788335846;
	x0(9) = 1.0;
	x0(10) = 17.7476118652;
	x0(11) = 0.0;
	x0(12) = 1.0;
	x0(13) = 0.768939345;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 14.0774258421;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  K_FBPase_cit, name = K_FBPase_cit
	global_par_K_FBPase_cit=0.0211646;
% Parameter:   id =  K_FBPase_f16bp, name = K_FBPase_f16bp
	global_par_K_FBPase_f16bp=0.104089638;
% Parameter:   id =  K_FBPase_f26bp, name = K_FBPase_f26bp
	global_par_K_FBPase_f26bp=17.51744342;
% Parameter:   id =  K_PFKL_PHOS_S775, name = K_PFKL_PHOS_S775
	global_par_K_PFKL_PHOS_S775=6.283705757;
% Parameter:   id =  K_PFKL_akg, name = K_PFKL_akg
	global_par_K_PFKL_akg=24661.01154;
% Parameter:   id =  K_PFKL_cit, name = K_PFKL_cit
	global_par_K_PFKL_cit=41.30426029;
% Parameter:   id =  K_PFKL_f26bp, name = K_PFKL_f26bp
	global_par_K_PFKL_f26bp=1.282443082;
% Parameter:   id =  K_PFKL_f6p, name = K_PFKL_f6p
	global_par_K_PFKL_f6p=0.014114844;
% Parameter:   id =  K_PFKL_icit, name = K_PFKL_icit
	global_par_K_PFKL_icit=1784.508205;
% Parameter:   id =  K_PFKL_mal, name = K_PFKL_mal
	global_par_K_PFKL_mal=9.544729149;
% Parameter:   id =  K_PFKL_pep, name = K_PFKL_pep
	global_par_K_PFKL_pep=0.633518366;
% Parameter:   id =  Vf_FBPase, name = Vf_FBPase
	global_par_Vf_FBPase=9.932861302;
% Parameter:   id =  Vf_PFKL, name = Vf_PFKL
	global_par_Vf_PFKL=695063.7194;
% Parameter:   id =  k_ALDO, name = k_ALDO
	global_par_k_ALDO=0.008187906;
% Parameter:   id =  k_mal, name = k_mal
	global_par_k_mal=1.005530417;
% Parameter:   id =  k_akg, name = k_akg
	global_par_k_akg=-3.544494721;
% Parameter:   id =  k_pep, name = k_pep
	global_par_k_pep=43.99195576;
% Parameter:   id =  k_icit, name = k_icit
	global_par_k_icit=-0.038210156;
% Parameter:   id =  k_f26bp, name = k_f26bp
	global_par_k_f26bp=-0.083430336;
% Parameter:   id =  k_cit, name = k_cit
	global_par_k_cit=-0.351935646;
% Parameter:   id =  k_pfkl_s775, name = k_pfkl_s775
	global_par_k_pfkl_s775=-0.011384308;
% Parameter:   id =  k_f6p, name = k_f6p
	global_par_k_f6p=-0.930115636;
% assignmentRule: variable = s22
	x(22)=x(3);

% Reaction: id = re1
	reaction_re1=x(9)/(global_par_K_PFKL_f26bp+x(9))*global_par_K_PFKL_akg/(global_par_K_PFKL_akg+x(7))*global_par_K_PFKL_pep/(global_par_K_PFKL_pep+x(5))*global_par_K_PFKL_cit/(global_par_K_PFKL_cit+x(10))*global_par_K_PFKL_icit/(global_par_K_PFKL_icit+x(6))*global_par_K_PFKL_mal/(global_par_K_PFKL_mal+x(8))*x(13)/(global_par_K_PFKL_PHOS_S775+x(13))*global_par_Vf_PFKL*x(22)/(global_par_K_PFKL_f6p+x(22));

% Reaction: id = re2
	reaction_re2=global_par_K_FBPase_f26bp/(global_par_K_FBPase_f26bp+x(9))*x(10)/(global_par_K_FBPase_cit+x(10))*global_par_Vf_FBPase*x(4)/(global_par_K_FBPase_f16bp+x(4));

% Reaction: id = re3
	reaction_re3=global_par_k_ALDO*x(4);

% Reaction: id = re4
	reaction_re4=-global_par_k_mal;

% Reaction: id = re5
	reaction_re5=-global_par_k_akg;

% Reaction: id = re6
	reaction_re6=-global_par_k_pep;

% Reaction: id = re7
	reaction_re7=-global_par_k_icit;

% Reaction: id = re8
	reaction_re8=-global_par_k_f26bp;

% Reaction: id = re9
	reaction_re9=-global_par_k_cit;

% Reaction: id = re10
	reaction_re10=-global_par_k_pfkl_s775;

% Reaction: id = re11
	reaction_re11=-global_par_k_f6p;

%Event: id=ev2min
	event_ev2min=t > 2;

	if(event_ev2min) 
		global_par_k_akg=-1.357466063;
		global_par_k_cit=0.351935646;
		global_par_k_f6p=1.357466063;
		global_par_k_icit=-0.038210156;
		global_par_k_f26bp=0.028924455;
		global_par_k_mal=-1.508295626;
		global_par_k_pep=7.54147813;
		global_par_k_pfkl_s775=-0.011384308;
	end

%Event: id=ev5min
	event_ev5min=t > 5;

	if(event_ev5min) 
		global_par_k_akg=0;
		global_par_k_cit=-0.211161388;
		global_par_k_f6p=0.271493213;
		global_par_k_icit=-0.038210156;
		global_par_k_f26bp=0.119075279;
		global_par_k_mal=-0.904977376;
		global_par_k_pep=-6.334841629;
		global_par_k_pfkl_s775=0.057596439;
	end

%Event: id=ev10min
	event_ev10min=t > 10;

	if(event_ev10min) 
		global_par_k_akg=0.36199095;
		global_par_k_cit=1.085972851;
		global_par_k_f6p=-1.055806938;
		global_par_k_icit=-0.038210156;
		global_par_k_f26bp=-0.050207413;
		global_par_k_mal=3.921568627;
		global_par_k_pep=9.049773756;
		global_par_k_pfkl_s775=0.006730598;
	end

%Event: id=ev15min
	event_ev15min=t > 15;

	if(event_ev15min) 
		global_par_k_akg=1.085972851;
		global_par_k_cit=0.452488688;
		global_par_k_f6p=-0.12066365;
		global_par_k_icit=-0.018099548;
		global_par_k_f26bp=0.100115778;
		global_par_k_mal=1.809954751;
		global_par_k_pep=-4.826546003;
		global_par_k_pfkl_s775=0.006730598;
	end

%Event: id=ev20min
	event_ev20min=t > 20;

	if(event_ev20min) 
		global_par_k_akg=0.226244344;
		global_par_k_cit=0.377073906;
		global_par_k_f6p=-0.165912519;
		global_par_k_icit=0.031674208;
		global_par_k_f26bp=-0.032601514;
		global_par_k_mal=1.206636501;
		global_par_k_pep=-3.619909502;
		global_par_k_pfkl_s775=0.006730598;
	end

%Event: id=ev30min
	event_ev30min=t > 30;

	if(event_ev30min) 
		global_par_k_akg=0.369532428;
		global_par_k_cit=0.306686777;
		global_par_k_f6p=0.070387129;
		global_par_k_icit=0.031674208;
		global_par_k_f26bp=-0.003055632;
		global_par_k_mal=0.502765209;
		global_par_k_pep=-0.301659125;
		global_par_k_pfkl_s775=0.006730598;
	end

%Event: id=ev45min
	event_ev45min=t > 45;

	if(event_ev45min) 
		global_par_k_akg=0.369532428;
		global_par_k_cit=0.306686777;
		global_par_k_f6p=0.070387129;
		global_par_k_icit=0.031674208;
		global_par_k_f26bp=-0.003055632;
		global_par_k_mal=0.502765209;
		global_par_k_pep=-0.301659125;
		global_par_k_pfkl_s775=0.00673059831429;
	end

	xdot=zeros(22,1);
	
% Species:   id = s1, name = PFKL
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s2, name = FBPase
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = s3, name = F6P, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re11);
	
% Species:   id = s4, name = F1,6BP, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + (-1.0 * reaction_re3);
	
% Species:   id = s5, name = PEP, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re6);
	
% Species:   id = s6, name = Isocitrate, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_re7);
	
% Species:   id = s7, name = 2-oxoglutarate, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re5);
	
% Species:   id = s8, name = Malate, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_re4);
	
% Species:   id = s9, name = F2,6BP, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_re8);
	
% Species:   id = s10, name = Citrate, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_re9);
	
% Species:   id = s11, name = sa4_degraded, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re3));
	
% Species:   id = s12, name = ALDO
% Warning species is not changed by either rules or reactions
	xdot(12) = ;
	
% Species:   id = s13, name = pPFKL, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_re10);
	
% Species:   id = s14, name = sa8_degraded, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re4));
	
% Species:   id = s15, name = sa7_degraded, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_re5));
	
% Species:   id = s16, name = sa5_degraded, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re6));
	
% Species:   id = s17, name = sa6_degraded, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_re7));
	
% Species:   id = s18, name = sa9_degraded, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*(( 1.0 * reaction_re8));
	
% Species:   id = s20, name = sa13_degraded, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*(( 1.0 * reaction_re10));
	
% Species:   id = s21, name = sa3_degraded, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_re11));
	
% Species:   id = s19, name = sa10_degraded, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_re9));
	
% Species:   id = s22, name = F6P_proxy, involved in a rule 	xdot(22) = x(22);
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


