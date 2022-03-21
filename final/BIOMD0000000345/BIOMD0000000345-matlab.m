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
% Model name = Koschorreck2008_InsulinClearance
%
% is http://identifiers.org/biomodels.db/MODEL1108040000
% is http://identifiers.org/biomodels.db/BIOMD0000000345
% isDescribedBy http://identifiers.org/pubmed/18477391
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(13) = 35.3837;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 4.6163;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(1) = 35.3837;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 4.6163;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = -4.44089209850063E-15;


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

% Compartment: id = compartment1, name = compartment1, constant
	compartment_compartment1=1.0;
% Parameter:   id =  kins, name = kins
	global_par_kins=0.001;
% Parameter:   id =  kins1d, name = kins1d
	global_par_kins1d=4.0E-4;
% Parameter:   id =  kins2d, name = kins2d
	global_par_kins2d=0.04;
% Parameter:   id =  kins1den, name = kins1den
	global_par_kins1den=0.001925;
% Parameter:   id =  kins2den, name = kins2den
	global_par_kins2den=0.00385;
% Parameter:   id =  kyd, name = kyd
	global_par_kyd=0.00385;
% Parameter:   id =  kyden, name = kyden
	global_par_kyden=0.00722;
% Parameter:   id =  kyp, name = kyp
	global_par_kyp=0.0231;
% Parameter:   id =  intk1, name = intk1
	global_par_intk1=5.5E-4;
% Parameter:   id =  intk2, name = intk2
	global_par_intk2=2.0E-4;
% Parameter:   id =  reck1, name = reck1
	global_par_reck1=0.001533;
% Parameter:   id =  Rtotal, name = Rtotal
	global_par_Rtotal=40.0;
% Parameter:   id =  k1ub, name = k1ub
	global_par_k1ub=0.35;
% Parameter:   id =  k2ub, name = k2ub
	global_par_k2ub=0.2;
% Parameter:   id =  pansec, name = pansec
	global_par_pansec=0.0016976;
% Parameter:   id =  Kpan, name = Kpan
	global_par_Kpan=0.5;
% Parameter:   id =  mliver, name = mliver
% Parameter:   id =  vp, name = vp
% Parameter:   id =  rholiver, name = rholiver
	global_par_rholiver=1051.0;
% Parameter:   id =  vhep, name = vhep
% Parameter:   id =  vd, name = vd
% Parameter:   id =  mkidney, name = mkidney
% Parameter:   id =  Kkidney, name = Kkidney
% Parameter:   id =  r1, name = r1
% Parameter:   id =  r2, name = r2
% Parameter:   id =  r3, name = r3
% Parameter:   id =  r4, name = r4
% Parameter:   id =  r5, name = r5
% Parameter:   id =  r6, name = r6
% Parameter:   id =  r7, name = r7
% Parameter:   id =  i1, name = i1
% Parameter:   id =  i2, name = i2
% Parameter:   id =  i3, name = i3
% Parameter:   id =  i4, name = i4
% Parameter:   id =  i5, name = i5
% Parameter:   id =  i6, name = i6
% Parameter:   id =  i7, name = i7
% Parameter:   id =  f1, name = f1
% Parameter:   id =  f2, name = f2
% Parameter:   id =  f3, name = f3
% Parameter:   id =  f4, name = f4
% Parameter:   id =  f5, name = f5
% Parameter:   id =  f6, name = f6
% Parameter:   id =  bw, name = bw
	global_par_bw=200.0;
% Parameter:   id =  parameter_1, name = rliv
% Parameter:   id =  parameter_2, name = rkid
% Parameter:   id =  parameter_3, name = Ratetotal
% Parameter:   id =  parameter_4, name = Fracliver
% Parameter:   id =  parameter_5, name = Frackidney
% Parameter:   id =  parameter_6, name = Cliver
% Parameter:   id =  parameter_7, name = Ckidney
% Parameter:   id =  parameter_8, name = Ctotal
% Parameter:   id =  parameter_9, name = ReceptorIns
% Parameter:   id =  parameter_10, name = ReceptorIns2
% Parameter:   id =  parameter_11, name = ReceptorInsPM
% Parameter:   id =  parameter_12, name = ReceptorIns2PM
% Parameter:   id =  parameter_13, name = ReceptorInsEN
% Parameter:   id =  parameter_14, name = ReceptorIns2EN
% assignmentRule: variable = mkidney
	global_par_mkidney=2*0.85*global_par_bw/230;
