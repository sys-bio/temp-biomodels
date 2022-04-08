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
% Model name = Ueda2001_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6617909980
% is http://identifiers.org/biomodels.db/BIOMD0000000022
% isDescribedBy http://identifiers.org/pubmed/11403560
% isDerivedFrom http://identifiers.org/pubmed/10531060
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.0;
	x0(2) = 0.3;
	x0(3) = 0.4;
	x0(4) = 0.2;
	x0(5) = 0.1;
	x0(6) = 0.6;
	x0(7) = 0.5;
	x0(8) = 0.9;
	x0(9) = 1.0;
	x0(10) = 0.8;
	x0(11) = 0.7;


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

% Compartment: id = Drosophilia, name = Drosophilia, constant
	compartment_Drosophilia=1.0;
% Compartment: id = compartment_0000003, name = cytoplasm, constant
	compartment_compartment_0000003=1.0;
% Compartment: id = compartment_0000002, name = nucleus, constant
	compartment_compartment_0000002=1.0;

% Reaction: id = Reaction1, name = Per transcription	% Local Parameter:   id =  a, name = a
	reaction_Reaction1_a=1.0;
	% Local Parameter:   id =  A1, name = A1
	reaction_Reaction1_A1=0.45;
	% Local Parameter:   id =  B1, name = B1
	reaction_Reaction1_B1=0.0;
	% Local Parameter:   id =  c1, name = C1
	reaction_Reaction1_c1=0.0;
	% Local Parameter:   id =  r1, name = R1
	reaction_Reaction1_r1=1.02;
	% Local Parameter:   id =  s1, name = S1
	reaction_Reaction1_s1=1.45;
	% Local Parameter:   id =  r, name = r
	reaction_Reaction1_r=4.0;

	reaction_Reaction1=compartment_compartment_0000003*(reaction_Reaction1_c1+(reaction_Reaction1_B1+(x(3)/reaction_Reaction1_A1)^reaction_Reaction1_a)*reaction_Reaction1_s1/(1+reaction_Reaction1_B1+(x(3)/reaction_Reaction1_A1)^reaction_Reaction1_a+(x(9)/reaction_Reaction1_r1)^reaction_Reaction1_r));

% Reaction: id = Reaction2, name = non-specific Per mRNA degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction2_D0=0.012;

	reaction_Reaction2=compartment_compartment_0000003*reaction_Reaction2_D0*x(7);

% Reaction: id = Reaction3, name = Tim transcription	% Local Parameter:   id =  a, name = a
	reaction_Reaction3_a=1.0;
	% Local Parameter:   id =  A2, name = A2
	reaction_Reaction3_A2=0.45;
	% Local Parameter:   id =  B2, name = B2
	reaction_Reaction3_B2=0.0;
	% Local Parameter:   id =  c2, name = C2
	reaction_Reaction3_c2=0.0;
	% Local Parameter:   id =  r2, name = R2
	reaction_Reaction3_r2=1.02;
	% Local Parameter:   id =  s3, name = S3
	reaction_Reaction3_s3=1.45;
	% Local Parameter:   id =  r, name = r
	reaction_Reaction3_r=4.0;

	reaction_Reaction3=compartment_compartment_0000003*(reaction_Reaction3_c2+(reaction_Reaction3_B2+(x(3)/reaction_Reaction3_A2)^reaction_Reaction3_a)*reaction_Reaction3_s3/(1+reaction_Reaction3_B2+(x(3)/reaction_Reaction3_A2)^reaction_Reaction3_a+(x(9)/reaction_Reaction3_r2)^reaction_Reaction3_r));

% Reaction: id = Reaction4, name = non-specific Tim mRNA degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction4_D0=0.012;

	reaction_Reaction4=compartment_Drosophilia*reaction_Reaction4_D0*x(11);

