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
% Model name = Zi2011_TGF-beta_Pathway
%
% is http://identifiers.org/biomodels.db/MODEL1104050000
% is http://identifiers.org/biomodels.db/BIOMD0000000342
% isDescribedBy http://identifiers.org/pubmed/21613981
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.05;
	x0(2) = 0.702494;
	x0(3) = 6.52344;
	x0(4) = 0.201077;
	x0(5) = 1.43997;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 60.6;
	x0(9) = 28.5;
	x0(10) = 50.8;
	x0(11) = 50.8;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = Vmed, name = Medium, defined by a Rule
% Compartment: id = Vcyt, name = Cytoplasm, constant
	compartment_Vcyt=2.3E-12;
% Compartment: id = Vnuc, name = Nucleus, constant
	compartment_Vnuc=1.0E-12;
% Parameter:   id =  stimulation_type, name = stimulation_type
	global_par_stimulation_type=1.0;
% Parameter:   id =  single_pulse_duration, name = single_pulse_duration
	global_par_single_pulse_duration=0.5;
% Parameter:   id =  totalNumT1R, name = totalNumT1R
% Parameter:   id =  totalNumT2R, name = totalNumT2R
% Parameter:   id =  totalNumLRC, name = totalNumLRC
% Parameter:   id =  totalNumPSmad2, name = totalNumPSmad2
% Parameter:   id =  totalNuclearPSmad2, name = totalNuclearPSmad2
% Parameter:   id =  totalSmad2c, name = totalSmad2c
% Parameter:   id =  totalSmad2n, name = totalSmad2n
% Parameter:   id =  medium_TGF_beta_amount, name = medium_TGF_beta_amount
% Parameter:   id =  TGF_beta_dose_mol_per_cell, name = TGF_beta_dose_mol_per_cell
% Warning parameter TGF_beta_dose_mol_per_cell is not constant, it should be controlled by a Rule and/or events
	global_par_TGF_beta_dose_mol_per_cell=0.0;
% Parameter:   id =  ki, name = ki
	global_par_ki=0.333;
% Parameter:   id =  kr, name = kr
	global_par_kr=0.0333;
% Parameter:   id =  k_T1R, name = k_T1R
	global_par_k_T1R=0.0167;
% Parameter:   id =  k_T2R, name = k_T2R
	global_par_k_T2R=0.0190076;
% Parameter:   id =  kdeg_T1R, name = kdeg_T1R
	global_par_kdeg_T1R=0.00256;
% Parameter:   id =  kdeg_T2R, name = kdeg_T2R
	global_par_kdeg_T2R=0.0132;
% Parameter:   id =  kdeg_LRC, name = kdeg_LRC
	global_par_kdeg_LRC=0.00256;
% Parameter:   id =  kdeg_TGF_beta, name = kdeg_TGF_beta
	global_par_kdeg_TGF_beta=0.347;
% Parameter:   id =  klid, name = klid
	global_par_klid=0.0233678;
% Parameter:   id =  ka_LRC, name = ka_LRC
	global_par_ka_LRC=117.897;
% Parameter:   id =  kdiss_LRC, name = kdiss_LRC
	global_par_kdiss_LRC=0.0438111;
% Parameter:   id =  kimp_Smad2, name = kimp_Smad2
	global_par_kimp_Smad2=0.156;
% Parameter:   id =  kexp_Smad2, name = kexp_Smad2
	global_par_kexp_Smad2=0.763;
% Parameter:   id =  kimp_Smad4, name = kimp_Smad4
	global_par_kimp_Smad4=0.156;
% Parameter:   id =  kexp_Smad4, name = kexp_Smad4
	global_par_kexp_Smad4=0.359;
% Parameter:   id =  kpho_Smad2, name = kpho_Smad2
	global_par_kpho_Smad2=0.0488268;
% Parameter:   id =  kon_Smads, name = kon_Smads
	global_par_kon_Smads=0.198472;
% Parameter:   id =  koff_Smads, name = koff_Smads
	global_par_koff_Smads=1.0;
% Parameter:   id =  kimp_Smads, name = kimp_Smads
	global_par_kimp_Smads=0.889;
% Parameter:   id =  kdepho_Smad2, name = kdepho_Smad2
	global_par_kdepho_Smad2=0.394;
% Parameter:   id =  kon_ns, name = kon_ns
	global_par_kon_ns=0.0505413;
% Parameter:   id =  koff_ns, name = koff_ns
% Parameter:   id =  KD_ns, name = KD_ns
	global_par_KD_ns=40.2257;
% assignmentRule: variable = Vmed
	compartment_Vmed=2E-3/(1E6*exp(log(1.45)*time/1440));
% assignmentRule: variable = totalNumPSmad2
	global_par_totalNumPSmad2=(x(12)+x(13)*2+x(14))*2.3*602+(x(15)+x(16)*2+x(17))*602;
% assignmentRule: variable = totalNuclearPSmad2
	global_par_totalNuclearPSmad2=x(15)+2*x(16)+x(17);
