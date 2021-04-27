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
% Model name = Friedland2009_Ara_RTC3_counter
%
% is http://identifiers.org/biomodels.db/MODEL1012220006
% is http://identifiers.org/biomodels.db/BIOMD0000000301
% isDescribedBy http://identifiers.org/pubmed/19478183
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.006796941377;
	x0(2) = 0.3569405099;
	x0(3) = 0.176991329;
	x0(4) = 0.05230744612;
	x0(5) = 6.338921181;
	x0(6) = 0.0;
	x0(7) = 6.41674E-5;
	x0(8) = 0.00566438;


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
% Parameter:   id =  cAra, name = cAra
	global_par_cAra=3.0E-4;
% Parameter:   id =  pulse_flag, name = pulse_flag
	global_par_pulse_flag=0.0;
% Parameter:   id =  dAra, name = dAra
	global_par_dAra=0.1201;
% Parameter:   id =  sT, name = sT
	global_par_sT=0.8467;
% Parameter:   id =  k_ara, name = k_ara
	global_par_k_ara=0.0571;
% Parameter:   id =  s0_taRNA, name = s0_taRNA
	global_par_s0_taRNA=8.0E-4;
% Parameter:   id =  d_taRNA, name = d_taRNA
	global_par_d_taRNA=0.1177;
% Parameter:   id =  s0_mT7cr, name = s0_mT7cr
	global_par_s0_mT7cr=0.0252;
% Parameter:   id =  d_mT7, name = d_mT7
	global_par_d_mT7=0.0706;
% Parameter:   id =  s0_mGFPcr, name = s0_mGFPcr
	global_par_s0_mGFPcr=0.0123;
% Parameter:   id =  k_pT3, name = k_pT3
	global_par_k_pT3=3.006;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.8892;
% Parameter:   id =  km3, name = km3
	global_par_km3=7.9075;
% Parameter:   id =  d_mGFP, name = d_mGFP
	global_par_d_mGFP=0.07;
% Parameter:   id =  s0_pT7, name = s0_pT7
	global_par_s0_pT7=3.0E-4;
% Parameter:   id =  s_pT7k, name = s_pT7k
	global_par_s_pT7k=0.0766;
% Parameter:   id =  s0_pGFP, name = s0_pGFP
	global_par_s0_pGFP=0.1007;
% Parameter:   id =  s_pGFPk, name = s_pGFPk
	global_par_s_pGFPk=0.9923;
% Parameter:   id =  d_pT7, name = d_pT7
	global_par_d_pT7=0.0056;
% Parameter:   id =  d_pGFP, name = d_pGFP
	global_par_d_pGFP=0.003;
% Parameter:   id =  s0_mT3cr, name = s0_mT3cr
	global_par_s0_mT3cr=3.0E-4;
% Parameter:   id =  k_pT7, name = k_pT7
	global_par_k_pT7=3.8009;
% Parameter:   id =  n7, name = n7
	global_par_n7=2.602;
% Parameter:   id =  km7, name = km7
	global_par_km7=3.0455;
% Parameter:   id =  d_mT3, name = d_mT3
	global_par_d_mT3=0.0701;
% Parameter:   id =  s0_pT3, name = s0_pT3
	global_par_s0_pT3=0.0;
% Parameter:   id =  s_pT3k, name = s_pT3k
	global_par_s_pT3k=0.0115;
% Parameter:   id =  d_pT3, name = d_pT3
	global_par_d_pT3=0.0069;
% Parameter:   id =  pulse_interval, name = pulse_interval
	global_par_pulse_interval=20.0;
% Parameter:   id =  pulse1_start, name = pulse1_start
	global_par_pulse1_start=0.01;
% Parameter:   id =  pulse1_length, name = pulse1_length
	global_par_pulse1_length=11.0;
% Parameter:   id =  pulse_conc, name = pulse_conc
	global_par_pulse_conc=0.01;
% Parameter:   id =  pulse2_start, name = pulse2_start
% Parameter:   id =  pulse2_length, name = pulse2_length
	global_par_pulse2_length=11.0;
% Parameter:   id =  pulse3_start, name = pulse3_start
% Parameter:   id =  pulse3_length, name = pulse3_length
	global_par_pulse3_length=22.0;
% assignmentRule: variable = pulse2_start
	global_par_pulse2_start=global_par_pulse1_start+global_par_pulse1_length+global_par_pulse_interval;
% assignmentRule: variable = pulse3_start
	global_par_pulse3_start=global_par_pulse2_start+global_par_pulse2_length+global_par_pulse_interval;

