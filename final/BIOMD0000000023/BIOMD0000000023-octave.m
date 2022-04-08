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
% Model name = Rohwer2001_Sucrose
%
% is http://identifiers.org/biomodels.db/MODEL6618063111
% is http://identifiers.org/biomodels.db/BIOMD0000000023
% isDescribedBy http://identifiers.org/pubmed/11513743
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 5.1;
	x0(9) = 0.2;
	x0(10) = 0.2;
	x0(11) = 1.0;
	x0(12) = 5.0;
	x0(13) = 5.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;

% Reaction: id = v1	% Local Parameter:   id =  Vmax1, name = Vmax1
	reaction_v1_Vmax1=0.286;
	% Local Parameter:   id =  Km1Fruex, name = Km1Fruex
	reaction_v1_Km1Fruex=0.2;
	% Local Parameter:   id =  Ki1Fru, name = Ki1Fru
	reaction_v1_Ki1Fru=1.0;

	reaction_v1=compartment_compartment*reaction_v1_Vmax1*x(13)/(reaction_v1_Km1Fruex*(1+x(1)/reaction_v1_Ki1Fru)+x(13));

% Reaction: id = v2	% Local Parameter:   id =  Vmax2, name = Vmax2
	reaction_v2_Vmax2=0.286;
	% Local Parameter:   id =  Km2Glcex, name = Km2Glcex
	reaction_v2_Km2Glcex=0.2;
	% Local Parameter:   id =  Ki2Glc, name = Ki2Glc
	reaction_v2_Ki2Glc=1.0;

	reaction_v2=compartment_compartment*reaction_v2_Vmax2*x(12)/(reaction_v2_Km2Glcex*(1+x(2)/reaction_v2_Ki2Glc)+x(12));

% Reaction: id = v3	% Local Parameter:   id =  Vmax3, name = Vmax3
	reaction_v3_Vmax3=0.197;
	% Local Parameter:   id =  Km3Glc, name = Km3Glc
	reaction_v3_Km3Glc=0.07;
	% Local Parameter:   id =  Km3ATP, name = Km3ATP
	reaction_v3_Km3ATP=0.25;
	% Local Parameter:   id =  Km4Fru, name = Km4Fru
	reaction_v3_Km4Fru=10.0;
	% Local Parameter:   id =  Ki3G6P, name = Ki3G6P
	reaction_v3_Ki3G6P=0.1;
	% Local Parameter:   id =  Ki4F6P, name = Ki4F6P
	reaction_v3_Ki4F6P=10.0;

	reaction_v3=compartment_compartment*reaction_v3_Vmax3*x(2)/reaction_v3_Km3Glc*x(11)/reaction_v3_Km3ATP/((1+x(11)/reaction_v3_Km3ATP)*(1+x(2)/reaction_v3_Km3Glc+x(1)/reaction_v3_Km4Fru+0.113*x(3)/reaction_v3_Ki3G6P+0.0575*x(3)/reaction_v3_Ki4F6P));

% Reaction: id = v4	% Local Parameter:   id =  Vmax4, name = Vmax4
	reaction_v4_Vmax4=0.197;
	% Local Parameter:   id =  Km4Fru, name = Km4Fru
	reaction_v4_Km4Fru=10.0;
	% Local Parameter:   id =  Km4ATP, name = Km4ATP
	reaction_v4_Km4ATP=0.25;
	% Local Parameter:   id =  Km3Glc, name = Km3Glc
	reaction_v4_Km3Glc=0.07;
	% Local Parameter:   id =  Ki3G6P, name = Ki3G6P
	reaction_v4_Ki3G6P=0.1;
	% Local Parameter:   id =  Ki4F6P, name = Ki4F6P
	reaction_v4_Ki4F6P=10.0;

	reaction_v4=compartment_compartment*reaction_v4_Vmax4*x(1)/reaction_v4_Km4Fru*x(11)/reaction_v4_Km4ATP/((1+x(11)/reaction_v4_Km4ATP)*(1+x(2)/reaction_v4_Km3Glc+x(1)/reaction_v4_Km4Fru+0.113*x(3)/reaction_v4_Ki3G6P+0.0575*x(3)/reaction_v4_Ki4F6P));

