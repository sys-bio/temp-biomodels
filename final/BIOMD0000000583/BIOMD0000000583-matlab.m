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
% Model name = Leber2015 - Mucosal immunity and gut microbiome interaction during C. difficile infection
%
% is http://identifiers.org/biomodels.db/MODEL1507200000
% is http://identifiers.org/biomodels.db/BIOMD0000000583
% isDescribedBy http://identifiers.org/pubmed/26230099
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 484.0;
	x0(2) = 1.0;
	x0(3) = 5.0E10;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1.5E10;
	x0(7) = 0.0;
	x0(8) = 1052500.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 3250.0;
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

% Compartment: id = Lumen, name = Lumen, constant
	compartment_Lumen=1.0;
% Compartment: id = Epithelium, name = Epithelium, constant
	compartment_Epithelium=4.0;
% Compartment: id = LP, name = LP, constant
	compartment_LP=0.07;
% Compartment: id = MLN, name = MLN, constant
	compartment_MLN=1.0;

% Reaction: id = Treg_Degradation, name = Treg Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Treg_Degradation_k1=0.5069887;

	reaction_Treg_Degradation=compartment_LP*reaction_Treg_Degradation_k1*x(15);

% Reaction: id = eDC_Degradation, name = eDC Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_eDC_Degradation_k1=1.72495199303666E-5;

	reaction_eDC_Degradation=compartment_MLN*reaction_eDC_Degradation_k1*x(16);

% Reaction: id = Th17_Degradation, name = Th17 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Th17_Degradation_k1=2.39665140586358;

	reaction_Th17_Degradation=compartment_LP*reaction_Th17_Degradation_k1*x(13);

% Reaction: id = Th1_Degradation, name = Th1 Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_Th1_Degradation_k1=0.99505694359;

	reaction_Th1_Degradation=compartment_LP*reaction_Th1_Degradation_k1*x(14);

% Reaction: id = N_Degradation, name = N Degradation	% Local Parameter:   id =  K, name = K
	reaction_N_Degradation_K=2.35932924820229E-7;

	reaction_N_Degradation=compartment_Lumen*KSA(reaction_N_Degradation_K, x(7), x(2));

% Reaction: id = E_Damage, name = E Damage	% Local Parameter:   id =  v, name = v
	reaction_E_Damage_v=1.59920673150176E-6;
	% Local Parameter:   id =  k1, name = k1
	reaction_E_Damage_k1=1.1E-5;
	% Local Parameter:   id =  k2, name = k2
	reaction_E_Damage_k2=2.3381277077344E-6;
	% Local Parameter:   id =  k3, name = k3
	reaction_E_Damage_k3=62.5911647602982;

	reaction_E_Damage=compartment_Epithelium*Rate_Law_for_E_damage(reaction_E_Damage_v, x(8), reaction_E_Damage_k1, x(7), reaction_E_Damage_k2, x(13), reaction_E_Damage_k3, x(11));

% Reaction: id = eDC_Migration, name = eDC Migration	% Local Parameter:   id =  k1, name = k1
	reaction_eDC_Migration_k1=10.5;

	reaction_eDC_Migration=reaction_eDC_Migration_k1*x(12);

% Reaction: id = eDC_Production, name = eDC Production	% Local Parameter:   id =  k, name = k
	reaction_eDC_Production_k=0.55;

	reaction_eDC_Production=Rate_Law_for_Effector_DC_Production_1(reaction_eDC_Production_k, x(1));

% Reaction: id = Cdiff_Death, name = Cdiff Death	% Local Parameter:   id =  K, name = K
	reaction_Cdiff_Death_K=6.27092296294148E-10;
	% Local Parameter:   id =  m2, name = m2
	reaction_Cdiff_Death_m2=594.896546415159;
	% Local Parameter:   id =  m3, name = m3
	reaction_Cdiff_Death_m3=0.102702503781515;

	reaction_Cdiff_Death=compartment_Lumen*Rate_Law_for_CD_Lumen_death(reaction_Cdiff_Death_K, x(1), x(11), reaction_Cdiff_Death_m2, x(7), reaction_Cdiff_Death_m3, x(6));

