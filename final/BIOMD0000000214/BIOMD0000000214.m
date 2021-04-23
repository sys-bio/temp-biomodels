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
% Model name = Akman2008_Circadian_Clock_Model2
%
% is http://identifiers.org/biomodels.db/MODEL8306015773
% is http://identifiers.org/biomodels.db/BIOMD0000000214
% isDescribedBy http://identifiers.org/pubmed/18277380
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000299
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.43076;
	x0(2) = 0.45583;
	x0(3) = 5.84748;
	x0(4) = 0.10647;
	x0(5) = 0.09872;
	x0(6) = 5.70265;
	x0(7) = 0.6935;
	x0(8) = 1.2689;
	x0(9) = 0.06565;
	x0(10) = 0.07719;
	x0(11) = 26.4393;
	x0(12) = 0.0;
	x0(13) = 0;
	x0(14) = 0;
	x0(15) = 0;
	x0(16) = 0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=24.9736;
% Parameter:   id =  a2, name = a2
	global_par_a2=3.59797;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.2834;
% Parameter:   id =  a4, name = a4
	global_par_a4=0.46227;
% Parameter:   id =  a5, name = a5
	global_par_a5=0.02917;
% Parameter:   id =  a6, name = a6
	global_par_a6=0.20695;
% Parameter:   id =  a7, name = a7
	global_par_a7=3.02856;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.00209;
% Parameter:   id =  b2, name = b2
	global_par_b2=2.13476;
% Parameter:   id =  b3, name = b3
	global_par_b3=0.08039;
% Parameter:   id =  b4, name = b4
	global_par_b4=0.45859;
% Parameter:   id =  b5, name = b5
	global_par_b5=0.13056;
% Parameter:   id =  b7, name = b7
	global_par_b7=2.96739;
% Parameter:   id =  b8, name = b8
	global_par_b8=0.11167;
% Parameter:   id =  b9, name = b9
	global_par_b9=81.10381;
% Parameter:   id =  b10, name = b10
	global_par_b10=93.03664;
% Parameter:   id =  b6, name = b6
	global_par_b6=0.0;
% Parameter:   id =  d1, name = d1
	global_par_d1=1.43549;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.21251;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.50309;
% Parameter:   id =  d4, name = d4
	global_par_d4=3.36641;
% Parameter:   id =  d5, name = d5
	global_par_d5=0.41085;
% Parameter:   id =  f1, name = f1
	global_par_f1=0.09292;
% Parameter:   id =  f2, name = f2
	global_par_f2=0.14979;
% Parameter:   id =  gam1, name = gam1
	global_par_gam1=0.34603;
% Parameter:   id =  gam2, name = gam2
	global_par_gam2=2.8E-4;
% Parameter:   id =  r1, name = r1
	global_par_r1=2.71574;
% Parameter:   id =  r2, name = r2
	global_par_r2=35.40005;
% Parameter:   id =  n, name = n
	global_par_n=1.02419;
% Parameter:   id =  m, name = m
	global_par_m=1.34979;
% Parameter:   id =  k, name = k
	global_par_k=2.18234;
% Parameter:   id =  a3p, name = a3p
	global_par_a3p=0.34578;
% Parameter:   id =  d2p, name = d2p
	global_par_d2p=0.18191;
% Parameter:   id =  f1p, name = f1p
	global_par_f1p=0.09588;
% Parameter:   id =  gam1p, name = gam1p
	global_par_gam1p=0.40119;
% Parameter:   id =  amp, name = amp
	global_par_amp=0.0;
% Parameter:   id =  dawn, name = dawn
	global_par_dawn=12.0;
% Parameter:   id =  dusk, name = dusk
	global_par_dusk=24.0;
% assignmentRule: variable = sFrq_tot
	x(13)=x(9)+x(4)+x(1);
% assignmentRule: variable = lFrq_tot
	x(14)=x(10)+x(5)+x(2);
% assignmentRule: variable = Frq_tot
	x(15)=x(13)+x(14);
% assignmentRule: variable = WC1_tot
	x(16)=x(11)+x(12)+x(3)+x(6);

% Reaction: id = MFtrn, name = MFtrn
	reaction_MFtrn=global_par_a1*x(12)^global_par_n/((1+(x(9)+x(10))/global_par_b1)*(x(12)^global_par_n+global_par_b2^global_par_n))+global_par_a2*x(11)^global_par_m/((1+(x(9)+x(10))/global_par_b3)*(x(11)^global_par_m+global_par_b4^global_par_m));

% Reaction: id = MFdeg, name = MFdeg
	reaction_MFdeg=global_par_d1*x(7)/(x(7)+global_par_b5);

% Reaction: id = E1Ftrl, name = E1Ftrl
	reaction_E1Ftrl=global_par_a3*x(7);

% Reaction: id = E1Fdeg, name = E1Fdeg
	reaction_E1Fdeg=global_par_gam1*x(1);

% Reaction: id = E2Ftrl, name = E2Ftrl
	reaction_E2Ftrl=global_par_f1*x(1);