% Reaction: id = Reaction5, name = Clk transcription	% Local Parameter:   id =  a, name = a
	reaction_Reaction5_a=1.0;
	% Local Parameter:   id =  A3, name = A3
	reaction_Reaction5_A3=0.8;
	% Local Parameter:   id =  B3, name = B3
	reaction_Reaction5_B3=0.6;
	% Local Parameter:   id =  c3, name = C3
	reaction_Reaction5_c3=0.0;
	% Local Parameter:   id =  r3, name = R3
	reaction_Reaction5_r3=0.89;
	% Local Parameter:   id =  s5, name = S5
	reaction_Reaction5_s5=1.63;
	% Local Parameter:   id =  r, name = r
	reaction_Reaction5_r=4.0;

	reaction_Reaction5=compartment_compartment_0000003*(reaction_Reaction5_c3+(reaction_Reaction5_B3+(x(9)/reaction_Reaction5_A3)^reaction_Reaction5_a)*reaction_Reaction5_s5/(1+reaction_Reaction5_B3+(x(9)/reaction_Reaction5_A3)^reaction_Reaction5_a+(x(3)/reaction_Reaction5_r3)^reaction_Reaction5_r));

% Reaction: id = Reaction6, name = non-specific Clk mRNA degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction6_D0=0.012;

	reaction_Reaction6=compartment_Drosophilia*x(5)*reaction_Reaction6_D0;

% Reaction: id = Reaction7, name = Clk-Cyc nuclear import	% Local Parameter:   id =  k3, name = K3
	reaction_Reaction7_k3=2.0;
	% Local Parameter:   id =  T3, name = T3
	reaction_Reaction7_T3=1.63;

	reaction_Reaction7=compartment_compartment_0000003*x(2)*reaction_Reaction7_T3/(reaction_Reaction7_k3+x(2));

% Reaction: id = Reaction8, name = Clk-Cyc nuclear export	% Local Parameter:   id =  k4, name = k4
	reaction_Reaction8_k4=2.0;
	% Local Parameter:   id =  T4, name = T4
	reaction_Reaction8_T4=0.52;

	reaction_Reaction8=compartment_compartment_0000002*x(3)*reaction_Reaction8_T4/(reaction_Reaction8_k4+x(3));

% Reaction: id = Reaction9, name = Per-Tim nuclear export	% Local Parameter:   id =  k2, name = K2
	reaction_Reaction9_k2=2.0;
	% Local Parameter:   id =  T2, name = T2
	reaction_Reaction9_T2=0.72;

	reaction_Reaction9=compartment_compartment_0000002*x(9)*reaction_Reaction9_T2/(reaction_Reaction9_k2+x(9));

% Reaction: id = Reaction10, name = Per-Tim nuclear import	% Local Parameter:   id =  k1, name = K1
	reaction_Reaction10_k1=2.0;
	% Local Parameter:   id =  T1, name = T1
	reaction_Reaction10_T1=1.73;

	reaction_Reaction10=compartment_compartment_0000003*x(8)*reaction_Reaction10_T1/(reaction_Reaction10_k1+x(8));

% Reaction: id = Reaction11, name = Clk Cyc equilibrium	% Local Parameter:   id =  v3, name = V3
	reaction_Reaction11_v3=1.63;
	% Local Parameter:   id =  parameter_0000073, name = V4
	reaction_Reaction11_parameter_0000073=1.63;

	reaction_Reaction11=compartment_compartment_0000003*(x(4)*reaction_Reaction11_v3*const_species_species_0000012-reaction_Reaction11_parameter_0000073*x(2));

% Reaction: id = Reaction12, name = Per Tim equilibrium	% Local Parameter:   id =  v1, name = V1
	reaction_Reaction12_v1=1.45;
	% Local Parameter:   id =  parameter_0000072, name = V2
	reaction_Reaction12_parameter_0000072=1.45;

	reaction_Reaction12=compartment_compartment_0000003*(x(6)*x(10)*reaction_Reaction12_v1-reaction_Reaction12_parameter_0000072*x(8));

% Reaction: id = Reaction16, name = Tim translation	% Local Parameter:   id =  s4, name = S4
	reaction_Reaction16_s4=0.48;

	reaction_Reaction16=compartment_compartment_0000003*reaction_Reaction16_s4*x(11);

% Reaction: id = Reaction18, name = Clk translation	% Local Parameter:   id =  s6, name = S6
	reaction_Reaction18_s6=0.47;

	reaction_Reaction18=compartment_compartment_0000003*x(5)*reaction_Reaction18_s6;

