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
% Model name = Wang2007 - ATP induced intracellular Calcium Oscillation
%
% is http://identifiers.org/biomodels.db/MODEL8342350003
% is http://identifiers.org/biomodels.db/BIOMD0000000145
% isDescribedBy http://identifiers.org/pubmed/17188305
% isDerivedFrom http://identifiers.org/pubmed/1647879
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 1.0;
	x0(2) = 9.0;
	x0(3) = 1.0;
	x0(4) = 1000.0;
	x0(5) = 200.0;
	x0(6) = 1.0;
	x0(7) = 1.0;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = ER, name = ER, constant
	compartment_ER=1.0;
% Parameter:   id =  Raplc, name = Raplc
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=4.0;
% Parameter:   id =  Rpkc, name = Rpkc
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=10.0;
% Parameter:   id =  Kr, name = Kr
	global_par_Kr=200.0;
% Parameter:   id =  Rgalpha_gtp, name = Rgalpha_gtp
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  Kg, name = Kg
	global_par_Kg=25.0;
% Parameter:   id =  Rdg, name = Rdg
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  Rip3, name = Rip3
% Parameter:   id =  Ks, name = Ks
	global_par_Ks=25.0;
% Parameter:   id =  Rcyt1, name = Rcyt1
% Parameter:   id =  Kc1, name = Kc1
	global_par_Kc1=1000.0;
% Parameter:   id =  Rcyt2, name = Rcyt2
% Parameter:   id =  Kc2, name = Kc2
	global_par_Kc2=2000.0;
% Parameter:   id =  Rer, name = Rer
% Parameter:   id =  w, name = w
	global_par_w=3.0;
% Parameter:   id =  Ker, name = Ker
	global_par_Ker=75.0;
% Parameter:   id =  Cplc_total, name = Cplc_total
	global_par_Cplc_total=10.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=0.1;
% Parameter:   id =  k1, name = k1
	global_par_k1=3.4;
% Parameter:   id =  k2, name = k2
	global_par_k2=4.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=4.5;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.2;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.12;
% Parameter:   id =  k6, name = k6
	global_par_k6=14.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=2.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=10500.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=600.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=3000.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=260.0;
% assignmentRule: variable = DG
	x(7)=x(3);
% assignmentRule: variable = Raplc
	global_par_Raplc=x(2)/(global_par_Kp+x(2));
% assignmentRule: variable = Rpkc
	global_par_Rpkc=x(7)/(global_par_Kd+x(7))*x(5)/(global_par_Kr+x(5));
% assignmentRule: variable = Rgalpha_gtp
	global_par_Rgalpha_gtp=x(1)^global_par_n/(global_par_Kg^global_par_n+x(1)^global_par_n);
% assignmentRule: variable = Rdg
	global_par_Rdg=x(7)^global_par_m/(global_par_Kd^global_par_m+x(7)^global_par_m);
% assignmentRule: variable = Rip3
	global_par_Rip3=x(3)^3/(global_par_Ks^3+x(3)^3);
% assignmentRule: variable = Rcyt1
	global_par_Rcyt1=x(5)/(global_par_Kc1+x(5));
% assignmentRule: variable = Rcyt2
	global_par_Rcyt2=x(5)/(global_par_Kc2+x(5));
% assignmentRule: variable = Rer
	global_par_Rer=x(4)^global_par_w/(global_par_Ker^global_par_w+x(4)^global_par_w);
% assignmentRule: variable = PLC
	x(6)=global_par_Cplc_total-x(2);

% Reaction: id = R1
	reaction_R1=compartment_Cytosol*global_par_k0;

% Reaction: id = R2
	reaction_R2=compartment_Cytosol*global_par_k1*x(1);

% Reaction: id = R3
	reaction_R3=compartment_Cytosol*global_par_k2*global_par_Raplc*x(1);

% Reaction: id = R4
	reaction_R4=compartment_Cytosol*global_par_k3*global_par_Rpkc*x(1);

% Reaction: id = R5
	reaction_R5=compartment_Cytosol*global_par_k4*global_par_Rgalpha_gtp*global_par_Rdg*x(6);

% Reaction: id = R6
	reaction_R6=compartment_Cytosol*global_par_k5*x(2);

% Reaction: id = R7
	reaction_R7=compartment_Cytosol*global_par_k6*x(2);

% Reaction: id = R8
	reaction_R8=compartment_Cytosol*global_par_k7*x(3);

% Reaction: id = R9
	reaction_R9=compartment_ER*(global_par_k8*global_par_Rip3*global_par_Rer-global_par_k9*global_par_Rcyt1);

% Reaction: id = R10
	reaction_R10=compartment_Cytosol*global_par_k10*global_par_Rcyt2;

% Reaction: id = R11
	reaction_R11=compartment_Cytosol*global_par_k11;

	xdot=zeros(7,1);
	
% Species:   id = Galpha_GTP, name = Galpha_GTP, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = APLC, name = APLC, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = IP3, name = IP3, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytosol))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = Ca_ER, name = Calcium, affected by kineticLaw
	xdot(4) = (1/(compartment_ER))*((-0.001 * reaction_R9));
	
% Species:   id = Ca_Cyt, name = Calcium, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytosol))*(( 0.01 * reaction_R9) + (-0.05 * reaction_R10) + ( 0.05 * reaction_R11));
	
% Species:   id = PLC, name = PLC, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = DG, name = Diacylglycerol, defined in a rule 	xdot(7) = x(7);
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


