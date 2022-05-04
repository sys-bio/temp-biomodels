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
% Model name = Smolen2004_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6619579403
% is http://identifiers.org/biomodels.db/BIOMD0000000034
% isDescribedBy http://identifiers.org/pubmed/15111397
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(1) = 0.001;
	x0(2) = 0.001;
	x0(3) = 0.001;
	x0(4) = 0.001;
	x0(5) = 0.001;
	x0(6) = 0.001;
	x0(7) = 0.001;
	x0(8) = 0.001;
	x0(9) = 0.001;


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

% Compartment: id = compartment_0000002, name = cytoplasm, constant
	compartment_compartment_0000002=1.0;
% Compartment: id = compartment_0000001, name = nucleus, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  parameter_0000001, name = ACvri
% Parameter:   id =  parameter_0000002, name = ACper
% Parameter:   id =  parameter_0000003, name = ACpdp
% Parameter:   id =  parameter_0000005, name = Kpv
	global_par_parameter_0000005=0.2;
% Parameter:   id =  parameter_0000006, name = Kpp
	global_par_parameter_0000006=0.24;
% Parameter:   id =  parameter_0000007, name = Kppd
	global_par_parameter_0000007=0.1;
% Parameter:   id =  parameter_0000008, name = Kvc
	global_par_parameter_0000008=0.54;
% Parameter:   id =  parameter_0000010, name = Kpdc
	global_par_parameter_0000010=0.54;
% Parameter:   id =  parameter_0000011, name = Kcv
	global_par_parameter_0000011=0.083;
% Parameter:   id =  parameter_0000012, name = Kcp
	global_par_parameter_0000012=0.134;
% Parameter:   id =  parameter_0000013, name = Kcpd
	global_par_parameter_0000013=0.248;
% Parameter:   id =  parameter_0000014, name = Kvdeac
	global_par_parameter_0000014=0.2124;
% Parameter:   id =  parameter_0000015, name = Kpdeac
	global_par_parameter_0000015=0.2124;
% Parameter:   id =  parameter_0000016, name = Kpddeac
	global_par_parameter_0000016=0.2124;
% Parameter:   id =  parameter_0000017, name = Fv
	global_par_parameter_0000017=1.062;
% Parameter:   id =  parameter_0000018, name = Fp
	global_par_parameter_0000018=1.062;
% Parameter:   id =  parameter_0000019, name = Fpd
	global_par_parameter_0000019=1.062;
% Parameter:   id =  parameter_0000020, name = OPvri
% Parameter:   id =  parameter_0000021, name = OPper
% Parameter:   id =  parameter_0000022, name = OPpdp
% Parameter:   id =  parameter_0000023, name = Tvriop
	global_par_parameter_0000023=2.8249;
% Parameter:   id =  parameter_0000024, name = Tperop
	global_par_parameter_0000024=2.8249;
% Parameter:   id =  parameter_0000025, name = Tpdpop
	global_par_parameter_0000025=2.8249;
% Parameter:   id =  parameter_0000026, name = N
	global_par_parameter_0000026=5.0;
% Parameter:   id =  parameter_0000027, name = Vper
	global_par_parameter_0000027=10.62;
% Parameter:   id =  parameter_0000028, name = Vvri
	global_par_parameter_0000028=76.464;
% Parameter:   id =  parameter_0000029, name = Vpdp
	global_par_parameter_0000029=344.09;
% Parameter:   id =  parameter_0000030, name = Vclk
	global_par_parameter_0000030=1.062;
% Parameter:   id =  parameter_0000031, name = Rpbas
	global_par_parameter_0000031=0.02124;
% Parameter:   id =  parameter_0000032, name = Rvbas
	global_par_parameter_0000032=0.19116;
% Parameter:   id =  parameter_0000033, name = Rcbas
	global_par_parameter_0000033=0.001062;
% Parameter:   id =  parameter_0000034, name = Rpdbas
	global_par_parameter_0000034=0.38232;
% Parameter:   id =  parameter_0000036, name = Vdclk
	global_par_parameter_0000036=0.2124;
% Parameter:   id =  parameter_0000037, name = vdvri
	global_par_parameter_0000037=0.7434;
% Parameter:   id =  parameter_0000038, name = vdpdp
	global_par_parameter_0000038=0.6903;
% Parameter:   id =  parameter_0000039, name = Tdelay
	global_par_parameter_0000039=2.8249;
% Parameter:   id =  parameter_0000040, name = Vpcyt
	global_par_parameter_0000040=1.6992;
