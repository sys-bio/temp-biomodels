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
% Model name = Andersen2017 - Mathematical modelling as a proof of concept for MPNs as a human inflammation model for cancer development
%
% isDescribedBy http://identifiers.org/pubmed/28859112
% is http://identifiers.org/biomodels.db/MODEL1911120005
% is http://identifiers.org/biomodels.db/BIOMD0000000852
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 10100.0;
	x0(2) = 3.84E10;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 699.0;
	x0(6) = 3.61;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  rx, name = rx
	global_par_rx=8.7E-4;
% Parameter:   id =  ax, name = ax
	global_par_ax=1.1E-5;
% Parameter:   id =  Ax, name = Ax
	global_par_Ax=4.7E13;
% Parameter:   id =  dx0, name = dx0
	global_par_dx0=0.002;
% Parameter:   id =  dx1, name = dx1
	global_par_dx1=129.0;
% Parameter:   id =  cxx, name = cxx
	global_par_cxx=7.5E-5;
% Parameter:   id =  cxy, name = cxy
% Parameter:   id =  es, name = es
	global_par_es=2.0;
% Parameter:   id =  rm, name = rm
	global_par_rm=2.0E-8;
% Parameter:   id =  inflammation, name = inflammation
	global_par_inflammation=7.0;
% Parameter:   id =  ry, name = ry
	global_par_ry=0.0013;
% Parameter:   id =  ay, name = ay
% Parameter:   id =  Ay, name = Ay
% Parameter:   id =  dy0, name = dy0
% Parameter:   id =  dy1, name = dy1
% Parameter:   id =  cyx, name = cyx
% Parameter:   id =  cyy, name = cyy
% Parameter:   id =  rs, name = rs
	global_par_rs=3.0E-4;
% Parameter:   id =  ea, name = ea
	global_par_ea=2.0E9;
% Parameter:   id =  psi_x, name = psi_x
% Parameter:   id =  psi_y, name = psi_y
% Parameter:   id =  x0_y0, name = x0_y0
% Parameter:   id =  x0_e4, name = x0_e4
% Parameter:   id =  y0_e4, name = y0_e4
% Parameter:   id =  x1_e10, name = x1_e10
% Parameter:   id =  y1_e10, name = y1_e10
% Parameter:   id =  x1_y1, name = x1_y1
% Parameter:   id =  ModelValue_2, name = Initial for Ax
	global_par_ModelValue_2=4.7E13;
% Parameter:   id =  ModelValue_1, name = Initial for ax
	global_par_ModelValue_1=1.1E-5;
% Parameter:   id =  ModelValue_5, name = Initial for cxx
	global_par_ModelValue_5=7.5E-5;
% Parameter:   id =  ModelValue_6, name = Initial for cxy
	global_par_ModelValue_6=7.5E-5;
% Parameter:   id =  ModelValue_15, name = Initial for cyx
	global_par_ModelValue_15=7.5E-5;
% Parameter:   id =  ModelValue_16, name = Initial for cyy
	global_par_ModelValue_16=7.5E-5;
% Parameter:   id =  ModelValue_3, name = Initial for dx0
	global_par_ModelValue_3=0.002;
% Parameter:   id =  ModelValue_4, name = Initial for dx1
	global_par_ModelValue_4=129.0;
% assignmentRule: variable = x0_e4
	global_par_x0_e4=x(1)/10000;
% assignmentRule: variable = y0_e4
	global_par_y0_e4=x(3)/10000;
% assignmentRule: variable = x0_y0
	global_par_x0_y0=global_par_x0_e4+global_par_y0_e4;
% assignmentRule: variable = dy0
	global_par_dy0=global_par_ModelValue_3;
% assignmentRule: variable = cyy
	global_par_cyy=global_par_ModelValue_5;
% assignmentRule: variable = cyx
	global_par_cyx=global_par_ModelValue_5;
% assignmentRule: variable = psi_y
	global_par_psi_y=1/(1+(global_par_ModelValue_15*x(1)+global_par_ModelValue_16*x(3))^2);
% assignmentRule: variable = cxy
	global_par_cxy=global_par_ModelValue_5;
% assignmentRule: variable = psi_x
	global_par_psi_x=1/(1+(global_par_ModelValue_5*x(1)+global_par_ModelValue_6*x(3))^2);
% assignmentRule: variable = dy1
	global_par_dy1=global_par_ModelValue_4;
% assignmentRule: variable = ay
	global_par_ay=global_par_ModelValue_1;
% assignmentRule: variable = Ay
	global_par_Ay=global_par_ModelValue_2;
% assignmentRule: variable = y1_e10
	global_par_y1_e10=x(4)/1E10;
% assignmentRule: variable = x1_e10
	global_par_x1_e10=x(2)/1E10;
% assignmentRule: variable = x1_y1
	global_par_x1_y1=global_par_x1_e10+global_par_y1_e10;

% Reaction: id = HSC_Self_Renewal, name = HSC_Self_Renewal
	reaction_HSC_Self_Renewal=compartment_compartment*Function_for_HSC_Self_Renewal(x(1), global_par_rx, global_par_psi_x, x(6));

