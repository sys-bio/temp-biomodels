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
% Model name = Ihekwaba2004_NFkB_Sensitivity
%
% is http://identifiers.org/biomodels.db/MODEL5952988280
% is http://identifiers.org/biomodels.db/BIOMD0000000230
% isDescribedBy http://identifiers.org/pubmed/17052119
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 2.5081E-4;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.1;
	x0(5) = 0.19028;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.021428;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.015307;
	x0(12) = 0.082062;
	x0(13) = 0.0090963;
	x0(14) = 0.0064977;
	x0(15) = 0.0054868;
	x0(16) = 2.0366E-4;
	x0(17) = 0.19326;
	x0(18) = 0.0013739;
	x0(19) = 0.021887;
	x0(20) = 3.0061E-4;
	x0(21) = 6.3696E-4;
	x0(22) = 0.015635;
	x0(23) = 2.1473E-4;
	x0(24) = 4.55E-4;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.5;
% Parameter:   id =  k4, name = k4
	global_par_k4=5.0E-4;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.5;
% Parameter:   id =  k6, name = k6
	global_par_k6=5.0E-4;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.5;
% Parameter:   id =  k8, name = k8
	global_par_k8=5.0E-4;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.0204;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.5;
% Parameter:   id =  k11, name = k11
	global_par_k11=5.0E-4;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.0075;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.5;
% Parameter:   id =  k14, name = k14
	global_par_k14=5.0E-4;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.011;
% Parameter:   id =  k16, name = k16
	global_par_k16=2.25E-5;
% Parameter:   id =  k17, name = k17
	global_par_k17=2.25E-5;
% Parameter:   id =  k18, name = k18
	global_par_k18=2.25E-5;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.09;
% Parameter:   id =  k20, name = k20
	global_par_k20=8.0E-5;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.5;
% Parameter:   id =  k22, name = k22
	global_par_k22=5.0E-4;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.5;
% Parameter:   id =  k24, name = k24
	global_par_k24=5.0E-4;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.5;
% Parameter:   id =  k26, name = k26
	global_par_k26=5.0E-4;
% Parameter:   id =  k27, name = k27
	global_par_k27=1.54E-6;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.0165;
% Parameter:   id =  k29, name = k29
	global_par_k29=2.8E-4;
% Parameter:   id =  k30, name = k30
	global_par_k30=1.78E-7;
% Parameter:   id =  k31, name = k31
	global_par_k31=2.8E-4;
% Parameter:   id =  k32, name = k32
	global_par_k32=1.27E-7;
% Parameter:   id =  k33, name = k33
	global_par_k33=2.8E-4;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.0225;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.00125;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.00408;
% Parameter:   id =  k37, name = k37
	global_par_k37=1.13E-4;
% Parameter:   id =  k38, name = k38
	global_par_k38=3.0E-4;
% Parameter:   id =  k39, name = k39
	global_par_k39=2.0E-4;
% Parameter:   id =  k40, name = k40
	global_par_k40=0.006;
% Parameter:   id =  k41, name = k41
	global_par_k41=0.00175;
% Parameter:   id =  k42, name = k42
	global_par_k42=0.00408;
% Parameter:   id =  k43, name = k43
	global_par_k43=1.13E-4;
% Parameter:   id =  k44, name = k44
	global_par_k44=1.5E-4;
% Parameter:   id =  k45, name = k45
	global_par_k45=1.0E-4;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.009;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.00175;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.00408;
% Parameter:   id =  k49, name = k49
	global_par_k49=1.13E-4;
% Parameter:   id =  k50, name = k50
	global_par_k50=1.5E-4;
% Parameter:   id =  k51, name = k51
	global_par_k51=1.0E-4;
% Parameter:   id =  k52, name = k52
	global_par_k52=0.185;
% Parameter:   id =  k53, name = k53
	global_par_k53=0.00125;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.0138;
% Parameter:   id =  k55, name = k55
	global_par_k55=0.048;
