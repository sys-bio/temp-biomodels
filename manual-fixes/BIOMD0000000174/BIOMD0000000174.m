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
% Model name = Del_Conte_Zerial2008_Rab5_Rab7_cut_out_switch
%
% is http://identifiers.org/biomodels.db/MODEL5937037510
% is http://identifiers.org/biomodels.db/BIOMD0000000174
% isDescribedBy http://identifiers.org/pubmed/18628746
% isDerivedFrom http://identifiers.org/pubmed/10591225
% isDerivedFrom http://identifiers.org/pubmed/16890441
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.001;
	x0(3) = 1.0;
	x0(4) = 0.001;


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

% Compartment: id = endosome, name = endosomal membrane, constant
	compartment_endosome=1.0;

% Reaction: id = reaction_0, name = recruitment of Rab5	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_0_K1=1.0;

	reaction_reaction_0=compartment_endosome*reaction_reaction_0_K1;

% Reaction: id = reaction_1, name = activation of Rab5 (time)	% Local Parameter:   id =  ke, name = ke
	reaction_reaction_1_ke=0.3;
	% Local Parameter:   id =  kg, name = kg
	reaction_reaction_1_kg=0.1;
	% Local Parameter:   id =  kf, name = kf
	reaction_reaction_1_kf=2.5;

	reaction_reaction_1=compartment_endosome*sig_act_t(x(1), reaction_reaction_1_ke, time, reaction_reaction_1_kg, x(2), reaction_reaction_1_kf);

% Reaction: id = reaction_2, name = extraction of Rab5	% Local Parameter:   id =  kminus1, name = kminus1
	reaction_reaction_2_kminus1=1.0;

	reaction_reaction_2=compartment_endosome*extraction(reaction_reaction_2_kminus1, x(1));

% Reaction: id = reaction_3, name = recruitment of Rab7	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_3_K1=0.483;

	reaction_reaction_3=compartment_endosome*reaction_reaction_3_K1;

% Reaction: id = reaction_4, name = activation of Rab7 by GEF7	% Local Parameter:   id =  ke, name = ke
	reaction_reaction_4_ke=0.21;
	% Local Parameter:   id =  h, name = h
	reaction_reaction_4_h=3.0;
	% Local Parameter:   id =  kg, name = kg
	reaction_reaction_4_kg=0.1;

	reaction_reaction_4=compartment_endosome*hill_act(x(3), reaction_reaction_4_ke, x(4), reaction_reaction_4_h, reaction_reaction_4_kg);

% Reaction: id = reaction_5, name = activation of Rab7 by GEF5	% Local Parameter:   id =  ke, name = ke
	reaction_reaction_5_ke=0.021;
	% Local Parameter:   id =  kg, name = kg
	reaction_reaction_5_kg=1.0;
	% Local Parameter:   id =  kf, name = kf
	reaction_reaction_5_kf=3.0;

	reaction_reaction_5=compartment_endosome*sig_act(reaction_reaction_5_ke, x(3), reaction_reaction_5_kg, x(2), reaction_reaction_5_kf);

% Reaction: id = reaction_6, name = hydrolysis of Rab5 by Rab7	% Local Parameter:   id =  ke, name = ke
	reaction_reaction_6_ke=0.31;
	% Local Parameter:   id =  kg, name = kg
	reaction_reaction_6_kg=0.3;
	% Local Parameter:   id =  kf, name = kf
	reaction_reaction_6_kf=3.0;

	reaction_reaction_6=compartment_endosome*sig_act(reaction_reaction_6_ke, x(2), reaction_reaction_6_kg, x(4), reaction_reaction_6_kf);

% Reaction: id = reaction_7, name = extraction of rab7	% Local Parameter:   id =  kminus1, name = kminus1
	reaction_reaction_7_kminus1=0.483;

	reaction_reaction_7=compartment_endosome*extraction(reaction_reaction_7_kminus1, x(3));

% Reaction: id = reaction_8, name = hydrolysis of Rab5 (intr.)	% Local Parameter:   id =  kh, name = kh
	reaction_reaction_8_kh=0.06;

	reaction_reaction_8=compartment_endosome*hydrolysis(reaction_reaction_8_kh, x(2));

% Reaction: id = reaction_9, name = hydrolysis of Rab7 (intr.)	% Local Parameter:   id =  kh, name = kh
	reaction_reaction_9_kh=0.15;

	reaction_reaction_9=compartment_endosome*hydrolysis(reaction_reaction_9_kh, x(4));

	xdot=zeros(4,1);
	
% Species:   id = r5, name = Rab5-GDP, affected by kineticLaw
	xdot(1) = (1/(compartment_endosome))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = R5, name = Rab5-GTP, affected by kineticLaw
	xdot(2) = (1/(compartment_endosome))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = r7, name = Rab7-GDP, affected by kineticLaw
	xdot(3) = (1/(compartment_endosome))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = R7, name = Rab7-GTP, affected by kineticLaw
	xdot(4) = (1/(compartment_endosome))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_9));
end

function z=hydrolysis(kh,R), z=(kh*R);end

function z=sig_act(ke,r,kg,R,kf), z=(ke*r/(1+exp((kg-R)*kf)));end

function z=hill_act(r,ke,R,h,kg), z=(r*ke*R^h/(kg+R^h));end

function z=extraction(kminus1,r), z=(kminus1*r);end

function z=sig_act_t(r,ke,t,kg,R,kf), z=(r*ke*t/(100+t)/(1+exp((kg-R)*kf)));end

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


