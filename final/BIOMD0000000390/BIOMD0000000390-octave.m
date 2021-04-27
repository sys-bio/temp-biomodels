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
% Model name = Arnold2011_Giersch1990_CalvinCycle
%
% is http://identifiers.org/biomodels.db/MODEL1109270005
% is http://identifiers.org/biomodels.db/BIOMD0000000390
% isDescribedBy http://identifiers.org/pubmed/22001849
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 2.0;
	x0(2) = 2.4;
	x0(3) = 0.5;
	x0(4) = 0.0500747384155456;
	x0(5) = 5.0;
	x0(6) = 0.68;
	x0(7) = 0.82;
	x0(8) = 3.68496263079223;


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

% Compartment: id = chloroplast, name = chloroplast, constant
	compartment_chloroplast=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  V6, name = V6
	global_par_V6=5.8801285588795;
% Parameter:   id =  P_0, name = P_0
	global_par_P_0=16.0;
% assignmentRule: variable = totRuBP
	x(8)=1/2*(global_par_P_0-(x(2)+x(3)+x(4)+x(5)+x(6)));

% Reaction: id = RuBisCO, name = RuBisCO	% Local Parameter:   id =  k, name = k
	reaction_RuBisCO_k=0.504;
	% Local Parameter:   id =  K, name = K
	reaction_RuBisCO_K=0.04;

	reaction_RuBisCO=compartment_chloroplast*function_5(reaction_RuBisCO_k, const_species_E_RuBisCO, x(8), reaction_RuBisCO_K);

% Reaction: id = PGA_red, name = PGA reduction	% Local Parameter:   id =  Vm, name = Vm
	reaction_PGA_red_Vm=3.49;
	% Local Parameter:   id =  k, name = k
	reaction_PGA_red_k=14.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_PGA_red_K1=1.0;
	% Local Parameter:   id =  K2, name = K2
	reaction_PGA_red_K2=1.0;

	reaction_PGA_red=compartment_chloroplast*function_6(reaction_PGA_red_Vm, x(2), x(6), x(7), x(3), x(5), reaction_PGA_red_k, reaction_PGA_red_K1, reaction_PGA_red_K2);

% Reaction: id = TP_red, name = TP reduction	% Local Parameter:   id =  Vm, name = Vm
	reaction_TP_red_Vm=1.06;
	% Local Parameter:   id =  K, name = K
	reaction_TP_red_K=0.4;

	reaction_TP_red=compartment_chloroplast*function_7(reaction_TP_red_Vm, x(3), reaction_TP_red_K);

% Reaction: id = RuBP_reg, name = RuBP regeneration	% Local Parameter:   id =  Vm, name = Vm
	reaction_RuBP_reg_Vm=4.81;
	% Local Parameter:   id =  K1, name = K1
	reaction_RuBP_reg_K1=0.05;
	% Local Parameter:   id =  K2, name = K2
	reaction_RuBP_reg_K2=0.5;
	% Local Parameter:   id =  K3, name = K3
	reaction_RuBP_reg_K3=0.05;

	reaction_RuBP_reg=compartment_chloroplast*function_8(reaction_RuBP_reg_Vm, x(4), x(6), reaction_RuBP_reg_K1, reaction_RuBP_reg_K2, reaction_RuBP_reg_K3, x(5));

% Reaction: id = TPT, name = TP translocator	% Local Parameter:   id =  K2, name = K2
	reaction_TPT_K2=0.25;
	% Local Parameter:   id =  K1, name = K1
	reaction_TPT_K1=0.08;
	% Local Parameter:   id =  Vm, name = Vm
	reaction_TPT_Vm=3.3;

	reaction_TPT=function_9(x(3), const_species_Pic, const_species_TPc, x(5), reaction_TPT_K2, reaction_TPT_K1, reaction_TPT_Vm);

% Reaction: id = ATP_S, name = ATP synthesis	% Local Parameter:   id =  K1, name = K1
	reaction_ATP_S_K1=0.08;
	% Local Parameter:   id =  K2, name = K2
	reaction_ATP_S_K2=0.5;

	reaction_ATP_S=compartment_chloroplast*function_10(global_par_V6, x(7), x(5), reaction_ATP_S_K1, reaction_ATP_S_K2);

% Species:   id = E_RuBisCO, name = RuBisCo, constant	const_species_E_RuBisCO=3.56;

% Species:   id = TPc, name = TPc, constant	const_species_TPc=0.2;

% Species:   id = Pic, name = Pic, constant	const_species_Pic=1.4;

	xdot=zeros(8,1);
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO) + ( 1.0 * reaction_RuBP_reg));
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*(( 2.0 * reaction_RuBisCO) + (-1.0 * reaction_PGA_red));
	
% Species:   id = TP, name = TP, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + (-5.0 * reaction_TP_red) + (-1.0 * reaction_TPT));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*(( 3.0 * reaction_TP_red) + (-1.0 * reaction_RuBP_reg));
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + ( 2.0 * reaction_TP_red) + ( 1.0 * reaction_TPT) + (-1.0 * reaction_ATP_S));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(6) = (1/(compartment_chloroplast))*((-1.0 * reaction_PGA_red) + (-1.0 * reaction_RuBP_reg) + ( 1.0 * reaction_ATP_S));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(7) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_red) + ( 1.0 * reaction_RuBP_reg) + (-1.0 * reaction_ATP_S));
	
% Species:   id = totRuBP, name = totRuBP, involved in a rule 	xdot(8) = x(8);
end

function z=function_6(Vm,S1,S2,P1,P2,P3,k,K1,K2), z=(Vm*(S1*S2-P1*P2*P3/k)/(K1+S1*S2*K1/K2+P1*P2*P3/k));end

function z=function_5(k,E,S,K), z=(k/2*(E+S+K-((E+S+K)^2-4*E*S)^(0.5)));end

function z=function_7(Vm,S,K), z=(Vm*S/(S+K));end

function z=function_8(Vm,S1,S2,K1,K2,K3,R), z=(Vm*S1*S2/(K1*K2+K2*S2+S1*S2+K3*R));end

function z=function_10(Vm,s1,s2,K1,K2), z=(Vm*s1*s2/((s1+K1)*(s2+K2)));end

function z=function_9(S1,S2,P1,P2,K2,K1,Vm), z=(Vm*(S1*S2-P1*P2)/((S1+P1)*K2+(S2+P2)*K1+K1*K2*(S1/K1+P2/K2)*(S2/K2+P1/K1)));end

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