% Parameter:   id =  k56, name = k56
	global_par_k56=0.00175;
% Parameter:   id =  k57, name = k57
	global_par_k57=0.0052;
% Parameter:   id =  k58, name = k58
	global_par_k58=0.07;
% Parameter:   id =  k59, name = k59
	global_par_k59=0.00175;
% Parameter:   id =  k60, name = k60
	global_par_k60=0.0052;
% Parameter:   id =  k61, name = k61
	global_par_k61=1.2E-4;
% Parameter:   id =  k62, name = k62
	global_par_k62=0.00407;
% Parameter:   id =  k63, name = k63
	global_par_k63=0.0015;
% Parameter:   id =  k64, name = k64
	global_par_k64=0.0022;

% Reaction: id = v1, name = v1
	reaction_v1=global_par_k7*x(2)*x(1);

% Reaction: id = v2, name = v2
	reaction_v2=global_par_k9*x(3);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_k8*x(3);

% Reaction: id = v4, name = v4
	reaction_v4=global_par_k34*x(4)*x(5);

% Reaction: id = v5, name = v5
	reaction_v5=global_par_k62*x(2);

% Reaction: id = v6, name = v6
	reaction_v6=global_par_k35*x(2);

% Reaction: id = v7, name = v7
	reaction_v7=global_par_k10*x(6)*x(1);

% Reaction: id = v8, name = v8
	reaction_v8=global_par_k12*x(7);

% Reaction: id = v9, name = v9
	reaction_v9=global_par_k11*x(7);

% Reaction: id = v10, name = v10
	reaction_v10=global_par_k40*x(4)*x(8);

% Reaction: id = v11, name = v11
	reaction_v11=global_par_k63*x(6);

% Reaction: id = v12, name = v12
	reaction_v12=global_par_k41*x(6);

% Reaction: id = v13, name = v13
	reaction_v13=global_par_k13*x(9)*x(1);

% Reaction: id = v14, name = v14
	reaction_v14=global_par_k15*x(10);

% Reaction: id = v15, name = v15
	reaction_v15=global_par_k14*x(10);

% Reaction: id = v16, name = v16
	reaction_v16=global_par_k46*x(4)*x(11);

% Reaction: id = v17, name = v17
	reaction_v17=global_par_k64*x(9);

% Reaction: id = v18, name = v18
	reaction_v18=global_par_k47*x(9);

% Reaction: id = v19, name = v19
	reaction_v19=global_par_k52*x(4)*x(12);

% Reaction: id = v20, name = v20
	reaction_v20=global_par_k53*x(3);

% Reaction: id = v21, name = v21
	reaction_v21=global_par_k55*x(4)*x(13);

% Reaction: id = v22, name = v22
	reaction_v22=global_par_k56*x(7);

% Reaction: id = v23, name = v23
	reaction_v23=global_par_k58*x(4)*x(14);

% Reaction: id = v24, name = v24
	reaction_v24=global_par_k59*x(10);

% Reaction: id = v25, name = v25
	reaction_v25=global_par_k1*x(5)*x(1);

% Reaction: id = v26, name = v26
	reaction_v26=global_par_k28*x(16)*x(16);

% Reaction: id = v27, name = v27
	reaction_v27=global_par_k2*x(12);

% Reaction: id = v28, name = v28
	reaction_v28=global_par_k21*x(17)*x(16);

% Reaction: id = v29, name = v29
	reaction_v29=global_par_k22*x(18);

% Reaction: id = v30, name = v30
	reaction_v30=global_par_k54*x(18);

% Reaction: id = v31, name = v31
	reaction_v31=global_par_k16*x(12);

% Reaction: id = v32, name = v32
	reaction_v32=global_par_k29*x(15);

% Reaction: id = v33, name = v33
	reaction_v33=global_par_k39*x(17);

% Reaction: id = v34, name = v34
	reaction_v34=global_par_k38*x(5);

