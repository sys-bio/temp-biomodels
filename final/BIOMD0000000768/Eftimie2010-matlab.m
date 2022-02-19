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
% Model name = Eftimie2010 - immunity to melanoma
%
% isDescribedBy http://identifiers.org/pubmed/20450922
% is http://identifiers.org/biomodels.db/MODEL1907300001
% is http://identifiers.org/biomodels.db/BIOMD0000000768
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 100000.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  ath, name = ath
	global_par_ath=0.008;
% Parameter:   id =  bth, name = bth
	global_par_bth=0.09;
% Parameter:   id =  cth, name = cth
	global_par_cth=0.1;
% Parameter:   id =  kth, name = kth
	global_par_kth=1.0E-8;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E-8;
% Parameter:   id =  kp, name = kp
	global_par_kp=1.0;
% Parameter:   id =  ks, name = ks
	global_par_ks=1.0;
% Parameter:   id =  dth, name = dth
	global_par_dth=1.0E-7;
% Parameter:   id =  atum, name = atum
	global_par_atum=0.514;
% Parameter:   id =  ktum, name = ktum
	global_par_ktum=1.02E-9;
% Parameter:   id =  gtum, name = gtum
	global_par_gtum=0.2;
% Parameter:   id =  h2, name = h2
	global_par_h2=1000.0;
% Parameter:   id =  h1, name = h1
	global_par_h1=1000000.0;
% Parameter:   id =  h0, name = h0
	global_par_h0=100000.0;
% Parameter:   id =  j0, name = j0
	global_par_j0=34.0;
% Parameter:   id =  jts, name = jts
	global_par_jts=34.0;
% Parameter:   id =  jtp, name = jtp
	global_par_jtp=34.0;
% Parameter:   id =  i11, name = i11
	global_par_i11=5.4;
% Parameter:   id =  i21, name = i21
	global_par_i21=8.6;
% Parameter:   id =  i31, name = i31
	global_par_i31=3.8E-4;
% Parameter:   id =  i3t, name = i3t
	global_par_i3t=10.0;
% Parameter:   id =  c, name = c
	global_par_c=1.0;
% Parameter:   id =  f, name = f
% assignmentRule: variable = f
	global_par_f=x(1);

% Reaction: id = Th_stimulation, name = Th stimulation
	reaction_Th_stimulation=compartment_tme*ths(global_par_ath, x(5), x(2), global_par_h2, global_par_kp, x(4));

% Reaction: id = Th_growth, name = Th growth
	reaction_Th_growth=compartment_tme*thg(global_par_bth, x(1), global_par_kth, global_par_kp, x(4));

% Reaction: id = Th_death, name = Th death
	reaction_Th_death=compartment_tme*thd(global_par_cth, global_par_f);

% Reaction: id = Th_exhaustion, name = Th exhaustion
	reaction_Th_exhaustion=compartment_tme*the(global_par_dth, x(2), x(1));

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_atum, x(2), global_par_kp, x(4), global_par_ktum, global_par_ks, x(3));

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tme*td(global_par_gtum, x(3), x(2), global_par_h0);

% Reaction: id = cytokine_decay, name = cytokine decay
	reaction_cytokine_decay=compartment_tme*global_par_j0*x(5);

% Reaction: id = Th_cytokine_secretion, name = Th cytokine secretion
	reaction_Th_cytokine_secretion=compartment_tme*cyt(global_par_i11, x(1), global_par_c, x(2), global_par_h2, global_par_kp, x(4));

% Reaction: id = TS_cytokine_decay, name = TS cytokine decay
	reaction_TS_cytokine_decay=compartment_tme*global_par_jts*x(3);

% Reaction: id = TS_cytokine_secretion, name = TS cytokine secretion
	reaction_TS_cytokine_secretion=compartment_tme*cyt(global_par_i21, x(1), global_par_c, x(2), global_par_h2, global_par_kp, x(4));

% Reaction: id = TP_cytokine_decay, name = TP cytokine decay
	reaction_TP_cytokine_decay=compartment_tme*global_par_jtp*x(4);

% Reaction: id = TP_cytokine_secretion, name = TP cytokine secretion
	reaction_TP_cytokine_secretion=compartment_tme*tp1(global_par_i31, x(1), global_par_c, x(2), global_par_h2);

% Reaction: id = TP_cytokine_by_tumor, name = TP cytokine by tumor
	reaction_TP_cytokine_by_tumor=compartment_tme*tp2(global_par_i3t, x(2), global_par_h1);

	xdot=zeros(5,1);
	
% Species:   id = Th, name = Th, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_Th_stimulation) + ( 1.0 * reaction_Th_growth) + (-1.0 * reaction_Th_death) + (-1.0 * reaction_Th_exhaustion));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death));
	
% Species:   id = Cs, name = Cs, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*((-1.0 * reaction_TS_cytokine_decay) + ( 1.0 * reaction_TS_cytokine_secretion));
	
% Species:   id = Cp, name = Cp, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*((-1.0 * reaction_TP_cytokine_decay) + ( 1.0 * reaction_TP_cytokine_secretion) + ( 1.0 * reaction_TP_cytokine_by_tumor));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(5) = (1/(compartment_tme))*((-1.0 * reaction_cytokine_decay) + ( 1.0 * reaction_Th_cytokine_secretion));
end

function z=cyt(i,Th,c,T,h2,kp,Cp), z=((i*Th+c)*T/((h2+T)*(1+kp*Cp)));end

function z=tp2(i3t,T,h1), z=(i3t*T^2/(h1^2+T^2));end

function z=tp1(i31,Th,c,T,h2), z=((i31*Th+c)*T/(h2+T));end

function z=thd(cth,f), z=(cth*f);end

function z=the(dth,T,Th), z=(dth*T*Th);end

function z=thg(bth,Th,kth,kp,Cp), z=(bth*Th*(1-kth*Th)/(1+kp*Cp));end

function z=ths(ath,C,T,h2,kp,Cp), z=(ath*C*T/((h2+T)*(1+kp*Cp)));end

function z=td(gtum,Cs,T,h0), z=(gtum*Cs*T/(h0+T));end

function z=tg(atum,T,kp,Cp,ktum,ks,Cs), z=(atum*T*(1+kp*Cp)*(1-ktum*T)/(1+ks*Cs));end

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