% Parameter:   id =  parameter_0000041, name = Kpcyt
	global_par_parameter_0000041=0.25;
% Parameter:   id =  parameter_0000042, name = Vpnuc
	global_par_parameter_0000042=0.3186;
% Parameter:   id =  parameter_0000043, name = Kpnuc
	global_par_parameter_0000043=0.001;
% Parameter:   id =  parameter_0000044, name = Vtrans
	global_par_parameter_0000044=1.6992;
% Parameter:   id =  parameter_0000045, name = Ktrans
	global_par_parameter_0000045=0.25;
% Parameter:   id =  parameter_0000046, name = Vdegp
	global_par_parameter_0000046=5.31;
% Parameter:   id =  parameter_0000047, name = Kdegp
	global_par_parameter_0000047=0.01;
% Parameter:   id =  parameter_0000048, name = kd
	global_par_parameter_0000048=0.00531;
% rateRule: variable = parameter_0000001
global_par_parameter_0000001 = x(10);
% rateRule: variable = parameter_0000002
global_par_parameter_0000002 = x(11);
% rateRule: variable = parameter_0000003
global_par_parameter_0000003 = x(12);
% rateRule: variable = parameter_0000020
global_par_parameter_0000020 = x(13);
% rateRule: variable = parameter_0000021
global_par_parameter_0000021 = x(14);
% rateRule: variable = parameter_0000022
global_par_parameter_0000022 = x(15);

% Reaction: id = reaction_0000001, name = Per production
	reaction_reaction_0000001=compartment_compartment_0000002*(global_par_parameter_0000027*global_par_parameter_0000021+global_par_parameter_0000031);

% Reaction: id = reaction_0000002, name = Vri production
	reaction_reaction_0000002=compartment_compartment_0000001*(global_par_parameter_0000028*global_par_parameter_0000020+global_par_parameter_0000032);

% Reaction: id = reaction_0000003, name = Pdp production
	reaction_reaction_0000003=compartment_compartment_0000001*delay(global_par_parameter_0000029*global_par_parameter_0000022+global_par_parameter_0000034, global_par_parameter_0000039);

% Reaction: id = reaction_0000004, name = Clk production
	reaction_reaction_0000004=compartment_compartment_0000001*(global_par_parameter_0000030*x(9)^2/(x(9)^2+global_par_parameter_0000010^2)*global_par_parameter_0000008^2/(x(7)^2+global_par_parameter_0000008^2)+global_par_parameter_0000033);

% Reaction: id = reaction_0000005, name = Clk specific degradation
	reaction_reaction_0000005=compartment_compartment_0000001*global_par_parameter_0000036*x(8);

% Reaction: id = reaction_0000006, name = Pdp specific degradation
	reaction_reaction_0000006=compartment_compartment_0000001*global_par_parameter_0000038*x(9);

% Reaction: id = reaction_0000007, name = Vri specific degradation
	reaction_reaction_0000007=compartment_compartment_0000001*global_par_parameter_0000037*x(7);

% Reaction: id = reaction_0000008, name = first cytoplasmic Per phosphorylation
	reaction_reaction_0000008=compartment_compartment_0000002*global_par_parameter_0000040*x(4)/(global_par_parameter_0000041+x(4));

% Reaction: id = reaction_0000009, name = second cytoplasmic Per phosphorylation
	reaction_reaction_0000009=compartment_compartment_0000002*global_par_parameter_0000040*x(5)/(global_par_parameter_0000041+x(5));

% Reaction: id = reaction_0000010, name = Per nuclear transport
	reaction_reaction_0000010=compartment_compartment_0000002*global_par_parameter_0000044*x(6)/(global_par_parameter_0000045+x(6));

% Reaction: id = reaction_0000011, name = first nuclear Per phosphorylation
	reaction_reaction_0000011=compartment_compartment_0000001*global_par_parameter_0000042*x(1)/(global_par_parameter_0000043+x(1));

% Reaction: id = reaction_0000012, name = second nuclear Rer phosphorylation
	reaction_reaction_0000012=compartment_compartment_0000001*global_par_parameter_0000042*x(2)/(global_par_parameter_0000043+x(2));

% Reaction: id = reaction_0000013, name = Per specific degradation
	reaction_reaction_0000013=compartment_compartment_0000001*global_par_parameter_0000046*x(3)/(global_par_parameter_0000047+x(3));

% Reaction: id = reaction_0000014, name = Clk aspecific degradation
	reaction_reaction_0000014=compartment_compartment_0000001*global_par_parameter_0000048*x(8);

