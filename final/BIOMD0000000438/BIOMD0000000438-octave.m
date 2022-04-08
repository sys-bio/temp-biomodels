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
% Model name = Saeidi2012 - Quorum sensing device that produces GFP
%
% is http://identifiers.org/biomodels.db/MODEL1301110000
% is http://identifiers.org/biomodels.db/BIOMD0000000438
% isDescribedBy http://identifiers.org/doi/10.1016/j.ces.2012.12.016
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0E-5;
	x0(2) = 1.0E-6;
	x0(3) = 0.0;
	x0(4) = 5.0E-6;
	x0(5) = 1.0E-5;
	x0(6) = 0.0;
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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;

% Reaction: id = re3	% Local Parameter:   id =  Y2, name = degradation rate of LasR
	reaction_re3_Y2=0.0696;

	reaction_re3=reaction_re3_Y2*x(2);

% Reaction: id = re2	% Local Parameter:   id =  k2, name = k2
	reaction_re2_k2=35.7;

	reaction_re2=reaction_re2_k2*x(9);

% Reaction: id = re4	% Local Parameter:   id =  k3, name = k3
	reaction_re4_k3=9600000.0;
	% Local Parameter:   id =  k4, name = k4
	reaction_re4_k4=0.0;

	reaction_re4=x(2)*x(4)*reaction_re4_k3-reaction_re4_k4*x(8);

% Reaction: id = re5	% Local Parameter:   id =  k5, name = k5
	reaction_re5_k5=1960000.0;
	% Local Parameter:   id =  k6, name = k6
	reaction_re5_k6=10.2;

	reaction_re5=x(5)*x(8)*reaction_re5_k5-reaction_re5_k6*x(6);

% Reaction: id = re8	% Local Parameter:   id =  Y3, name = Y3
	reaction_re8_Y3=2.832E-4;

	reaction_re8=reaction_re8_Y3*x(4);

% Reaction: id = re1	% Local Parameter:   id =  k1, name = k1
	reaction_re1_k1=3.734;
	% Local Parameter:   id =  Y1, name = Y1
	reaction_re1_Y1=0.348;

	reaction_re1=reaction_re1_k1*x(1)-reaction_re1_Y1*x(9);

% Reaction: id = re14	% Local Parameter:   id =  K7, name = K7
	reaction_re14_K7=0.004051;
	% Local Parameter:   id =  K8, name = K8
	reaction_re14_K8=0.009567;
	% Local Parameter:   id =  K9, name = K9
	reaction_re14_K9=9.742E-8;
	% Local Parameter:   id =  k10, name = K10
	reaction_re14_k10=6.5E-16;
	% Local Parameter:   id =  K11, name = K11
	reaction_re14_K11=1.0E-14;
	% Local Parameter:   id =  K12, name = K12
	reaction_re14_K12=2.4E-7;
	% Local Parameter:   id =  n1, name = n1
	reaction_re14_n1=2.0;
	% Local Parameter:   id =  n2, name = n2
	reaction_re14_n2=2.0;

	reaction_re14=(reaction_re14_K7+reaction_re14_K8*x(6)^reaction_re14_n1/(reaction_re14_K9^reaction_re14_n1+x(6)^reaction_re14_n1))*(reaction_re14_k10+reaction_re14_K11*x(6)^reaction_re14_n2/(reaction_re14_K12^reaction_re14_n2+x(6)^reaction_re14_n2)-x(10));

	xdot=zeros(10,1);
	
% Species:   id = s1, name = Ptet-LasR, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_re1);
	
% Species:   id = s19, name = LasR, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_re3) + ( 1.0 * reaction_re2) + (-1.0 * reaction_re4);
	
% Species:   id = s3, name = sa3_degraded, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_re3);
	
% Species:   id = s4, name = 3OC12HSL, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re4) + (-1.0 * reaction_re8));
	
% Species:   id = s16, name = pLuxR, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re5);
	
% Species:   id = s17, name = A pLux, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re14));
	
% Species:   id = s5, name = sa6_degraded, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re8));
	
% Species:   id = s42, name = LasR/AHL, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5));
	
% Species:   id = s2, name = mRNA(LasR), affected by kineticLaw
	xdot(9) = (-1.0 * reaction_re2) + ( 1.0 * reaction_re1);
	
% Species:   id = s45, name = GFP, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re14));
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


