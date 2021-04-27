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
% Model name = ASC-GSH pathway
%
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(14) = 110.000032696018;
	x0(15) = 40.0000118894612;
	x0(16) = 4000.0;
	x0(17) = 0.0;
	x0(18) = 10000.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 40.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(1) = 110.000032696018;
	x0(2) = 40.0000118894612;
	x0(3) = 4000.0;
	x0(4) = 0.0;
	x0(5) = 10000.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 40.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;


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

% Compartment: id = c, name = c, constant
	compartment_c=1.0;
% Parameter:   id =  vGR, name = vGR
% Parameter:   id =  vDHAR, name = vDHAR
% Parameter:   id =  vSOD, name = vSOD
% Parameter:   id =  F12, name = F12
% Parameter:   id =  k12, name = k12
	global_par_k12=500.0;
% Parameter:   id =  kN, name = kN
% Parameter:   id =  k4, name = k4
	global_par_k4=2520.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.01;
% Parameter:   id =  F13, name = F13
% Parameter:   id =  kSOD, name = kSOD
	global_par_kSOD=720000.0;
% Parameter:   id =  SOD, name = SOD
	global_par_SOD=50.0;
% Parameter:   id =  kcatDHAR, name = kcatDHAR
	global_par_kcatDHAR=511200.0;
% Parameter:   id =  DHAR, name = DHAR
	global_par_DHAR=1.7;
% Parameter:   id =  K, name = K
	global_par_K=500.0;
% Parameter:   id =  KMDHA, name = KM_DHAR_DHA
	global_par_KMDHA=70.0;
% Parameter:   id =  KMGSH, name = KM_DHAR_GSH
	global_par_KMGSH=2500.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1800.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=1850.0;
% Parameter:   id =  k2APX, name = k2APX
	global_par_k2APX=180000.0;
% Parameter:   id =  k3APX, name = k3APX
	global_par_k3APX=7560.0;
% Parameter:   id =  k4APX, name = k4APX
	global_par_k4APX=2520.0;
% Parameter:   id =  k5APX, name = k5APX
	global_par_k5APX=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=720.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0072;
% Parameter:   id =  k1APX, name = k1APX
	global_par_k1APX=43200.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=720.0;
% Parameter:   id =  F1, name = F1
% Parameter:   id =  F11, name = F11
% Parameter:   id =  GR, name = GR
	global_par_GR=1.4;
% Parameter:   id =  kcatGR, name = kcatGR
	global_par_kcatGR=2142000.0;
% Parameter:   id =  KMNADPH, name = KM-GR_NADPH
	global_par_KMNADPH=3.0;
% Parameter:   id =  KMGSSG, name = KM_GR_GSSG
	global_par_KMGSSG=200.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=35000.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=4864243.26931592;
% Parameter:   id =  b, name = b
	global_par_b=11.0;
% Parameter:   id =  c_0, name = c
	global_par_c_0=4.712389;
% Parameter:   id =  c11, name = c11
% Parameter:   id =  c12, name = c12
% Parameter:   id =  c13, name = c13
% Parameter:   id =  a2, name = a2
	global_par_a2=4886061.87084224;
% Parameter:   id =  incr, name = incr
	global_par_incr=0.25;
% Parameter:   id =  a3, name = a3
	global_par_a3=4334866.79161433;
% Parameter:   id =  a4, name = a4
	global_par_a4=4292912.76924778;
% Parameter:   id =  a5, name = a5
	global_par_a5=4964404.84595951;
% Parameter:   id =  a6, name = a6
	global_par_a6=4219865.26239198;
% Parameter:   id =  a7, name = a7
	global_par_a7=4232289.69390038;
% Parameter:   id =  a8, name = a8
	global_par_a8=4701281.60819877;
% Parameter:   id =  a9, name = a9
	global_par_a9=4872378.24255135;
% Parameter:   id =  a10, name = a10
	global_par_a10=4398376.7646132;
% Parameter:   id =  a11, name = a11
	global_par_a11=4138350.87872576;
% Parameter:   id =  a12, name = a12
	global_par_a12=4451978.31455152;
% Parameter:   id =  a13, name = a13
	global_par_a13=4059349.09463394;
% Parameter:   id =  a14, name = a14
	global_par_a14=4753014.05170467;
% Parameter:   id =  a0, name = a0
	global_par_a0=4966055.38029689;