% Reaction: id = v35, name = v35
	reaction_v35=global_par_k36*x(15);

% Reaction: id = v36, name = v36
	reaction_v36=global_par_k3*x(8)*x(1);

% Reaction: id = v37, name = v37
	reaction_v37=global_par_k4*x(13);

% Reaction: id = v38, name = v38
	reaction_v38=global_par_k23*x(19)*x(16);

% Reaction: id = v39, name = v39
	reaction_v39=global_par_k24*x(20);

% Reaction: id = v40, name = v40
	reaction_v40=global_par_k57*x(20);

% Reaction: id = v41, name = v41
	reaction_v41=global_par_k17*x(13);

% Reaction: id = v42, name = v42
	reaction_v42=global_par_k31*x(21);

% Reaction: id = v43, name = v43
	reaction_v43=global_par_k45*x(19);

% Reaction: id = v44, name = v44
	reaction_v44=global_par_k44*x(8);

% Reaction: id = v45, name = v45
	reaction_v45=global_par_k42*x(21);

% Reaction: id = v46, name = v46
	reaction_v46=global_par_k5*x(11)*x(1);

% Reaction: id = v47, name = v47
	reaction_v47=global_par_k6*x(14);

% Reaction: id = v48, name = v48
	reaction_v48=global_par_k25*x(22)*x(16);

% Reaction: id = v49, name = v49
	reaction_v49=global_par_k26*x(23);

% Reaction: id = v50, name = v50
	reaction_v50=global_par_k60*x(23);

% Reaction: id = v51, name = v51
	reaction_v51=global_par_k18*x(14);

% Reaction: id = v52, name = v52
	reaction_v52=global_par_k33*x(24);

% Reaction: id = v53, name = v53
	reaction_v53=global_par_k51*x(22);

% Reaction: id = v54, name = v54
	reaction_v54=global_par_k50*x(11);

% Reaction: id = v55, name = v55
	reaction_v55=global_par_k48*x(24);

% Reaction: id = v56, name = v56
	reaction_v56=global_par_k20*x(16);

% Reaction: id = v57, name = v57
	reaction_v57=global_par_k19*x(1);

% Reaction: id = v58, name = v58
	reaction_v58=global_par_k27*const_species_source;

% Reaction: id = v59, name = v59
	reaction_v59=global_par_k30*const_species_source;

% Reaction: id = v60, name = v60
	reaction_v60=global_par_k32*const_species_source;

% Reaction: id = v61, name = v61
	reaction_v61=global_par_k37*x(5);

% Reaction: id = v62, name = v62
	reaction_v62=global_par_k43*x(8);

% Reaction: id = v63, name = v63
	reaction_v63=global_par_k49*x(11);

% Reaction: id = v64, name = v64
	reaction_v64=global_par_k61*x(4);

% Species:   id = source, name = source, constant	const_species_source=1.0;

% Species:   id = sink, name = sink, constant	const_species_sink=0.0;

	xdot=zeros(24,1);
	
% Species:   id = NFkB, name = NFkB, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2) + ( 1.0 * reaction_v3) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v8) + ( 1.0 * reaction_v9) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v14) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v27) + ( 1.0 * reaction_v31) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v41) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v47) + ( 1.0 * reaction_v51) + ( 1.0 * reaction_v56) + (-1.0 * reaction_v57));
	
% Species:   id = IKKIkBa, name = IKKIkBa, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = IKKIkBaNFkB, name = IKKIkBaNFkB, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v20));
	
% Species:   id = IKK, name = IKK, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v6) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v10) + ( 1.0 * reaction_v11) + ( 1.0 * reaction_v12) + ( 1.0 * reaction_v14) + (-1.0 * reaction_v16) + ( 1.0 * reaction_v17) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v19) + ( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + ( 1.0 * reaction_v22) + (-1.0 * reaction_v23) + ( 1.0 * reaction_v24) + (-1.0 * reaction_v64));
	
