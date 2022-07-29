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
% Model name = Smallbone2011_TrehaloseBiosynthesis
%
% is http://identifiers.org/biomodels.db/MODEL1010010000
% is http://identifiers.org/biomodels.db/BIOMD0000000380
% isDescribedBy http://identifiers.org/pubmed/21943906
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.09675;
	x0(2) = 0.1;
	x0(3) = 2.675;
	x0(4) = 0.05;
	x0(5) = 0.02;
	x0(6) = 0.7;
	x0(7) = 1.282;
	x0(8) = 2.525;
	x0(9) = 0.0;
	x0(10) = 0.625;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.2815;
	x0(14) = 0.6491;
	x0(15) = 0.0;
	x0(16) = 100.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = medium, name = medium, constant
	compartment_medium=1.0;
% Parameter:   id =  heat, name = heat
	global_par_heat=0.0;
% Parameter:   id =  glc_0, name = glc_0
	global_par_glc_0=0.09765;
% Parameter:   id =  glc_change, name = log10 change in glucose
% Parameter:   id =  g1p_0, name = g1p_0
	global_par_g1p_0=0.1;
% Parameter:   id =  g1p_change, name = log10 change in glucose 1-phosphate
% Parameter:   id =  g6p_0, name = g6p_0
	global_par_g6p_0=2.675;
% Parameter:   id =  g6p_change, name = log10 change in glucose 6-phosphate
% Parameter:   id =  trh_0, name = trh_0
	global_par_trh_0=0.05;
% Parameter:   id =  trh_change, name = log10 change in trehalose
% Parameter:   id =  t6p_0, name = t6p_0
	global_par_t6p_0=0.02;
% Parameter:   id =  t6p_change, name = log10 change in trehalose 6-phosphate
% Parameter:   id =  udg_0, name = udg_0
	global_par_udg_0=0.7;
% Parameter:   id =  udg_change, name = log10 change in UDP glucose
% assignmentRule: variable = glc_change
	global_par_glc_change=log(10, x(1)/global_par_glc_0);
% assignmentRule: variable = g1p_change
	global_par_g1p_change=log(10, x(2)/global_par_g1p_0);
% assignmentRule: variable = g6p_change
	global_par_g6p_change=log(10, x(3)/global_par_g6p_0);
% assignmentRule: variable = trh_change
	global_par_trh_change=log(10, x(4)/global_par_trh_0);
% assignmentRule: variable = t6p_change
	global_par_t6p_change=log(10, x(5)/global_par_t6p_0);
% assignmentRule: variable = udg_change
	global_par_udg_change=log(10, x(6)/global_par_udg_0);

% Reaction: id = pgi, name = G6P isomerase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_pgi_Vmax=1071.0;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_pgi_Kg6p=1.4;
	% Local Parameter:   id =  Kf6p, name = Kf6p
	reaction_pgi_Kf6p=0.29;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_pgi_Keq=0.3;
	% Local Parameter:   id =  shock, name = shock
	reaction_pgi_shock=1.0;

	reaction_pgi=compartment_cell*reaction_pgi_shock^global_par_heat*reaction_pgi_Vmax/reaction_pgi_Kg6p*(x(3)-x(10)/reaction_pgi_Keq)/(1+x(3)/reaction_pgi_Kg6p+x(10)/reaction_pgi_Kf6p);

% Reaction: id = hxt, name = glucose transport	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_hxt_Vmax=97.24;
	% Local Parameter:   id =  Kglc, name = Kglc
	reaction_hxt_Kglc=1.1918;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_hxt_Ki=0.91;
	% Local Parameter:   id =  shock, name = shock
	reaction_hxt_shock=8.0;

	reaction_hxt=compartment_cell*reaction_hxt_shock^global_par_heat*reaction_hxt_Vmax*(x(16)-x(1))/reaction_hxt_Kglc/(1+(x(16)+x(1))/reaction_hxt_Kglc+reaction_hxt_Ki*x(16)*x(1)/reaction_hxt_Kglc^2);

% Reaction: id = hxk, name = hexokinase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_hxk_Vmax=289.6;
	% Local Parameter:   id =  Kglc, name = Kglc
	reaction_hxk_Kglc=0.08;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_hxk_Katp=0.15;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_hxk_Kg6p=30.0;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_hxk_Kadp=0.23;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_hxk_Keq=2000.0;
	% Local Parameter:   id =  Kit6p, name = Kit6p
	reaction_hxk_Kit6p=0.04;
	% Local Parameter:   id =  shock, name = shock
	reaction_hxk_shock=8.0;

	reaction_hxk=compartment_cell*reaction_hxk_shock^global_par_heat*reaction_hxk_Vmax/(reaction_hxk_Kglc*reaction_hxk_Katp)*(x(1)*x(8)-x(3)*x(7)/reaction_hxk_Keq)/((1+x(1)/reaction_hxk_Kglc+x(3)/reaction_hxk_Kg6p+x(5)/reaction_hxk_Kit6p)*(1+x(8)/reaction_hxk_Katp+x(7)/reaction_hxk_Kadp));

