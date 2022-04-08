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
% Model name = Cappuccio2006 - Cancer immunotherapy by interleukin-21
%
% isDescribedBy http://identifiers.org/pubmed/16849579
% is http://identifiers.org/biomodels.db/MODEL1907230001
% is http://identifiers.org/biomodels.db/BIOMD0000000761
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 1.95185;
	x0(3) = 0.066;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 2.0;


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
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=10.0;
% Parameter:   id =  h, name = h
	global_par_h=634.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.095;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.01;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.054;
% Parameter:   id =  q1, name = q1
	global_par_q1=0.54;
% Parameter:   id =  a, name = a
	global_par_a=0.58;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.014;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.26;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.003;
% Parameter:   id =  h2zero, name = h2zero
	global_par_h2zero=0.066;
% Parameter:   id =  D, name = nD
	global_par_D=1418.4;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.1;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=0.08;
% Parameter:   id =  r3, name = r3
	global_par_r3=0.48;
% Parameter:   id =  K, name = K
	global_par_K=400.0;
% Parameter:   id =  c, name = c
	global_par_c=5.1;
% Parameter:   id =  d, name = d
	global_par_d=0.145;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.05;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0485;
% Parameter:   id =  z0, name = z0
	global_par_z0=2.0;

% Reaction: id = IL_21_Clearance_Rate, name = IL-21_Clearance
	reaction_IL_21_Clearance_Rate=compartment_compartment*global_par_mu1*x(1);

% Reaction: id = IL_21_Production_by_Tumor, name = IL-21_Production_by_Tumor
	reaction_IL_21_Production_by_Tumor=compartment_compartment*Function_for_IL_21_Production_by_Tumor_1(x(6), global_par_h);

% Reaction: id = NK_Cell_Population_Growth, name = NK_Cell_Population_Growth
	reaction_NK_Cell_Population_Growth=compartment_compartment*Function_for_NK_Cell_Population_Growth_1(x(2), global_par_r1);

% Reaction: id = NK_Cell_Population_Growth_IL_21_Inhibition, name = NK_Cell_Population_Growth_IL-21_Inhibition
	reaction_NK_Cell_Population_Growth_IL_21_Inhibition=compartment_compartment*Function_for_NK_Cell_Population_Growth_IL_21_Inhibition_1(x(1), x(2), global_par_p1, global_par_p2, global_par_q1, global_par_r1);

% Reaction: id = CD8_Population_Growth, name = CD8_Population_Growth
	reaction_CD8_Population_Growth=compartment_compartment*Function_for_NK_Cell_Population_Growth_2(x(3), global_par_r2);

% Reaction: id = CD8_Population_Growth_Inhibition, name = CD8_Population_Growth_Inhibition
	reaction_CD8_Population_Growth_Inhibition=compartment_compartment*Function_for_CD8_Population_Growth_Inhibition_1(x(4), x(3), global_par_h2zero, global_par_r2, global_par_sigma, global_par_D);

% Reaction: id = CD8_Memory_Formation, name = CD8_Memory_Formation
	reaction_CD8_Memory_Formation=compartment_compartment*Function_for_NK_Cell_Population_Growth_3(x(1), global_par_a);

% Reaction: id = CD8_Memory_Loss, name = CD8_Memory_Loss
	reaction_CD8_Memory_Loss=compartment_compartment*global_par_mu2*x(4);

% Reaction: id = Cytotoxic_Protein_Secretion, name = Cytotoxic_Protein_Secretion
	reaction_Cytotoxic_Protein_Secretion=compartment_compartment*Function_for_Cytotoxic_Protein_Secretion(global_par_b1, x(1), global_par_b2);

% Reaction: id = Cytotoxic_Protein_Degradation, name = Cytotoxic_Protein_Degradation
	reaction_Cytotoxic_Protein_Degradation=compartment_compartment*global_par_mu3*x(5);

% Reaction: id = Tumor_Killing_By_NK_Cells, name = Tumor_Killing_By_NK_Cells
	reaction_Tumor_Killing_By_NK_Cells=compartment_compartment*Function_for_Cytotoxic_Tumor_Killing(global_par_k1, x(5), x(2), x(6));

% Reaction: id = Tumor_Killing_By_CD8_Cells, name = Tumor_Killing_By_CD8_TCells
	reaction_Tumor_Killing_By_CD8_Cells=compartment_compartment*Function_for_Cytotoxic_Tumor_Killing(global_par_k2, x(5), x(3), x(6));

% Reaction: id = Tumor_Growth_Exponential, name = Tumor_Growth_Exponential
	reaction_Tumor_Growth_Exponential=compartment_compartment*Function_for_Tumor_Growth_Exponential(x(6));

	xdot=zeros(6,1);
	
% Species:   id = U, name = U_IL-21, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_IL_21_Clearance_Rate) + ( 1.0 * reaction_IL_21_Production_by_Tumor));
	
% Species:   id = X, name = X_NK_T_Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_NK_Cell_Population_Growth) + (-1.0 * reaction_NK_Cell_Population_Growth_IL_21_Inhibition));
	
% Species:   id = Y, name = Y_CD8_T_Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CD8_Population_Growth) + (-1.0 * reaction_CD8_Population_Growth_Inhibition));
	
% Species:   id = M, name = M_CD8_Memory_Factor, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_CD8_Memory_Formation) + (-1.0 * reaction_CD8_Memory_Loss));
	
% Species:   id = P, name = P_Cytotoxic_Protein, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Cytotoxic_Protein_Secretion) + (-1.0 * reaction_Cytotoxic_Protein_Degradation));
	
% Species:   id = Z, name = Z_Tumor_SA, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_Tumor_Killing_By_NK_Cells) + (-1.0 * reaction_Tumor_Killing_By_CD8_Cells) + ( 1.0 * reaction_Tumor_Growth) + ( 1.0 * reaction_Tumor_Growth_Exponential));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_IL_21_Production_by_Tumor_1(Z,h), z=(h*Z^(3/2));end

function z=Function_for_NK_Cell_Population_Growth_1(X,r1), z=(r1*X);end

function z=Function_for_NK_Cell_Population_Growth_3(U,a), z=(a*U);end

function z=Function_for_CD8_Population_Growth_Inhibition_1(M,Y,h2zero,r2,sigma,nD), z=(r2*Y^2/(h2zero+sigma*M/(1+M/nD)));end

function z=Function_for_Cytotoxic_Protein_Secretion(b1,varU,b2), z=(b1*varU/(b2+varU));end

function z=Function_for_NK_Cell_Population_Growth_IL_21_Inhibition_1(U,X,p1,p2,q1,r1), z=(r1*X^2/(p1*U+p2)/(U+q1));end

function z=Function_for_Cytotoxic_Tumor_Killing(param1,mod1,mod2,sub1), z=(param1*mod1*mod2*sub1);end

function z=Function_for_NK_Cell_Population_Growth_2(Y,r2), z=(r2*Y);end

function z=Function_for_Tumor_Growth_Exponential(varZ), z=(varZ^((-1)/2)*varZ^(3/2)*10^(-6));end

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