% Reaction: id = Reaction19, name = Per translation	% Local Parameter:   id =  s2, name = S2
	reaction_Reaction19_s2=0.48;

	reaction_Reaction19=compartment_compartment_0000003*reaction_Reaction19_s2*x(7);

% Reaction: id = Reaction20, name = non-specific Per_cyt degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction20_D0=0.012;

	reaction_Reaction20=compartment_Drosophilia*reaction_Reaction20_D0*x(6);

% Reaction: id = Reaction21, name = non-specific Per-Tim_cyt degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction21_D0=0.012;

	reaction_Reaction21=compartment_compartment_0000003*reaction_Reaction21_D0*x(8);

% Reaction: id = Reaction23, name = non-specific Per-Tim_nuc degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction23_D0=0.012;

	reaction_Reaction23=compartment_compartment_0000002*reaction_Reaction23_D0*x(9);

% Reaction: id = Reaction24, name = non-specific Clk-Cyc_cyt degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction24_D0=0.012;

	reaction_Reaction24=compartment_compartment_0000003*x(2)*reaction_Reaction24_D0;

% Reaction: id = Reaction25, name = non-specific Clk_cyt degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction25_D0=0.012;

	reaction_Reaction25=compartment_compartment_0000003*x(4)*reaction_Reaction25_D0;

% Reaction: id = Reaction26, name = non-specific Clk-Cyc_nuc degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction26_D0=0.012;

	reaction_Reaction26=compartment_compartment_0000002*x(3)*reaction_Reaction26_D0;

% Reaction: id = Reaction27, name = non-specific Tim_cyt degradation	% Local Parameter:   id =  D0, name = D0
	reaction_Reaction27_D0=0.012;

	reaction_Reaction27=compartment_compartment_0000003*reaction_Reaction27_D0*x(10);

% Reaction: id = Reaction28, name = Per mRNA degradation	% Local Parameter:   id =  D1, name = D1
	reaction_Reaction28_D1=0.94;
	% Local Parameter:   id =  L1, name = L1
	reaction_Reaction28_L1=0.3;

	reaction_Reaction28=compartment_compartment_0000003*reaction_Reaction28_D1*x(7)/(reaction_Reaction28_L1+x(7));

% Reaction: id = Reaction29, name = Dbt regulated Per_cyt degradation	% Local Parameter:   id =  D2, name = D2
	reaction_Reaction29_D2=0.44;
	% Local Parameter:   id =  L2, name = L2
	reaction_Reaction29_L2=0.2;

	reaction_Reaction29=compartment_compartment_0000003*reaction_Reaction29_D2*const_species_species_0000013*x(6)/(reaction_Reaction29_L2+x(6));

% Reaction: id = Reaction30, name = Tim mRNA degradation	% Local Parameter:   id =  D3, name = D3
	reaction_Reaction30_D3=0.94;
	% Local Parameter:   id =  L3, name = L3
	reaction_Reaction30_L3=0.3;

	reaction_Reaction30=compartment_compartment_0000003*reaction_Reaction30_D3*x(11)/(reaction_Reaction30_L3+x(11));

% Reaction: id = Reaction31, name = Tim_cyt degradation	% Local Parameter:   id =  D4, name = D4
	reaction_Reaction31_D4=0.44;
	% Local Parameter:   id =  L4, name = L4
	reaction_Reaction31_L4=0.2;

	reaction_Reaction31=compartment_compartment_0000003*reaction_Reaction31_D4*x(10)/(reaction_Reaction31_L4+x(10));

% Reaction: id = Reaction32, name = Per-Tim_cyt degradation	% Local Parameter:   id =  D5, name = D5
	reaction_Reaction32_D5=0.44;
	% Local Parameter:   id =  L5, name = L5
	reaction_Reaction32_L5=0.2;

	reaction_Reaction32=compartment_compartment_0000003*reaction_Reaction32_D5*x(8)/(reaction_Reaction32_L5+x(8));

