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
% Model name = Koo2013 - Shear stress induced NO production - Model 4
%
% is http://identifiers.org/biomodels.db/MODEL1302180006
% is http://identifiers.org/biomodels.db/BIOMD0000000467
% isDescribedBy http://identifiers.org/pubmed/23708369
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 1.723;
	x0(2) = 0.0415;
	x0(3) = 2.827;
	x0(4) = 347.52;
	x0(5) = 2.12;
	x0(6) = 34.98;
	x0(7) = 7635.36;
	x0(8) = 199987.0;
	x0(9) = 1.037;
	x0(10) = 0.0089;
	x0(11) = 10.98;
	x0(12) = 0.106;
	x0(13) = 500000.0;
	x0(14) = 0.0;
	x0(15) = 0.643;
	x0(16) = 0.083;
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
% Compartment: id = c1, name = Cell, constant
	compartment_c1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.004;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=10.3;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.08;
% Parameter:   id =  k2r, name = k2r
	global_par_k2r=1152.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.015;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.5E-4;
% Parameter:   id =  k3r, name = k3r
	global_par_k3r=1.5;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1;
% Parameter:   id =  Km10, name = Km10
	global_par_Km10=5.0;
% Parameter:   id =  Km10r, name = Km10r
	global_par_Km10r=20.0;
% Parameter:   id =  V10r, name = V10r
	global_par_V10r=4.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.002;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.5;
% Parameter:   id =  kD, name = kD
	global_par_kD=9.45E-5;
% Parameter:   id =  k5, name = k5
	global_par_k5=115.2;

% Reaction: id = re37
	reaction_re37=global_par_k4*x(3)*x(6);

% Reaction: id = re38
	reaction_re38=global_par_k3*x(6)*x(4)-global_par_k3r*x(5);

% Reaction: id = re41
	reaction_re41=global_par_k1*const_species_s3*x(7)-global_par_k1r*x(4);

% Reaction: id = re42
	reaction_re42=global_par_k2*const_species_s3*x(4)-global_par_k2r*x(3);

% Reaction: id = re50
	reaction_re50=global_par_k5*x(2)-global_par_k2*const_species_s3*x(5);

% Reaction: id = re51
	reaction_re51=global_par_k6*x(2)*x(8);

% Reaction: id = re52
	reaction_re52=global_par_k5*x(9)-global_par_k2*const_species_s3*x(11);

% Reaction: id = re53
	reaction_re53=global_par_k7*x(11);

% Reaction: id = re54
	reaction_re54=global_par_k5*x(10)-global_par_k2*const_species_s3*x(12);

% Reaction: id = re55
	reaction_re55=global_par_k10*x(9)*x(1)/(x(9)+global_par_Km10)-global_par_V10r*x(10)/(x(10)+global_par_Km10r);

% Reaction: id = re56
	reaction_re56=global_par_k10*x(11)*x(1)/(x(11)+global_par_Km10)-global_par_V10r*x(12)/(x(12)+global_par_Km10r);

% Reaction: id = re69	% Local Parameter:   id =  kCaM, name = kCaM
	reaction_re69_kCaM=17.0;
	% Local Parameter:   id =  kp, name = kp
	reaction_re69_kp=5.0;
	% Local Parameter:   id =  kpCaM, name = kpCaM
	reaction_re69_kpCaM=17.0;

	reaction_re69=reaction_re69_kCaM*(x(2)+x(9))+reaction_re69_kp*(x(12)+x(15))+reaction_re69_kpCaM*x(10);

% Reaction: id = re70
	reaction_re70=global_par_V10r*x(15)/(x(15)+global_par_Km10r);

% Reaction: id = re71
	reaction_re71=global_par_k7*x(16);

% Reaction: id = re72
	reaction_re72=global_par_k3r*x(12)-global_par_k3*x(15)*x(4);

% Reaction: id = re131
	reaction_re131=global_par_kD*x(6);

