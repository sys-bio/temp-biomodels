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
% Model name = PC_IFNg100
%
%


function main()
%Initial conditions vector
	x0=zeros(48,1);
	x0(29) = 100.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.05721;
	x0(46) = 0.950418;
	x0(47) = 0.661213;
	x0(48) = 0.108325;
	x0(1) = 100.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.05721;
	x0(18) = 0.950418;
	x0(19) = 0.661213;
	x0(20) = 0.108325;
	x0(21) = 0.8058155;
	x0(22) = 0.710624687346;
	x0(23) = 0.80569465263;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.108325;
	x0(28) = 0.69570757287846;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=9.4915E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0959796;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0997621;
% Parameter:   id =  k5, name = k5
	global_par_k5=298.763;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.0666851;
% Parameter:   id =  k9, name = k7
	global_par_k9=4179.56;
% Parameter:   id =  k10, name = k8
	global_par_k10=0.0583427;
% Parameter:   id =  k11, name = k9
	global_par_k11=8.90244;
% Parameter:   id =  k12, name = k10
	global_par_k12=12.2679;
% Parameter:   id =  k13, name = k11
	global_par_k13=0.00949819;
% Parameter:   id =  k14, name = k12
	global_par_k14=0.748449;
% Parameter:   id =  taud, name = tau_1
	global_par_taud=277.363;
% Parameter:   id =  tau, name = tau_2
	global_par_tau=79.3354;
% Parameter:   id =  tauj, name = tau_3
	global_par_tauj=451.937;
% Parameter:   id =  scale_Stat1ex, name = WB_STAT1
	global_par_scale_Stat1ex=1.0;
% Parameter:   id =  scale_Stat1cex, name = WB_STAT1c
	global_par_scale_Stat1cex=0.747697;
% Parameter:   id =  scale_Stat1nex, name = WB_STAT1n
	global_par_scale_Stat1nex=1.21851;
% Parameter:   id =  scale_Stat1Pex, name = WB_STAT1D
	global_par_scale_Stat1Pex=34.4009;
% Parameter:   id =  scale_Stat1Pcex, name = WB_STAT1Dc
	global_par_scale_Stat1Pcex=19.0574;
% Parameter:   id =  scale_Stat1Pnex, name = WB_STAT1Dn
	global_par_scale_Stat1Pnex=91677.7;
% Parameter:   id =  scale_Socs1ex, name = PCR_SOCS1
	global_par_scale_Socs1ex=1.0;
% Parameter:   id =  scale_RSNCex, name = scale_RSNCex
	global_par_scale_RSNCex=1.0;
% assignmentRule: variable = Stat1cex
	x(22)=(x(18)+x(7))*global_par_scale_Stat1cex;
% assignmentRule: variable = Stat1ex
	x(21)=(x(18)+x(7)+x(19)+x(8))/2;
% assignmentRule: variable = RSNCex
	x(28)=(x(19)+x(8))/(x(18)+x(7));
% assignmentRule: variable = Socs1ex
	x(27)=x(20);
% assignmentRule: variable = Stat1Pnex
	x(26)=x(8)*global_par_scale_Stat1Pnex;
% assignmentRule: variable = Stat1Pcex
	x(25)=x(7)*global_par_scale_Stat1Pcex;
% assignmentRule: variable = Stat1Pex
	x(24)=(x(7)+x(8))/2*global_par_scale_Stat1Pex;
% assignmentRule: variable = Stat1nex
	x(23)=(x(19)+x(8))*global_par_scale_Stat1nex;
