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
% Model name = Arnold2011_Zhu2009_CalvinCycle
%
% is http://identifiers.org/biomodels.db/MODEL1109270004
% is http://identifiers.org/biomodels.db/BIOMD0000000388
% isDescribedBy http://identifiers.org/pubmed/22001849
% is http://identifiers.org/kegg.pathway/ko00710
% is http://identifiers.org/obo.go/GO:0019253
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 2.0;
	x0(2) = 2.4;
	x0(3) = 0.0011;
	x0(4) = 0.02;
	x0(5) = 0.0501;
	x0(6) = 6.3477;


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
% assignmentRule: variable = Pi
	x(6)=15-2*(x(1)+x(3)+const_species_ATP)-(x(2)+x(4)+x(5)+const_species_ADP);

% Reaction: id = RuBisCO, name = RuBisCO	% Local Parameter:   id =  Km, name = Km
	reaction_RuBisCO_Km=1.0;
	% Local Parameter:   id =  V, name = V
	reaction_RuBisCO_V=3.78;

	reaction_RuBisCO=compartment_chloroplast*function_1(x(1), reaction_RuBisCO_Km, reaction_RuBisCO_V);

% Reaction: id = PGA_K, name = PGA kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_PGA_K_Vm=11.75;
	% Local Parameter:   id =  K1, name = K1
	reaction_PGA_K_K1=0.24;
	% Local Parameter:   id =  K2, name = K2
	reaction_PGA_K_K2=0.39;

	reaction_PGA_K=compartment_chloroplast*function_2(reaction_PGA_K_Vm, x(2), const_species_ATP, reaction_PGA_K_K1, reaction_PGA_K_K2);

% Reaction: id = GAP_DH, name = GAP dehydrogenase	% Local Parameter:   id =  Km, name = Km
	reaction_GAP_DH_Km=0.5;
	% Local Parameter:   id =  V, name = V
	reaction_GAP_DH_V=5.04;

	reaction_GAP_DH=compartment_chloroplast*function_1(x(3), reaction_GAP_DH_Km, reaction_GAP_DH_V);

% Reaction: id = GAP2Ru5P, name = GAP to Ru5P	% Local Parameter:   id =  Km, name = Km
	reaction_GAP2Ru5P_Km=0.84;
	% Local Parameter:   id =  V, name = V
	reaction_GAP2Ru5P_V=3.05;

	reaction_GAP2Ru5P=compartment_chloroplast*function_1(x(4), reaction_GAP2Ru5P_Km, reaction_GAP2Ru5P_V);

% Reaction: id = Ru5P_K, name = Ru5P kinase	% Local Parameter:   id =  Vm, name = Vm
	reaction_Ru5P_K_Vm=8.0;
	% Local Parameter:   id =  K1, name = K1
	reaction_Ru5P_K_K1=0.15;
	% Local Parameter:   id =  K2, name = K2
	reaction_Ru5P_K_K2=0.059;

	reaction_Ru5P_K=compartment_chloroplast*function_2(reaction_Ru5P_K_Vm, x(5), const_species_ATP, reaction_Ru5P_K_K1, reaction_Ru5P_K_K2);

% Reaction: id = PGA2sink, name = PGA to sink	% Local Parameter:   id =  Km, name = Km
	reaction_PGA2sink_Km=0.75;
	% Local Parameter:   id =  V, name = V
	reaction_PGA2sink_V=3.0;

	reaction_PGA2sink=compartment_chloroplast*function_1(x(2), reaction_PGA2sink_Km, reaction_PGA2sink_V);

% Reaction: id = GAP2sink, name = GAP to sink	% Local Parameter:   id =  Km, name = Km
	reaction_GAP2sink_Km=5.0;
	% Local Parameter:   id =  V, name = V
	reaction_GAP2sink_V=0.1;

	reaction_GAP2sink=compartment_chloroplast*function_1(x(4), reaction_GAP2sink_Km, reaction_GAP2sink_V);

% Species:   id = ADP, name = ADP, constant	const_species_ADP=0.82;

% Species:   id = ATP, name = ATP, constant	const_species_ATP=0.68;

	xdot=zeros(6,1);
	
% Species:   id = RuBP, name = RuBP, affected by kineticLaw
	xdot(1) = (1/(compartment_chloroplast))*((-1.0 * reaction_RuBisCO) + ( 1.0 * reaction_Ru5P_K));
	
% Species:   id = PGA, name = PGA, affected by kineticLaw
	xdot(2) = (1/(compartment_chloroplast))*(( 2.0 * reaction_RuBisCO) + (-1.0 * reaction_PGA_K) + (-1.0 * reaction_PGA2sink));
	
% Species:   id = DPGA, name = DPGA, affected by kineticLaw
	xdot(3) = (1/(compartment_chloroplast))*(( 1.0 * reaction_PGA_K) + (-1.0 * reaction_GAP_DH));
	
% Species:   id = GAP, name = GAP, affected by kineticLaw
	xdot(4) = (1/(compartment_chloroplast))*(( 1.0 * reaction_GAP_DH) + (-1.0 * reaction_GAP2Ru5P) + (-1.0 * reaction_GAP2sink));
	
% Species:   id = Ru5P, name = Ru5P, affected by kineticLaw
	xdot(5) = (1/(compartment_chloroplast))*(( 0.6 * reaction_GAP2Ru5P) + (-1.0 * reaction_Ru5P_K));
	
% Species:   id = Pi, name = Pi, involved in a rule 	xdot(6) = x(6);
end

function z=function_1(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_2(Vm,s1,s2,K1,K2), z=(Vm*s1*s2/((s1+K1)*(s2+K2)));end

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