% Reaction: id = r0
	reaction_r0=compartment_cell*piecewise(global_par_cAra, (global_par_pulse_flag == 1) && (x(6) > 0), global_par_dAra*x(6));

% Reaction: id = r1a
	reaction_r1a=compartment_cell*(global_par_sT*x(6)/(x(6)+global_par_k_ara)+global_par_s0_taRNA);

% Reaction: id = r1b
	reaction_r1b=compartment_cell*global_par_d_taRNA*x(1);

% Reaction: id = r2a
	reaction_r2a=compartment_cell*global_par_s0_mT7cr;

% Reaction: id = r2b
	reaction_r2b=compartment_cell*global_par_d_mT7*x(2);

% Reaction: id = r3a
	reaction_r3a=compartment_cell*(global_par_s0_mGFPcr+global_par_k_pT3*x(7)^global_par_n3/(global_par_km3^global_par_n3+x(7)^global_par_n3));

% Reaction: id = r3b
	reaction_r3b=compartment_cell*global_par_d_mGFP*x(3);

% Reaction: id = r6
	reaction_r6=compartment_cell*(global_par_s0_pT7*x(2)+global_par_s_pT7k*x(2)*x(1));

% Reaction: id = r7
	reaction_r7=compartment_cell*(global_par_s0_pGFP*x(3)+global_par_s_pGFPk*x(3)*x(1));

% Reaction: id = r8
	reaction_r8=compartment_cell*global_par_d_pT7*x(4);

% Reaction: id = r9
	reaction_r9=compartment_cell*global_par_d_pGFP*x(5);

% Reaction: id = r10a
	reaction_r10a=compartment_cell*(global_par_s0_mT3cr+global_par_k_pT7*x(4)^global_par_n7/(global_par_km7^global_par_n7+x(4)^global_par_n7));

% Reaction: id = r10b
	reaction_r10b=compartment_cell*global_par_d_mT3*x(8);

% Reaction: id = r11
	reaction_r11=compartment_cell*(global_par_s0_pT3*x(8)+global_par_s_pT3k*x(1)*x(8));

% Reaction: id = r12
	reaction_r12=compartment_cell*global_par_d_pT3*x(7);

%Event: id=pulse_start1
	event_pulse_start1=(time >= global_par_pulse1_start) && (time <= (global_par_pulse1_start+global_par_pulse1_length));

	if(event_pulse_start1) 
		global_par_pulse_flag=1;
		x(6)=global_par_pulse_conc;
	end

%Event: id=pulse_start2
	event_pulse_start2=(time >= global_par_pulse2_start) && (time <= (global_par_pulse2_start+global_par_pulse2_length));

	if(event_pulse_start2) 
		global_par_pulse_flag=1;
		x(6)=global_par_pulse_conc;
	end

%Event: id=pulse_start3
	event_pulse_start3=(time >= global_par_pulse3_start) && (time <= (global_par_pulse3_start+global_par_pulse3_length));

	if(event_pulse_start3) 
		global_par_pulse_flag=1;
		x(6)=global_par_pulse_conc;
	end

%Event: id=pulse_end1
	event_pulse_end1=(time < global_par_pulse2_start) && (time > (global_par_pulse1_start+global_par_pulse1_length));

	if(event_pulse_end1) 
		global_par_pulse_flag=0;
	end

%Event: id=pulse_end2
	event_pulse_end2=(time < global_par_pulse3_start) && (time > (global_par_pulse2_start+global_par_pulse2_length));

	if(event_pulse_end2) 
		global_par_pulse_flag=0;
	end

%Event: id=pulse_end3
	event_pulse_end3=time > (global_par_pulse3_start+global_par_pulse3_length);

	if(event_pulse_end3) 
		global_par_pulse_flag=0;
	end

	xdot=zeros(8,1);
	
% Species:   id = taRNA, name = taRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_r1a) + (-1.0 * reaction_r1b));
	
% Species:   id = mT7cr, name = mT7cr, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_r2a) + (-1.0 * reaction_r2b));
	
% Species:   id = mGFPcr, name = mGFPcr, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r3a) + (-1.0 * reaction_r3b));
	
% Species:   id = pT7, name = pT7, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r8));
	
% Species:   id = pGFP, name = pGFP, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_r7) + (-1.0 * reaction_r9));
	
% Species:   id = ara, name = ara, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_r0));
	
% Species:   id = pT3, name = pT3, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_r11) + (-1.0 * reaction_r12));
	
% Species:   id = mT3cr, name = mT3cr, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_r10a) + (-1.0 * reaction_r10b));
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


