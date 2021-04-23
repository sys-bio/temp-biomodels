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
% Model name = Yugi2014 - Insulin induced signalling (PFKL phosphorylation) - model 2
%
% is http://identifiers.org/biomodels.db/MODEL1406130001
% is http://identifiers.org/biomodels.db/BIOMD0000000541
% isDescribedBy http://identifiers.org/pubmed/25131207
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1204060000
%


function main()
%Initial conditions vector
	x0=zeros(31,1);
	x0(1) = 1.0;
	x0(2) = 14.0774258421;
	x0(3) = 104.07239819;
	x0(4) = 108.094519859;
	x0(5) = 1.79487179487;
	x0(6) = 25.1885369533;
	x0(7) = 68.8788335846;
	x0(8) = 1.0;
	x0(9) = 17.7476118652;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 0.759332005;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 37.81914621;
	x0(21) = 2.507671281;
	x0(22) = 852.608418;
	x0(23) = 3.930695895;
	x0(24) = 0.012942682;
	x0(25) = 0.004015031;
	x0(26) = 9.88831E-4;
	x0(27) = 0.043352951;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 14.0774258421;


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
% Parameter:   id =  k_f6p, name = k_f6p
	global_par_k_f6p=-0.930115636;
% Parameter:   id =  insulin, name = insulin
	global_par_insulin=1.0;
% assignmentRule: variable = s22
	x(31)=x(2);

% Reaction: id = re30
	reaction_re30=x(8)/(global_par_K_PFKL_f26bp+x(8))*global_par_K_PFKL_akg/(global_par_K_PFKL_akg+x(6))*global_par_K_PFKL_pep/(global_par_K_PFKL_pep+x(4))*global_par_K_PFKL_cit/(global_par_K_PFKL_cit+x(9))*global_par_K_PFKL_icit/(global_par_K_PFKL_icit+x(5))*global_par_K_PFKL_mal/(global_par_K_PFKL_mal+x(7))*x(12)/(global_par_K_PFKL_PHOS_S775+x(12))*global_par_Vf_PFKL*x(31)/(global_par_K_PFKL_f6p+x(31));

% Reaction: id = re31
	reaction_re31=global_par_K_FBPase_f26bp/(global_par_K_FBPase_f26bp+x(8))*x(9)/(global_par_K_FBPase_cit+x(9))*global_par_Vf_FBPase*x(3)/(global_par_K_FBPase_f16bp+x(3));

% Reaction: id = re32
	reaction_re32=global_par_k_ALDO*x(3);

% Reaction: id = re33
	reaction_re33=-global_par_k_mal;

% Reaction: id = re34
	reaction_re34=-global_par_k_akg;

% Reaction: id = re35
	reaction_re35=-global_par_k_pep;

% Reaction: id = re36
	reaction_re36=-global_par_k_icit;

% Reaction: id = re37
	reaction_re37=-global_par_k_f26bp;

% Reaction: id = re38
	reaction_re38=-global_par_k_cit;

% Reaction: id = re39
	reaction_re39=-global_par_k_f6p;

% Reaction: id = re40	% Local Parameter:   id =  k1, name = k1
	reaction_re40_k1=0.0477985900779305;

	reaction_re40=reaction_re40_k1*(const_species_s24-x(20));

% Reaction: id = re41	% Local Parameter:   id =  k1, name = k1
	reaction_re41_k1=7.78160761103111;
	% Local Parameter:   id =  k2, name = k2
	reaction_re41_k2=1.61147523779118;

	reaction_re41=reaction_re41_k1*global_par_insulin*x(20)-reaction_re41_k2*x(21);

% Reaction: id = re42	% Local Parameter:   id =  k1, name = k1
	reaction_re42_k1=9.93311225447353;

	reaction_re42=reaction_re42_k1*x(20)*x(25);

% Reaction: id = re43	% Local Parameter:   id =  k1, name = k1
	reaction_re43_k1=0.363030286526969;
	% Local Parameter:   id =  k2, name = k2
	reaction_re43_k2=0.408127912886804;

	reaction_re43=reaction_re43_k1*global_par_insulin*x(22)-reaction_re43_k2*x(23);

% Reaction: id = re44	% Local Parameter:   id =  k1, name = k1
	reaction_re44_k1=3.88248960751442E-5;

	reaction_re44=reaction_re44_k1*x(21)*x(25);

% Reaction: id = re45	% Local Parameter:   id =  k1, name = k1
	reaction_re45_k1=0.28442597446931;

	reaction_re45=reaction_re45_k1*x(23);

% Reaction: id = re46	% Local Parameter:   id =  k1, name = k1
	reaction_re46_k1=1.00000000282413E-5;

	reaction_re46=reaction_re46_k1*x(22);

% Reaction: id = re47	% Local Parameter:   id =  k1, name = k1
	reaction_re47_k1=0.0948960328385619;

	reaction_re47=reaction_re47_k1*x(23);

% Reaction: id = re48	% Local Parameter:   id =  k1, name = k1
	reaction_re48_k1=0.00919578911309774;

	reaction_re48=reaction_re48_k1*(const_species_s28-x(24))*x(21);

% Reaction: id = re49	% Local Parameter:   id =  k1, name = k1
	reaction_re49_k1=7.70618517548016;

	reaction_re49=reaction_re49_k1*x(24);

% Reaction: id = re50	% Local Parameter:   id =  k1, name = k1
	reaction_re50_k1=1.00277786609339E-5;

	reaction_re50=reaction_re50_k1*x(22);