% Reaction: id = reaction_0000015, name = Pdp aspecific degradation
	reaction_reaction_0000015=compartment_compartment_0000001*global_par_parameter_0000048*x(9);

% Reaction: id = reaction_0000016, name = Vri aspecific degradation
	reaction_reaction_0000016=compartment_compartment_0000001*global_par_parameter_0000048*x(7);

% Reaction: id = reaction_0000017, name = Per_cyt aspecific degradation
	reaction_reaction_0000017=compartment_compartment_0000002*global_par_parameter_0000048*x(4);

% Reaction: id = reaction_0000018, name = Per-P_cyt aspecific degradation
	reaction_reaction_0000018=compartment_compartment_0000002*global_par_parameter_0000048*x(5);

% Reaction: id = reaction_0000019, name = Per-PP_cyt aspecific degradation
	reaction_reaction_0000019=compartment_compartment_0000002*global_par_parameter_0000048*x(6);

% Reaction: id = reaction_0000020, name = Per_nuc aspecific degradation
	reaction_reaction_0000020=compartment_compartment_0000001*global_par_parameter_0000048*x(1);

% Reaction: id = reaction_0000021, name = Per-P_nuc aspecific degradation
	reaction_reaction_0000021=compartment_compartment_0000001*global_par_parameter_0000048*x(2);

% Reaction: id = reaction_0000022, name = Per-PP_nuc aspecific degradation
	reaction_reaction_0000022=compartment_compartment_0000001*global_par_parameter_0000048*x(3);

	xdot=zeros(15,1);
	% rateRule: variable = parameter_0000001
	xdot(10) = global_par_parameter_0000017*x(8)/(x(8)+global_par_parameter_0000011)*global_par_parameter_0000005/(global_par_parameter_0000005+x(1)+x(2)+x(3))*(1-global_par_parameter_0000001)-global_par_parameter_0000014*global_par_parameter_0000001;
	% rateRule: variable = parameter_0000002
	xdot(11) = global_par_parameter_0000018*x(8)/(x(8)+global_par_parameter_0000012)*global_par_parameter_0000006/(global_par_parameter_0000006+x(1)+x(2)+x(3))*(1-global_par_parameter_0000002)-global_par_parameter_0000015*global_par_parameter_0000002;
	% rateRule: variable = parameter_0000003
	xdot(12) = global_par_parameter_0000019*x(8)/(x(8)+global_par_parameter_0000013)*global_par_parameter_0000007/(global_par_parameter_0000007+x(1)+x(2)+x(3))*(1-global_par_parameter_0000003)-global_par_parameter_0000016*global_par_parameter_0000003;
	% rateRule: variable = parameter_0000020
	xdot(13) = (global_par_parameter_0000001^global_par_parameter_0000026-global_par_parameter_0000020)/global_par_parameter_0000023;
	% rateRule: variable = parameter_0000021
	xdot(14) = (global_par_parameter_0000002^global_par_parameter_0000026-global_par_parameter_0000021)/global_par_parameter_0000024;
	% rateRule: variable = parameter_0000022
	xdot(15) = (global_par_parameter_0000003^global_par_parameter_0000026-global_par_parameter_0000022)/global_par_parameter_0000025;
	
% Species:   id = species_0000001, name = P0nuc, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000010) + (-1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000020));
	
% Species:   id = species_0000002, name = P1nuc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000011) + (-1.0 * reaction_reaction_0000012) + (-1.0 * reaction_reaction_0000021));
	
% Species:   id = species_0000003, name = P2nuc, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000012) + (-1.0 * reaction_reaction_0000013) + (-1.0 * reaction_reaction_0000022));
	
% Species:   id = species_0000004, name = P0cyt, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0000002))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000017));
	
% Species:   id = species_0000005, name = P1cyt, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000002))*(( 1.0 * reaction_reaction_0000008) + (-1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000018));
	
% Species:   id = species_0000006, name = P2cyt, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0000002))*(( 1.0 * reaction_reaction_0000009) + (-1.0 * reaction_reaction_0000010) + (-1.0 * reaction_reaction_0000019));
	
% Species:   id = species_0000007, name = VRI, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000007) + (-1.0 * reaction_reaction_0000016));
	
% Species:   id = species_0000008, name = CLK, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000005) + (-1.0 * reaction_reaction_0000014));
	
% Species:   id = species_0000009, name = PDP, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000006) + (-1.0 * reaction_reaction_0000015));
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


