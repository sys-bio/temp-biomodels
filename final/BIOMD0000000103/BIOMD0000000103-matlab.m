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
% Model name = Legewie2006_apoptosis_NC
%
% is http://identifiers.org/biomodels.db/MODEL8567941122
% is http://identifiers.org/biomodels.db/BIOMD0000000103
% isDescribedBy http://identifiers.org/pubmed/16978046
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 20.0;
	x0(2) = 20.0;
	x0(3) = 0.0;
	x0(4) = 40.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 200.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;


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

% Compartment: id = cytosol, name = Cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.002;
% Parameter:   id =  kb1, name = kb1
	global_par_kb1=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0E-6;
% Parameter:   id =  k3, name = k3
	global_par_k3=3.5E-4;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.001;
% Parameter:   id =  k9b, name = k9b
	global_par_k9b=0.001;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.001;
% Parameter:   id =  k10b, name = k10b
	global_par_k10b=0.001;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.002;
% Parameter:   id =  k13b, name = k13b
	global_par_k13b=0.1;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.003;
% Parameter:   id =  k15b, name = k15b
	global_par_k15b=0.001;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.0E-4;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.0E-4;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.002;
% Parameter:   id =  k8b, name = k8b
	global_par_k8b=0.1;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.001;
% Parameter:   id =  k11b, name = k11b
	global_par_k11b=0.001;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.001;
% Parameter:   id =  k12b, name = k12b
	global_par_k12b=0.001;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.002;
% Parameter:   id =  k14b, name = k14b
	global_par_k14b=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=5.0E-5;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.0035;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.001;
% Parameter:   id =  k16prod, name = k16prod
	global_par_k16prod=0.02;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.001;
% Parameter:   id =  k17prod, name = k17prod
	global_par_k17prod=0.02;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.001;
% Parameter:   id =  k18prod, name = k18prod
	global_par_k18prod=0.04;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.001;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.001;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.001;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.001;
% Parameter:   id =  k22prod, name = k22prod
	global_par_k22prod=0.2;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.001;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.001;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.001;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.001;
% Parameter:   id =  k27, name = k27
	global_par_k27=0.001;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.001;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.001;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.001;
% Parameter:   id =  k31, name = k31
	global_par_k31=0.001;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.001;
% Parameter:   id =  a, name = a
	global_par_a=1.0;
% Parameter:   id =  d, name = d
	global_par_d=1.0;
% Parameter:   id =  k41, name = k41
	global_par_k41=1.0;
% Parameter:   id =  k42, name = k42
	global_par_k42=1.0;

% Reaction: id = v1, name = Caspase 9 / Apaf-1 binding
	reaction_v1=compartment_cytosol*(global_par_k1*x(1)*x(2)-global_par_kb1*x(6));

% Reaction: id = v2, name = Caspase 3 cleavage by Caspase 9
	reaction_v2=compartment_cytosol*global_par_k2*x(7)*x(2);

% Reaction: id = v3, name = Caspase 3 cleavage by Caspase 9-Apaf-1
	reaction_v3=compartment_cytosol*global_par_k3*x(7)*x(6);

% Reaction: id = v9, name = Caspase 9 Xiap binding
	reaction_v9=compartment_cytosol*(global_par_k9*x(2)*x(4)-global_par_k9b*x(3));

% Reaction: id = v10, name = Caspase 9-Apaf-1 Xiap binding
	reaction_v10=compartment_cytosol*(global_par_k10*x(6)*x(4)-global_par_k10b*x(5));

% Reaction: id = v13, name = Caspase 9-Xiap Apaf-1 binding
	reaction_v13=compartment_cytosol*(global_par_k13*x(3)*x(1)-global_par_k13b*x(5));

% Reaction: id = v15, name = cleaved Caspase 3-Xiap binding
	reaction_v15=compartment_cytosol*(global_par_k15*x(8)*x(4)-global_par_k15b*x(9));

% Reaction: id = v4, name = Caspase 9 cleavage by cleaved caspase 3
	reaction_v4=compartment_cytosol*global_par_k4*x(2)*x(8);

% Reaction: id = v5, name = Caspase 9 cleavage by cleaved caspase 3 when Apaf-1 is bound
	reaction_v5=compartment_cytosol*global_par_k5*x(6)*x(8);

% Reaction: id = v8, name = cleaved Caspase 9 Apaf-1 binding
	reaction_v8=compartment_cytosol*(global_par_k8*x(11)*x(1)-global_par_k8b*x(12));

% Reaction: id = v11, name = cleaved Caspase 9 XIAP binding
	reaction_v11=compartment_cytosol*(global_par_k11*x(11)*x(4)-global_par_k11b*x(10));

% Reaction: id = v12, name = cleaved Caspase 9-Apaf-1 XIAP binding
	reaction_v12=compartment_cytosol*(global_par_k12*x(12)*x(4)-global_par_k12b*x(13));

