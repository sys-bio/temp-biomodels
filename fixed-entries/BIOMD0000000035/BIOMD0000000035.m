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
% Model name = Vilar2002_Oscillator
%
% is http://identifiers.org/biomodels.db/MODEL6619651140
% is http://identifiers.org/biomodels.db/BIOMD0000000035
% isDescribedBy http://identifiers.org/pubmed/11972055
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 0.0;
	x0(6) = 1.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = deterministicOscillator, name = deterministicOscillator, constant
	compartment_deterministicOscillator=1.0;

% Reaction: id = Reaction1	% Local Parameter:   id =  gammaC, name = gammaC
	reaction_Reaction1_gammaC=2.0;

	reaction_Reaction1=x(2)*x(10)*reaction_Reaction1_gammaC;

% Reaction: id = Reaction2	% Local Parameter:   id =  deltaA, name = deltaA
	reaction_Reaction2_deltaA=1.0;

	reaction_Reaction2=x(2)*reaction_Reaction2_deltaA;

% Reaction: id = Reaction3	% Local Parameter:   id =  deltaA, name = deltaA
	reaction_Reaction3_deltaA=1.0;

	reaction_Reaction3=x(3)*reaction_Reaction3_deltaA;

% Reaction: id = Reaction4	% Local Parameter:   id =  deltaR, name = deltaR
	reaction_Reaction4_deltaR=0.2;

	reaction_Reaction4=x(10)*reaction_Reaction4_deltaR;

% Reaction: id = Reaction5	% Local Parameter:   id =  gammaA, name = gammaA
	reaction_Reaction5_gammaA=1.0;

	reaction_Reaction5=x(2)*x(4)*reaction_Reaction5_gammaA;

% Reaction: id = Reaction6	% Local Parameter:   id =  thetaA, name = thetaA
	reaction_Reaction6_thetaA=50.0;

	reaction_Reaction6=x(5)*reaction_Reaction6_thetaA;

% Reaction: id = Reaction7	% Local Parameter:   id =  alphaA, name = alphaA
	reaction_Reaction7_alphaA=50.0;

	reaction_Reaction7=x(4)*reaction_Reaction7_alphaA;

% Reaction: id = Reaction8	% Local Parameter:   id =  alphaAp, name = alphaAp
	reaction_Reaction8_alphaAp=500.0;

	reaction_Reaction8=x(5)*reaction_Reaction8_alphaAp;

% Reaction: id = Reaction9	% Local Parameter:   id =  deltaMA, name = deltaMA
	reaction_Reaction9_deltaMA=10.0;

	reaction_Reaction9=x(8)*reaction_Reaction9_deltaMA;

% Reaction: id = Reaction10	% Local Parameter:   id =  betaA, name = betaA
	reaction_Reaction10_betaA=50.0;

	reaction_Reaction10=x(8)*reaction_Reaction10_betaA;

% Reaction: id = Reaction11	% Local Parameter:   id =  gammaR, name = gammaR
	reaction_Reaction11_gammaR=1.0;

	reaction_Reaction11=x(2)*x(6)*reaction_Reaction11_gammaR;

% Reaction: id = Reaction12	% Local Parameter:   id =  thetaR, name = thetaR
	reaction_Reaction12_thetaR=100.0;

	reaction_Reaction12=x(7)*reaction_Reaction12_thetaR;

% Reaction: id = Reaction13	% Local Parameter:   id =  alphaR, name = alphaR
	reaction_Reaction13_alphaR=0.01;

	reaction_Reaction13=x(6)*reaction_Reaction13_alphaR;

% Reaction: id = Reaction14	% Local Parameter:   id =  alphaRp, name = alphaRp
	reaction_Reaction14_alphaRp=50.0;

	reaction_Reaction14=x(7)*reaction_Reaction14_alphaRp;

% Reaction: id = Reaction15	% Local Parameter:   id =  deltaMR, name = deltaMR
	reaction_Reaction15_deltaMR=0.5;

	reaction_Reaction15=x(9)*reaction_Reaction15_deltaMR;

% Reaction: id = Reaction16	% Local Parameter:   id =  betaR, name = betaR
	reaction_Reaction16_betaR=5.0;

	reaction_Reaction16=x(9)*reaction_Reaction16_betaR;

	xdot=zeros(10,1);
	
% Species:   id = EmptySet, name = EmptySet
%WARNING speciesID: EmptySet, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction5) + ( 1.0 * reaction_Reaction6) + ( 1.0 * reaction_Reaction10) + (-1.0 * reaction_Reaction11) + ( 1.0 * reaction_Reaction12);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction3);
	
% Species:   id = DA, name = DA, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Reaction5) + ( 1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction7);
	
% Species:   id = DAp, name = DAp, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Reaction5) + (-1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction8) + ( 1.0 * reaction_Reaction8);
	
% Species:   id = DR, name = DR, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_Reaction11) + ( 1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction13);
	
% Species:   id = DRp, name = DRp, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Reaction11) + (-1.0 * reaction_Reaction12) + (-1.0 * reaction_Reaction14) + ( 1.0 * reaction_Reaction14);
	
% Species:   id = MA, name = MA, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_Reaction7) + ( 1.0 * reaction_Reaction8) + (-1.0 * reaction_Reaction9) + (-1.0 * reaction_Reaction10) + ( 1.0 * reaction_Reaction10);
	
% Species:   id = MR, name = MR, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Reaction13) + ( 1.0 * reaction_Reaction14) + (-1.0 * reaction_Reaction15) + (-1.0 * reaction_Reaction16) + ( 1.0 * reaction_Reaction16);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction4) + ( 1.0 * reaction_Reaction16);
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


