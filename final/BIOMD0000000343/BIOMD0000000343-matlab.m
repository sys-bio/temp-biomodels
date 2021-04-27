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
% Model name = Brannmark2010_InsulinSignalling_Mifamodel
%
% is http://identifiers.org/biomodels.db/MODEL1107140000
% is http://identifiers.org/biomodels.db/BIOMD0000000343
% isDescribedBy http://identifiers.org/pubmed/20421297
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(27) = 10.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 10.0;
	x0(33) = 0.0;
	x0(34) = 10.0;
	x0(35) = 0.0;
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 10.0;
	x0(7) = 0.0;
	x0(8) = 10.0;
	x0(9) = 0.0;
	x0(10) = 389.41271264;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 1.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;


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

% Compartment: id = compartment_0000001, name = compartemnt 1, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  k1a, name = k1a
	global_par_k1a=0.3892881852;
% Parameter:   id =  k1abasic, name = k1abasic
	global_par_k1abasic=0.012452744;
% Parameter:   id =  k1b, name = k1b
	global_par_k1b=0.02000224505;
% Parameter:   id =  k1e, name = k1e
	global_par_k1e=4.38334E-5;
% Parameter:   id =  k1f, name = k1f
	global_par_k1f=20.0726035037;
% Parameter:   id =  k1g, name = k1g
	global_par_k1g=286.6994648072;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=3.6327773442;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.6722503302;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.036381619;
% Parameter:   id =  km2, name = km2
	global_par_km2=32.5942371891;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.6286590231;
% Parameter:   id =  km3, name = km3
	global_par_km3=0.1131073982;
% Parameter:   id =  ky1, name = ky1
	global_par_ky1=152.9631668536;
% Parameter:   id =  ky2, name = ky2
	global_par_ky2=8936.219557405;
% Parameter:   id =  kyanna, name = kyanna
	global_par_kyanna=16760.1203140926;
% Parameter:   id =  kyDosR, name = kyDosR
	global_par_kyDosR=13740.4321729991;
% Parameter:   id =  ins, name = ins
	global_par_ins=100.0;
% Parameter:   id =  k1c, name = k1c
	global_par_k1c=0.3635167928;
% Parameter:   id =  k1d, name = k1d
	global_par_k1d=1580.6782649401;
% assignmentRule: variable = measanna
	x(25)=global_par_kyanna*x(7);
% assignmentRule: variable = measdosR
	x(26)=global_par_kyDosR*x(7);
% assignmentRule: variable = measdoublestep
	x(24)=global_par_ky2*x(7);
% assignmentRule: variable = V1a
	x(10)=global_par_k1a*global_par_ins*x(1)+global_par_k1abasic*x(1);
% assignmentRule: variable = V1b
	x(11)=global_par_k1b*x(2);
% assignmentRule: variable = V1c
	x(12)=global_par_k1c*x(2);
% assignmentRule: variable = V1d
	x(13)=global_par_k1d*x(3);
% assignmentRule: variable = V1e
	x(14)=x(4)*(global_par_k1e+global_par_k1f*x(9)/(1+x(9)));
% assignmentRule: variable = V1g
	x(15)=global_par_k1g*x(3);
% assignmentRule: variable = V1r
	x(16)=global_par_k1r*x(5);
% assignmentRule: variable = V2
	x(17)=global_par_k21*(x(3)+global_par_k22*x(4))*x(6);
% assignmentRule: variable = Vm2
	x(18)=global_par_km2*x(7);
% assignmentRule: variable = V3
	x(19)=global_par_k3*x(8)*x(7);
% assignmentRule: variable = Vm3
	x(20)=global_par_km3*x(9);
% assignmentRule: variable = simXP
	x(21)=x(9);
% assignmentRule: variable = intamount
	x(22)=(x(5)+x(4))/10;
% rateRule: variable = IR
x(1) = x(27);
% rateRule: variable = IRins
x(2) = x(28);
% rateRule: variable = IRp
x(3) = x(29);
% rateRule: variable = IRip
x(4) = x(30);
% rateRule: variable = IRi
x(5) = x(31);
% rateRule: variable = IRS
x(6) = x(32);
% rateRule: variable = IRSip
x(7) = x(33);
% rateRule: variable = X
x(8) = x(34);
% rateRule: variable = Xp
x(9) = x(35);

	xdot=zeros(35,1);
	% rateRule: variable = IR
	xdot(27) = -x(10)+x(11)+x(16)+x(15);
	% rateRule: variable = IRins
	xdot(28) = x(10)-x(11)-x(12);
	% rateRule: variable = IRp
	xdot(29) = x(12)-x(13)-x(15);
	% rateRule: variable = IRip
	xdot(30) = x(13)-x(14);
	% rateRule: variable = IRi
	xdot(31) = x(14)-x(16);
	% rateRule: variable = IRS
	xdot(32) = -x(17)+x(18);
	% rateRule: variable = IRSip
	xdot(33) = x(17)-x(18);
	% rateRule: variable = X
	xdot(34) = -x(19)+x(20);
	% rateRule: variable = Xp
	xdot(35) = x(19)-x(20);
	
% Species:   id = IR, name = IR, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = IRins, name = IRins, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = IRp, name = IRp, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = IRip, name = IRip, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = IRi, name = IRi, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = IRS, name = IRS, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = IRSip, name = IRSip, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = X, name = X, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = Xp, name = Xp, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = V1a, name = V1a, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = V1b, name = V1b, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = V1c, name = V1c, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = V1d, name = V1d, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = V1e, name = V1e, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = V1g, name = V1g, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = V1r, name = v1r, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = V2, name = V2, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Vm2, name = Vm2, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = V3, name = V3, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Vm3, name = Vm3, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = simXP, name = simXp, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = intamount, name = intamount, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = measIRp, name = measIRp
% Warning species is not changed by either rules or reactions
	xdot(23) = ;
	
% Species:   id = measdoublestep, name = measdoublestep, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = measanna, name = measanna, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = measdosR, name = measdosR, involved in a rule 	xdot(26) = x(26);
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


