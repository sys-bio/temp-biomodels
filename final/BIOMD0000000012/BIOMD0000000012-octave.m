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
% Model name = Elowitz2000 - Repressilator
%
% is http://identifiers.org/biomodels.db/MODEL6615351360
% is http://identifiers.org/biomodels.db/BIOMD0000000012
% isDescribedBy http://identifiers.org/pubmed/10659856
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 20.0;
	x0(6) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  beta, name = beta
% Parameter:   id =  alpha0, name = alpha0
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  eff, name = translation efficiency
	global_par_eff=20.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  KM, name = KM
	global_par_KM=40.0;
% Parameter:   id =  tau_mRNA, name = mRNA half life
	global_par_tau_mRNA=2.0;
% Parameter:   id =  tau_prot, name = protein half life
	global_par_tau_prot=10.0;
% Parameter:   id =  t_ave, name = average mRNA life time
% Parameter:   id =  kd_mRNA, name = kd_mRNA
% Parameter:   id =  kd_prot, name = kd_prot
% Parameter:   id =  k_tl, name = k_tl
% Parameter:   id =  a_tr, name = a_tr
% Parameter:   id =  ps_a, name = tps_active
	global_par_ps_a=0.5;
% Parameter:   id =  ps_0, name = tps_repr
	global_par_ps_0=5.0E-4;
% Parameter:   id =  a0_tr, name = a0_tr
% assignmentRule: variable = beta
	global_par_beta=global_par_tau_mRNA/global_par_tau_prot;
% assignmentRule: variable = k_tl
	global_par_k_tl=global_par_eff/global_par_t_ave;
% assignmentRule: variable = a_tr
	global_par_a_tr=(global_par_ps_a-global_par_ps_0)*60;
% assignmentRule: variable = a0_tr
	global_par_a0_tr=global_par_ps_0*60;

% Reaction: id = Reaction1, name = degradation of LacI transcripts
	reaction_Reaction1=global_par_kd_mRNA*x(4);

% Reaction: id = Reaction2, name = degradation of TetR transcripts
	reaction_Reaction2=global_par_kd_mRNA*x(5);

% Reaction: id = Reaction3, name = degradation of CI transcripts
	reaction_Reaction3=global_par_kd_mRNA*x(6);

% Reaction: id = Reaction4, name = translation of LacI
	reaction_Reaction4=global_par_k_tl*x(4);

% Reaction: id = Reaction5, name = translation of TetR
	reaction_Reaction5=global_par_k_tl*x(5);

% Reaction: id = Reaction6, name = translation of CI
	reaction_Reaction6=global_par_k_tl*x(6);

% Reaction: id = Reaction7, name = degradation of LacI
	reaction_Reaction7=global_par_kd_prot*x(1);

% Reaction: id = Reaction8, name = degradation of TetR
	reaction_Reaction8=global_par_kd_prot*x(2);

% Reaction: id = Reaction9, name = degradation of CI
	reaction_Reaction9=global_par_kd_prot*x(3);

% Reaction: id = Reaction10, name = transcription of LacI
	reaction_Reaction10=global_par_a0_tr+global_par_a_tr*global_par_KM^global_par_n/(global_par_KM^global_par_n+x(3)^global_par_n);

% Reaction: id = Reaction11, name = transcription of TetR
	reaction_Reaction11=global_par_a0_tr+global_par_a_tr*global_par_KM^global_par_n/(global_par_KM^global_par_n+x(1)^global_par_n);

% Reaction: id = Reaction12, name = transcription of CI
	reaction_Reaction12=global_par_a0_tr+global_par_a_tr*global_par_KM^global_par_n/(global_par_KM^global_par_n+x(2)^global_par_n);

	xdot=zeros(6,1);
	
% Species:   id = PX, name = LacI protein, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Reaction4) + (-1.0 * reaction_Reaction7);
	
% Species:   id = PY, name = TetR protein, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction8);
	
% Species:   id = PZ, name = cI protein, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction9);
	
% Species:   id = X, name = LacI mRNA, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction10);
	
% Species:   id = Y, name = TetR mRNA, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction11);
	
% Species:   id = Z, name = cI mRNA, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_Reaction3) + ( 1.0 * reaction_Reaction12);
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