% Species:   id = IkBa, name = IkBa, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_v4) + ( 1.0 * reaction_v6) + (-1.0 * reaction_v25) + ( 1.0 * reaction_v27) + ( 1.0 * reaction_v33) + (-1.0 * reaction_v34) + ( 1.0 * reaction_v35) + (-1.0 * reaction_v61));
	
% Species:   id = IKKIkBb, name = IKKIkBb, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v10) + (-1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = IKKIkBbNFkB, name = IKKIkBbNFkB, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = IkBb, name = IkBb, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_v10) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37) + ( 1.0 * reaction_v43) + (-1.0 * reaction_v44) + ( 1.0 * reaction_v45) + (-1.0 * reaction_v62));
	
% Species:   id = IKKIkBe, name = IKKIkBe, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_v13) + ( 1.0 * reaction_v15) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v17) + (-1.0 * reaction_v18));
	
% Species:   id = IKKIkBeNFkB, name = IKKIkBeNFkB, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v23) + (-1.0 * reaction_v24));
	
% Species:   id = IkBe, name = IkBe, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_v16) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v46) + ( 1.0 * reaction_v47) + ( 1.0 * reaction_v53) + (-1.0 * reaction_v54) + ( 1.0 * reaction_v55) + (-1.0 * reaction_v63));
	
% Species:   id = IkBaNFkB, name = IkBaNFkB, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_v19) + ( 1.0 * reaction_v20) + ( 1.0 * reaction_v25) + (-1.0 * reaction_v27) + ( 1.0 * reaction_v30) + (-1.0 * reaction_v31));
	
% Species:   id = IkBbNFkB, name = IkBbNFkB, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_v21) + ( 1.0 * reaction_v22) + ( 1.0 * reaction_v36) + (-1.0 * reaction_v37) + ( 1.0 * reaction_v40) + (-1.0 * reaction_v41));
	
% Species:   id = IkBeNFkB, name = IkBeNFkB, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*((-1.0 * reaction_v23) + ( 1.0 * reaction_v24) + ( 1.0 * reaction_v46) + (-1.0 * reaction_v47) + ( 1.0 * reaction_v50) + (-1.0 * reaction_v51));
	
% Species:   id = IkBat, name = IkBat, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_v26) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v58));
	
% Species:   id = NFkBn, name = NFkBn, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*((-1.0 * reaction_v28) + ( 1.0 * reaction_v29) + (-1.0 * reaction_v38) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v48) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v56) + ( 1.0 * reaction_v57));
	
% Species:   id = IkBan, name = IkBan, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_v28) + ( 1.0 * reaction_v29) + (-1.0 * reaction_v33) + ( 1.0 * reaction_v34));
	
% Species:   id = IkBanNFkBn, name = IkBanNFkBn, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_v28) + (-1.0 * reaction_v29) + (-1.0 * reaction_v30));
	
% Species:   id = IkBbn, name = IkBbn, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_v38) + ( 1.0 * reaction_v39) + (-1.0 * reaction_v43) + ( 1.0 * reaction_v44));
	
% Species:   id = IkBbnNFkBn, name = IkBbnNFkBn, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_v38) + (-1.0 * reaction_v39) + (-1.0 * reaction_v40));
	
% Species:   id = IkBbt, name = IkBbt, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*((-1.0 * reaction_v42) + ( 1.0 * reaction_v59));
	
% Species:   id = IkBen, name = IkBen, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*((-1.0 * reaction_v48) + ( 1.0 * reaction_v49) + (-1.0 * reaction_v53) + ( 1.0 * reaction_v54));
	
% Species:   id = IkBenNFkBn, name = IkBenNFkBn, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_v48) + (-1.0 * reaction_v49) + (-1.0 * reaction_v50));
	
% Species:   id = IkBet, name = IkBet, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*((-1.0 * reaction_v52) + ( 1.0 * reaction_v60));
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


