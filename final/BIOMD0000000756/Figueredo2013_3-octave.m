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
% Model name = Figueredo2013/3 - immunointeraction full model
%
% isDescribedBy http://identifiers.org/pubmed/23734575
% is http://identifiers.org/biomodels.db/MODEL1907220001
% is http://identifiers.org/biomodels.db/BIOMD0000000756
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 10.0;
	x0(4) = 0.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.18;
% Parameter:   id =  c, name = c
	global_par_c=0.035;
% Parameter:   id =  aa, name = aa
	global_par_aa=1.0;
% Parameter:   id =  g2, name = g2
	global_par_g2=100000.0;
% Parameter:   id =  u2, name = u2
	global_par_u2=10.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.1245;
% Parameter:   id =  g1, name = g1
	global_par_g1=2.0E7;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.27;
% Parameter:   id =  g3, name = g3
	global_par_g3=2.0E7;
% Parameter:   id =  u3, name = u3
	global_par_u3=10.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.001;
% Parameter:   id =  g4, name = g4
	global_par_g4=1000.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=10.0;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.03;
% Parameter:   id =  p3, name = p3
	global_par_p3=5.0;
% Parameter:   id =  p4, name = p4
	global_par_p4=2.84;
% Parameter:   id =  q1, name = q1
	global_par_q1=10.0;
% Parameter:   id =  q2, name = q2
	global_par_q2=0.1121;
% Parameter:   id =  theta, name = theta
	global_par_theta=1000000.0;
% Parameter:   id =  k, name = k
	global_par_k=1.0E10;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*growth(global_par_a, x(1));

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tumor_microenvironment*td(global_par_a, x(1), global_par_k);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tumor_microenvironment*kill(global_par_aa, x(2), x(1), global_par_g2);

% Reaction: id = immune_death, name = immune death
	reaction_immune_death=compartment_tumor_microenvironment*global_par_u1*x(2);

% Reaction: id = immune_stimulation_tumor, name = immune stimulation-tumor
	reaction_immune_stimulation_tumor=compartment_tumor_microenvironment*ist(global_par_c, x(1), global_par_gamma, x(4));

% Reaction: id = immune_stimulation_IL2, name = immune stimulation-IL2
	reaction_immune_stimulation_IL2=compartment_tumor_microenvironment*isil2(global_par_p1, x(2), x(3), global_par_g1, global_par_q1, x(4), global_par_q2);

% Reaction: id = IL2_loss, name = IL2 loss
	reaction_IL2_loss=compartment_tumor_microenvironment*global_par_u2*x(3);

% Reaction: id = IL2_production, name = IL2 production
	reaction_IL2_production=compartment_tumor_microenvironment*il2p(global_par_p3, x(2), x(1), global_par_g4, global_par_alpha, x(4));

% Reaction: id = tumor_stimulation, name = tumor stimulation
	reaction_tumor_stimulation=compartment_tumor_microenvironment*ts(global_par_p2, x(4), x(1), global_par_g3);

% Reaction: id = tgfb_production, name = tgfb production
	reaction_tgfb_production=compartment_tumor_microenvironment*tgfbp(global_par_p4, x(1), global_par_theta);

% Reaction: id = tgfb_loss, name = tgfb loss
	reaction_tgfb_loss=compartment_tumor_microenvironment*global_par_u3*x(4);

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_killing) + ( 1.0 * reaction_tumor_stimulation));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_immune_death) + ( 1.0 * reaction_immune_stimulation_tumor) + ( 1.0 * reaction_immune_stimulation_IL2));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*((-1.0 * reaction_IL2_loss) + ( 1.0 * reaction_IL2_production));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(4) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tgfb_production) + (-1.0 * reaction_tgfb_loss));
end

function z=growth(a,T), z=(a*T);end

function z=il2p(p3,E,T,g4,alpha,S), z=(p3*E*T/((g4+T)*(1+alpha*S)));end

function z=kill(aa,E,T,g2), z=(aa*E*T/(g2+T));end

function z=td(a,T,k), z=(a*T^2/k);end

function z=ist(c,T,gamma,S), z=(c*T/(1+gamma*S));end

function z=isil2(p1,E,I,g1,q1,S,q2), z=(p1*E*I/(g1+I)*(p1-q1*S/(q2+S)));end

function z=tgfbp(p4,T,theta), z=(p4*T^2/(theta^2+T^2));end

function z=ts(p2,S,T,g3), z=(p2*S*T/(g3+S));end

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