% Reaction: id = re51	% Local Parameter:   id =  k1, name = k1
	reaction_re51_k1=0.00792717614041237;

	reaction_re51=reaction_re51_k1*x(21);

% Reaction: id = re52	% Local Parameter:   id =  k1, name = k1
	reaction_re52_k1=0.419682384304397;

	reaction_re52=reaction_re52_k1*(const_species_s30-x(25))*x(24);

% Reaction: id = re53	% Local Parameter:   id =  k1, name = k1
	reaction_re53_k1=0.124330492920416;

	reaction_re53=reaction_re53_k1*x(25);

% Reaction: id = re54	% Local Parameter:   id =  k1, name = k1
	reaction_re54_k1=0.00752464611370891;

	reaction_re54=reaction_re54_k1*(const_species_s32-x(26))*x(25);

% Reaction: id = re55	% Local Parameter:   id =  k1, name = k1
	reaction_re55_k1=1.95497593092361;

	reaction_re55=reaction_re55_k1*x(26)*x(27);

% Reaction: id = re56	% Local Parameter:   id =  k1, name = k1
	reaction_re56_k1=0.00105342379833469;

	reaction_re56=reaction_re56_k1*(const_species_s34-x(27))*x(25);

% Reaction: id = re57	% Local Parameter:   id =  k1, name = k1
	reaction_re57_k1=0.00145811601430322;

	reaction_re57=reaction_re57_k1*x(27);

% Reaction: id = re58	% Local Parameter:   id =  k1, name = k1
	reaction_re58_k1=26.8316707654711;

	reaction_re58=reaction_re58_k1*(const_species_s1-x(12))*x(26);

% Reaction: id = re59	% Local Parameter:   id =  k1, name = k1
	reaction_re59_k1=0.0166525139097609;

	reaction_re59=reaction_re59_k1*x(12);

% Species:   id = s1, name = PFKL, constant	const_species_s1=1.235570941;

% Species:   id = s24, name = pro_IR_complex, constant	const_species_s24=46.2222520609226;

% Species:   id = s28, name = AKT, constant	const_species_s28=4.33812187331668;

% Species:   id = s30, name = mTOR, constant	const_species_s30=0.0959163701057347;

% Species:   id = s32, name = S6K, constant	const_species_s32=2.7769943784158;

% Species:   id = s34, name = X, constant	const_species_s34=14.9913345914433;

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
	end

	xdot=zeros(31,1);
	
% Species:   id = s2, name = FBPase
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s3, name = F6P, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_re39);
	
% Species:   id = s4, name = F1,6BP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_re30) + (-1.0 * reaction_re31) + (-1.0 * reaction_re32);
	
% Species:   id = s5, name = PEP, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_re35);
	
% Species:   id = s6, name = Isocitrate, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re36);
	
% Species:   id = s7, name = 2-oxoglutarate, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_re34);
	
% Species:   id = s8, name = Malate, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re33);
	
% Species:   id = s9, name = F2,6BP, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_re37);
	
% Species:   id = s10, name = Citrate, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_re38);
	
% Species:   id = s11, name = sa4_degraded, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re32));
	
% Species:   id = s12, name = ALDO
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = s13, name = pPFKL, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re58) + (-1.0 * reaction_re59);
	
% Species:   id = s14, name = sa8_degraded, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re33));
	
% Species:   id = s15, name = sa7_degraded, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re34));
	
% Species:   id = s16, name = sa5_degraded, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_re35));
	
% Species:   id = s17, name = sa6_degraded, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re36));
	
% Species:   id = s18, name = sa9_degraded, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_re37));
	
% Species:   id = s21, name = sa3_degraded, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*(( 1.0 * reaction_re39));
	
% Species:   id = s19, name = sa10_degraded, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*(( 1.0 * reaction_re38));
	
% Species:   id = s23, name = IR_complex, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_re40) + (-1.0 * reaction_re41) + (-1.0 * reaction_re42) + ( 1.0 * reaction_re46);
	
% Species:   id = s25, name = p1IR_complex, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_re41) + (-1.0 * reaction_re44) + ( 1.0 * reaction_re45) + (-1.0 * reaction_re51);
	
% Species:   id = s26, name = p2IR_complex, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_re42) + (-1.0 * reaction_re43) + (-1.0 * reaction_re46) + (-1.0 * reaction_re50);
	
% Species:   id = s27, name = p1p2IRcomplex, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_re43) + ( 1.0 * reaction_re44) + (-1.0 * reaction_re45) + (-1.0 * reaction_re47);
	
% Species:   id = s29, name = pAKT, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_re48) + (-1.0 * reaction_re49);
	
% Species:   id = s31, name = pmTOR, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_re52) + (-1.0 * reaction_re53);
	
% Species:   id = s33, name = pS6K, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_re54) + (-1.0 * reaction_re55);
	
% Species:   id = s35, name = pX, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_re56) + (-1.0 * reaction_re57);
	
% Species:   id = s36, name = sa28_degraded, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*(( 1.0 * reaction_re47));
	
% Species:   id = s37, name = sa27_degraded, affected by kineticLaw
	xdot(29) = (1/(compartment_default))*(( 1.0 * reaction_re50));
	
% Species:   id = s38, name = sa26_degraded, affected by kineticLaw
	xdot(30) = (1/(compartment_default))*(( 1.0 * reaction_re51));
	
% Species:   id = s22, name = F6P_proxy, involved in a rule 	xdot(31) = x(31);
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