% assignmentRule: variable = totalNumT1R
	global_par_totalNumT1R=(x(2)+x(3)+x(6)+x(7))*2.3*602;
% assignmentRule: variable = totalNumT2R
	global_par_totalNumT2R=(x(4)+x(5)+x(6)+x(7))*2.3*602;
% assignmentRule: variable = totalNumLRC
	global_par_totalNumLRC=(x(6)+x(7))*2.3*602;
% assignmentRule: variable = totalSmad2c
	global_par_totalSmad2c=x(8)+x(12)+2*x(13)+x(14);
% assignmentRule: variable = totalSmad2n
	global_par_totalSmad2n=x(9)+x(15)+2*x(16)+x(17);
% assignmentRule: variable = koff_ns
	global_par_koff_ns=global_par_kon_ns*global_par_KD_ns;
% assignmentRule: variable = medium_TGF_beta_amount
	global_par_medium_TGF_beta_amount=x(1)*1E-9*compartment_Vmed*6E23;

% Reaction: id = re1, name = T1R production
	reaction_re1=compartment_Vcyt*global_par_k_T1R;

% Reaction: id = re2, name = T1R internalization to early endosome
	reaction_re2=compartment_Vcyt*global_par_ki*x(2);

% Reaction: id = re3, name = T1R recycling from early endosome
	reaction_re3=compartment_Vcyt*global_par_kr*x(3);

% Reaction: id = re4, name = T1R constitutive degradation
	reaction_re4=compartment_Vcyt*global_par_kdeg_T1R*x(3);

% Reaction: id = re5, name = T2R production
	reaction_re5=compartment_Vcyt*global_par_k_T2R;

% Reaction: id = re6, name = T2R internalization to early endosome
	reaction_re6=compartment_Vcyt*global_par_ki*x(4);

% Reaction: id = re7, name = T2R recycling from early endosome
	reaction_re7=compartment_Vcyt*global_par_kr*x(5);

% Reaction: id = re8, name = T2R constitutive degradation
	reaction_re8=compartment_Vcyt*global_par_kdeg_T2R*x(5);

% Reaction: id = re9, name = LRC activation
	reaction_re9=compartment_Vcyt*global_par_ka_LRC*x(1)*x(4)*x(2);

% Reaction: id = re10, name = LRC internalization to early endosome
	reaction_re10=compartment_Vcyt*global_par_ki*x(6);

% Reaction: id = re11, name = LRC constitutive degradation
	reaction_re11=compartment_Vcyt*global_par_kdeg_LRC*x(7);

% Reaction: id = re12, name = dissociation of LRC in endosome
	reaction_re12=compartment_Vcyt*global_par_kdiss_LRC*x(7);

% Reaction: id = re13, name = TGF-beta constitutive degradation
	reaction_re13=compartment_Vcyt*global_par_kdeg_TGF_beta*x(18);

% Reaction: id = re14, name = Smad2 nuclear import
	reaction_re14=compartment_Vcyt*global_par_kimp_Smad2*x(8);

% Reaction: id = re15, name = Smad2 nuclear export
	reaction_re15=compartment_Vnuc*global_par_kexp_Smad2*x(9);

% Reaction: id = re16, name = Smad4 nuclear import
	reaction_re16=compartment_Vcyt*global_par_kimp_Smad4*x(10);

% Reaction: id = re17, name = Smad4 nuclear export
	reaction_re17=compartment_Vnuc*global_par_kexp_Smad4*x(11);

% Reaction: id = re18, name = Smad2 phosphorylation
	reaction_re18=compartment_Vcyt*global_par_kpho_Smad2*x(8)*x(7);

% Reaction: id = re19, name = PSmad2 nuclear import
	reaction_re19=compartment_Vcyt*global_par_kimp_Smad2*x(12);

% Reaction: id = re20, name = PSmad2 nuclear export
	reaction_re20=compartment_Vnuc*global_par_kexp_Smad2*x(15);

% Reaction: id = re21, name = Smad2-Smad4 complex formation
	reaction_re21=compartment_Vcyt*(global_par_kon_Smads*x(12)*x(10)-global_par_koff_Smads*x(14));

% Reaction: id = re22, name = Smad2-Smad4 nuclear import
	reaction_re22=compartment_Vcyt*global_par_kimp_Smads*x(14);

% Reaction: id = re23, name = Smad2-Smad4 dissociation
	reaction_re23=compartment_Vnuc*(global_par_koff_Smads*x(17)-global_par_kon_Smads*x(15)*x(11));

% Reaction: id = re24, name = Smad2 dephosphorylation
	reaction_re24=compartment_Vnuc*global_par_kdepho_Smad2*x(15);

% Reaction: id = re25, name = PSmad2 dimer formation
	reaction_re25=compartment_Vcyt*(global_par_kon_Smads*x(12)^2-global_par_koff_Smads*x(13));

% Reaction: id = re26, name = PSmad2 dimer nuclear  import
	reaction_re26=compartment_Vcyt*global_par_kimp_Smads*x(13);