% Reaction: id = v5	% Local Parameter:   id =  Vmax5, name = Vmax5
	reaction_v5_Vmax5=0.164;
	% Local Parameter:   id =  Ki5Fru, name = Ki5Fru
	reaction_v5_Ki5Fru=12.0;
	% Local Parameter:   id =  Km5Fru, name = Km5Fru
	reaction_v5_Km5Fru=0.1;
	% Local Parameter:   id =  Km5ATP, name = Km5ATP
	reaction_v5_Km5ATP=0.085;
	% Local Parameter:   id =  Ki5ADP, name = Ki5ADP
	reaction_v5_Ki5ADP=2.0;

	reaction_v5=compartment_compartment*reaction_v5_Vmax5/(1+x(1)/reaction_v5_Ki5Fru)*x(1)/reaction_v5_Km5Fru*x(11)/reaction_v5_Km5ATP/(1+x(1)/reaction_v5_Km5Fru+x(11)/reaction_v5_Km5ATP+x(1)*x(11)/(reaction_v5_Km5Fru*reaction_v5_Km5ATP)+x(10)/reaction_v5_Ki5ADP);

% Reaction: id = v6	% Local Parameter:   id =  Vmax6f, name = Vmax6f
	reaction_v6_Vmax6f=0.379;
	% Local Parameter:   id =  Keq6, name = Keq6
	reaction_v6_Keq6=10.0;
	% Local Parameter:   id =  Ki6Suc6P, name = Ki6Suc6P
	reaction_v6_Ki6Suc6P=0.07;
	% Local Parameter:   id =  Km6F6P, name = Km6F6P
	reaction_v6_Km6F6P=0.6;
	% Local Parameter:   id =  Ki6Pi, name = Ki6Pi
	reaction_v6_Ki6Pi=3.0;
	% Local Parameter:   id =  Ki6UDPGlc, name = Ki6UDPGlc
	reaction_v6_Ki6UDPGlc=1.4;
	% Local Parameter:   id =  Km6UDPGlc, name = Km6UDPGlc
	reaction_v6_Km6UDPGlc=1.8;
	% Local Parameter:   id =  Vmax6r, name = Vmax6r
	reaction_v6_Vmax6r=0.2;
	% Local Parameter:   id =  Km6UDP, name = Km6UDP
	reaction_v6_Km6UDP=0.3;
	% Local Parameter:   id =  Km6Suc6P, name = Km6Suc6P
	reaction_v6_Km6Suc6P=0.1;
	% Local Parameter:   id =  Ki6F6P, name = Ki6F6P
	reaction_v6_Ki6F6P=0.4;

	reaction_v6=compartment_compartment*reaction_v6_Vmax6f*(0.0575*x(3)*0.8231*x(3)-x(4)*x(9)/reaction_v6_Keq6)/(0.0575*x(3)*0.8231*x(3)*(1+x(4)/reaction_v6_Ki6Suc6P)+reaction_v6_Km6F6P*(1+x(8)/reaction_v6_Ki6Pi)*(0.8231*x(3)+reaction_v6_Ki6UDPGlc)+reaction_v6_Km6UDPGlc*0.0575*x(3)+reaction_v6_Vmax6f/(reaction_v6_Vmax6r*reaction_v6_Keq6)*(reaction_v6_Km6UDP*x(4)*(1+0.8231*x(3)/reaction_v6_Ki6UDPGlc)+x(9)*(reaction_v6_Km6Suc6P*(1+reaction_v6_Km6UDPGlc*0.0575*x(3)/(reaction_v6_Ki6UDPGlc*reaction_v6_Km6F6P*(1+x(8)/reaction_v6_Ki6Pi)))+x(4)*(1+0.0575*x(3)/reaction_v6_Ki6F6P))));

% Reaction: id = v7	% Local Parameter:   id =  Vmax7, name = Vmax7
	reaction_v7_Vmax7=0.5;
	% Local Parameter:   id =  Km7Suc6P, name = Km7Suc6P
	reaction_v7_Km7Suc6P=0.1;

	reaction_v7=compartment_compartment*reaction_v7_Vmax7*x(4)/(reaction_v7_Km7Suc6P+x(4));