% Reaction: id = E2Fdeg, name = E2Fdeg
	reaction_E2Fdeg=global_par_gam1*x(4);

% Reaction: id = PFtrl, name = PFtrl
	reaction_PFtrl=global_par_f1*x(4);

% Reaction: id = PFdeg, name = PFdeg
	reaction_PFdeg=global_par_d2*x(9);

% Reaction: id = MWtrn, name = MWtrn
	reaction_MWtrn=global_par_a4+global_par_a5*x(12)^global_par_k/(x(12)^global_par_k+global_par_b7^global_par_k);

% Reaction: id = MWdeg, name = MWdeg
	reaction_MWdeg=global_par_d3*x(8)/(x(8)+global_par_b8);

% Reaction: id = E1Wtrl, name = E1Wtrl
	reaction_E1Wtrl=(global_par_a6+global_par_a7*(x(9)+x(10)))*x(8);

% Reaction: id = E1Wdeg, name = E1Wdeg
	reaction_E1Wdeg=global_par_gam2*x(3);

% Reaction: id = E2Wtrl, name = E2Wtrl
	reaction_E2Wtrl=global_par_f2*x(3);

% Reaction: id = E2Wdeg, name = E2Wdeg
	reaction_E2Wdeg=global_par_gam2*x(6);

% Reaction: id = PWtrl, name = PWtrl
	reaction_PWtrl=global_par_f2*x(6);

% Reaction: id = PWdeg, name = PWdeg
	reaction_PWdeg=global_par_d4*x(11)/(x(11)+global_par_b9);

% Reaction: id = PWtrs, name = PWtrs
	reaction_PWtrs=global_par_r1*global_par_amp*x(11)*(1+tanh(24*(time-24*floor(time/24)-global_par_dawn)))*(1-tanh(24*(time-24*floor(time/24)-global_par_dusk)))/4-global_par_r2*x(12);

% Reaction: id = PWLdeg, name = PWLdeg
	reaction_PWLdeg=global_par_d5*x(12)/(x(12)+global_par_b10);

% Reaction: id = E1Fptrl, name = E1Fptrl
	reaction_E1Fptrl=global_par_a3p*x(7);

% Reaction: id = E1Fpdeg, name = E1Fpdeg
	reaction_E1Fpdeg=global_par_gam1p*x(2);

% Reaction: id = E2Fptrl, name = E2Fptrl
	reaction_E2Fptrl=global_par_f1p*x(2);

% Reaction: id = E2Fpdeg, name = E2Fpdeg
	reaction_E2Fpdeg=global_par_gam1p*x(5);

% Reaction: id = PFptrl, name = PFptrl
	reaction_PFptrl=global_par_f1p*x(5);

% Reaction: id = PFpdeg, name = PFpdeg
	reaction_PFpdeg=global_par_d2p*x(10);

	xdot=zeros(16,1);
	
% Species:   id = E1F, name = s-Frq_1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_E1Ftrl) + (-1.0 * reaction_E1Fdeg) + (-1.0 * reaction_E2Ftrl));
	
% Species:   id = E1Fp, name = l-Frq_1, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_E1Fptrl) + (-1.0 * reaction_E1Fpdeg) + (-1.0 * reaction_E2Fptrl));
	
% Species:   id = E1W, name = WC-1_1, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_E1Wtrl) + (-1.0 * reaction_E1Wdeg) + (-1.0 * reaction_E2Wtrl));
	
% Species:   id = E2F, name = s-Frq_2, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_E2Ftrl) + (-1.0 * reaction_E2Fdeg) + (-1.0 * reaction_PFtrl));
	
% Species:   id = E2Fp, name = l-Frq_2, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_E2Fptrl) + (-1.0 * reaction_E2Fpdeg) + (-1.0 * reaction_PFptrl));
	
% Species:   id = E2W, name = WC-1_2, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_E2Wtrl) + (-1.0 * reaction_E2Wdeg) + (-1.0 * reaction_PWtrl));
	
% Species:   id = MF, name = Frq mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_MFtrn) + (-1.0 * reaction_MFdeg));
	
% Species:   id = MW, name = WC-1 mRNA, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_MWtrn) + (-1.0 * reaction_MWdeg));
	
% Species:   id = PF, name = s-Frq, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_PFtrl) + (-1.0 * reaction_PFdeg));
	
% Species:   id = PFp, name = l-Frq, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_PFptrl) + (-1.0 * reaction_PFpdeg));
	
% Species:   id = PW, name = WC-1, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_PWtrl) + (-1.0 * reaction_PWdeg) + (-1.0 * reaction_PWtrs));
	
% Species:   id = PWL, name = WC-1*, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_PWtrs) + (-1.0 * reaction_PWLdeg));
	
% Species:   id = sFrq_tot, name = tot s-Frq, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = lFrq_tot, name = tot l-Frq, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = Frq_tot, name = tot Frq, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = WC1_tot, name = tot WC-1, defined in a rule 	xdot(16) = x(16);
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


