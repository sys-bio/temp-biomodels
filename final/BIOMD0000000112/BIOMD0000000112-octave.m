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
% Model name = Clarke2006_Smad_signalling
%
% is http://identifiers.org/biomodels.db/MODEL4024559990
% is http://identifiers.org/biomodels.db/BIOMD0000000112
% isDescribedBy http://identifiers.org/pubmed/17186703
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 10000.0;
	x0(2) = 162000.0;
	x0(3) = 0.0;
	x0(4) = 120000.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 18000.0;
	x0(8) = 0.0;
	x0(9) = 30000.0;
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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  sum_R_smad_cyt, name = sum_R_smad_cyt
% Parameter:   id =  sum_R_smad_nuc, name = sum_R_smad_nuc
% Parameter:   id =  sum_smad4_cyt, name = sum_Smad4_cyt
% Parameter:   id =  sum_smad4_nuc, name = sum_Smad4_nuc
% assignmentRule: variable = sum_R_smad_nuc
	global_par_sum_R_smad_nuc=x(7)+x(8)+x(6);
% assignmentRule: variable = sum_smad4_nuc
	global_par_sum_smad4_nuc=x(9)+x(6);
% assignmentRule: variable = sum_R_smad_cyt
	global_par_sum_R_smad_cyt=x(2)+x(3)+x(5);
% assignmentRule: variable = sum_smad4_cyt
	global_par_sum_smad4_cyt=x(4)+x(5);

% Reaction: id = reaction_1, name = Phosphorylation	% Local Parameter:   id =  KCAT, name = KCAT
	reaction_reaction_1_KCAT=3.51;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_1_K1=289000.0;

	reaction_reaction_1=reaction_reaction_1_KCAT*x(1)*x(2)/(reaction_reaction_1_K1+x(2));

% Reaction: id = reaction_5, name = R-Smad translocation	% Local Parameter:   id =  k5nc, name = k5nc
	reaction_reaction_5_k5nc=5.63;
	% Local Parameter:   id =  k5cn, name = k5cn
	reaction_reaction_5_k5cn=0.563;

	reaction_reaction_5=reaction_reaction_5_k5nc*x(7)-reaction_reaction_5_k5cn*x(2);

% Reaction: id = reaction_4, name = Smad4 translocation	% Local Parameter:   id =  k4nc, name = k4nc
	reaction_reaction_4_k4nc=0.783;
	% Local Parameter:   id =  k4cn, name = k4cn
	reaction_reaction_4_k4cn=0.00497;

	reaction_reaction_4=reaction_reaction_4_k4nc*x(9)-reaction_reaction_4_k4cn*x(4);

% Reaction: id = reaction_2, name = Complex formation	% Local Parameter:   id =  k2a, name = k2a
	reaction_reaction_2_k2a=6.5E-5;
	% Local Parameter:   id =  k2d, name = k2d
	reaction_reaction_2_k2d=0.0399;

	reaction_reaction_2=reaction_reaction_2_k2a*x(3)*x(4)-reaction_reaction_2_k2d*x(5);

% Reaction: id = reaction_3, name = Complex translocation	% Local Parameter:   id =  k3, name = k3
	reaction_reaction_3_k3=16.6;

	reaction_reaction_3=reaction_reaction_3_k3*x(5);

% Reaction: id = reaction_6, name = Complex in nucleus	% Local Parameter:   id =  k6d, name = k6d
	reaction_reaction_6_k6d=0.0492;
	% Local Parameter:   id =  k6a, name = k6a
	reaction_reaction_6_k6a=1.44E-4;

	reaction_reaction_6=reaction_reaction_6_k6d*x(6)-reaction_reaction_6_k6a*x(9)*x(8);

% Reaction: id = reaction_7, name = Dephosphorylation	% Local Parameter:   id =  Vmax7, name = Vmax7
	reaction_reaction_7_Vmax7=17100.0;
	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_7_K7=8950.0;

	reaction_reaction_7=reaction_reaction_7_Vmax7*x(8)/(reaction_reaction_7_K7+x(8));

% Reaction: id = reaction_0, name = Receptor degradation
	reaction_reaction_0=100*exp((-time)/90);

	xdot=zeros(10,1);
	
% Species:   id = receptor, name = receptors, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_reaction_0);
	
% Species:   id = R_smad_cyt, name = R-Smad_cyt, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_5);
	
% Species:   id = R_smad_P_cyt, name = R-Smad-P_cyt, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2);
	
% Species:   id = smad4_cyt, name = Smad4_cyt, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_2);
	
% Species:   id = R_smad_P_smad4_cyt, name = R-Smad-P-Smad4_cyt, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3);
	
% Species:   id = R_smad_P_smad4_nuc, name = R-Smad-P-Smad4_nuc, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6);
	
% Species:   id = R_smad_nuc, name = R-Smad_nuc, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7);
	
% Species:   id = R_smad_P_nuc, name = R-Smad-P_nuc, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7);
	
% Species:   id = smad4_nuc, name = Smad4_nuc, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6);
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_reaction_7);
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