% Reaction: id = N_Activation_Migration, name = N Activation/Migration	% Local Parameter:   id =  v, name = v
	reaction_N_Activation_Migration_v=5.29827880572231E-5;
	% Local Parameter:   id =  k1, name = k1
	reaction_N_Activation_Migration_k1=0.120935308788409;
	% Local Parameter:   id =  k2, name = k2
	reaction_N_Activation_Migration_k2=0.171190728888258;
	% Local Parameter:   id =  k3, name = k3
	reaction_N_Activation_Migration_k3=0.129717307334483;

	reaction_N_Activation_Migration=Rate_Law_for_N_Activation_Migration(reaction_N_Activation_Migration_v, const_species_N_LP, x(1), reaction_N_Activation_Migration_k1, x(9), reaction_N_Activation_Migration_k2, x(13), reaction_N_Activation_Migration_k3, x(15));

% Reaction: id = Cdiff_Growth, name = Cdiff Growth	% Local Parameter:   id =  K, name = K
	reaction_Cdiff_Growth_K=5.0E-11;

	reaction_Cdiff_Growth=compartment_Lumen*KSA(reaction_Cdiff_Growth_K, x(1), x(6));

% Reaction: id = Treg_Migration, name = Treg Migration	% Local Parameter:   id =  k1, name = k1
	reaction_Treg_Migration_k1=5.5;

	reaction_Treg_Migration=reaction_Treg_Migration_k1*x(17);

% Reaction: id = Th1_Migration, name = Th1 Migration	% Local Parameter:   id =  k1, name = k1
	reaction_Th1_Migration_k1=1.459;

	reaction_Th1_Migration=reaction_Th1_Migration_k1*x(19);

% Reaction: id = Th17_Plasticity, name = Th17 Plasticity	% Local Parameter:   id =  k1, name = k1
	reaction_Th17_Plasticity_k1=1.27393226093773;
	% Local Parameter:   id =  k2, name = k2
	reaction_Th17_Plasticity_k2=0.0020401460213434;

	reaction_Th17_Plasticity=compartment_LP*Rate_Law_for_Th17plas(reaction_Th17_Plasticity_k1, x(13), reaction_Th17_Plasticity_k2, x(1), x(15));

% Reaction: id = Th17_Migration, name = Th17 Migration	% Local Parameter:   id =  k1, name = k1
	reaction_Th17_Migration_k1=2.50454427171444;

	reaction_Th17_Migration=reaction_Th17_Migration_k1*x(18);

% Reaction: id = E_Inflame, name = E Inflame	% Local Parameter:   id =  K, name = K
	reaction_E_Inflame_K=1.71079818745428E-4;

	reaction_E_Inflame=compartment_Epithelium*KSA(reaction_E_Inflame_K, x(8), x(1));

% Reaction: id = E_i_Damage, name = E_i Damage	% Local Parameter:   id =  v, name = v
	reaction_E_i_Damage_v=0.065;
	% Local Parameter:   id =  k1, name = k1
	reaction_E_i_Damage_k1=0.006;
	% Local Parameter:   id =  k2, name = k2
	reaction_E_i_Damage_k2=0.0106698310809694;
	% Local Parameter:   id =  k3, name = k3
	reaction_E_i_Damage_k3=1.16013457036959E-6;

	reaction_E_i_Damage=compartment_Epithelium*Rate_Law_for_E_damage(reaction_E_i_Damage_v, x(10), reaction_E_i_Damage_k1, x(7), reaction_E_i_Damage_k2, x(13), reaction_E_i_Damage_k3, x(11));

% Reaction: id = M_Activation, name = M Activation	% Local Parameter:   id =  K, name = K
	reaction_M_Activation_K=4.5E-5;
	% Local Parameter:   id =  e1, name = e1
	reaction_M_Activation_e1=2.0;
	% Local Parameter:   id =  e2, name = e2
	reaction_M_Activation_e2=0.092308585205372;

	reaction_M_Activation=Rate_Law_for_M_Activation(reaction_M_Activation_K, const_species_M0, reaction_M_Activation_e1, x(13), x(1), reaction_M_Activation_e2, x(15));

