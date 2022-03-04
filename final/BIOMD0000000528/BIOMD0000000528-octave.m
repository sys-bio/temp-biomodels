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
% Model name = Fribourg2014 - Dynamics of viral antagonism and innate immune response (H1N1 influenza A virus - Cal/09)
%
% is http://identifiers.org/biomodels.db/MODEL1403310002
% is http://identifiers.org/biomodels.db/BIOMD0000000528
% isDescribedBy http://identifiers.org/pubmed/24594370
% isDerivedFrom http://identifiers.org/pubmed/20159146
% isDerivedFrom http://identifiers.org/pubmed/20739535
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.0;
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
	x0(13) = 0.1;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c2, name = Environment, constant
	compartment_c2=1.0;
% Compartment: id = compartment, name = Cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  NS, name = NS
% Parameter:   id =  r5, name = r5
	global_par_r5=1.0;
% Parameter:   id =  n3, name = n3
	global_par_n3=5.0;
% Parameter:   id =  bm, name = bm
	global_par_bm=6.0;
% Parameter:   id =  IC1, name = IC1
% Parameter:   id =  sp, name = sp
	global_par_sp=0.3;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=0.1;
% Parameter:   id =  n1, name = n1
	global_par_n1=1.0;
% Parameter:   id =  IC2, name = IC2
% Parameter:   id =  sv, name = sv
	global_par_sv=0.1;
% Parameter:   id =  delta2, name = delta2
	global_par_delta2=0.4;
% Parameter:   id =  n2, name = n2
	global_par_n2=5.0;
% Parameter:   id =  IC2ifa, name = IC2ifa
% Parameter:   id =  TJ, name = TJ
% Parameter:   id =  TJtot, name = TJtot
	global_par_TJtot=1.0E-4;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.0043;
% Parameter:   id =  K9, name = K9
	global_par_K9=780.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=3.0E-4;
% Parameter:   id =  r0, name = r0
	global_par_r0=0.001;
% Parameter:   id =  k15, name = k15
	global_par_k15=3.6E-8;
% Parameter:   id =  tao1, name = tao1
	global_par_tao1=2.5;
% Parameter:   id =  C, name = C
	global_par_C=500000.0;
% Parameter:   id =  vmax2, name = vmax2
	global_par_vmax2=72000.0;
% Parameter:   id =  NA, name = NA
	global_par_NA=6.023E23;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.002;
% Parameter:   id =  K5, name = K5
	global_par_K5=0.01;
% Parameter:   id =  tao3, name = tao3
	global_par_tao3=0.56;
% Parameter:   id =  r3, name = r3
	global_par_r3=1.0E-7;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.0036;
% Parameter:   id =  tao4, name = tao4
	global_par_tao4=0.46;
% Parameter:   id =  k11, name = k11
	global_par_k11=3.6E-4;
% Parameter:   id =  k14, name = k14
	global_par_k14=3.204E-7;
% Parameter:   id =  tao6, name = tao6
	global_par_tao6=1.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=360.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.36;
% Parameter:   id =  tao8, name = tao8
	global_par_tao8=2.0;
% Parameter:   id =  vmax17, name = vmax17
	global_par_vmax17=72000.0;
% Parameter:   id =  K17, name = K17
	global_par_K17=0.002;
% Parameter:   id =  r1, name = r1
	global_par_r1=1.0E-4;
% Parameter:   id =  rmax20, name = rmax20
	global_par_rmax20=0.001;
% Parameter:   id =  K20, name = K20
	global_par_K20=6.0E-4;
% Parameter:   id =  tao9, name = tao9
	global_par_tao9=2.0;
% Parameter:   id =  vmax19, name = vmax19
	global_par_vmax19=154800.0;
% Parameter:   id =  K19, name = K19
	global_par_K19=0.004;
% Parameter:   id =  r4, name = r4
	global_par_r4=1.0E-5;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.360085;
% Parameter:   id =  tao12, name = tao12
	global_par_tao12=1.0;
% Parameter:   id =  k28, name = k28
	global_par_k28=360.0;
% Parameter:   id =  tao13, name = tao13
	global_par_tao13=15.0;
% assignmentRule: variable = NS
	global_par_NS=global_par_r5*time^global_par_n3/(global_par_bm^global_par_n3+time^global_par_n3);
% assignmentRule: variable = IC1
	global_par_IC1=(1+global_par_sp*(global_par_NS/global_par_delta1)^global_par_n1)/(1+(global_par_NS/global_par_delta1)^global_par_n1);
% assignmentRule: variable = IC2
	global_par_IC2=1;
% assignmentRule: variable = IC2ifa
	global_par_IC2ifa=1;
% assignmentRule: variable = TJ
	global_par_TJ=global_par_TJtot*(x(3)+x(9))/(global_par_K3+x(3)+x(9))*1/(1+global_par_K9*x(5)/global_par_delta);

% Reaction: id = J2, name = J2
	reaction_J2=1000000000*global_par_C*global_par_vmax2/global_par_NA*x(2)/(global_par_K2+x(2));

% Reaction: id = J6, name = J6
	reaction_J6=global_par_k12*global_par_IC1*x(6);

% Reaction: id = J8, name = J8
	reaction_J8=1000000000*global_par_C*global_par_vmax17/global_par_NA*x(8)/(global_par_K17+x(8));

% Reaction: id = J10, name = J10
	reaction_J10=1000000000*global_par_C*global_par_vmax19/global_par_NA*x(10)/(global_par_K19+x(10));

	xdot=zeros(13,1);
	
% Species:   id = w, name = w
%WARNING speciesID: w, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = IFNb_mRNA, name = IFNb_mRNA, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_J1));
	
% Species:   id = IFNb_env, name = IFNb_env, affected by kineticLaw
	xdot(3) = (1/(compartment_c2))*(( 1.0 * reaction_J2));
	
% Species:   id = STATP2n, name = STATP2n, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_J3));
	
% Species:   id = SOCS1m, name = SOCS1m, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_J4));
	
% Species:   id = IRF7m, name = IRF7m, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_J5));
	
% Species:   id = IRF7Pn, name = IRF7Pn, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_J6));
	
% Species:   id = IFNa_mRNA, name = IFNa_mRNA, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_J7));
	
% Species:   id = IFNa_env, name = IFNa_env, affected by kineticLaw
	xdot(9) = (1/(compartment_c2))*(( 1.0 * reaction_J8));
	
% Species:   id = TNFam, name = TNFam, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_J9));
	
% Species:   id = TNFenv, name = TNFenv, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*(( 1.0 * reaction_J10));
	
% Species:   id = STATm, name = STATm, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_J11));
	
% Species:   id = STAT, name = STAT, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_J12));
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


