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
% Model name = Tyson2001_Cell_Cycle_Regulation
%
% is http://identifiers.org/biomodels.db/MODEL3897475441
% is http://identifiers.org/biomodels.db/BIOMD0000000195
% isDescribedBy http://identifiers.org/pubmed/11371178
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.001;
	x0(2) = 0;
	x0(3) = 0.001;
	x0(4) = 0;
	x0(5) = 0.001;
	x0(6) = 0.5;
	x0(7) = 0.001;
	x0(8) = 0.001;
	x0(9) = 0;
	x0(10) = 0.001;
	x0(11) = 0.001;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=0.04;
% Parameter:   id =  k2p, name = k2p
	global_par_k2p=0.04;
% Parameter:   id =  k2pp, name = k2pp
	global_par_k2pp=1.0;
% Parameter:   id =  k2ppp, name = k2ppp
	global_par_k2ppp=1.0;
% Parameter:   id =  k3p, name = k3p
	global_par_k3p=1.0;
% Parameter:   id =  k3pp, name = k3pp
	global_par_k3pp=10.0;
% Parameter:   id =  J3, name = J3
	global_par_J3=0.04;
% Parameter:   id =  k4, name = k4
	global_par_k4=35.0;
% Parameter:   id =  k5p, name = k5p
	global_par_k5p=0.005;
% Parameter:   id =  k5pp, name = k5pp
	global_par_k5pp=0.2;
% Parameter:   id =  J5, name = J5
	global_par_J5=0.3;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.1;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  J7, name = J7
	global_par_J7=0.001;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.5;
% Parameter:   id =  J8, name = J8
	global_par_J8=0.001;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.1;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.02;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.005;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.0;
% Parameter:   id =  k12p, name = k12p
	global_par_k12p=0.2;
% Parameter:   id =  k12pp, name = k12pp
	global_par_k12pp=50.0;
% Parameter:   id =  mmax, name = mmax
	global_par_mmax=10.0;
% Parameter:   id =  k12ppp, name = k12ppp
	global_par_k12ppp=100.0;
% Parameter:   id =  Keq, name = Keq
	global_par_Keq=1000.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.0;
% Parameter:   id =  k15p, name = k15p
	global_par_k15p=1.5;
% Parameter:   id =  k15pp, name = k15pp
	global_par_k15pp=0.05;
% Parameter:   id =  k16p, name = k16p
	global_par_k16p=1.0;
% Parameter:   id =  k16pp, name = k16pp
	global_par_k16pp=3.0;
% Parameter:   id =  J15, name = J15
	global_par_J15=0.01;
% Parameter:   id =  J16, name = J16
	global_par_J16=0.01;
% Parameter:   id =  k4p, name = k4p
	global_par_k4p=2.0;
% Parameter:   id =  J4, name = J4
	global_par_J4=0.04;
% Parameter:   id =  TF, name = TF
% assignmentRule: variable = CycB
	x(2)=x(1)-2*x(1)*x(10)/(x(1)+x(10)+1/global_par_Keq+((x(1)+x(10)+1/global_par_Keq)^2-4*x(1)*x(10))^(1/2));
% assignmentRule: variable = Trimer
	x(4)=2*x(1)*x(10)/(x(1)+x(10)+1/global_par_Keq+((x(1)+x(10)+1/global_par_Keq)^2-4*x(1)*x(10))^(1/2));
% assignmentRule: variable = TF
	global_par_TF=GK(global_par_k15p*x(6)+global_par_k15pp*x(11), global_par_k16p+global_par_k16pp*x(6)*x(2), global_par_J15, global_par_J16);
% assignmentRule: variable = Mad
	x(9)=1;

% Reaction: id = CycBt_synthesis, name = CycBt synthesis
	reaction_CycBt_synthesis=global_par_k1;

% Reaction: id = CycBdegradation, name = CycBt degradation
	reaction_CycBdegradation=global_par_k2p*x(1);

% Reaction: id = CycBdegradationviaCdh1, name = CycBt degradation via Cdh1
	reaction_CycBdegradationviaCdh1=global_par_k2pp*x(5)*x(1);

% Reaction: id = CycBtdegradationviaCdc20a, name = CycBt degradation via Cdc20a
	reaction_CycBtdegradationviaCdc20a=global_par_k2ppp*x(3)*x(1);

