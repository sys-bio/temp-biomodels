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
% Model name = Arnold2011_Hahn1986_CalvinCycle_Starch_Sucrose
%
% is http://identifiers.org/biomodels.db/MODEL1109270006
% is http://identifiers.org/biomodels.db/BIOMD0000000389
% isDescribedBy http://identifiers.org/pubmed/22001849
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 2.0;
	x0(2) = 2.4;
	x0(3) = 0.5;
	x0(4) = 2.2;
	x0(5) = 0.2;
	x0(6) = 0.05;
	x0(7) = 2.0;
	x0(8) = 0.05;
	x0(9) = 99.9999999999999;
	x0(10) = 3.875;
	x0(11) = 0.53;
	x0(12) = 3.871;
	x0(13) = 1.613;
	x0(14) = 2.5;
	x0(15) = 0.114;
	x0(16) = 0.1;
	x0(17) = 77.31;
	x0(18) = 0.8;
	x0(19) = 77.31;


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

% Compartment: id = chloroplast, name = chloroplast, constant
	compartment_chloroplast=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = vacuole, name = vacuole, constant
	compartment_vacuole=1.0;
% Compartment: id = phloem, name = phloem, constant
	compartment_phloem=1.0;
% Parameter:   id =  r, name = r
	global_par_r=3.0E-5;
% Parameter:   id =  D, name = D
	global_par_D=1.0E-4;
% Parameter:   id =  phi, name = phi
	global_par_phi=1.0E-4;
% Parameter:   id =  v_15, name = v(15)
% assignmentRule: variable = v_15
	global_par_v_15=0.0258*x(16)*x(12);

% Reaction: id = RuBisCO, name = RuBisCO	% Local Parameter:   id =  k1, name = k1
	reaction_RuBisCO_k1=0.006;

	reaction_RuBisCO=compartment_chloroplast*reaction_RuBisCO_k1*x(1)*const_species_CO2;

% Reaction: id = PGA_red, name = PGA reduction	% Local Parameter:   id =  k1, name = k1
	reaction_PGA_red_k1=0.0207;

	reaction_PGA_red=compartment_chloroplast*reaction_PGA_red_k1*x(2)*x(10);

% Reaction: id = FBP_A_ase, name = FBP ald + ase	% Local Parameter:   id =  k1, name = k1
	reaction_FBP_A_ase_k1=4.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_FBP_A_ase_k2=0.0;

	reaction_FBP_A_ase=compartment_chloroplast*(reaction_FBP_A_ase_k1*x(3)^2-reaction_FBP_A_ase_k2*x(4)*x(14));

% Reaction: id = F6P_TK1, name = F6P trans I	% Local Parameter:   id =  k1, name = k1
	reaction_F6P_TK1_k1=0.031;

	reaction_F6P_TK1=compartment_chloroplast*reaction_F6P_TK1_k1*x(4);

% Reaction: id = SBP_A_ase, name = SBP ald + ase	% Local Parameter:   id =  k1, name = k1
	reaction_SBP_A_ase_k1=3.1;

	reaction_SBP_A_ase=compartment_chloroplast*reaction_SBP_A_ase_k1*x(6)*x(3);

% Reaction: id = S7P_TK1_R5P_I, name = S7P trans I + R5P iso	% Local Parameter:   id =  k1, name = k1
	reaction_S7P_TK1_R5P_I_k1=0.31;

	reaction_S7P_TK1_R5P_I=compartment_chloroplast*reaction_S7P_TK1_R5P_I_k1*x(7);

% Reaction: id = TK2_Ru5P_E, name = trans II + Ru5P epi	% Local Parameter:   id =  k1, name = k1
	reaction_TK2_Ru5P_E_k1=6.2;

	reaction_TK2_Ru5P_E=compartment_chloroplast*reaction_TK2_Ru5P_E_k1*x(5)*x(3);

% Reaction: id = Ru5P_K, name = Ru5P kinase	% Local Parameter:   id =  k1, name = k1
	reaction_Ru5P_K_k1=0.031;

	reaction_Ru5P_K=compartment_chloroplast*reaction_Ru5P_K_k1*x(8)*x(10);

% Reaction: id = ATP_S, name = ATP synthase	% Local Parameter:   id =  k1, name = k1
	reaction_ATP_S_k1=0.279;

	reaction_ATP_S=compartment_chloroplast*reaction_ATP_S_k1*x(11)*x(14);

% Reaction: id = Starch_S, name = starch synthetase	% Local Parameter:   id =  k1, name = k1
	reaction_Starch_S_k1=0.002;

	reaction_Starch_S=compartment_chloroplast*reaction_Starch_S_k1*x(10)*x(4);

% Reaction: id = Starch_P, name = starch phosphorylase	% Local Parameter:   id =  k1, name = k1
	reaction_Starch_P_k1=4.0E-5;

	reaction_Starch_P=compartment_chloroplast*reaction_Starch_P_k1*x(9)*x(14);

% Reaction: id = TPT, name = TP translocator	% Local Parameter:   id =  k1, name = k1
	reaction_TPT_k1=0.5;

	reaction_TPT=reaction_TPT_k1*x(3)*x(18);