% Reaction: id = HSC_Death, name = HSC_Death
	reaction_HSC_Death=compartment_compartment*global_par_dx0*x(1);

% Reaction: id = HSC_Proliferation, name = HSC_Proliferation
	reaction_HSC_Proliferation=compartment_compartment*global_par_ax*x(1);

% Reaction: id = HSC_MPN_Mutation, name = HSC_MPN_Mutation
	reaction_HSC_MPN_Mutation=compartment_compartment*Function_for_HSC_MPN_Mutation(global_par_rm, x(6), x(1));

% Reaction: id = HSC_Proliferation_HMC, name = HSC_Proliferation_HMC
	reaction_HSC_Proliferation_HMC=compartment_compartment*Function_for_HSC_Proliferation_HMC(global_par_ax, global_par_Ax, x(1));

% Reaction: id = HMC_Death, name = HMC_Death
	reaction_HMC_Death=compartment_compartment*global_par_dx1*x(2);

% Reaction: id = MPN_SC_Self_Renewal, name = MPN_SC_Self_Renewal
	reaction_MPN_SC_Self_Renewal=compartment_compartment*Function_for_MPN_SC_Self_Renewal(global_par_ry, global_par_psi_y, x(6), x(3));

% Reaction: id = MPN_SC_Death, name = MPN_SC_Death
	reaction_MPN_SC_Death=compartment_compartment*global_par_dy0*x(3);

% Reaction: id = MPN_SC_Proliferation, name = MPN_SC_Proliferation
	reaction_MPN_SC_Proliferation=compartment_compartment*global_par_ay*x(3);

% Reaction: id = MPN_SC_Proliferation_MPN_MC, name = MPN_SC_Proliferation_MPN_MC
	reaction_MPN_SC_Proliferation_MPN_MC=compartment_compartment*Function_for_MPN_SC_Proliferation_MPN_MC(global_par_ay, global_par_Ay, x(3));

% Reaction: id = MPN_MC_Death, name = MPN_MC_Death
	reaction_MPN_MC_Death=compartment_compartment*global_par_dy1*x(4);

% Reaction: id = Dead_Cells_Elimination_Per_Cytokine, name = Dead_Cells_Elimination_Per_Cytokine
	reaction_Dead_Cells_Elimination_Per_Cytokine=compartment_compartment*Function_for_Dead_Cells_Elimination_Per_Cytokine(global_par_ea, x(5), x(6));

% Reaction: id = Phagocyte_Upregulation_Dead_Cells, name = Phagocyte_Upregulation_Dead_Cells
	reaction_Phagocyte_Upregulation_Dead_Cells=compartment_compartment*Function_for_Phagocyte_Upregulation_Dead_Cells(global_par_rs, x(5));

% Reaction: id = Cytokine_Elimination, name = Cytokine_Elimination
	reaction_Cytokine_Elimination=compartment_compartment*global_par_es*x(6);

	xdot=zeros(6,1);
	
% Species:   id = x0, name = x0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_HSC_Self_Renewal) + (-1.0 * reaction_HSC_Death) + (-1.0 * reaction_HSC_Proliferation) + (-1.0 * reaction_HSC_MPN_Mutation));
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_HSC_Proliferation_HMC) + (-1.0 * reaction_HMC_Death));
	
% Species:   id = y0, name = y0, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_HSC_MPN_Mutation) + ( 1.0 * reaction_MPN_SC_Self_Renewal) + (-1.0 * reaction_MPN_SC_Death) + (-1.0 * reaction_MPN_SC_Proliferation));
	
% Species:   id = y1, name = y1, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_MPN_SC_Proliferation_MPN_MC) + (-1.0 * reaction_MPN_MC_Death));
	
% Species:   id = a, name = a, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_HSC_Death) + ( 1.0 * reaction_HMC_Death) + ( 1.0 * reaction_MPN_SC_Death) + ( 1.0 * reaction_MPN_MC_Death) + (-1.0 * reaction_Dead_Cells_Elimination_Per_Cytokine));
	
% Species:   id = s, name = s, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Phagocyte_Upregulation_Dead_Cells) + (-1.0 * reaction_Cytokine_Elimination) + ( 1.0 * reaction_Cytokines_Inflammation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_MPN_SC_Proliferation_MPN_MC(ay,Ay,y0), z=(ay*Ay*y0);end

function z=Function_for_Phagocyte_Upregulation_Dead_Cells(rs,a), z=(rs*a);end

function z=Function_for_HSC_Proliferation_HMC(ax,Ax,x0), z=(ax*Ax*x0);end

function z=Function_for_MPN_SC_Self_Renewal(ry,psi_y,s,y0), z=(ry*psi_y*s*y0);end

function z=Function_for_HSC_Self_Renewal(x0,rx,psi_x,s), z=(x0*rx*psi_x*s);end

function z=Function_for_HSC_MPN_Mutation(rm,s,x0), z=(rm*s*x0);end

function z=Function_for_Dead_Cells_Elimination_Per_Cytokine(ea,a,s), z=(ea*a*s);end

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