% Reaction: id = M_Death, name = M Death	% Local Parameter:   id =  k1, name = k1
	reaction_M_Death_k1=20.0;

	reaction_M_Death=compartment_Epithelium*reaction_M_Death_k1*x(11);

% Reaction: id = Commensal_Regrowth, name = Commensal Regrowth	% Local Parameter:   id =  k1, name = k1
	reaction_Commensal_Regrowth_k1=4.5E-10;
	% Local Parameter:   id =  k2, name = k2
	reaction_Commensal_Regrowth_k2=0.156287382551622;

	reaction_Commensal_Regrowth=compartment_Lumen*Rate_Law_for_Commensal_Regrowth(reaction_Commensal_Regrowth_k1, x(2), x(7), x(10), reaction_Commensal_Regrowth_k2, x(3));

% Reaction: id = E_Heal, name = E Heal	% Local Parameter:   id =  k1, name = k1
	reaction_E_Heal_k1=4000.0;

	reaction_E_Heal=compartment_Epithelium*reaction_E_Heal_k1*x(9);

% Reaction: id = tDC_Production, name = tDC Production	% Local Parameter:   id =  K, name = K
	reaction_tDC_Production_K=2.0E-4;
	% Local Parameter:   id =  k1, name = k1
	reaction_tDC_Production_k1=559.297141527983;
	% Local Parameter:   id =  k2, name = k2
	reaction_tDC_Production_k2=26.8747332769592;

	reaction_tDC_Production=Rate_Law_for_tDC_Production(reaction_tDC_Production_K, x(1), reaction_tDC_Production_k1, x(2), x(3), reaction_tDC_Production_k2, x(8), x(10));

% Reaction: id = tDC_Migration, name = tDC Migration	% Local Parameter:   id =  k1, name = k1
	reaction_tDC_Migration_k1=3.65;

	reaction_tDC_Migration=compartment_Lumen*reaction_tDC_Migration_k1*x(4);

% Reaction: id = tDC_Degradation, name = tDC Degradation	% Local Parameter:   id =  k, name = k
	reaction_tDC_Degradation_k=9.5E-4;

	reaction_tDC_Degradation=compartment_Lumen*Rate_Law_for_Effector_DC_Production_1(reaction_tDC_Degradation_k, x(5));

% Reaction: id = Th17_Differentiation, name = Th17 Differentiation	% Local Parameter:   id =  k1, name = k1
	reaction_Th17_Differentiation_k1=2255.80469507059;

	reaction_Th17_Differentiation=compartment_MLN*reaction_Th17_Differentiation_k1*x(16);

% Reaction: id = Th1_Differentiation, name = Th1 Differentiation	% Local Parameter:   id =  K, name = K
	reaction_Th1_Differentiation_K=0.0430096;
	% Local Parameter:   id =  k2, name = k2
	reaction_Th1_Differentiation_k2=9.65568121975566E-5;
	% Local Parameter:   id =  k1, name = k1
	reaction_Th1_Differentiation_k1=0.0648415756801505;

	reaction_Th1_Differentiation=compartment_MLN*Rate_Law_for_eDC(reaction_Th1_Differentiation_K, x(16), x(3), x(2), reaction_Th1_Differentiation_k2, x(8), reaction_Th1_Differentiation_k1);

% Reaction: id = Treg_Differentiation, name = Treg Differentiation	% Local Parameter:   id =  k1, name = k1
	reaction_Treg_Differentiation_k1=53.9130568911728;

	reaction_Treg_Differentiation=reaction_Treg_Differentiation_k1*x(5);

% Reaction: id = Commensal_Harmful_Death, name = Commensal Harmful Death	% Local Parameter:   id =  K, name = K
	reaction_Commensal_Harmful_Death_K=2.33225E-5;
	% Local Parameter:   id =  A1, name = A1
	reaction_Commensal_Harmful_Death_A1=0.00478;
	% Local Parameter:   id =  A2, name = A2
	reaction_Commensal_Harmful_Death_A2=0.18;

	reaction_Commensal_Harmful_Death=compartment_Lumen*Rate_Law_for_Commensal_Harmful_Death_1(reaction_Commensal_Harmful_Death_K, x(6), const_species_N_LP, reaction_Commensal_Harmful_Death_A1, x(10), reaction_Commensal_Harmful_Death_A2);