% assignmentRule: variable = mliver
	global_par_mliver=0.05*global_par_bw;
% assignmentRule: variable = vp
	global_par_vp=0.03375*10^(-3)*global_par_bw;
% assignmentRule: variable = vhep
	global_par_vhep=global_par_mliver/global_par_rholiver*0.78;
% assignmentRule: variable = vd
	global_par_vd=0.272*10^(-3)*global_par_vhep*global_par_rholiver;
% assignmentRule: variable = I2RPen
	x(12)=global_par_Rtotal-x(1)-x(2)-x(3)-x(4)-x(5)-x(6)-x(7)-x(8)-x(9)-x(10)-x(11);
% assignmentRule: variable = Kkidney
	global_par_Kkidney=0.0225*10^(-3)*global_par_mkidney;
% assignmentRule: variable = r1
	global_par_r1=global_par_kins*x(1)*const_species_ins-global_par_kins1d*x(2);
% assignmentRule: variable = r2
	global_par_r2=global_par_kins*x(4)*const_species_ins-global_par_kins1d*x(5);
% assignmentRule: variable = r3
	global_par_r3=global_par_kins*x(2)*const_species_ins-global_par_kins2d*x(3);
% assignmentRule: variable = r4
	global_par_r4=global_par_kins*x(5)*const_species_ins-global_par_kins2d*x(6);
% assignmentRule: variable = r5
	global_par_r5=global_par_kyd*x(4);
% assignmentRule: variable = r6
	global_par_r6=global_par_kyp*x(2)-global_par_kyd*x(5);
% assignmentRule: variable = r7
	global_par_r7=global_par_kyp*x(3)-global_par_kyd*x(6);
% assignmentRule: variable = i1
	global_par_i1=global_par_kins1den*x(8);
% assignmentRule: variable = i2
	global_par_i2=global_par_kins1den*x(11);
% assignmentRule: variable = i3
	global_par_i3=global_par_kins2den*x(9);
% assignmentRule: variable = i4
	global_par_i4=global_par_kins2den*x(12);
% assignmentRule: variable = i5
	global_par_i5=global_par_kyden*x(10);
% assignmentRule: variable = i6
	global_par_i6=global_par_kyp*x(8)-global_par_kyden*x(11);
% assignmentRule: variable = i7
	global_par_i7=global_par_kyp*x(9)-global_par_kyden*x(12);
% assignmentRule: variable = f1
	global_par_f1=global_par_intk2*x(1)-global_par_reck1*x(7);
% assignmentRule: variable = f2
	global_par_f2=global_par_intk2*x(2);
% assignmentRule: variable = f3
	global_par_f3=global_par_intk2*x(3);
% assignmentRule: variable = f4
	global_par_f4=global_par_intk1*x(4)-global_par_reck1*x(10);
% assignmentRule: variable = f5
	global_par_f5=global_par_intk1*x(5);
% assignmentRule: variable = f6
	global_par_f6=global_par_intk1*x(6);
% assignmentRule: variable = parameter_1
	global_par_parameter_1=(-(-global_par_r1-global_par_r2-global_par_r3-global_par_r4))*global_par_vhep/global_par_vp;
% assignmentRule: variable = parameter_2
	global_par_parameter_2=global_par_Kkidney*const_species_ins/global_par_vp;
% assignmentRule: variable = parameter_3
	global_par_parameter_3=global_par_parameter_2+global_par_parameter_1;