% Reaction: id = Cdh1synthesis, name = Cdh1 synthesis
	reaction_Cdh1synthesis=(global_par_k3p+global_par_k3pp*x(3))*(1-x(5))/(global_par_J3+1-x(5));

% Reaction: id = Cdh1degradation, name = Cdh1 degradation
	reaction_Cdh1degradation=(global_par_k4p*x(11)*x(5)+global_par_k4*x(6)*x(2)*x(5))/(global_par_J4+x(5));

% Reaction: id = Cdc20tsynthesis, name = Cdc20t synthesis
	reaction_Cdc20tsynthesis=global_par_k5p+global_par_k5pp*(x(2)*x(6)/global_par_J5)^global_par_n/(1+(x(2)*x(6)/global_par_J5)^global_par_n);

% Reaction: id = Cdc20t_deg, name = Cdc20t degradation
	reaction_Cdc20t_deg=global_par_k6*x(7);

% Reaction: id = Cdc20activation, name = Cdc20 activation
	reaction_Cdc20activation=global_par_k7*x(8)*(x(7)-x(3))/(global_par_J7+x(7)-x(3));

% Reaction: id = Cdc20ainhibition, name = Cdc20a inhibition
	reaction_Cdc20ainhibition=global_par_k8*x(9)*x(3)/(global_par_J8+x(3));

% Reaction: id = Cdc20adegradation, name = Cdc20a degradation
	reaction_Cdc20adegradation=global_par_k6*x(3);

% Reaction: id = IEPsynthesis, name = IEP synthesis
	reaction_IEPsynthesis=global_par_k9*x(6)*x(2)*(1-x(8));

% Reaction: id = IEPdegradation, name = IEP degradation
	reaction_IEPdegradation=global_par_k10*x(8);

% Reaction: id = growth, name = growth
	reaction_growth=global_par_mu*x(6)*(1-x(6)/global_par_mmax);

% Reaction: id = CKItsynthesis, name = CKIt synthesis
	reaction_CKItsynthesis=global_par_k11;

% Reaction: id = CKIdegradation, name = CKIt degradation
	reaction_CKIdegradation=global_par_k12p*x(10);

% Reaction: id = CKItphosphorilationviaSK, name = CKIt phosphorilation via SK
	reaction_CKItphosphorilationviaSK=global_par_k12pp*x(11)*x(10);

% Reaction: id = eq_7, name = CKIt Trimer sequestred
	reaction_eq_7=global_par_k12ppp*x(6)*x(2)*x(10);

% Reaction: id = SKsynthesis, name = SK synthesis
	reaction_SKsynthesis=global_par_k13*global_par_TF;

% Reaction: id = SKdegradation, name = SK degradation
	reaction_SKdegradation=global_par_k14*x(11);

%Event: id=
	event_=x(2) < 0.1;

	if(event_) 
		x(6)=x(6)/2;
	end

	xdot=zeros(11,1);
	
% Species:   id = CycBt, name = CycBt, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_CycBt_synthesis) + (-1.0 * reaction_CycBdegradation) + (-1.0 * reaction_CycBdegradationviaCdh1) + (-1.0 * reaction_CycBtdegradationviaCdc20a);
	
% Species:   id = CycB, name = CycB, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Cdc20a, name = Cdc20a, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Cdc20activation) + (-1.0 * reaction_Cdc20ainhibition) + (-1.0 * reaction_Cdc20adegradation);
	
% Species:   id = Trimer, name = Trimer, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Cdh1synthesis) + (-1.0 * reaction_Cdh1degradation);
	
% Species:   id = m, name = m, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_growth);
	
% Species:   id = Cdc20t, name = Cdc20t, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Cdc20tsynthesis) + (-1.0 * reaction_Cdc20t_deg);
	
% Species:   id = IEP, name = IEP, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_IEPsynthesis) + (-1.0 * reaction_IEPdegradation);
	
% Species:   id = Mad, name = Mad, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = CKIt, name = CKIt, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_CKItsynthesis) + (-1.0 * reaction_CKIdegradation) + (-1.0 * reaction_CKItphosphorilationviaSK) + (-1.0 * reaction_eq_7);
	
% Species:   id = SK, name = SK, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_SKsynthesis) + (-1.0 * reaction_SKdegradation);
end

function z=GK(A1,A2,A3,A4), z=(2*A4*A1/(A2-A1+A3*A2+A4*A1+((A2-A1+A3*A2+A4*A1)^2-4*(A2-A1)*A4*A1)^(0.5)));end

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