% Reaction: id = Commensal_Death, name = Commensal Death	% Local Parameter:   id =  k1, name = k1
	reaction_Commensal_Death_k1=0.0933277452272273;

	reaction_Commensal_Death=compartment_Lumen*reaction_Commensal_Death_k1*x(3);

% Reaction: id = E_i_Natural_Death, name = E_i Natural Death	% Local Parameter:   id =  k1, name = k1
	reaction_E_i_Natural_Death_k1=2.5;

	reaction_E_i_Natural_Death=compartment_Epithelium*reaction_E_i_Natural_Death_k1*x(10);

% Species:   id = iDC_E, name = iDC_E, constant	const_species_iDC_E=500000.0;

% Species:   id = M0, name = M0, constant	const_species_M0=1714285.71428571;

% Species:   id = N_LP, name = N_LP, constant	const_species_N_LP=714285.714285714;

% Species:   id = nT, name = nT, constant	const_species_nT=1.2E7;

	xdot=zeros(19,1);
	
% Species:   id = Cdiff, name = Cdiff, affected by kineticLaw
	xdot(1) = (1/(compartment_Lumen))*((-1.0 * reaction_eDC_Production) + (-1.0 * reaction_Cdiff_Death) + (-1.0 * reaction_Cdiff_Growth) + ( 2.0 * reaction_Cdiff_Growth) + (-1.0 * reaction_tDC_Production));
	
% Species:   id = Commensal_Beneficial, name = Commensal_Beneficial, affected by kineticLaw
	xdot(2) = (1/(compartment_Lumen))*((-1.0 * reaction_Commensal_Regrowth));
	
% Species:   id = Commensal_Dead, name = Commensal_Dead, affected by kineticLaw
	xdot(3) = (1/(compartment_Lumen))*(( 1.0 * reaction_Commensal_Regrowth) + (-1.0 * reaction_Commensal_Death));
	
% Species:   id = tDC_LP, name = tDC_LP, affected by kineticLaw
	xdot(4) = (1/(compartment_Lumen))*(( 1.0 * reaction_tDC_Production) + (-1.0 * reaction_tDC_Migration));
	
% Species:   id = tDC_MLN, name = tDC_MLN, affected by kineticLaw
	xdot(5) = (1/(compartment_Lumen))*(( 1.0 * reaction_tDC_Migration) + (-1.0 * reaction_tDC_Degradation) + (-1.0 * reaction_Treg_Differentiation));
	
% Species:   id = Commensal_Harmful, name = Commensal_Harmful, affected by kineticLaw
	xdot(6) = (1/(compartment_Lumen))*((-1.0 * reaction_Commensal_Harmful_Death));
	
% Species:   id = N_Lum, name = N_Lum, affected by kineticLaw
	xdot(7) = (1/(compartment_Lumen))*((-1.0 * reaction_N_Degradation) + ( 1.0 * reaction_N_Activation_Migration));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(8) = (1/(compartment_Epithelium))*((-1.0 * reaction_E_Damage) + (-1.0 * reaction_E_Inflame) + ( 1.0 * reaction_E_Heal));
	
% Species:   id = E_d, name = E_d, affected by kineticLaw
	xdot(9) = (1/(compartment_Epithelium))*(( 1.0 * reaction_E_Damage) + ( 1.0 * reaction_E_i_Damage) + (-1.0 * reaction_E_Heal) + ( 1.0 * reaction_E_i_Natural_Death));
	
% Species:   id = E_i, name = E_i, affected by kineticLaw
	xdot(10) = (1/(compartment_Epithelium))*(( 1.0 * reaction_E_Inflame) + (-1.0 * reaction_E_i_Damage) + (-1.0 * reaction_E_i_Natural_Death));
	
