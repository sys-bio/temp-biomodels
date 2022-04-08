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
% Model name = den Breems2015 - macrophage in cancer
%
% isDescribedBy http://identifiers.org/pubmed/26551154
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1000.0;
	x0(2) = 1000000.0;
	x0(3) = 100.0;
	x0(4) = 100.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.565;
% Parameter:   id =  bt, name = bt
	global_par_bt=2.0E9;
% Parameter:   id =  ksn, name = ksn
	global_par_ksn=0.1;
% Parameter:   id =  dmn, name = dmn
	global_par_dmn=2.0E-6;
% Parameter:   id =  dms, name = dms
	global_par_dms=2.0E-6;
% Parameter:   id =  rmn, name = rmn
	global_par_rmn=1.0E-7;
% Parameter:   id =  dts, name = dts
	global_par_dts=5.3E-8;
% Parameter:   id =  as, name = as
	global_par_as=1.0E-6;
% Parameter:   id =  an, name = an
	global_par_an=5.0E-8;
% Parameter:   id =  am1, name = am1
	global_par_am1=5.0E-8;
% Parameter:   id =  am2, name = am2
	global_par_am2=5.0E-8;
% Parameter:   id =  bm, name = bm
	global_par_bm=100000.0;
% Parameter:   id =  dm1, name = dm1
	global_par_dm1=0.2;
% Parameter:   id =  dm2, name = dm2
	global_par_dm2=0.2;
% Parameter:   id =  k12, name = k12
	global_par_k12=5.0E-5;
% Parameter:   id =  k21, name = k21
	global_par_k21=4.0E-5;
% Parameter:   id =  ah1, name = ah1
	global_par_ah1=0.008;
% Parameter:   id =  ah2, name = ah2
	global_par_ah2=0.008;
% Parameter:   id =  rh1, name = rh1
	global_par_rh1=9.0E-6;
% Parameter:   id =  rh2, name = rh2
	global_par_rh2=9.0E-6;
% Parameter:   id =  dh1, name = dh1
	global_par_dh1=0.05;
% Parameter:   id =  dh2, name = dh2
	global_par_dh2=0.05;
% Parameter:   id =  bth, name = bth
	global_par_bth=1.0E8;
% Parameter:   id =  Tumor, name = Tumor
% assignmentRule: variable = Tumor
	global_par_Tumor=x(1)+x(2);

% Reaction: id = Tn_growth, name = Tn growth
	reaction_Tn_growth=compartment_tumor_microenvironment*tumor_growth_1(x(1), x(2), global_par_bt, global_par_r);

% Reaction: id = Ts_Tn_transition, name = Ts-Tn transition
	reaction_Ts_Tn_transition=compartment_tumor_microenvironment*global_par_ksn*x(2);

% Reaction: id = Tn_killing, name = Tn killing
	reaction_Tn_killing=compartment_tumor_microenvironment*kill_1(x(3), x(1), global_par_dmn);

% Reaction: id = Tn_stimulation, name = Tn stimulation
	reaction_Tn_stimulation=compartment_tumor_microenvironment*Tn_stim_1(x(4), x(1), global_par_rmn);

% Reaction: id = Ts_growth, name = Ts growth
	reaction_Ts_growth=compartment_tumor_microenvironment*tumor_growth_2(x(1), x(2), global_par_bt, global_par_r);

% Reaction: id = Ts_killing_M1, name = Ts killing-M1
	reaction_Ts_killing_M1=compartment_tumor_microenvironment*kill_2(x(3), x(2), global_par_dms);

% Reaction: id = Ts_killing_Th1, name = Ts killing-Th1
	reaction_Ts_killing_Th1=compartment_tumor_microenvironment*kill_3(x(5), x(2), global_par_dts);

% Reaction: id = M1_growth, name = M1 growth
	reaction_M1_growth=compartment_tumor_microenvironment*m_growth_1(x(3), x(4), x(5), x(2), global_par_am1, global_par_as, global_par_bm);

% Reaction: id = M1_death, name = M1 death
	reaction_M1_death=compartment_tumor_microenvironment*global_par_dm1*x(3);

% Reaction: id = M1_M2_transition, name = M1-M2 transition
	reaction_M1_M2_transition=compartment_tumor_microenvironment*M_transition_1(x(3), x(4), global_par_k12);

% Reaction: id = M2_M1_transition, name = M2-M1 transition
	reaction_M2_M1_transition=compartment_tumor_microenvironment*M_transition_2(x(3), x(4), global_par_k21);

