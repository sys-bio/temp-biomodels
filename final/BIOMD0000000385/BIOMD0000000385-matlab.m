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
% Model name = Arnold2011_Schultz2003_RuBisCO-CalvinCycle
%
% is http://identifiers.org/biomodels.db/MODEL1109270001
% is http://identifiers.org/biomodels.db/BIOMD0000000385
% isDescribedBy http://identifiers.org/pubmed/22001849
% is http://identifiers.org/go/GO:0019253
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 2.4;
	x0(2) = 0.21;
	x0(3) = 0.29;


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

% Compartment: id = chloroplast, name = chloroplast, constant
	compartment_chloroplast=1.0;
% Parameter:   id =  Rp, name = Rp
	global_par_Rp=3.2;
% Parameter:   id =  Nt, name = Nt
	global_par_Nt=0.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.19;
% Parameter:   id =  J, name = J
% Parameter:   id =  Jmax, name = Jmax
	global_par_Jmax=112.989573402043;
% Parameter:   id =  Gamma, name = Gamma
	global_par_Gamma=3.81695;
% Parameter:   id =  PPFD, name = PPFD
	global_par_PPFD=1000.0;
% Parameter:   id =  Vcmax, name = Vcmax
	global_par_Vcmax=1.4749455852483;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=27.8535785188479;
% Parameter:   id =  Ko, name = Ko
	global_par_Ko=41.9469718861558;
% Parameter:   id =  phi, name = phi
% Parameter:   id =  TPU, name = TPU
	global_par_TPU=0.227712577291006;
% Parameter:   id =  g0, name = g0
	global_par_g0=0.468615384615385;
% Parameter:   id =  h, name = h
	global_par_h=0.6;
% Parameter:   id =  k, name = k
	global_par_k=118.69;
% Parameter:   id =  Rd, name = Rd
	global_par_Rd=0.00624227154326423;
% Parameter:   id =  v_c, name = v_c
% Parameter:   id =  Vc, name = Vc
% Parameter:   id =  Vj, name = Vj
% Parameter:   id =  Vp, name = Vp
% assignmentRule: variable = J
	global_par_J=global_par_alpha*global_par_PPFD/(1+(global_par_alpha*global_par_PPFD/global_par_Jmax)^2)^(0.5)/(65*0.5);
% assignmentRule: variable = NADP
	x(3)=global_par_Nt-x(2);
% assignmentRule: variable = Vj
	global_par_Vj=global_par_J/4*(const_species_CO2-1.6*1/2*((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma))+(((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+2*global_par_Gamma)+global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma))+(((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+2*global_par_Gamma)+global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^(0.5))))/(const_species_CO2-1.6*1/2*((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma))+(((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+2*global_par_Gamma)+global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma))+(((1.6*(global_par_J/4-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+2*global_par_Gamma)+global_par_k*global_par_h/const_species_CO2*global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+2*global_par_Gamma)+global_par_J/4*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+2*global_par_Gamma)))^(0.5)))+2*global_par_Gamma);
% assignmentRule: variable = Vc
	global_par_Vc=global_par_Vcmax*(const_species_CO2-1.6*1/2*((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko)))+(((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko)))+(((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^(0.5))))/(const_species_CO2-1.6*1/2*((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko)))+(((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko)))+(((1.6*(global_par_Vcmax-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_k*global_par_h/const_species_CO2*global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))+global_par_Vcmax*(global_par_Gamma-const_species_CO2))/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2+global_par_Kc*(1+const_species_O2/global_par_Ko))))^(0.5)))+global_par_Kc*(1+const_species_O2/global_par_Ko));
% assignmentRule: variable = Vp
	global_par_Vp=3*global_par_TPU*(const_species_CO2-1.6*1/2*((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma))+(((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2-global_par_Gamma)-3*global_par_TPU*const_species_CO2)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma))+(((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2-global_par_Gamma)-3*global_par_TPU*const_species_CO2)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^(0.5))))/(const_species_CO2-1.6*1/2*((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma))+(((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2-global_par_Gamma)-3*global_par_TPU*const_species_CO2)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^(0.5))/(global_par_g0+global_par_k*global_par_h/const_species_CO2*1/2*((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma))+(((1.6*(3*global_par_TPU-global_par_Rd)+(global_par_k*global_par_h/const_species_CO2*global_par_Rd+global_par_g0)*(const_species_CO2-global_par_Gamma)-global_par_k*global_par_h*3*global_par_TPU)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^2+4*global_par_g0*(global_par_Rd*(const_species_CO2-global_par_Gamma)-3*global_par_TPU*const_species_CO2)/(1.6-global_par_k*global_par_h/const_species_CO2*(const_species_CO2-global_par_Gamma)))^(0.5)))-global_par_Gamma);
% assignmentRule: variable = v_c
	global_par_v_c=(abs((abs(global_par_Vc+global_par_Vj)-abs(global_par_Vc-global_par_Vj))/2+global_par_Vp)-abs((abs(global_par_Vc+global_par_Vj)-abs(global_par_Vc-global_par_Vj))/2-global_par_Vp))/2;
% assignmentRule: variable = phi
	global_par_phi=0.21*(global_par_g0+global_par_h*global_par_k/const_species_CO2*(global_par_v_c-global_par_Rd))*const_species_O2/global_par_Ko/(global_par_g0+(global_par_h*global_par_k-1.6)*(global_par_v_c-global_par_Rd))/global_par_Kc;

% Reaction: id = PGA_prod_Vc, name = PGA production - v_c
	reaction_PGA_prod_Vc=compartment_chloroplast*carboxylation(global_par_Vc, global_par_Vj, global_par_Vp);

% Reaction: id = PGA_prod_Vo, name = PGA production - v_o
	reaction_PGA_prod_Vo=compartment_chloroplast*oxygenation(global_par_phi, global_par_Vc, global_par_Vj, global_par_Vp);

% Reaction: id = PGA_cons, name = PGA consumption
	reaction_PGA_cons=compartment_chloroplast*PGA_consumption(x(1), global_par_Rp, x(2), global_par_Nt, global_par_Vcmax);

% Reaction: id = NADPH_prod, name = NADPH production
	reaction_NADPH_prod=compartment_chloroplast*NADPH_production(global_par_J, x(3), global_par_Nt);

% Species:   id = RuBP, name = RuBP, constant	const_species_RuBP=2.0;

% Species:   id = CO2, name = CO2, constant	const_species_CO2=35.0;

% Species:   id = O2, name = O2, constant	const_species_O2=21.0;

	xdot=zeros(3,1);
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*(( 2.0 * reaction_PGA_prod_Vc) + ( 1.5 * reaction_PGA_prod_Vo) + (-1.0 * reaction_PGA_cons));
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*((-2.0 * reaction_PGA_prod_Vc) + (-2.0 * reaction_PGA_prod_Vo) + ( 1.0 * reaction_NADPH_prod));
	
% Species:   id = NADP, name = NADP, involved in a rule 	xdot(3) = x(3);
end

function z=NADPH_production(j,S1,Nt), z=(j/2*S1/Nt);end

function z=carboxylation(Vc,Vj,Vp), z=(((Vc+Vj-abs(Vc-Vj))/2+Vp-abs((Vc+Vj-abs(Vc-Vj))/2-Vp))/2);end

function z=PGA_consumption(S1,Rp,R,Nt,Vc), z=(S1/Rp*R/Nt*Vc);end

function z=oxygenation(phi,Vc,Vj,Vp), z=(phi*((Vc+Vj-abs(Vc-Vj))/2+Vp-abs((Vc+Vj-abs(Vc-Vj))/2-Vp))/2);end

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


