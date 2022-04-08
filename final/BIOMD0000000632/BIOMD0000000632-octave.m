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
% Model name = Kollarovic2016 - Cell fate decision at G1-S transition
%
% is http://identifiers.org/biomodels.db/MODEL1505080000
% is http://identifiers.org/biomodels.db/BIOMD0000000632
% isDescribedBy http://identifiers.org/pubmed/26830321
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 9.2179813538304;
	x0(2) = 0.0166736;
	x0(3) = 1.36697471606784;
	x0(4) = 2.28154;
	x0(5) = 1.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 2.666908;
	x0(9) = 1.0;


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

% Compartment: id = compartment, name = MRC-5 cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  CycECdk2a_0, name = CycECdk2a_0
	global_par_CycECdk2a_0=2.28154;
% Parameter:   id =  CycECdk2_0, name = CycECdk2_0
	global_par_CycECdk2_0=1.36697471606784;
% Parameter:   id =  Cdk2_0, name = Cdk2_0
	global_par_Cdk2_0=0.0166736;
% Parameter:   id =  CycE_0, name = CycE_0
	global_par_CycE_0=9.2179813538304;
% Parameter:   id =  Cdk2_T, name = Cdk2_T
% Parameter:   id =  Gy, name = Gy
	global_par_Gy=0.0;
% Parameter:   id =  prop_C, name = prop_C
	global_par_prop_C=0.0905648;
% Parameter:   id =  FociPerGy, name = FociPerGy
	global_par_FociPerGy=28.9678;
% Parameter:   id =  k_TAF, name = k_TAF
	global_par_k_TAF=0.973822;
% Parameter:   id =  TAF, name = TAF
	global_par_TAF=0.506228;
% Parameter:   id =  DNAdamagefoci_0, name = DNAdamagefoci_0
% Parameter:   id =  BaseDNAdamage, name = BaseDNAdamage
	global_par_BaseDNAdamage=2.16068;
% Parameter:   id =  Cdk2_Thr160, name = Cdk2_Thr160
% Parameter:   id =  Fit_Cdk2_Thr160, name = Fit_Cdk2_Thr160
% Parameter:   id =  Fit_Cdk2_T, name = Fit_Cdk2_T
% Parameter:   id =  Fit_CycE_T, name = Fit_CycE_T
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=5987.90902984358;
% Parameter:   id =  k6b, name = k6b
	global_par_k6b=1.08476678528373;
% Parameter:   id =  k8b, name = k8b
	global_par_k8b=1.12435827886665;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=2.43594662809282;
% Parameter:   id =  CycE_T, name = CycE_T
% Parameter:   id =  k6a, name = k6a
	global_par_k6a=193.258;
% Parameter:   id =  k4a, name = k4a
	global_par_k4a=0.01460046788944;
% Parameter:   id =  Fit_Cdk2a, name = Fit_Cdk2a
% Parameter:   id =  vb3_v_0, name = vb3_v
	global_par_vb3_v_0=99.84;
% Parameter:   id =  vb5_v_0, name = vb5_v
	global_par_vb5_v_0=9.99936;
% Parameter:   id =  vb7_k1_0, name = vb7_k1
	global_par_vb7_k1_0=10.0;
% Parameter:   id =  vb1_k0_0, name = vb1_k0
	global_par_vb1_k0_0=0.10249;
% Parameter:   id =  vb1_k1_0, name = vb1_k1
	global_par_vb1_k1_0=4.00486;
% Parameter:   id =  vb1_ka_0, name = vb1_ka
	global_par_vb1_ka_0=3.40431;
% Parameter:   id =  vb1_Kmb_0, name = vb1_Kmb
	global_par_vb1_Kmb_0=0.00842472;
% Parameter:   id =  vb1_kb_0, name = vb1_kb
	global_par_vb1_kb_0=0.324616;
% Parameter:   id =  vb1_Kma_0, name = vb1_Kma
	global_par_vb1_Kma_0=0.001143917344;
% Parameter:   id =  vb1_Ki_0, name = vb1_Ki
	global_par_vb1_Ki_0=0.394586;
% Parameter:   id =  vb1_h_0, name = vb1_h
	global_par_vb1_h_0=4.93142;
% Parameter:   id =  va5_k_0, name = va5_k
	global_par_va5_k_0=193.258;
% Parameter:   id =  va3_k_0, name = va3_k
	global_par_va3_k_0=0.00547468;
% Parameter:   id =  Metabolite_3_0, name = Initial for Cdk2
	global_par_Metabolite_3_0=0.0166736;
% Parameter:   id =  Metabolite_5_0, name = Initial for CycECdk2
	global_par_Metabolite_5_0=1.36697471606784;
% Parameter:   id =  Metabolite_7_0, name = Initial for CycECdk2a
	global_par_Metabolite_7_0=2.28154;
% Parameter:   id =  Metabolite_1_0, name = Initial for CycE
	global_par_Metabolite_1_0=9.2179813538304;
% Parameter:   id =  ModelValue_9_0, name = Initial for TAF
	global_par_ModelValue_9_0=0.506228;
% assignmentRule: variable = Cdk2_T
	global_par_Cdk2_T=x(2)+x(3)+x(4);
% assignmentRule: variable = DNAdamagefoci_0
	global_par_DNAdamagefoci_0=global_par_Gy*global_par_FociPerGy;
% assignmentRule: variable = Cdk2_Thr160
	global_par_Cdk2_Thr160=x(3)+x(4);
% assignmentRule: variable = Fit_Cdk2_Thr160
	global_par_Fit_Cdk2_Thr160=(x(3)+x(4))/(global_par_Metabolite_5_0+global_par_Metabolite_7_0);