% Reaction: id = pgm, name = phosphoglucomutase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_pgm_Vmax=0.3545;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_pgm_Kg6p=0.05;
	% Local Parameter:   id =  Kg1p, name = Kg1p
	reaction_pgm_Kg1p=0.023;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_pgm_Keq=0.1667;
	% Local Parameter:   id =  shock, name = shock
	reaction_pgm_shock=16.0;

	reaction_pgm=compartment_cell*reaction_pgm_shock^global_par_heat*reaction_pgm_Vmax/reaction_pgm_Kg6p*(x(3)-x(2)/reaction_pgm_Keq)/(1+x(3)/reaction_pgm_Kg6p+x(2)/reaction_pgm_Kg1p);

% Reaction: id = tpp, name = T6P phosphatase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_tpp_Vmax=6.5;
	% Local Parameter:   id =  Kt6p, name = Kt6p
	reaction_tpp_Kt6p=0.5;
	% Local Parameter:   id =  shock, name = shock
	reaction_tpp_shock=18.0;

	reaction_tpp=compartment_cell*reaction_tpp_shock^global_par_heat*reaction_tpp_Vmax*x(5)/reaction_tpp_Kt6p/(1+x(5)/reaction_tpp_Kt6p);

% Reaction: id = tps, name = T6P synthase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_tps_Vmax=1.371;
	% Local Parameter:   id =  Kg6p, name = Kg6p
	reaction_tps_Kg6p=3.8;
	% Local Parameter:   id =  Kudg, name = Kudg
	reaction_tps_Kudg=0.886;
	% Local Parameter:   id =  shock, name = shock
	reaction_tps_shock=12.0;
	% Local Parameter:   id =  activity, name = activity
	reaction_tps_activity=1.0;

	reaction_tps=compartment_cell*reaction_tps_activity*reaction_tps_shock^global_par_heat*reaction_tps_Vmax*x(3)*x(6)/(reaction_tps_Kg6p*reaction_tps_Kudg)/((1+x(3)/reaction_tps_Kg6p)*(1+x(6)/reaction_tps_Kudg));

% Reaction: id = nth, name = trehalase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_nth_Vmax=15.2;
	% Local Parameter:   id =  Ktrh, name = Ktrh
	reaction_nth_Ktrh=2.99;
	% Local Parameter:   id =  shock, name = shock
	reaction_nth_shock=6.0;

	reaction_nth=compartment_cell*reaction_nth_shock^global_par_heat*reaction_nth_Vmax*x(4)/reaction_nth_Ktrh/(1+x(4)/reaction_nth_Ktrh);

% Reaction: id = ugp, name = UDP glucose phosphorylase	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_ugp_Vmax=36.82;
	% Local Parameter:   id =  Kutp, name = Kutp
	reaction_ugp_Kutp=0.11;
	% Local Parameter:   id =  Kiutp, name = Kiutp
	reaction_ugp_Kiutp=0.11;
	% Local Parameter:   id =  Kg1p, name = Kg1p
	reaction_ugp_Kg1p=0.32;
	% Local Parameter:   id =  Kiudg, name = Kiudg
	reaction_ugp_Kiudg=0.0035;
	% Local Parameter:   id =  shock, name = shock
	reaction_ugp_shock=16.0;

	reaction_ugp=compartment_cell*reaction_ugp_shock^global_par_heat*reaction_ugp_Vmax*x(14)*x(2)/(reaction_ugp_Kutp*reaction_ugp_Kg1p)/(reaction_ugp_Kiutp/reaction_ugp_Kutp+x(14)/reaction_ugp_Kutp+x(2)/reaction_ugp_Kg1p+x(14)*x(2)/(reaction_ugp_Kutp*reaction_ugp_Kg1p)+reaction_ugp_Kiutp/reaction_ugp_Kutp*x(6)/reaction_ugp_Kiudg+x(2)*x(6)/(reaction_ugp_Kg1p*reaction_ugp_Kiudg));

	xdot=zeros(16,1);
	
% Species:   id = glc, name = glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_hxt) + (-1.0 * reaction_hxk) + ( 2.0 * reaction_nth));
	
% Species:   id = g1p, name = glucose 1-phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_pgm) + (-1.0 * reaction_ugp));
	
% Species:   id = g6p, name = glucose 6-phosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_pgi) + ( 1.0 * reaction_hxk) + (-1.0 * reaction_pgm) + (-1.0 * reaction_tps));
	
% Species:   id = trh, name = trehalose, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_tpp) + (-1.0 * reaction_nth));
	
% Species:   id = t6p, name = trehalose 6-phosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_tpp) + ( 1.0 * reaction_tps));
	
% Species:   id = udg, name = UDP glucose, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_tps) + ( 1.0 * reaction_ugp));
	
% Species:   id = adp, name = ADP
%WARNING speciesID: adp, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = atp, name = ATP
%WARNING speciesID: atp, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = ppi, name = diphosphate
%WARNING speciesID: ppi, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = f6p, name = fructose 6-phosphate
%WARNING speciesID: f6p, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = h, name = H+
%WARNING speciesID: h, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = pho, name = phosphate
%WARNING speciesID: pho, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = udp, name = UDP
%WARNING speciesID: udp, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = utp, name = UTP
%WARNING speciesID: utp, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
	
% Species:   id = h2o, name = water
%WARNING speciesID: h2o, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = glx, name = glucose
%WARNING speciesID: glx, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
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