% Reaction: id = re27, name = PSmad2 dimmer dissociation
	reaction_re27=compartment_Vnuc*(global_par_koff_Smads*x(16)-global_par_kon_Smads*x(15)^2);

% Reaction: id = re28, name = negative feedback induced LRC degradation
	reaction_re28=compartment_Vcyt*global_par_klid*x(6)*global_par_totalNuclearPSmad2;

% Reaction: id = re29, name = non-specific binding of TGF-beta
	reaction_re29=compartment_Vmed*(global_par_kon_ns*x(1)-global_par_koff_ns*x(19));

% Species:   id = AA, name = AA, constant	const_species_AA=0.0;

% Species:   id = empty_degraded, name = empty_degraded, constant	const_species_empty_degraded=0.0;

%Event: id=single_pulse_TGF_beta_washout
	event_single_pulse_TGF_beta_washout=(global_par_stimulation_type == 2) && (time == global_par_single_pulse_duration);

	if(event_single_pulse_TGF_beta_washout) 
		x(1)=0;
	end

	xdot=zeros(19,1);
	
% Species:   id = TGF_beta_ex, name = TGF_beta_ex, affected by kineticLaw
	xdot(1) = (1/(compartment_Vmed))*((-1.0 * reaction_re9) + (-1.0 * reaction_re29));
	
% Species:   id = T1R_surf, name = T1R_surf, affected by kineticLaw
	xdot(2) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + ( 1.0 * reaction_re3) + (-1.0 * reaction_re9));
	
% Species:   id = T1R_endo, name = T1R_endo, affected by kineticLaw
	xdot(3) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re3) + (-1.0 * reaction_re4) + ( 1.0 * reaction_re12));
	
% Species:   id = T2R_surf, name = T2R_surf, affected by kineticLaw
	xdot(4) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re6) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re9));
	
% Species:   id = T2R_endo, name = T2R_endo, affected by kineticLaw
	xdot(5) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re6) + (-1.0 * reaction_re7) + (-1.0 * reaction_re8) + ( 1.0 * reaction_re12));
	
% Species:   id = LRC_surf, name = LRC_surf, affected by kineticLaw
	xdot(6) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re10) + (-1.0 * reaction_re28));
	
% Species:   id = LRC_endo, name = LRC_endo, affected by kineticLaw
	xdot(7) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re10) + (-1.0 * reaction_re11) + (-1.0 * reaction_re12));
	
% Species:   id = Smad2c, name = Smad2c, affected by kineticLaw
	xdot(8) = (1/(compartment_Vcyt))*((-1.0 * reaction_re14) + ( 1.0 * reaction_re15) + (-1.0 * reaction_re18));
	
% Species:   id = Smad2n, name = Smad2n, affected by kineticLaw
	xdot(9) = (1/(compartment_Vnuc))*(( 1.0 * reaction_re14) + (-1.0 * reaction_re15) + ( 1.0 * reaction_re24));
	
% Species:   id = Smad4c, name = Smad4c, affected by kineticLaw
	xdot(10) = (1/(compartment_Vcyt))*((-1.0 * reaction_re16) + ( 1.0 * reaction_re17) + (-1.0 * reaction_re21));
	
% Species:   id = Smad4n, name = Smad4n, affected by kineticLaw
	xdot(11) = (1/(compartment_Vnuc))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + ( 1.0 * reaction_re23));
	
% Species:   id = PSmad2c, name = PSmad2c, affected by kineticLaw
	xdot(12) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re20) + (-1.0 * reaction_re21) + (-2.0 * reaction_re25));
	
% Species:   id = PSmad2_PSmad2_c, name = PSmad2_PSmad2_c, affected by kineticLaw
	xdot(13) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re25) + (-1.0 * reaction_re26));
	
% Species:   id = PSmad2_Smad4_c, name = PSmad2_Smad4_c, affected by kineticLaw
	xdot(14) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re21) + (-1.0 * reaction_re22));
	
% Species:   id = PSmad2n, name = PSmad2n, affected by kineticLaw
	xdot(15) = (1/(compartment_Vnuc))*(( 1.0 * reaction_re19) + (-1.0 * reaction_re20) + ( 1.0 * reaction_re23) + (-1.0 * reaction_re24) + ( 2.0 * reaction_re27));
	
% Species:   id = PSmad2_PSmad2_n, name = PSmad2_PSmad2_n, affected by kineticLaw
	xdot(16) = (1/(compartment_Vnuc))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re27));
	
% Species:   id = PSmad2_Smad4_n, name = PSmad2_Smad4_n, affected by kineticLaw
	xdot(17) = (1/(compartment_Vnuc))*(( 1.0 * reaction_re22) + (-1.0 * reaction_re23));
	
% Species:   id = TGF_beta_endo, name = TGF_beta_endo, affected by kineticLaw
	xdot(18) = (1/(compartment_Vcyt))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re13));
	
% Species:   id = TGF_beta_ns, name = TGF_beta_ns, affected by kineticLaw
	xdot(19) = (1/(compartment_Vmed))*(( 1.0 * reaction_re29));
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


