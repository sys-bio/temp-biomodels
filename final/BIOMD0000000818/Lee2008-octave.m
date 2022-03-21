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
% Model name = Lee2008 - ERK and PI3K signal integration by Myc
%
% isDescribedBy http://identifiers.org/pubmed/18463697
% is http://identifiers.org/biomodels.db/MODEL1909170004
% is http://identifiers.org/biomodels.db/BIOMD0000000818
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.0;
	x0(2) = 0.6;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 0.6;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 1.0;
	x0(11) = 0.0;


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
% Parameter:   id =  kM, name = kM
	global_par_kM=1.0;
% Parameter:   id =  ERKmax, name = ERKmax*
	global_par_ERKmax=1.0;
% Parameter:   id =  K_GP, name = K_GP
	global_par_K_GP=0.01;
% Parameter:   id =  k_GD, name = k_GD
	global_par_k_GD=72.0;
% Parameter:   id =  K_GD, name = K_GD
	global_par_K_GD=0.01;
% Parameter:   id =  k_MS, name = k_MS*
	global_par_k_MS=2.3;
% Parameter:   id =  K_MT, name = K_MT
	global_par_K_MT=0.01;
% Parameter:   id =  dM, name = dM
	global_par_dM=2.08;
% Parameter:   id =  dMS, name = dMS
	global_par_dMS=0.35;
% Parameter:   id =  dMT, name = dMT
	global_par_dMT=2.08;
% Parameter:   id =  PI3Kmax_, name = PI3Kmax**
	global_par_PI3Kmax_=1.0;
% Parameter:   id =  k_ap, name = k_ap
	global_par_k_ap=360.0;
% Parameter:   id =  K_AP, name = K_AP
	global_par_K_AP=0.01;
% Parameter:   id =  k_AD, name = k_AD
	global_par_k_AD=72.0;
% Parameter:   id =  K_AD, name = K_AD
	global_par_K_AD=0.01;
% Parameter:   id =  k_GP, name = k_GP
	global_par_k_GP=360.0;
% Parameter:   id =  K_MS, name = K_MS
	global_par_K_MS=0.01;
% Parameter:   id =  k_MT, name = k_MT
	global_par_k_MT=0.4;
% assignmentRule: variable = Myc_total
	x(11)=x(1)+x(8)+x(9);

% Reaction: id = Myc_synthesis, name = Myc_synthesis
	reaction_Myc_synthesis=compartment_Cell*facilitated_synthesis(global_par_kM, x(10));

% Reaction: id = AKT_phosphorylation, name = AKT phosphorylation
	reaction_AKT_phosphorylation=compartment_Cell*Facilitated_function(global_par_k_ap, x(4), x(2), global_par_K_AP);

% Reaction: id = AKTp_dephosphorylation, name = AKTp dephosphorylation
	reaction_AKTp_dephosphorylation=compartment_Cell*Henri_Michaelis_Menten__irreversible(x(3), global_par_K_AD, global_par_k_AD);

% Reaction: id = GSK3B_phosphorylation, name = GSK3B phosphorylation
	reaction_GSK3B_phosphorylation=compartment_Cell*Facilitated_function(global_par_k_GP, x(3), x(5), global_par_K_GP);

% Reaction: id = GSK3Bp_dephosphorylation, name = GSK3Bp dephosphorylation
	reaction_GSK3Bp_dephosphorylation=compartment_Cell*Henri_Michaelis_Menten__irreversible(x(6), global_par_K_GD, global_par_k_GD);

% Reaction: id = Myc_ser62_phosphorylation, name = Myc_ser62 phosphorylation
	reaction_Myc_ser62_phosphorylation=compartment_Cell*Facilitated_function(global_par_k_MS, x(7), x(1), global_par_K_MS);

% Reaction: id = Myc_thr58_phosphorylation, name = Myc_thr58 phosphorylation
	reaction_Myc_thr58_phosphorylation=compartment_Cell*Facilitated_function(global_par_k_MT, x(5), x(8), global_par_K_MT);

% Reaction: id = Myc_degradation, name = Myc degradation
	reaction_Myc_degradation=compartment_Cell*global_par_dM*x(1);

% Reaction: id = Myc_ser62_degradation, name = Myc_ser62 degradation
	reaction_Myc_ser62_degradation=compartment_Cell*global_par_dMS*x(8);

% Reaction: id = Myc_thr58_degradation, name = Myc_thr58 degradation
	reaction_Myc_thr58_degradation=compartment_Cell*global_par_dMT*x(9);

%Event: id=erk
	event_erk=time >= 1;

	if(event_erk) 
		x(7)=0.1;
	end

%Event: id=pi3k
	event_pi3k=time >= 1;

	if(event_pi3k) 
		x(4)=0.1;
	end

%Event: id=pi3k1
	event_pi3k1=time >= 4;

	if(event_pi3k1) 
		x(4)=1;
	end

%Event: id=pi3k2
	event_pi3k2=time >= 6;

	if(event_pi3k2) 
		x(4)=0.1;
	end

	xdot=zeros(11,1);
	
% Species:   id = Myc, name = Myc, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*(( 1.0 * reaction_Myc_synthesis) + (-1.0 * reaction_Myc_ser62_phosphorylation) + (-1.0 * reaction_Myc_degradation));
	
% Species:   id = AKT, name = AKT, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_AKT_phosphorylation) + ( 1.0 * reaction_AKTp_dephosphorylation));
	
% Species:   id = AKTp, name = AKTp, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_AKT_phosphorylation) + (-1.0 * reaction_AKTp_dephosphorylation));
	
% Species:   id = PI3K, name = PI3K
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = GSK3B, name = GSK3B, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*((-1.0 * reaction_GSK3B_phosphorylation) + ( 1.0 * reaction_GSK3Bp_dephosphorylation));
	
% Species:   id = GSK3Bp, name = GSK3Bp, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_GSK3B_phosphorylation) + (-1.0 * reaction_GSK3Bp_dephosphorylation));
	
% Species:   id = ERK, name = ERK
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
	
% Species:   id = Myc_ser62, name = Myc_ser62, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell))*(( 1.0 * reaction_Myc_ser62_phosphorylation) + (-1.0 * reaction_Myc_thr58_phosphorylation) + (-1.0 * reaction_Myc_ser62_degradation));
	
% Species:   id = Myc_thr58, name = Myc_thr58, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_Myc_thr58_phosphorylation) + (-1.0 * reaction_Myc_thr58_degradation));
	
% Species:   id = GF, name = GF
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = Myc_total, name = Myc_total, involved in a rule 	xdot(11) = x(11);
end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=facilitated_synthesis(k,A), z=(k*A);end

function z=Facilitated_function(kcat,A,B,Km), z=(kcat*A*B/(Km+B));end

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