% Reaction: id = Reaction33, name = Per-Tim_nuc degradation	% Local Parameter:   id =  D6, name = D6
	reaction_Reaction33_D6=0.29;
	% Local Parameter:   id =  L6, name = L6
	reaction_Reaction33_L6=0.2;

	reaction_Reaction33=compartment_compartment_0000002*reaction_Reaction33_D6*x(9)/(reaction_Reaction33_L6+x(9));

% Reaction: id = Reaction34, name = Clk mRNA degradation	% Local Parameter:   id =  D7, name = D7
	reaction_Reaction34_D7=0.54;
	% Local Parameter:   id =  L7, name = L7
	reaction_Reaction34_L7=0.13;

	reaction_Reaction34=compartment_compartment_0000003*x(5)*reaction_Reaction34_D7/(x(5)+reaction_Reaction34_L7);

% Reaction: id = Reaction35, name = Clk_cyt degradation	% Local Parameter:   id =  D8, name = D8
	reaction_Reaction35_D8=0.6;
	% Local Parameter:   id =  L8, name = L8
	reaction_Reaction35_L8=0.2;

	reaction_Reaction35=compartment_compartment_0000003*x(4)*reaction_Reaction35_D8/(x(4)+reaction_Reaction35_L8);

% Reaction: id = Reaction36, name = Clk-Cyc_cyt degradation	% Local Parameter:   id =  D9, name = D9
	reaction_Reaction36_D9=0.6;
	% Local Parameter:   id =  L9, name = L9
	reaction_Reaction36_L9=0.2;

	reaction_Reaction36=compartment_compartment_0000003*x(2)*reaction_Reaction36_D9/(x(2)+reaction_Reaction36_L9);

% Reaction: id = Reaction37	% Local Parameter:   id =  D10, name = D10
	reaction_Reaction37_D10=0.3;
	% Local Parameter:   id =  L10, name = L10
	reaction_Reaction37_L10=0.2;

	reaction_Reaction37=compartment_compartment_0000002*x(3)*reaction_Reaction37_D10/(x(3)+reaction_Reaction37_L10);

% Species:   id = species_0000012, name = Cyc_cyt, constant	const_species_species_0000012=1.0;

% Species:   id = species_0000013, name = Dbt_cyt, constant	const_species_species_0000013=1.0;

	xdot=zeros(11,1);
	
% Species:   id = EmptySet, name = EmptySet
%WARNING speciesID: EmptySet, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = CCc, name = Clk-Cyc_cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000003))*((-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction24) + (-1.0 * reaction_Reaction36));
	
% Species:   id = CCn, name = Clk-Cyc_nuc, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000002))*(( 1.0 * reaction_Reaction7) + (-1.0 * reaction_Reaction8) + (-1.0 * reaction_Reaction26) + (-1.0 * reaction_Reaction37));
	
% Species:   id = Clkc, name = Clk_cyt, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0000003))*((-1.0 * reaction_Reaction11) + ( 1.0 * reaction_Reaction18) + (-1.0 * reaction_Reaction25) + (-1.0 * reaction_Reaction35));
	
% Species:   id = Clkm, name = Clk_mRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000003))*(( 1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction34));
	
% Species:   id = Perc, name = Per_cyt, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0000003))*((-1.0 * reaction_Reaction12) + ( 1.0 * reaction_Reaction19) + (-1.0 * reaction_Reaction20) + (-1.0 * reaction_Reaction29));
	
% Species:   id = Perm, name = Per_mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0000003))*(( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction28));
	
% Species:   id = PTc, name = Per-Tim_cyt, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0000003))*(( 1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction21) + (-1.0 * reaction_Reaction32));
	
% Species:   id = PTn, name = Per-Tim_nuc, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0000002))*((-1.0 * reaction_Reaction9) + ( 1.0 * reaction_Reaction10) + (-1.0 * reaction_Reaction23) + (-1.0 * reaction_Reaction33));
	
% Species:   id = Timc, name = Tim_cyt, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0000003))*((-1.0 * reaction_Reaction12) + ( 1.0 * reaction_Reaction16) + (-1.0 * reaction_Reaction27) + (-1.0 * reaction_Reaction31));
	
% Species:   id = Timm, name = Tim_mRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0000003))*(( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction4) + (-1.0 * reaction_Reaction30));
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