% assignmentRule: variable = Fit_Cdk2_T
	global_par_Fit_Cdk2_T=(x(2)+x(3)+x(4))/(global_par_Metabolite_3_0+global_par_Metabolite_5_0+global_par_Metabolite_7_0);
% assignmentRule: variable = Fit_CycE_T
	global_par_Fit_CycE_T=(x(3)+x(4)+x(1))/(global_par_Metabolite_5_0+global_par_Metabolite_7_0+global_par_Metabolite_1_0);
% assignmentRule: variable = CycE_T
	global_par_CycE_T=x(3)+x(4)+x(1);
% assignmentRule: variable = Fit_Cdk2a
	global_par_Fit_Cdk2a=x(4)/global_par_Metabolite_7_0;
% assignmentRule: variable = DDR
	x(8)=global_par_BaseDNAdamage+x(6)+x(7)+global_par_TAF;

% Reaction: id = vb6, name = vb6
	reaction_vb6=compartment_compartment*global_par_k6b*x(1);

% Reaction: id = vb4, name = vb4
	reaction_vb4=compartment_compartment*global_par_k4b*x(2);

% Reaction: id = vb7, name = vb7
	reaction_vb7=compartment_compartment*global_par_vb7_k1_0*x(1)*x(2);

% Reaction: id = vb8, name = vb8
	reaction_vb8=compartment_compartment*global_par_k8b*x(3);

% Reaction: id = vb1, name = vb1
	reaction_vb1=compartment_compartment*pos__FB_inh_MA_1(x(3), x(4), x(5), global_par_vb1_Ki_0, global_par_vb1_Kma_0, global_par_vb1_Kmb_0, global_par_vb1_h_0, global_par_vb1_k0_0, global_par_vb1_k1_0, global_par_vb1_ka_0, global_par_vb1_kb_0);

% Reaction: id = vb2, name = vb2
	reaction_vb2=compartment_compartment*global_par_k2b*x(4);

% Reaction: id = va3, name = va3
	reaction_va3=compartment_compartment*mod_1__CF_1(x(8), global_par_va3_k_0);

% Reaction: id = va2, name = va2	% Local Parameter:   id =  k1, name = k1
	reaction_va2_k1=0.0164994;

	reaction_va2=compartment_compartment*reaction_va2_k1*x(6);

% Reaction: id = va1, name = va1	% Local Parameter:   id =  k1, name = k1
	reaction_va1_k1=0.234805;

	reaction_va1=compartment_compartment*reaction_va1_k1*x(7);

% Reaction: id = va5, name = va5
	reaction_va5=compartment_compartment*mod_1__CF_2(x(9), global_par_va5_k_0);

% Reaction: id = va6, name = va6
	reaction_va6=compartment_compartment*global_par_k6a*x(5);

% Reaction: id = va4, name = va4
	reaction_va4=compartment_compartment*global_par_k4a*x(9);

%Event: id=DNADamage
	event_DNADamage=time > 0;

	if(event_DNADamage) 
		global_par_TAF=global_par_ModelValue_9_0+global_par_k_TAF*global_par_Gy^(1/2);
		x(6)=global_par_prop_C*global_par_DNAdamagefoci_0;
		x(7)=(1-global_par_prop_C)*global_par_DNAdamagefoci_0;
	end

	xdot=zeros(9,1);
	
% Species:   id = CycE, name = CycE, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_vb5) + (-1.0 * reaction_vb6) + (-1.0 * reaction_vb7) + ( 1.0 * reaction_vb8));
	
% Species:   id = Cdk2, name = Cdk2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_vb3) + (-1.0 * reaction_vb4) + (-1.0 * reaction_vb7) + ( 1.0 * reaction_vb8));
	
% Species:   id = CycECdk2, name = CycECdk2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_vb7) + (-1.0 * reaction_vb8) + (-1.0 * reaction_vb1) + ( 1.0 * reaction_vb2));
	
% Species:   id = CycECdk2a, name = CycECdk2a, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_vb1) + (-1.0 * reaction_vb2));
	
% Species:   id = p21, name = p21, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_va5) + (-1.0 * reaction_va6));
	
% Species:   id = DNADamageC, name = DNADamageC, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_va2));
	
% Species:   id = DNADamageS, name = DNADamageS, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_va1));
	
% Species:   id = DDR, name = DDR, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = p53, name = p53, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_va3) + (-1.0 * reaction_va4));
end

function z=Constant_flux__irreversible_0(v), z=(v);end

function z=mod_1__CF_1(DDR,va3_k_0), z=(va3_k_0*DDR);end

function z=pos__FB_inh_MA_1(CycECdk2,CycECdk2a,p21,vb1_Ki_0,vb1_Kma_0,vb1_Kmb_0,vb1_h_0,vb1_k0_0,vb1_k1_0,vb1_ka_0,vb1_kb_0), z=(CycECdk2*(vb1_k0_0+vb1_k1_0*2*vb1_ka_0*CycECdk2a*vb1_Kmb_0/(vb1_kb_0-vb1_ka_0*CycECdk2a+vb1_kb_0*vb1_Kma_0+vb1_ka_0*CycECdk2a*vb1_Kmb_0+((vb1_kb_0-vb1_ka_0*CycECdk2a+vb1_kb_0*vb1_Kma_0+vb1_ka_0*CycECdk2a*vb1_Kmb_0)^2-4*(vb1_kb_0-vb1_ka_0*CycECdk2a)*vb1_ka_0*CycECdk2a*vb1_Kmb_0)^(1/2)))/(1+(vb1_Ki_0*p21)^vb1_h_0));end

function z=mod_1__CF_2(p53,va5_k_0), z=(va5_k_0*p53);end

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


