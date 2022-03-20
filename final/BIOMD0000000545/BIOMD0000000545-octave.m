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
% Model name = Ouyang2014 - photomorphogenic UV-B signalling network
%
% is http://identifiers.org/biomodels.db/MODEL1407230000
% is http://identifiers.org/biomodels.db/BIOMD0000000545
% isDescribedBy http://identifiers.org/pubmed/25049395
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.2;
	x0(2) = 10.0;
	x0(3) = 2.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 20.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 4.2;
	x0(11) = 0.25;
	x0(12) = 20.0;
	x0(13) = 0.0;


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

% Compartment: id = Hypctol, name = Hypctol, constant
	compartment_Hypctol=1.0;
% Parameter:   id =  ks1, name = ks1
	global_par_ks1=0.23;
% Parameter:   id =  ks2, name = ks2
	global_par_ks2=4.0526;
% Parameter:   id =  kdr1, name = kdr1
	global_par_kdr1=0.1;
% Parameter:   id =  kdr2, name = kdr2
	global_par_kdr2=0.2118;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0043;
% Parameter:   id =  k2, name = k2
	global_par_k2=161.62;
% Parameter:   id =  ka1, name = ka1
	global_par_ka1=0.0372;
% Parameter:   id =  ka2, name = ka2
	global_par_ka2=0.0611;
% Parameter:   id =  ka3, name = ka3
	global_par_ka3=4.7207;
% Parameter:   id =  kd1, name = kd1
	global_par_kd1=94.3524;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=50.6973;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.5508;
% Parameter:   id =  ks3, name = ks3
	global_par_ks3=0.4397;
% Parameter:   id =  kdr3, name = kdr3
	global_par_kdr3=1.246;
% Parameter:   id =  UV, name = UV
	global_par_UV=1.0;
% Parameter:   id =  ka4, name = ka4
	global_par_ka4=10.1285;
% Parameter:   id =  kd4, name = kd4
	global_par_kd4=1.1999;
% Parameter:   id =  n1, name = n1
	global_par_n1=3.0;
% Parameter:   id =  n2, name = n2
	global_par_n2=2.0;
% Parameter:   id =  n3, name = n3
	global_par_n3=3.5;
% Parameter:   id =  kdr3a, name = kdr3a
	global_par_kdr3a=0.9735;
% Parameter:   id =  kdr3b, name = kdr3b
	global_par_kdr3b=0.406;
% Parameter:   id =  ksr, name = ksr
	global_par_ksr=0.7537;
% Parameter:   id =  UM_Total, name = UM_Total
% Parameter:   id =  COP1_Total, name = COP1_Total
% assignmentRule: variable = UM_Total
	global_par_UM_Total=2*x(5)+x(4)+x(8);
% assignmentRule: variable = COP1_Total
	global_par_COP1_Total=2*x(5)+2*x(3)+x(1);

% Reaction: id = r1
	reaction_r1=global_par_ks1*(1+global_par_UV*global_par_n3*(x(11)+const_species_FHY3))-global_par_kdr1*(1+global_par_n1*global_par_UV)*x(1);

% Reaction: id = r2
	reaction_r2=global_par_ks2*(1+global_par_UV*x(5))-global_par_kdr2*x(7);

% Reaction: id = r3
	reaction_r3=global_par_k1*x(4)^2;

% Reaction: id = r4
	reaction_r4=global_par_ka1*x(1)^2*x(4)^2-global_par_kd1*x(5);

% Reaction: id = r5
	reaction_r5=global_par_ka2*x(1)^2*x(2)-global_par_kd2*x(3);

% Reaction: id = r6
	reaction_r6=global_par_ka3*x(4)*x(7);

% Reaction: id = r7
	reaction_r7=global_par_kd3*x(8)^2;

% Reaction: id = r8
	reaction_r8=global_par_k2*x(6);

% Reaction: id = r9
	reaction_r9=global_par_ks3*(1+global_par_n2*global_par_UV)-global_par_kdr3*(x(3)/(global_par_kdr3a+x(3))+x(13)/(global_par_kdr3b+x(13))-x(5)/(global_par_ksr+x(5)))*x(11);

% Reaction: id = r10
	reaction_r10=global_par_ka4*x(2)*x(12)-global_par_kd4*x(13);

% Species:   id = FHY3, name = FHY3, constant	const_species_FHY3=5.0;

	xdot=zeros(13,1);
	
% Species:   id = CS, name = CS, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_r1) + (-2.0 * reaction_r4) + (-2.0 * reaction_r5);
	
% Species:   id = CD, name = CD, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_r5) + (-1.0 * reaction_r10);
	
% Species:   id = CDCS, name = CDCS, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_r5);
	
% Species:   id = UVR8M, name = UVR8M, affected by kineticLaw
	xdot(4) = (-2.0 * reaction_r3) + (-2.0 * reaction_r4) + (-1.0 * reaction_r6) + ( 2.0 * reaction_r8);
	
% Species:   id = UCS, name = UCS, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_r4);
	
% Species:   id = UVR8D, name = UVR8D, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_r3) + ( 1.0 * reaction_r7) + (-1.0 * reaction_r8);
	
% Species:   id = RUP, name = RUP, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_r2) + (-1.0 * reaction_r6) + ( 2.0 * reaction_r7);
	
% Species:   id = UR, name = UR, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_r6) + (-2.0 * reaction_r7);
	
% Species:   id = UVR8_M, name = UVR8_M
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = COP1, name = COP1
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = HY5, name = HY5, affected by kineticLaw
	xdot(11) = (1/(compartment_Hypctol))*(( 1.0 * reaction_r9));
	
% Species:   id = DWD, name = DWD, affected by kineticLaw
	xdot(12) = (1/(compartment_Hypctol))*((-1.0 * reaction_r10));
	
% Species:   id = CDW, name = CDW, affected by kineticLaw
	xdot(13) = (1/(compartment_Hypctol))*(( 1.0 * reaction_r10));
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