% Reaction: id = v14, name = cleaved Caspase 9-Xiap Apaf-1 binding
	reaction_v14=compartment_cytosol*(global_par_k14*x(10)*x(1)-global_par_k14b*x(13));

% Reaction: id = v6, name = Caspase 3 cleavage by cleaved Caspase 9
	reaction_v6=compartment_cytosol*global_par_k6*x(7)*x(11);

% Reaction: id = v7, name = Caspase 3 cleavage by cleaved Caspase 9 - Apaf-1
	reaction_v7=compartment_cytosol*global_par_k7*x(7)*x(12);

% Reaction: id = v16, name = Apaf-1 turnover
	reaction_v16=compartment_cytosol*(global_par_k16prod-global_par_k16*x(1));

% Reaction: id = v17, name = Caspase 9 turnover
	reaction_v17=compartment_cytosol*(global_par_k17prod-global_par_k17*x(2));

% Reaction: id = v18, name = Xiap turnover
	reaction_v18=compartment_cytosol*(global_par_k18prod-global_par_k18*x(4));

% Reaction: id = v19, name = Caspase 9-Xiap degradation
	reaction_v19=compartment_cytosol*global_par_k19*x(3);

% Reaction: id = v20, name = Apaf-1-Caspase 9-Xiap degradation
	reaction_v20=compartment_cytosol*global_par_k20*x(5);

% Reaction: id = v21, name = Apaf-1-Caspase 9 degradation
	reaction_v21=compartment_cytosol*global_par_k21*x(6);

% Reaction: id = v22, name = Caspase 3 turnover
	reaction_v22=compartment_cytosol*(global_par_k22prod-global_par_k22*x(7));

% Reaction: id = v23, name = Caspase 3 cleaved degradation
	reaction_v23=compartment_cytosol*global_par_k23*x(8);

% Reaction: id = v24, name = Caspase 3 cleaved-Xiap degradation
	reaction_v24=compartment_cytosol*global_par_k24*x(9);

% Reaction: id = v25, name = Caspase 9 cleaved-Xiap degradation
	reaction_v25=compartment_cytosol*global_par_k25*x(10);

% Reaction: id = v26, name = Caspase 9 cleaved degradation
	reaction_v26=compartment_cytosol*global_par_k26*x(11);

% Reaction: id = v27, name = Apaf-1 Caspase 9 cleaved degradation
	reaction_v27=compartment_cytosol*global_par_k27*x(12);

% Reaction: id = v28, name = Apaf-1 Caspase 9 cleaved-Xiap degradation
	reaction_v28=compartment_cytosol*global_par_k28*x(13);

% Reaction: id = v29, name = Caspase9-Xiap-Caspase3_star degradation
	reaction_v29=compartment_cytosol*global_par_k29*x(14);

% Reaction: id = v30, name = Apaf-1-Caspase9-Xiap-Caspase3_star degradation
	reaction_v30=compartment_cytosol*global_par_k30*x(17);

% Reaction: id = v31, name = Caspase9_star-Xiap-Caspase3_star degradation
	reaction_v31=compartment_cytosol*global_par_k31*x(16);

% Reaction: id = v32, name = Apaf-1-Caspase9_star-Xiap-Caspase3_star degradation
	reaction_v32=compartment_cytosol*global_par_k32*x(17);

% Reaction: id = v33, name = Cleaved-Caspase 3 binding with Xiap-Caspase 9
	reaction_v33=compartment_cytosol*(global_par_a*global_par_k15*x(8)*x(3)-global_par_d*global_par_k15b*x(14));

% Reaction: id = v34, name = Cleaved-Caspase 3 binding with Apaf-Xiap-Caspase 9
	reaction_v34=compartment_cytosol*(global_par_a*global_par_k15*x(8)*x(5)-global_par_d*global_par_k15b*x(15));

% Reaction: id = v35, name = Cleaved-Caspase 3 binding with Cleaved-Xiap-Caspase 9
	reaction_v35=compartment_cytosol*(global_par_a*global_par_k15*x(8)*x(10)-global_par_d*global_par_k15b*x(16));

% Reaction: id = v36, name = Apaf-Xiap-cleaved Caspase 9 binding with cleaved Caspase 3
	reaction_v36=compartment_cytosol*(global_par_a*global_par_k15*x(8)*x(13)-global_par_d*global_par_k15b*x(17));

% Reaction: id = v37, name = Binding of Caspase 9 to cleaved Caspase 3-Xiap
	reaction_v37=compartment_cytosol*(global_par_a*global_par_k9*x(2)*x(9)-global_par_d*global_par_k9b*x(14));

% Reaction: id = v38, name = Binding of Apaf-Caspase 9 to cleaved Caspase 3-Xiap
	reaction_v38=compartment_cytosol*(global_par_a*global_par_k9*x(6)*x(9)-global_par_d*global_par_k9b*x(15));

