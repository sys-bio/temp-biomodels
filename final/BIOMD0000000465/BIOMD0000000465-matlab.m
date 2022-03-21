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
% Model name = Koo2013 - Shear stress induced AKT and eNOS phosphorylation - Model 2
%
% is http://identifiers.org/biomodels.db/MODEL1302180004
% is http://identifiers.org/biomodels.db/BIOMD0000000465
% isDescribedBy http://identifiers.org/pubmed/23708369
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.246;
	x0(2) = 150.0;
	x0(3) = 167.616;
	x0(4) = 0.345;
	x0(5) = 0.1;
	x0(6) = 6967.271;
	x0(7) = 0.03;
	x0(8) = 0.0;
	x0(9) = 99.97;
	x0(10) = 0.0;
	x0(11) = 3.0;
	x0(12) = 999.754;
	x0(13) = 1.457;
	x0(14) = 1.723;
	x0(15) = 29.203;
	x0(16) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = Cell, constant
	compartment_c1=1.0;

% Reaction: id = re57	% Local Parameter:   id =  normal, name = normal
	reaction_re57_normal=0.907;
	% Local Parameter:   id =  unity, name = unity
	reaction_re57_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re57_unimol=1.0;
	% Local Parameter:   id =  tf, name = tf
	reaction_re57_tf=15.0;

	reaction_re57=exp(reaction_re57_unity-(x(10)/reaction_re57_tf)^1.8)*reaction_re57_normal*(x(10)/reaction_re57_unimol)^0.8*(reaction_re57_unity-(x(10)/reaction_re57_tf)^1.8);

% Reaction: id = re58	% Local Parameter:   id =  k2, name = k2
	reaction_re58_k2=0.2;
	% Local Parameter:   id =  Km2, name = Km2
	reaction_re58_Km2=6170.0;

	reaction_re58=reaction_re58_k2*x(6)*x(7)/(reaction_re58_Km2+x(6));

% Reaction: id = re59	% Local Parameter:   id =  k3, name = k3
	reaction_re59_k3=7.5;
	% Local Parameter:   id =  Km3, name = Km3
	reaction_re59_Km3=80.9;

	reaction_re59=reaction_re59_k3*x(4)*x(5)/(reaction_re59_Km3+x(4));

% Reaction: id = re60	% Local Parameter:   id =  k4, name = k4
	reaction_re60_k4=0.045;
	% Local Parameter:   id =  kr4, name = kr4
	reaction_re60_kr4=0.089;

	reaction_re60=reaction_re60_k4*x(4)*x(3)-reaction_re60_kr4*x(15);

% Reaction: id = re61	% Local Parameter:   id =  k8, name = k8
	reaction_re61_k8=20.0;
	% Local Parameter:   id =  Km8, name = Km8
	reaction_re61_Km8=80000.0;

	reaction_re61=reaction_re61_k8*x(15)*x(1)/(reaction_re61_Km8+x(15));

% Reaction: id = re62	% Local Parameter:   id =  k10, name = k10
	reaction_re62_k10=20.0;
	% Local Parameter:   id =  Km10, name = Km10
	reaction_re62_Km10=80000.0;

	reaction_re62=reaction_re62_k10*x(13)*x(11)/(reaction_re62_Km10+x(13));

% Reaction: id = re63	% Local Parameter:   id =  k7, name = k7
	reaction_re63_k7=0.037;
	% Local Parameter:   id =  Km7, name = Km7
	reaction_re63_Km7=8800.0;

	reaction_re63=reaction_re63_k7*x(13)*x(2)/(reaction_re63_Km7+x(13));

% Reaction: id = re64	% Local Parameter:   id =  k9, name = k9
	reaction_re64_k9=0.04;
	% Local Parameter:   id =  Km9, name = Km9
	reaction_re64_Km9=48000.0;

	reaction_re64=reaction_re64_k9*x(14)*x(2)/(reaction_re64_Km9+x(14));

% Reaction: id = re65	% Local Parameter:   id =  k11, name = k11
	reaction_re65_k11=0.163;
	% Local Parameter:   id =  Km11, name = Km11
	reaction_re65_Km11=48000.0;

	reaction_re65=reaction_re65_k11*x(14)*x(2)/(reaction_re65_Km11+x(14));

% Reaction: id = re66	% Local Parameter:   id =  k5, name = k5
	reaction_re66_k5=7.0E-4;

	reaction_re66=reaction_re66_k5*x(4)*x(12);

% Reaction: id = re67	% Local Parameter:   id =  k6, name = k6
	reaction_re67_k6=0.98;

	reaction_re67=reaction_re67_k6*x(1);

% Reaction: id = re68	% Local Parameter:   id =  unitime, name = unitime
	reaction_re68_unitime=1.0;

	reaction_re68=reaction_re68_unitime;

	xdot=zeros(16,1);
	
% Species:   id = s14, name = PDK1, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_re66) + (-1.0 * reaction_re67);
	
% Species:   id = s15, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = s16, name = AKT, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re60) + ( 1.0 * reaction_re65);
	
% Species:   id = s17, name = PI3P, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re58) + (-1.0 * reaction_re59) + (-1.0 * reaction_re60) + ( 1.0 * reaction_re65);
	
% Species:   id = s18, name = PTEN
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
	
% Species:   id = s19, name = PIP2, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_re58) + ( 1.0 * reaction_re59);
	
% Species:   id = s20, name = p-PI3K, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_re57);
	
% Species:   id = s21, name = s3, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_re68);
	
% Species:   id = s22, name = PI3K, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_re57);
	
% Species:   id = s23, name = Time, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re68);
	
% Species:   id = s24, name = PDK2
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = s25, name = PDK1_cyto, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_re66) + ( 1.0 * reaction_re67);
	
% Species:   id = s26, name = p-AKT:PI3P, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_re61) + (-1.0 * reaction_re62) + (-1.0 * reaction_re63) + ( 1.0 * reaction_re64);
	
% Species:   id = s27, name = pp-AKT:PI3P, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re62) + (-1.0 * reaction_re64) + (-1.0 * reaction_re65);
	
% Species:   id = s28, name = AKT:PI3P, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_re60) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re63);
	
% Species:   id = s119, name = Shear Stress
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
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