% Reaction: id = v8	% Local Parameter:   id =  Vmax8f, name = Vmax8f
	reaction_v8_Vmax8f=0.677;
	% Local Parameter:   id =  Keq8, name = Keq8
	reaction_v8_Keq8=5.0;
	% Local Parameter:   id =  Ki8Fru, name = Ki8Fru
	reaction_v8_Ki8Fru=4.0;
	% Local Parameter:   id =  Km8Suc, name = Km8Suc
	reaction_v8_Km8Suc=50.0;
	% Local Parameter:   id =  Ki8UDP, name = Ki8UDP
	reaction_v8_Ki8UDP=0.3;
	% Local Parameter:   id =  Km8UDP, name = Km8UDP
	reaction_v8_Km8UDP=0.3;
	% Local Parameter:   id =  Vmax8r, name = Vmax8r
	reaction_v8_Vmax8r=0.3;
	% Local Parameter:   id =  Km8UDPGlc, name = Km8UDPGlc
	reaction_v8_Km8UDPGlc=0.3;
	% Local Parameter:   id =  Km8Fru, name = Km8Fru
	reaction_v8_Km8Fru=4.0;
	% Local Parameter:   id =  Ki8Suc, name = Ki8Suc
	reaction_v8_Ki8Suc=40.0;

	reaction_v8=compartment_compartment*(-reaction_v8_Vmax8f)*(x(5)*x(9)-x(1)*0.8231*x(3)/reaction_v8_Keq8)/(x(5)*x(9)*(1+x(1)/reaction_v8_Ki8Fru)+reaction_v8_Km8Suc*(x(9)+reaction_v8_Ki8UDP)+reaction_v8_Km8UDP*x(5)+reaction_v8_Vmax8f/(reaction_v8_Vmax8r*reaction_v8_Keq8)*(reaction_v8_Km8UDPGlc*x(1)*(1+x(9)/reaction_v8_Ki8UDP)+0.8231*x(3)*(reaction_v8_Km8Fru*(1+reaction_v8_Km8UDP*x(5)/(reaction_v8_Ki8UDP*reaction_v8_Km8Suc))+x(1)*(1+x(5)/reaction_v8_Ki8Suc))));

% Reaction: id = v9	% Local Parameter:   id =  Vmax9, name = Vmax9
	reaction_v9_Vmax9=0.372;
	% Local Parameter:   id =  Ki9Glc, name = Ki9Glc
	reaction_v9_Ki9Glc=15.0;
	% Local Parameter:   id =  Km9Suc, name = Km9Suc
	reaction_v9_Km9Suc=10.0;
	% Local Parameter:   id =  Ki9Fru, name = Ki9Fru
	reaction_v9_Ki9Fru=15.0;

	reaction_v9=compartment_compartment*reaction_v9_Vmax9/(1+x(2)/reaction_v9_Ki9Glc)*x(5)/(reaction_v9_Km9Suc*(1+x(1)/reaction_v9_Ki9Fru)+x(5));

% Reaction: id = v10	% Local Parameter:   id =  Vmax10, name = Vmax10
	reaction_v10_Vmax10=0.1;
	% Local Parameter:   id =  Km10F6P, name = Km10F6P
	reaction_v10_Km10F6P=0.2;

	reaction_v10=compartment_compartment*reaction_v10_Vmax10*0.0575*x(3)/(reaction_v10_Km10F6P+0.0575*x(3));

% Reaction: id = v11	% Local Parameter:   id =  Vmax11, name = Vmax11
	reaction_v11_Vmax11=1.0;
	% Local Parameter:   id =  Km11Suc, name = Km11Suc
	reaction_v11_Km11Suc=100.0;

	reaction_v11=compartment_compartment*reaction_v11_Vmax11*x(5)/(reaction_v11_Km11Suc+x(5));

	xdot=zeros(13,1);
	
% Species:   id = Fru, name = Fru, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v9));
	
% Species:   id = Glc, name = Glc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v9));
	
% Species:   id = HexP, name = HexP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + ( 1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-2.0 * reaction_v6) + (-1.0 * reaction_v8) + (-1.0 * reaction_v10));
	
% Species:   id = Suc6P, name = Suc6P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7));
	
% Species:   id = Suc, name = Suc, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v9) + (-1.0 * reaction_v11));
	
% Species:   id = Sucvac, name = Sucvac
%WARNING speciesID: Sucvac, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = glycolysis, name = glycolysis
%WARNING speciesID: glycolysis, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = phos, name = phos
%WARNING speciesID: phos, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = UDP, name = UDP
%WARNING speciesID: UDP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = ADP, name = ADP
%WARNING speciesID: ADP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = ATP, name = ATP
%WARNING speciesID: ATP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = Glcex, name = Glcex
%WARNING speciesID: Glcex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = Fruex, name = Fruex
%WARNING speciesID: Fruex, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
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