% Reaction: id = v39, name = Binding of cleaved Caspase 9 to cleaved Caspase 3-Xiap
	reaction_v39=compartment_cytosol*(global_par_a*global_par_k9*x(11)*x(9)-global_par_d*global_par_k9b*x(16));

% Reaction: id = v40, name = Binding of cleaved Caspase 9-Apaf-1 to cleaved Caspase 3-Xiap
	reaction_v40=compartment_cytosol*(global_par_a*global_par_k9*x(12)*x(9)-global_par_d*global_par_k9b*x(17));

% Reaction: id = v41, name = Binding of Caspase 9-Xiap-cleaved Caspase 3 with Apaf
	reaction_v41=compartment_cytosol*(global_par_a*global_par_k1*x(14)*x(1)-global_par_d*global_par_kb1*x(15));

% Reaction: id = v42, name = Binding of cleaved Caspase 9-Xiap-cleaved Caspase 3 with Apaf
	reaction_v42=compartment_cytosol*(global_par_a*global_par_k1*x(16)*x(1)-global_par_d*global_par_kb1*x(17));

	xdot=zeros(17,1);
	
% Species:   id = A, name = APAF-1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_v1) + (-1.0 * reaction_v13) + (-1.0 * reaction_v8) + (-1.0 * reaction_v14) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v41) + (-1.0 * reaction_v42));
	
% Species:   id = C9, name = Caspase 9, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v9) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v17) + (-1.0 * reaction_v37));
	
% Species:   id = C9X, name = Caspase 9-XIAP complex, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v13) + (-1.0 * reaction_v19) + (-1.0 * reaction_v33));
	
% Species:   id = X, name = XIAP, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*((-1.0 * reaction_v9) + (-1.0 * reaction_v10) + (-1.0 * reaction_v15) + (-1.0 * reaction_v11) + (-1.0 * reaction_v12) + ( 1.0 * reaction_v18));
	
% Species:   id = AC9X, name = APAF-1-Caspase 9-XIAP complex, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_v10) + ( 1.0 * reaction_v13) + (-1.0 * reaction_v20) + (-1.0 * reaction_v34));
	
% Species:   id = AC9, name = APAF-1-Caspase 9 complex, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v3) + (-1.0 * reaction_v10) + (-1.0 * reaction_v5) + (-1.0 * reaction_v21) + (-1.0 * reaction_v38));
	
% Species:   id = C3, name = Caspase 3, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*((-1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v6) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v22));
	
% Species:   id = C3_star, name = Caspase 3 cleaved, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_v2) + ( 1.0 * reaction_v3) + (-1.0 * reaction_v15) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v6) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v23) + (-1.0 * reaction_v33) + (-1.0 * reaction_v34) + (-1.0 * reaction_v35) + (-1.0 * reaction_v36));
	
% Species:   id = C3_starX, name = Caspase 3 cleaved - XIAP complex, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v24) + (-1.0 * reaction_v37) + (-1.0 * reaction_v38) + (-1.0 * reaction_v39) + (-1.0 * reaction_v40));
	
% Species:   id = C9_starX, name = Caspase 9 cleaved-XIAP complex, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v14) + (-1.0 * reaction_v25) + (-1.0 * reaction_v35));
	
% Species:   id = C9_star, name = Caspase 9 cleaved, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v8) + (-1.0 * reaction_v11) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v6) + (-1.0 * reaction_v26) + (-1.0 * reaction_v39));
	
% Species:   id = AC9_star, name = APAF-1-Caspase 9 cleaved complex, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_v5) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v12) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v27) + (-1.0 * reaction_v40));
	
% Species:   id = AC9_starX, name = Apaf-1-Caspase 9 cleaved -XIAP complex, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*(( 1.0 * reaction_v12) + ( 1.0 * reaction_v14) + (-1.0 * reaction_v28) + (-1.0 * reaction_v36));
	
% Species:   id = C9X_C3_star, name = Apaf-1-Caspase 9 cleaved -XIAP complex, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*((-1.0 * reaction_v29) + ( 1.0 * reaction_v33) + ( 1.0 * reaction_v37) + (-1.0 * reaction_v41));
	
% Species:   id = AC9X_C3_star, name = Apaf-1-Caspase 9 cleaved -XIAP complex, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*(( 1.0 * reaction_v34) + ( 1.0 * reaction_v38) + ( 1.0 * reaction_v41));
	
% Species:   id = C9_starX_C3_star, name = Apaf-1-Caspase 9 cleaved -XIAP complex, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*((-1.0 * reaction_v31) + ( 1.0 * reaction_v35) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v42));
	
% Species:   id = AC9_starX_C3_star, name = Apaf-1-Caspase 9 cleaved -XIAP complex, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*((-1.0 * reaction_v30) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v36) + ( 1.0 * reaction_v40) + ( 1.0 * reaction_v42));
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