% Reaction: id = FBPc_A_ase, name = FBPc ald + ase	% Local Parameter:   id =  k1, name = k1
	reaction_FBPc_A_ase_k1=1.55;

	reaction_FBPc_A_ase=compartment_cytosol*reaction_FBPc_A_ase_k1*x(15)^2;

% Reaction: id = UTP_S, name = UTP synthase	% Local Parameter:   id =  k1, name = k1
	reaction_UTP_S_k1=0.00755;

	reaction_UTP_S=reaction_UTP_S_k1*x(13)*x(18);

% Reaction: id = Respi, name = respiration rate
	reaction_Respi=global_par_r*x(17);

% Reaction: id = Diffu, name = diffusion rate
	reaction_Diffu=global_par_D*x(17)-global_par_D*x(19);

% Reaction: id = Transl, name = translocation rate
	reaction_Transl=global_par_phi*x(17)-global_par_phi*const_species_E;

% Species:   id = CO2, name = CO2, constant	const_species_CO2=31.0;

% Species:   id = E, name = E, constant	const_species_E=0.5;

% Species:   id = Resp, name = Resp, constant	const_species_Resp=1.0;

	xdot=zeros(19,1);
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO) + ( 1.0 * reaction_Ru5P_K));
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*(( 2.0 * reaction_RuBisCO) + (-1.0 * reaction_PGA_red));
	
% Species:   id = TP, name = TP, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + (-2.0 * reaction_FBP_A_ase) + (-1.0 * reaction_SBP_A_ase) + (-1.0 * reaction_TK2_Ru5P_E) + (-1.0 * reaction_TPT));
	
% Species:   id = HeP, name = HeP, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*(( 1.0 * reaction_FBP_A_ase) + (-1.0 * reaction_F6P_TK1) + (-1.0 * reaction_Starch_S) + ( 1.0 * reaction_Starch_P));
	
% Species:   id = TPGA, name = TPGA, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK1) + ( 1.0 * reaction_S7P_TK1_R5P_I) + (-1.0 * reaction_TK2_Ru5P_E));
	
% Species:   id = E4P, name = E4P, affected by kineticLaw
	xdot(6) = (1/(compartment_chloroplast))*(( 1.0 * reaction_F6P_TK1) + (-1.0 * reaction_SBP_A_ase));
	
% Species:   id = S7P, name = S7P, affected by kineticLaw
	xdot(7) = (1/(compartment_chloroplast))*(( 1.0 * reaction_SBP_A_ase) + (-1.0 * reaction_S7P_TK1_R5P_I));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(8) = (1/(compartment_chloroplast))*(( 1.0 * reaction_S7P_TK1_R5P_I) + ( 1.0 * reaction_TK2_Ru5P_E) + (-1.0 * reaction_Ru5P_K));
	
% Species:   id = GG, name = GG, affected by kineticLaw
	xdot(9) = (1/(compartment_chloroplast))*(( 1.0 * reaction_Starch_S) + (-1.0 * reaction_Starch_P));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(10) = (1/(compartment_chloroplast))*((-1.0 * reaction_PGA_red) + (-1.0 * reaction_Ru5P_K) + ( 1.0 * reaction_ATP_S) + (-1.0 * reaction_Starch_S));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(11) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + ( 1.0 * reaction_Ru5P_K) + (-1.0 * reaction_ATP_S) + ( 1.0 * reaction_Starch_S));
	
% Species:   id = UTP, name = UTP, affected by kineticLaw
	xdot(12) = (1/(compartment_chloroplast))*((-1.0 * reaction_Suc_S) + ( 1.0 * reaction_UTP_S));
	
% Species:   id = UDP, name = UDP, affected by kineticLaw
	xdot(13) = (1/(compartment_chloroplast))*(( 1.0 * reaction_Suc_S) + (-1.0 * reaction_UTP_S));
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(14) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + ( 1.0 * reaction_FBP_A_ase) + ( 1.0 * reaction_SBP_A_ase) + (-1.0 * reaction_ATP_S) + ( 2.0 * reaction_Starch_S) + (-1.0 * reaction_Starch_P) + ( 1.0 * reaction_TPT));
	
% Species:   id = TPc, name = TPc, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_TPT) + (-2.0 * reaction_FBPc_A_ase));
	
% Species:   id = HePc, name = HePc, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*(( 1.0 * reaction_FBPc_A_ase) + (-2.0 * reaction_Suc_S));
	
% Species:   id = Suc, name = Suc, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_Suc_S) + (-1.0 * reaction_Respi) + (-1.0 * reaction_Diffu) + (-1.0 * reaction_Transl));
	
% Species:   id = Pic, name = Pic, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*((-1.0 * reaction_TPT) + ( 1.0 * reaction_FBPc_A_ase) + ( 3.0 * reaction_Suc_S) + (-1.0 * reaction_UTP_S));
	
% Species:   id = SucV, name = SucV, affected by kineticLaw
	xdot(19) = (1/(compartment_vacuole))*(( 1.0 * reaction_Diffu));
end

function z=function_1(v), z=(v);end

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