% Reaction: id = M2_growth, name = M2 growth
	reaction_M2_growth=compartment_tumor_microenvironment*m_growth_2(x(3), x(4), x(6), x(1), global_par_am2, global_par_an, global_par_bm);

% Reaction: id = M2_death, name = M2 death
	reaction_M2_death=compartment_tumor_microenvironment*global_par_dm2*x(4);

% Reaction: id = Th1_growth, name = Th1 growth
	reaction_Th1_growth=compartment_tumor_microenvironment*Th_growth_1(x(3), x(5), x(6), global_par_bth, global_par_rh1);

% Reaction: id = Th1_death, name = Th1 death
	reaction_Th1_death=compartment_tumor_microenvironment*global_par_dh1*x(5);

% Reaction: id = Th1_stimulation, name = Th1 stimulation
	reaction_Th1_stimulation=compartment_tumor_microenvironment*stim_Th_1(x(3), global_par_ah1);

% Reaction: id = Th2_growth, name = Th2 growth
	reaction_Th2_growth=compartment_tumor_microenvironment*Th_growth_2(x(4), x(5), x(6), global_par_bth, global_par_rh2);

% Reaction: id = Th2_death, name = Th2 death
	reaction_Th2_death=compartment_tumor_microenvironment*global_par_dh2*x(6);

% Reaction: id = Th2_stimulation, name = Th2 stimulation
	reaction_Th2_stimulation=compartment_tumor_microenvironment*stim_Th_2(x(4), global_par_ah2);

	xdot=zeros(6,1);
	
% Species:   id = Tn, name = Tn, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_Tn_growth) + ( 1.0 * reaction_Ts_Tn_transition) + (-1.0 * reaction_Tn_killing) + ( 1.0 * reaction_Tn_stimulation));
	
% Species:   id = Ts, name = Ts, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_Ts_Tn_transition) + ( 1.0 * reaction_Ts_growth) + (-1.0 * reaction_Ts_killing_M1) + (-1.0 * reaction_Ts_killing_Th1));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_M1_growth) + (-1.0 * reaction_M1_death) + (-1.0 * reaction_M1_M2_transition) + ( 1.0 * reaction_M2_M1_transition));
	
% Species:   id = M2, name = M2, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_M1_M2_transition) + (-1.0 * reaction_M2_M1_transition) + ( 1.0 * reaction_M2_growth) + (-1.0 * reaction_M2_death));
	
% Species:   id = Th1, name = Th1, affected by kineticLaw
	xdot(5) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_Th1_growth) + (-1.0 * reaction_Th1_death) + ( 1.0 * reaction_Th1_stimulation));
	
% Species:   id = Th2, name = Th2, affected by kineticLaw
	xdot(6) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_Th2_growth) + (-1.0 * reaction_Th2_death) + ( 1.0 * reaction_Th2_stimulation));
end

function z=m_growth_2(M1,M2,Th2,Tn,am2,an,bm), z=((an*Tn+am2*Th2)*M2*(1-(M2+M1)/bm));end

function z=kill_1(M1,Tn,dmn), z=(dmn*M1*Tn);end

function z=M_transition_1(M1,M2,k12), z=(k12*M1*M2);end

function z=M_transition_2(M1,M2,k21), z=(k21*M2*M1);end

function z=Th_growth_1(M1,Th1,Th2,bth,rh1), z=(rh1*M1*Th1*(1-(Th1+Th2)/bth));end

function z=Tn_stim_1(M2,Tn,rmn), z=(rmn*Tn*M2);end

function z=kill_2(M1,Ts,dms), z=(dms*M1*Ts);end

function z=stim_Th_1(M1,ah1), z=(ah1*M1);end

function z=Th_growth_2(M2,Th1,Th2,bth,rh2), z=(rh2*M2*Th2*(1-(Th2+Th1)/bth));end

function z=tumor_growth_2(Tn,Ts,bt,r), z=(r*Ts*(1-(Ts+Tn)/bt));end

function z=stim_Th_2(M2,ah2), z=(ah2*M2);end

function z=kill_3(Th1,Ts,dts), z=(dts*Th1*Ts);end

function z=tumor_growth_1(Tn,Ts,bt,r), z=(r*Tn*(1-(Tn+Ts)/bt));end

function z=m_growth_1(M1,M2,Th1,Ts,am1,as,bm), z=((as*Ts+am1*Th1)*M1*(1-(M1+M2)/bm));end

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