% Species:   id = M_LP, name = M_LP, affected by kineticLaw
	xdot(11) = (1/(compartment_Epithelium))*(( 1.0 * reaction_M_Activation) + (-1.0 * reaction_M_Death));
	
% Species:   id = eDC_LP, name = eDC_LP, affected by kineticLaw
	xdot(12) = (1/(compartment_LP))*((-1.0 * reaction_eDC_Migration) + ( 1.0 * reaction_eDC_Production));
	
% Species:   id = Th17_LP, name = Th17_LP, affected by kineticLaw
	xdot(13) = (1/(compartment_LP))*((-1.0 * reaction_Th17_Degradation) + (-1.0 * reaction_Th17_Plasticity) + ( 1.0 * reaction_Th17_Migration));
	
% Species:   id = Th1_LP, name = Th1_LP, affected by kineticLaw
	xdot(14) = (1/(compartment_LP))*((-1.0 * reaction_Th1_Degradation) + ( 1.0 * reaction_Th1_Migration));
	
% Species:   id = iTreg_LP, name = iTreg_LP, affected by kineticLaw
	xdot(15) = (1/(compartment_LP))*((-1.0 * reaction_Treg_Degradation) + ( 1.0 * reaction_Treg_Migration) + ( 1.0 * reaction_Th17_Plasticity));
	
% Species:   id = eDC_MLN, name = eDC_MLN, affected by kineticLaw
	xdot(16) = (1/(compartment_MLN))*((-1.0 * reaction_eDC_Degradation) + ( 1.0 * reaction_eDC_Migration) + (-1.0 * reaction_Th17_Differentiation) + (-1.0 * reaction_Th1_Differentiation));
	
% Species:   id = iTreg_MLN, name = iTreg_MLN, affected by kineticLaw
	xdot(17) = (1/(compartment_MLN))*((-1.0 * reaction_Treg_Migration) + ( 1.0 * reaction_Treg_Differentiation));
	
% Species:   id = Th17_MLN, name = Th17_MLN, affected by kineticLaw
	xdot(18) = (1/(compartment_MLN))*((-1.0 * reaction_Th17_Migration) + ( 1.0 * reaction_Th17_Differentiation));
	
% Species:   id = Th1_MLN, name = Th1_MLN, affected by kineticLaw
	xdot(19) = (1/(compartment_MLN))*((-1.0 * reaction_Th1_Migration) + ( 1.0 * reaction_Th1_Differentiation));
end

function z=KSA(K,S,A), z=(K*S*A);end

function z=Rate_Law_for_E_damage(v,S,k1,a1,k2,a2,k3,a3), z=(v*S*(k1*a1+k2*a2+k3*a3));end

function z=Rate_Law_for_Th17plas(k1,s,k2,m2,p), z=(k1*s-k2*m2*p);end

function z=Rate_Law_for_Effector_DC_Production_1(k,S), z=(k*S);end

function z=Rate_Law_for_eDC(K,S,M1,M2,k2,M3,k1), z=(K*S*M1/(k1*M2+k2*M3));end

function z=Rate_Law_for_CD_Lumen_death(K,S,A1,m2,A2,m3,A3), z=(K*S*(A1+m2*A2-m3*A3));end

function z=Rate_Law_for_tDC_Production(K,S,k1,M1,M2,k2,M3,M4), z=(K*S*(k1*M1/M2+k2*M3/(M4+100)));end

function z=Rate_Law_for_M_Activation(K,S,e1,A1,A2,e2,I1), z=(K*S*(e1*A1+A2-e2*I1));end

function z=Rate_Law_for_N_Activation_Migration(v,S,m,k1,A1,k2,A2,k3,I1), z=(v*S*(m*(k1*A1+k2*A2)-k3*I1));end

function z=Rate_Law_for_Commensal_Regrowth(k1,S,m1,m2,k2,P), z=(k1*S*m1*m2-k2*P);end

function z=Rate_Law_for_Commensal_Harmful_Death_1(K,S,m1,A1,m2,A2), z=(K*S*(m1*A1+m2*A2));end

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