% Parameter:   id =  i, name = i
% Parameter:   id =  kN_cte, name = kN_cte
	global_par_kN_cte=0.005;
% Parameter:   id =  ai, name = ai
% Parameter:   id =  a15, name = a15
	global_par_a15=4618942.41312984;
% Parameter:   id =  min, name = min
	global_par_min=4000000.0;
% Parameter:   id =  max, name = max
	global_par_max=5000000.0;
% Parameter:   id =  FN, name = FN
% Parameter:   id =  vAPX, name = vAPX
% Parameter:   id =  MDAR, name = MDAR
	global_par_MDAR=0.0;
% Parameter:   id =  kcatMDAR, name = kcatMDAR
	global_par_kcatMDAR=1080000.0;
% Parameter:   id =  KMNADPH2, name = KM-MDAR_NADPH
	global_par_KMNADPH2=23.0;
% Parameter:   id =  KMMDA, name = KM_MDAR_MDA
	global_par_KMMDA=1.4;
% Parameter:   id =  vMDAR, name = vMDAR
% Parameter:   id =  Metabolite_17, name = Initial for APX
	global_par_Metabolite_17=40.0;
% assignmentRule: variable = vGR
	global_par_vGR=global_par_kcatGR*global_par_GR*x(1)*x(4)/(global_par_KMNADPH*x(4)+global_par_KMGSSG*x(1)+x(1)*x(4));
% assignmentRule: variable = vSOD
	global_par_vSOD=global_par_kSOD*global_par_SOD*x(13);
% assignmentRule: variable = vDHAR
	global_par_vDHAR=global_par_kcatDHAR*global_par_DHAR*x(6)*x(3)/(global_par_K+global_par_KMDHA*x(3)+global_par_KMGSH*x(6)+x(6)*x(3));
% assignmentRule: variable = i
	global_par_i=floor(time/24);
% assignmentRule: variable = ai
	global_par_ai=piecewise(global_par_a0, global_par_i == 0, piecewise(global_par_a1, global_par_i == 1, piecewise(global_par_a2, global_par_i == 2, piecewise(global_par_a3, global_par_i == 3, piecewise(global_par_a4, global_par_i == 4, piecewise(global_par_a5, global_par_i == 5, piecewise(global_par_a6, global_par_i == 6, piecewise(global_par_a7, global_par_i == 7, piecewise(global_par_a8, global_par_i == 8, piecewise(global_par_a9, global_par_i == 9, piecewise(global_par_a10, global_par_i == 10, piecewise(global_par_a11, global_par_i == 11, piecewise(global_par_a12, global_par_i == 12, piecewise(global_par_a13, global_par_i == 13, piecewise(global_par_a14, global_par_i == 14, global_par_a15)))))))))))))));
% assignmentRule: variable = F1
	global_par_F1=piecewise(global_par_ai+global_par_ai*sin(2*pi*(time-global_par_i*24)/(global_par_b+global_par_incr*global_par_i)+global_par_c_0), (time >= (global_par_i*24)) && (time <= (global_par_i*24+global_par_b+global_par_incr*global_par_i)), 0);
% assignmentRule: variable = c13
	global_par_c13=global_par_k13*x(7)/(global_par_k11+2*global_par_k12*x(2)+global_par_k13*x(7));
% assignmentRule: variable = F13
	global_par_F13=global_par_c13*global_par_F1;
% assignmentRule: variable = vMDAR
	global_par_vMDAR=global_par_kcatMDAR*global_par_MDAR*x(1)*x(7)/(global_par_KMNADPH2*x(7)+global_par_KMMDA*x(1)+x(1)*x(7));
% assignmentRule: variable = c11
	global_par_c11=global_par_k11/(global_par_k11+2*global_par_k12*x(2)+global_par_k13*x(7));
% assignmentRule: variable = F11
	global_par_F11=global_par_c11*global_par_F1;
% assignmentRule: variable = c12
	global_par_c12=2*global_par_k12*x(2)/(global_par_k11+2*global_par_k12*x(2)+global_par_k13*x(7));
% assignmentRule: variable = F12
	global_par_F12=global_par_c12*global_par_F1;
% assignmentRule: variable = kN
	global_par_kN=global_par_kN_cte*global_par_F12;
% assignmentRule: variable = FN
	global_par_FN=global_par_kN*x(1);
