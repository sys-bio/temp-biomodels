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
% Model name = Koenders2015 - multiple myeloma
%
% isDescribedBy http://identifiers.org/pubmed/26643942
% is http://identifiers.org/biomodels.db/MODEL1908290002
% is http://identifiers.org/biomodels.db/BIOMD0000000804
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.14404610267855;
	x0(2) = 208.00838230519;
	x0(3) = 10.0;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  ac, name = ac
	global_par_ac=3.0;
% Parameter:   id =  ab, name = ab
	global_par_ab=4.0;
% Parameter:   id =  at, name = at
	global_par_at=0.316227766016838;
% Parameter:   id =  gcc, name = gcc
	global_par_gcc=0.0;
% Parameter:   id =  gbc, name = gbc
	global_par_gbc=1.0;
% Parameter:   id =  gtc, name = gtc
	global_par_gtc=0.0;
% Parameter:   id =  gcb, name = gcb
	global_par_gcb=-0.5;
% Parameter:   id =  gbb, name = gbb
	global_par_gbb=0.0;
% Parameter:   id =  gtt, name = gtt
	global_par_gtt=0.5;
% Parameter:   id =  hct, name = hct
	global_par_hct=0.0;
% Parameter:   id =  hbt, name = hbt
	global_par_hbt=0.0;
% Parameter:   id =  bc, name = bc
	global_par_bc=0.2;
% Parameter:   id =  bb, name = bb
	global_par_bb=0.02;
% Parameter:   id =  bt, name = bt
	global_par_bt=0.1;
% Parameter:   id =  B_plot, name = B_plot
% Parameter:   id =  C_plot, name = C_plot
% Parameter:   id =  T_plot, name = T_plot
% Parameter:   id =  Metabolite_1, name = Initial for B
	global_par_Metabolite_1=208.00838230519;
% Parameter:   id =  Metabolite_0, name = Initial for C
	global_par_Metabolite_0=1.14404610267855;
% Parameter:   id =  Metabolite_2, name = Initial for T
	global_par_Metabolite_2=10.0;
% assignmentRule: variable = B_plot
	global_par_B_plot=x(2)/global_par_Metabolite_1;
% assignmentRule: variable = C_plot
	global_par_C_plot=x(1)*1.1/global_par_Metabolite_0;
% assignmentRule: variable = T_plot
	global_par_T_plot=x(3)/global_par_Metabolite_2;

% Reaction: id = osteoclast_growth, name = osteoclast growth
	reaction_osteoclast_growth=compartment_tme*oc(global_par_ac, x(1), global_par_gcc, x(2), global_par_gcb, global_par_hct, x(3));

% Reaction: id = osteoblast_growth, name = osteoblast growth
	reaction_osteoblast_growth=compartment_tme*ob(global_par_ab, x(1), global_par_gbc, x(2), global_par_gbb, global_par_hbt, x(3));

% Reaction: id = myeloma_growth, name = myeloma growth
	reaction_myeloma_growth=compartment_tme*t(global_par_at, x(1), global_par_gtc, x(3), global_par_gtt);

% Reaction: id = osteoclast_death, name = osteoclast death
	reaction_osteoclast_death=compartment_tme*global_par_bc*x(1);

% Reaction: id = osteoblast_death, name = osteoblast death
	reaction_osteoblast_death=compartment_tme*global_par_bb*x(2);

% Reaction: id = myeloma_death, name = myeloma death
	reaction_myeloma_death=compartment_tme*global_par_bt*x(3);

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_osteoclast_growth) + (-1.0 * reaction_osteoclast_death));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_osteoblast_growth) + (-1.0 * reaction_osteoblast_death));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_myeloma_growth) + (-1.0 * reaction_myeloma_death));
end

function z=oc(ac,C,gcc,B,gcb,hct,T), z=(ac*C^gcc*B^gcb*(1+hct*T));end

function z=t(at,C,gtc,T,gtt), z=(at*C^gtc*T^gtt);end

function z=ob(ab,C,gbc,B,gbb,hbt,T), z=(ab*C^gbc*B^gbb*(1-hbt*T));end

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