% assignmentRule: variable = parameter_4
	global_par_parameter_4=global_par_parameter_1/(global_par_parameter_1+global_par_parameter_2)*100;
% assignmentRule: variable = parameter_5
	global_par_parameter_5=global_par_parameter_2/(global_par_parameter_2+global_par_parameter_1)*100;
% assignmentRule: variable = parameter_6
	global_par_parameter_6=global_par_parameter_1*global_par_vp*6000/const_species_ins;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=global_par_parameter_2*global_par_vp*6000/const_species_ins;
% assignmentRule: variable = parameter_8
	global_par_parameter_8=global_par_parameter_7+global_par_parameter_6;
% assignmentRule: variable = parameter_9
	global_par_parameter_9=(global_par_Rtotal-x(1)-x(4)-x(7)-x(10))/global_par_Rtotal;
% assignmentRule: variable = parameter_11
	global_par_parameter_11=(x(2)+x(3)+x(5)+x(6))/global_par_Rtotal;
% assignmentRule: variable = parameter_10
	global_par_parameter_10=(x(3)+x(9)+x(6)+x(12))/global_par_Rtotal;
% assignmentRule: variable = parameter_12
	global_par_parameter_12=(x(3)+x(6))/global_par_Rtotal;
% assignmentRule: variable = parameter_13
	global_par_parameter_13=global_par_parameter_9-global_par_parameter_11;
% assignmentRule: variable = parameter_14
	global_par_parameter_14=global_par_parameter_10-global_par_parameter_12;
% rateRule: variable = R
x(1) = x(13);
% rateRule: variable = IR
x(2) = x(14);
% rateRule: variable = I2R
x(3) = x(15);
% rateRule: variable = Rp
x(4) = x(16);
% rateRule: variable = IRp
x(5) = x(17);
% rateRule: variable = I2Rp
x(6) = x(18);
% rateRule: variable = Ren
x(7) = x(19);
% rateRule: variable = IRen
x(8) = x(20);
% rateRule: variable = I2Ren
x(9) = x(21);
% rateRule: variable = RPen
x(10) = x(22);
% rateRule: variable = IRPen
x(11) = x(23);

% Species:   id = ins, name = ins, constant	const_species_ins=100.0;

	xdot=zeros(23,1);
	% rateRule: variable = R
	xdot(13) = -global_par_r1+global_par_r5-global_par_f1;
	% rateRule: variable = IR
	xdot(14) = global_par_r1-global_par_r3-global_par_r6-global_par_f2;
	% rateRule: variable = I2R
	xdot(15) = global_par_r3-global_par_r7-global_par_f3;
	% rateRule: variable = Rp
	xdot(16) = -global_par_r2-global_par_r5-global_par_f4;
	% rateRule: variable = IRp
	xdot(17) = global_par_r2-global_par_r4+global_par_r6-global_par_f5;
	% rateRule: variable = I2Rp
	xdot(18) = global_par_r4+global_par_r7-global_par_f6;
	% rateRule: variable = Ren
	xdot(19) = global_par_i1+global_par_i5+global_par_f1;
	% rateRule: variable = IRen
	xdot(20) = -global_par_i1+global_par_i3-global_par_i6+global_par_f2;
	% rateRule: variable = I2Ren
	xdot(21) = -global_par_i3-global_par_i7+global_par_f3;
	% rateRule: variable = RPen
	xdot(22) = global_par_i2-global_par_i5+global_par_f4;
	% rateRule: variable = IRPen
	xdot(23) = -global_par_i2+global_par_i4+global_par_i6+global_par_f5;
	
% Species:   id = R, name = R, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = IR, name = IR, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = I2R, name = I2R, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Rp, name = Rp, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = IRp, name = IRp, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = I2Rp, name = I2Rp, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Ren, name = Ren, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = IRen, name = IRen, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = I2Ren, name = I2Ren, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = RPen, name = RPen, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = IRPen, name = IRPen, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = I2RPen, name = I2RPen, involved in a rule 	xdot(12) = x(12);
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