% assignmentRule: variable = vAPX
	global_par_vAPX=global_par_k2APX*x(10)*x(5)+global_par_k3APX*x(11)*x(5);
% rateRule: variable = NADPH
x(1) = x(14);
% rateRule: variable = NADPplus
x(2) = x(15);
% rateRule: variable = GSH
x(3) = x(16);
% rateRule: variable = GSSG
x(4) = x(17);
% rateRule: variable = ASC
x(5) = x(18);
% rateRule: variable = DHA
x(6) = x(19);
% rateRule: variable = MDA
x(7) = x(20);
% rateRule: variable = H2O2
x(8) = x(21);
% rateRule: variable = APX
x(9) = x(22);
% rateRule: variable = CoI
x(10) = x(23);
% rateRule: variable = CoII
x(11) = x(24);
% rateRule: variable = APXi
x(12) = x(25);
% rateRule: variable = O2neg
x(13) = x(26);

	xdot=zeros(26,1);
	% rateRule: variable = NADPH
	xdot(14) = -global_par_vGR-global_par_kN*x(1)+global_par_F12*0.5-global_par_vMDAR;
	% rateRule: variable = NADPplus
	xdot(15) = global_par_vGR+global_par_kN*x(1)-global_par_F12*0.5+global_par_vMDAR;
	% rateRule: variable = GSH
	xdot(16) = 2*(global_par_vGR-global_par_vDHAR-global_par_k4*x(13)*x(3)-global_par_k3*x(6)*x(3));
	% rateRule: variable = GSSG
	xdot(17) = -global_par_vGR+global_par_vDHAR+global_par_k4*x(13)*x(3)+global_par_k3*x(6)*x(3);
	% rateRule: variable = ASC
	xdot(18) = global_par_vDHAR+global_par_k1*x(7)^2+global_par_k3*x(6)*x(3)+global_par_F13-global_par_k2APX*x(5)*x(10)-global_par_k3APX*x(5)*x(11)-global_par_k6*x(13)*x(5)-2*global_par_k5*x(8)*x(5)+2*global_par_vMDAR;
	% rateRule: variable = DHA
	xdot(19) = -global_par_vDHAR+global_par_k1*x(7)^2-global_par_k3*x(6)*x(3);
	% rateRule: variable = MDA
	xdot(20) = global_par_k2APX*x(5)*x(10)+global_par_k3APX*x(5)*x(11)-2*global_par_k1*x(7)^2+global_par_k6*x(13)*x(5)+2*global_par_k5*x(8)*x(5)-global_par_F13-2*global_par_vMDAR;
	% rateRule: variable = H2O2
	xdot(21) = global_par_vSOD-global_par_k1APX*x(8)*x(9)-global_par_k4APX*x(8)*x(10)+global_par_k2*x(13)^2+global_par_k6*x(13)*x(5)+global_par_k4*x(13)*x(3)-global_par_k5*x(8)*x(5);
	% rateRule: variable = APX
	xdot(22) = (-global_par_k1APX)*x(8)*x(9)+global_par_k3APX*x(5)*x(11)+global_par_k5APX*(global_par_Metabolite_17-x(9)-x(10)-x(11));
	% rateRule: variable = CoI
	xdot(23) = global_par_k1APX*x(8)*x(9)-global_par_k2APX*x(5)*x(10)-global_par_k4APX*x(8)*x(10);
	% rateRule: variable = CoII
	xdot(24) = global_par_k2APX*x(5)*x(10)-global_par_k3APX*x(5)*x(11);
	% rateRule: variable = APXi
	xdot(25) = global_par_k4APX*x(8)*x(10);
	% rateRule: variable = O2neg
	xdot(26) = (-2)*global_par_vSOD+global_par_F11-2*global_par_k2*x(13)^2-global_par_k6*x(13)*x(5)-global_par_k4*x(13)*x(3);
	
% Species:   id = NADPH, name = NADPH, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = NADPplus, name = NADPplus, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = GSH, name = GSH, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = GSSG, name = GSSG, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = ASC, name = ASC, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = DHA, name = DHA, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = MDA, name = MDA, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = H2O2, name = H2O2, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = APX, name = APX, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = CoI, name = CoI, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = CoII, name = CoII, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = APXi, name = APXi, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = O2neg, name = O2neg, involved in a rule 	xdot(13) = x(13);
end

function z=RUNIFORM(a,b), z=((a+b)/2);end

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