% rateRule: variable = Ifng
x(1) = x(29);
% rateRule: variable = II
x(2) = x(30);
% rateRule: variable = d1
x(3) = x(31);
% rateRule: variable = d2
x(4) = x(32);
% rateRule: variable = d3
x(5) = x(33);
% rateRule: variable = d4
x(6) = x(34);
% rateRule: variable = Stat1Pd
x(7) = x(35);
% rateRule: variable = Stat1Pdn
x(8) = x(36);
% rateRule: variable = i1
x(9) = x(37);
% rateRule: variable = i2
x(10) = x(38);
% rateRule: variable = i3
x(11) = x(39);
% rateRule: variable = i4
x(12) = x(40);
% rateRule: variable = j1
x(13) = x(41);
% rateRule: variable = j2
x(14) = x(42);
% rateRule: variable = j3
x(15) = x(43);
% rateRule: variable = j4
x(16) = x(44);
% rateRule: variable = Ir
x(17) = x(45);
% rateRule: variable = Stat1U
x(18) = x(46);
% rateRule: variable = Stat1Un
x(19) = x(47);
% rateRule: variable = mRNA
x(20) = x(48);

	xdot=zeros(48,1);
	% rateRule: variable = Ifng
	xdot(29) = -global_par_k1*x(1)*x(17);
	% rateRule: variable = II
	xdot(30) = global_par_k1*x(1)*x(17);
	% rateRule: variable = d1
	xdot(31) = 4*(x(2)-x(3))/global_par_taud;
	% rateRule: variable = d2
	xdot(32) = 4*(x(3)-x(4))/global_par_taud;
	% rateRule: variable = d3
	xdot(33) = 4*(x(4)-x(5))/global_par_taud;
	% rateRule: variable = d4
	xdot(34) = 4*(x(5)-x(6))/global_par_taud;
	% rateRule: variable = Stat1Pd
	xdot(35) = global_par_k4*x(2)*x(18)/(1+global_par_k14*x(16))-global_par_k6*x(7);
	% rateRule: variable = Stat1Pdn
	xdot(36) = global_par_k6*x(7)-global_par_k5*x(8);
	% rateRule: variable = i1
	xdot(37) = 4*(x(8)-x(9))/global_par_tau;
	% rateRule: variable = i2
	xdot(38) = 4*(x(9)-x(10))/global_par_tau;
	% rateRule: variable = i3
	xdot(39) = 4*(x(10)-x(11))/global_par_tau;
	% rateRule: variable = i4
	xdot(40) = 4*(x(11)-x(12))/global_par_tau;
	% rateRule: variable = j1
	xdot(41) = 4*(x(20)-x(13))/global_par_tauj;
	% rateRule: variable = j2
	xdot(42) = 4*(x(13)-x(14))/global_par_tauj;
	% rateRule: variable = j3
	xdot(43) = 4*(x(14)-x(15))/global_par_tauj;
	% rateRule: variable = j4
	xdot(44) = 4*(x(15)-x(16))/global_par_tauj;
	% rateRule: variable = Ir
	xdot(45) = -global_par_k1*x(1)*x(17);
	% rateRule: variable = Stat1U
	xdot(46) = global_par_k3*x(6)+global_par_k12*x(19)-global_par_k11*x(18)-global_par_k4*x(2)*x(18)/(1+global_par_k14*x(16));
	% rateRule: variable = Stat1Un
	xdot(47) = global_par_k11*x(18)-global_par_k12*x(19)+global_par_k5*x(8);
	% rateRule: variable = mRNA
	xdot(48) = global_par_k13+global_par_k9*x(12)-global_par_k10*x(20);
	
% Species:   id = Ifng, name = Ifng, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = II, name = II, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = d1, name = d1, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = d2, name = d2, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = d3, name = d3, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = d4, name = d4, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Stat1Pd, name = STAT1D, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = Stat1Pdn, name = STAT1Dn, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = i1, name = i1, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = i2, name = i2, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = i3, name = i3, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = i4, name = i4, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = j1, name = j1, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = j2, name = j2, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = j3, name = j3, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = j4, name = j4, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = Ir, name = Ir, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Stat1U, name = STAT1Uc, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = Stat1Un, name = STAT1Un, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = mRNA, name = SOCS1, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = Stat1ex, name = STAT1 (observed), involved in a rule 	xdot(21) = x(21);
	
% Species:   id = Stat1cex, name = STAT1c (observed), involved in a rule 	xdot(22) = x(22);
	
% Species:   id = Stat1nex, name = STAT1n (observed), involved in a rule 	xdot(23) = x(23);
	
% Species:   id = Stat1Pex, name = STAT1D (observed), involved in a rule 	xdot(24) = x(24);
	
% Species:   id = Stat1Pcex, name = STAT1Dc (observed), involved in a rule 	xdot(25) = x(25);
	
% Species:   id = Stat1Pnex, name = STAT1Dn (observed), involved in a rule 	xdot(26) = x(26);
	
% Species:   id = Socs1ex, name = SOCS1 (observed), involved in a rule 	xdot(27) = x(27);
	
% Species:   id = RSNCex, name = RSNC (observed), involved in a rule 	xdot(28) = x(28);
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