% Reaction: id = re132
	reaction_re132=global_par_kD*x(2);

% Reaction: id = re133
	reaction_re133=global_par_kD*x(5);

% Reaction: id = re134
	reaction_re134=global_par_kD*x(16);

% Reaction: id = re135
	reaction_re135=global_par_kD*x(15);

% Reaction: id = re136
	reaction_re136=global_par_kD*x(11);

% Reaction: id = re137
	reaction_re137=global_par_kD*x(12);

% Reaction: id = re138
	reaction_re138=global_par_kD*x(9);

% Reaction: id = re139
	reaction_re139=global_par_kD*x(10);

% Species:   id = s3, name = Ca_c, constant	const_species_s3=117.2;

	xdot=zeros(19,1);
	
% Species:   id = s27, name = pp-AKT:PI3P
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s45, name = eNOS-CaM-Ca4, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_re37) + (-1.0 * reaction_re50) + (-1.0 * reaction_re51) + (-1.0 * reaction_re132);
	
% Species:   id = s47, name = CaM-Ca4, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re37) + ( 1.0 * reaction_re42) + ( 1.0 * reaction_re132) + ( 1.0 * reaction_re138) + ( 1.0 * reaction_re139);
	
% Species:   id = s48, name = CaM-Ca2, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_re38) + ( 1.0 * reaction_re41) + (-1.0 * reaction_re42) + ( 1.0 * reaction_re72) + ( 1.0 * reaction_re133) + ( 1.0 * reaction_re136) + ( 1.0 * reaction_re137);
	
% Species:   id = s50, name = eNOS-CaM-Ca2, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_re38) + ( 1.0 * reaction_re50) + ( 1.0 * reaction_re53) + (-1.0 * reaction_re133);
	
% Species:   id = s51, name = eNOS-Cav-1, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_re37) + (-1.0 * reaction_re38) + ( 1.0 * reaction_re71) + (-1.0 * reaction_re131);
	
% Species:   id = s52, name = Calmodulin, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re41);
	
% Species:   id = s57, name = Hsp90, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_re51) + ( 1.0 * reaction_re53) + ( 1.0 * reaction_re71) + ( 1.0 * reaction_re134) + ( 1.0 * reaction_re135) + ( 1.0 * reaction_re136) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re138) + ( 1.0 * reaction_re139);
	
% Species:   id = s58, name = Hsp90-eNOS-CaM-Ca4, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re51) + (-1.0 * reaction_re52) + (-1.0 * reaction_re55) + (-1.0 * reaction_re138);
	
% Species:   id = s60, name = Hsp90-p-eNOS-CaM-Ca4, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_re54) + ( 1.0 * reaction_re55) + (-1.0 * reaction_re139);
	
% Species:   id = s61, name = Hsp90-eNOS-CaM-Ca2, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_re52) + (-1.0 * reaction_re53) + (-1.0 * reaction_re56) + (-1.0 * reaction_re136);
	
% Species:   id = s62, name = Hsp90-p-eNOS-CaM-Ca2, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re54) + ( 1.0 * reaction_re56) + (-1.0 * reaction_re72) + (-1.0 * reaction_re137);
	
% Species:   id = s63, name = L-Arg, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_re69);
	
% Species:   id = s64, name = NO, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re69);
	
% Species:   id = s65, name = Hsp90-p-eNOS, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_re70) + ( 1.0 * reaction_re72) + (-1.0 * reaction_re135);
	
% Species:   id = s66, name = Hsp90-eNOS, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_re70) + (-1.0 * reaction_re71) + (-1.0 * reaction_re134);
	
% Species:   id = s116, name = sa49_degraded, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_re131);
	
% Species:   id = s117, name = s117, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_re132) + ( 1.0 * reaction_re133);
	
% Species:   id = s118, name = s118, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_re134) + ( 1.0 * reaction_re135);
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


