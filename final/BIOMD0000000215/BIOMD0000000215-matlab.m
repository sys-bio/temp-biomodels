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
% Model name = Schulz2009_Th1_differentiation
%
% is http://identifiers.org/biomodels.db/MODEL9284712021
% is http://identifiers.org/biomodels.db/BIOMD0000000215
% isDescribedBy http://identifiers.org/pubmed/19409816
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0440000000000001;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 44.0000000000001;
	x0(7) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% assignmentRule: variable = Ag
	x(3)=1-time^10/(34^10+time^10);

% Reaction: id = vtrnldeg, name = Tbet IFN dependend transcription	% Local Parameter:   id =  K1, name = K1
	reaction_vtrnldeg_K1=0.46;
	% Local Parameter:   id =  K2, name = K2
	reaction_vtrnldeg_K2=2.1;
	% Local Parameter:   id =  a2, name = a2
	reaction_vtrnldeg_a2=0.42;

	reaction_vtrnldeg=compartment_compartment*function_1(x(3), reaction_vtrnldeg_K1, x(4), reaction_vtrnldeg_K2, reaction_vtrnldeg_a2);

% Reaction: id = reaction_1, name = Tbet Receptor dependent transcription	% Local Parameter:   id =  a3, name = a3
	reaction_reaction_1_a3=5.1E-4;

	reaction_reaction_1=compartment_compartment*function_2(reaction_reaction_1_a3, x(5));

% Reaction: id = reaction_3, name = Tbet mRNA degradation	% Local Parameter:   id =  gamma_Tbet, name = gamma_Tbet
	reaction_reaction_3_gamma_Tbet=1.0;

	reaction_reaction_3=compartment_compartment*reaction_reaction_3_gamma_Tbet*x(1);

% Reaction: id = reaction_4, name = Tbet protein degradation	% Local Parameter:   id =  delta_Tbet, name = delta_Tbet
	reaction_reaction_4_delta_Tbet=0.1;

	reaction_reaction_4=compartment_compartment*reaction_reaction_4_delta_Tbet*x(6);

% Reaction: id = reaction_5, name = Rec_mRNA degradation	% Local Parameter:   id =  gamma_Rec, name = gamma_Rec
	reaction_reaction_5_gamma_Rec=1.0;

	reaction_reaction_5=compartment_compartment*reaction_reaction_5_gamma_Rec*x(7);

% Reaction: id = reaction_6, name = Rec_Prot degradation	% Local Parameter:   id =  delta_Rec, name = delta_Rec
	reaction_reaction_6_delta_Rec=0.1;

	reaction_reaction_6=compartment_compartment*reaction_reaction_6_delta_Rec*x(5);

% Reaction: id = reaction_7, name = IFN_mRNA degradation	% Local Parameter:   id =  gamma_IFN, name = gamma_IFN
	reaction_reaction_7_gamma_IFN=1.0;

	reaction_reaction_7=compartment_compartment*reaction_reaction_7_gamma_IFN*x(2);

% Reaction: id = reaction_8, name = IFN_Prot degradation	% Local Parameter:   id =  delta_IFN, name = delta_IFN
	reaction_reaction_8_delta_IFN=1.0;

	reaction_reaction_8=compartment_compartment*reaction_reaction_8_delta_IFN*x(4);

% Reaction: id = reaction_9, name = Tbet Translation	% Local Parameter:   id =  b, name = b
	reaction_reaction_9_b=100.0;

	reaction_reaction_9=compartment_compartment*function_4(reaction_reaction_9_b, x(1));

% Reaction: id = reaction_10, name = IFN tranlation	% Local Parameter:   id =  b, name = b
	reaction_reaction_10_b=100.0;

	reaction_reaction_10=compartment_compartment*function_4(reaction_reaction_10_b, x(2));

% Reaction: id = reaction_11, name = Rec translation	% Local Parameter:   id =  b, name = b
	reaction_reaction_11_b=100.0;

	reaction_reaction_11=compartment_compartment*function_4(reaction_reaction_11_b, x(7));

% Reaction: id = reaction_12, name = Rec Transcription	% Local Parameter:   id =  a4, name = a4
	reaction_reaction_12_a4=0.0028;
	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_12_K4=0.013;

	reaction_reaction_12=compartment_compartment*function_5(reaction_reaction_12_a4, x(6), reaction_reaction_12_K4, x(3));

% Reaction: id = reaction_13, name = IFN transcription	% Local Parameter:   id =  a5, name = a5
	reaction_reaction_13_a5=3.7;
	% Local Parameter:   id =  K5, name = K5
	reaction_reaction_13_K5=0.029;
	% Local Parameter:   id =  K6, name = K6
	reaction_reaction_13_K6=66.0;
	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_13_K7=0.014;

	reaction_reaction_13=compartment_compartment*function_6(reaction_reaction_13_a5, x(6), reaction_reaction_13_K5, x(5), reaction_reaction_13_K6, x(3), reaction_reaction_13_K7);

	xdot=zeros(7,1);
	
% Species:   id = Tbet_mRNA, name = Tbet_mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_vtrnldeg) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Ifn_mRNA, name = Ifn_mRNA, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = Ag, name = Ag, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = Ifn_Prot, name = Ifn_Prot, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = Rec_Prot, name = Rec_Prot, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = Tbet_Prot, name = Tbet_Prot, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = Rec_mRNA, name = Rec_mRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_12));
end

function z=function_1(Ag,K1,Ifn_Prot,K2,a2), z=(a2*Ag/(K1+Ag)*Ifn_Prot/(K2+Ifn_Prot));end

function z=function_3(a1), z=(a1);end

function z=function_2(a3,Rec_Prot), z=(a3*Rec_Prot);end

function z=function_4(b,mRNA), z=(b*mRNA);end

function z=function_5(a4,Tbet_Prot,K4,Ag), z=(a4*Tbet_Prot*K4/(K4+Ag));end

function z=function_6(a5,Tbet_Prot,K5,Rec_Prot,K6,Ag,K7), z=(a5*Tbet_Prot/(K5+Tbet_Prot)*Rec_Prot/(K6+Rec_Prot)*Ag/(K7+Ag));end

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


