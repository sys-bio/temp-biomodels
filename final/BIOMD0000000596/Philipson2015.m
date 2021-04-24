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
% Model name = Philipson2015 - Innate immune response modulated by NLRX1
%
% is http://identifiers.org/biomodels.db/MODEL1508180000
% is http://identifiers.org/biomodels.db/BIOMD0000000596
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 4.4;
	x0(2) = 0.9;
	x0(3) = 1.0;
	x0(4) = 0.9;
	x0(5) = 0.9;
	x0(6) = 0.9;
	x0(7) = 1.0;
	x0(8) = 0.9;
	x0(9) = 0.9;
	x0(10) = 0.6;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 1.0;
	x0(15) = 1.0;


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
% Parameter:   id =  n, name = n
	global_par_n=1.0;

% Reaction: id = MyD88_a_HP, name = MyD88_a_HP	% Local Parameter:   id =  shalve, name = shalve
	reaction_MyD88_a_HP_shalve=0.00167454;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_MyD88_a_HP_vmax=0.00211822;

	reaction_MyD88_a_HP=compartment_default*CWP_hill_1(global_par_n, x(1), reaction_MyD88_a_HP_shalve, reaction_MyD88_a_HP_vmax);

% Reaction: id = MyD88_d, name = MyD88_d	% Local Parameter:   id =  k1, name = k1
	reaction_MyD88_d_k1=0.00123453;

	reaction_MyD88_d=compartment_default*reaction_MyD88_d_k1*x(4);

% Reaction: id = TRAF_d, name = TRAF_d	% Local Parameter:   id =  k1, name = k1
	reaction_TRAF_d_k1=0.0103771;

	reaction_TRAF_d=compartment_default*reaction_TRAF_d_k1*x(5);

% Reaction: id = NFkB_a1, name = NFkB_a1	% Local Parameter:   id =  ka, name = ka
	reaction_NFkB_a1_ka=1.16764;
	% Local Parameter:   id =  ki, name = ki
	reaction_NFkB_a1_ki=0.0477912;

	reaction_NFkB_a1=compartment_default*CWP_Hill_Inhibitor_1(reaction_NFkB_a1_ka, reaction_NFkB_a1_ki, global_par_n, x(2), x(5));

% Reaction: id = NFkB_d, name = NFkB_d	% Local Parameter:   id =  k1, name = k1
	reaction_NFkB_d_k1=0.0750704;

	reaction_NFkB_d=compartment_default*reaction_NFkB_d_k1*x(6);

% Reaction: id = CytoL_a, name = CytoL_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_CytoL_a_shalve=0.00405;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_CytoL_a_vmax=0.096005;

	reaction_CytoL_a=compartment_default*CWP_hill_2(global_par_n, x(6), reaction_CytoL_a_shalve, reaction_CytoL_a_vmax);

% Reaction: id = CytoL_d, name = CytoL_d	% Local Parameter:   id =  k1, name = k1
	reaction_CytoL_d_k1=0.00608;

	reaction_CytoL_d=compartment_default*reaction_CytoL_d_k1*x(3);

% Reaction: id = NLRX1_d, name = NLRX1_d	% Local Parameter:   id =  k1, name = k1
	reaction_NLRX1_d_k1=0.00593;

	reaction_NLRX1_d=compartment_default*reaction_NLRX1_d_k1*x(2);

% Reaction: id = MyD88_a, name = MyD88_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_MyD88_a_shalve=0.00154977;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_MyD88_a_vmax=0.00283798;

	reaction_MyD88_a=compartment_default*CWP_hill_3(global_par_n, x(3), reaction_MyD88_a_shalve, reaction_MyD88_a_vmax);

% Reaction: id = HP_a, name = HP_a	% Local Parameter:   id =  k, name = k
	reaction_HP_a_k=6.47754;
	% Local Parameter:   id =  r, name = r
	reaction_HP_a_r=0.0231262;

	reaction_HP_a=compartment_default*CWP_Logistic_1(reaction_HP_a_k, reaction_HP_a_r, x(1));

% Reaction: id = HP_CytoL, name = HP_CytoL	% Local Parameter:   id =  k, name = k
	reaction_HP_CytoL_k=0.00457697;

	reaction_HP_CytoL=compartment_default*_1_2_MA_1(reaction_HP_CytoL_k, x(3));

% Reaction: id = NLRX1_TF, name = NLRX1_TF	% Local Parameter:   id =  ka, name = ka
	reaction_NLRX1_TF_ka=0.42313;
	% Local Parameter:   id =  ki, name = ki
	reaction_NLRX1_TF_ki=0.008882;

	reaction_NLRX1_TF=compartment_default*CWP_Hill_Inhibitor_2(x(12), x(14), reaction_NLRX1_TF_ka, reaction_NLRX1_TF_ki, global_par_n);

% Reaction: id = NFkB_a2, name = NFkB_a2	% Local Parameter:   id =  shalve, name = shalve
	reaction_NFkB_a2_shalve=1.88462;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_NFkB_a2_vmax=0.634738;

	reaction_NFkB_a2=compartment_default*CWP_hill_4(x(8), global_par_n, reaction_NFkB_a2_shalve, reaction_NFkB_a2_vmax);

% Reaction: id = RIG_a_HP, name = RIG_a_HP	% Local Parameter:   id =  shalve, name = shalve
	reaction_RIG_a_HP_shalve=0.0014314;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_RIG_a_HP_vmax=0.0118174;

	reaction_RIG_a_HP=compartment_default*CWP_hill_1(global_par_n, x(1), reaction_RIG_a_HP_shalve, reaction_RIG_a_HP_vmax);

% Reaction: id = RIG_d, name = RIG_d	% Local Parameter:   id =  k1, name = k1
	reaction_RIG_d_k1=0.00103772;

	reaction_RIG_d=compartment_default*reaction_RIG_d_k1*x(9);

% Reaction: id = MAVS_a, name = MAVS_a	% Local Parameter:   id =  ka, name = ka
	reaction_MAVS_a_ka=0.00747772;
	% Local Parameter:   id =  ki, name = ki
	reaction_MAVS_a_ki=0.0334969;

	reaction_MAVS_a=compartment_default*CWP_Hill_Inhibitor_3(x(9), reaction_MAVS_a_ka, reaction_MAVS_a_ki, global_par_n, x(2));

% Reaction: id = MAVS_d, name = MAVS_d	% Local Parameter:   id =  k1, name = k1
	reaction_MAVS_d_k1=0.001592;

	reaction_MAVS_d=compartment_default*reaction_MAVS_d_k1*x(10);

% Reaction: id = IRF_a1, name = IRF_a1	% Local Parameter:   id =  shalve, name = shalve
	reaction_IRF_a1_shalve=1.44358;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_IRF_a1_vmax=0.0062174;

	reaction_IRF_a1=compartment_default*CWP_hill_5(x(10), global_par_n, reaction_IRF_a1_shalve, reaction_IRF_a1_vmax);

% Reaction: id = IRF_a2, name = IRF_a2	% Local Parameter:   id =  shalve, name = shalve
	reaction_IRF_a2_shalve=9.6499;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_IRF_a2_vmax=0.0980063;

	reaction_IRF_a2=compartment_default*CWP_hill_4(x(8), global_par_n, reaction_IRF_a2_shalve, reaction_IRF_a2_vmax);

% Reaction: id = IRF_a3, name = IRF_a3	% Local Parameter:   id =  shalve, name = shalve
	reaction_IRF_a3_shalve=44.7674;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_IRF_a3_vmax=0.301374;

	reaction_IRF_a3=compartment_default*CWP_hill_6(x(7), global_par_n, reaction_IRF_a3_shalve, reaction_IRF_a3_vmax);

% Reaction: id = IRF_d, name = IRF_d	% Local Parameter:   id =  k1, name = k1
	reaction_IRF_d_k1=0.00478922;

	reaction_IRF_d=compartment_default*reaction_IRF_d_k1*x(11);

% Reaction: id = IFN_a, name = IFN_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_IFN_a_shalve=49.9288;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_IFN_a_vmax=0.489838;

	reaction_IFN_a=compartment_default*CWP_hill_7(x(11), global_par_n, reaction_IFN_a_shalve, reaction_IFN_a_vmax);

% Reaction: id = IFN_d, name = IFN_d	% Local Parameter:   id =  k1, name = k1
	reaction_IFN_d_k1=0.00523856;

	reaction_IFN_d=compartment_default*reaction_IFN_d_k1*x(7);

% Reaction: id = NOD_a, name = NOD_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_NOD_a_shalve=0.00178531;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_NOD_a_vmax=0.0066234;

	reaction_NOD_a=compartment_default*CWP_hill_1(global_par_n, x(1), reaction_NOD_a_shalve, reaction_NOD_a_vmax);

% Reaction: id = NOD_d, name = NOD_d	% Local Parameter:   id =  k1, name = k1
	reaction_NOD_d_k1=0.00122637;

	reaction_NOD_d=compartment_default*reaction_NOD_d_k1*x(8);

% Reaction: id = HP_IFN, name = HP_IFN	% Local Parameter:   id =  k, name = k
	reaction_HP_IFN_k=1.0E-5;

	reaction_HP_IFN=compartment_default*_1_2_MA_2(x(7), reaction_HP_IFN_k);

% Reaction: id = TRAF_a, name = TRAF_a	% Local Parameter:   id =  ka, name = ka
	reaction_TRAF_a_ka=0.739178;
	% Local Parameter:   id =  ki, name = ki
	reaction_TRAF_a_ki=0.0881285;

	reaction_TRAF_a=compartment_default*CWP_Hill_Inhibitor_4(x(15), reaction_TRAF_a_ka, reaction_TRAF_a_ki, global_par_n, x(4));

% Reaction: id = TFa_a, name = TFa_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_TFa_a_shalve=0.798454;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_TFa_a_vmax=0.0205163;

	reaction_TFa_a=compartment_default*CWP_hill_3(global_par_n, x(3), reaction_TFa_a_shalve, reaction_TFa_a_vmax);

% Reaction: id = TFa_d, name = TFa_d	% Local Parameter:   id =  k1, name = k1
	reaction_TFa_d_k1=0.00830409;

	reaction_TFa_d=compartment_default*reaction_TFa_d_k1*x(12);

% Reaction: id = TFi_a, name = TFi_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_TFi_a_shalve=3.08354;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_TFi_a_vmax=0.0902778;

	reaction_TFi_a=compartment_default*CWP_hill_8(x(13), global_par_n, reaction_TFi_a_shalve, reaction_TFi_a_vmax);

% Reaction: id = TFi_d, name = TFi_d	% Local Parameter:   id =  k1, name = k1
	reaction_TFi_d_k1=0.032462;

	reaction_TFi_d=compartment_default*reaction_TFi_d_k1*x(14);

% Reaction: id = CytoE_a, name = CytoE_a	% Local Parameter:   id =  ka, name = ka
	reaction_CytoE_a_ka=12.2028;
	% Local Parameter:   id =  ki, name = ki
	reaction_CytoE_a_ki=0.0480683;

	reaction_CytoE_a=compartment_default*CWP_Hill_Inhibitor_5(x(15), reaction_CytoE_a_ka, reaction_CytoE_a_ki, global_par_n, x(6));

% Reaction: id = CytoE_d, name = CytoE_d	% Local Parameter:   id =  k1, name = k1
	reaction_CytoE_d_k1=0.0367629;

	reaction_CytoE_d=compartment_default*reaction_CytoE_d_k1*x(13);

% Reaction: id = X_a, name = X_a	% Local Parameter:   id =  shalve, name = shalve
	reaction_X_a_shalve=0.003976;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_X_a_vmax=0.0463933;

	reaction_X_a=compartment_default*CWP_hill_2(global_par_n, x(6), reaction_X_a_shalve, reaction_X_a_vmax);

% Reaction: id = X_d, name = X_d	% Local Parameter:   id =  k1, name = k1
	reaction_X_d_k1=0.00222793;

	reaction_X_d=compartment_default*reaction_X_d_k1*x(15);

% Reaction: id = HP_CytoE, name = HP_CytoE	% Local Parameter:   id =  k, name = k
	reaction_HP_CytoE_k=1.5E-4;

	reaction_HP_CytoE=compartment_default*_1_2_MA_3(x(13), reaction_HP_CytoE_k);

	xdot=zeros(15,1);
	
% Species:   id = HP, name = HP, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_HP_a) + (-1.0 * reaction_HP_CytoL) + (-1.0 * reaction_HP_IFN) + (-1.0 * reaction_HP_CytoE));
	
% Species:   id = NLRX1, name = NLRX1, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_NLRX1_d) + ( 1.0 * reaction_NLRX1_TF));
	
% Species:   id = CytoL, name = CytoL, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_CytoL_a) + (-1.0 * reaction_CytoL_d));
	
% Species:   id = MyD88, name = MyD88, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_MyD88_a_HP) + (-1.0 * reaction_MyD88_d) + ( 1.0 * reaction_MyD88_a));
	
% Species:   id = TRAF6, name = TRAF6, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_TRAF_d) + ( 1.0 * reaction_TRAF_a));
	
% Species:   id = NFkB, name = NFkB, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_NFkB_a1) + (-1.0 * reaction_NFkB_d) + ( 1.0 * reaction_NFkB_a2));
	
% Species:   id = IFN, name = IFN, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_IFN_a) + (-1.0 * reaction_IFN_d));
	
% Species:   id = NOD1, name = NOD1, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_NOD_a) + (-1.0 * reaction_NOD_d));
	
% Species:   id = RIG, name = RIG, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_RIG_a_HP) + (-1.0 * reaction_RIG_d));
	
% Species:   id = MAVS, name = MAVS, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_MAVS_a) + (-1.0 * reaction_MAVS_d));
	
% Species:   id = IRF, name = IRF, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_IRF_a1) + ( 1.0 * reaction_IRF_a2) + ( 1.0 * reaction_IRF_a3) + (-1.0 * reaction_IRF_d));
	
% Species:   id = TFa, name = TFa, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_TFa_a) + (-1.0 * reaction_TFa_d));
	
% Species:   id = CytoE, name = CytoE, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_CytoE_a) + (-1.0 * reaction_CytoE_d));
	
% Species:   id = TFi, name = TFi, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_TFi_a) + (-1.0 * reaction_TFi_d));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_X_a) + (-1.0 * reaction_X_d));
end

function z=CWP_Logistic_1(k,r,s18), z=(r*s18*(1-s18/k));end

function z=_1_2_MA_1(k,s34), z=(k*s34/2);end

function z=CWP_Hill_Inhibitor_2(TFa,TFi,ka,ki,n), z=(ka*TFa*1/(1+(TFi/ki)^n));end

function z=CWP_hill_4(NOD1,n,shalve,vmax), z=(vmax*NOD1^n/(shalve^n+NOD1^n));end

function z=CWP_Hill_Inhibitor_3(RIG,ka,ki,n,s49), z=(ka*RIG*1/(1+(s49/ki)^n));end

function z=CWP_hill_5(MAVS,n,shalve,vmax), z=(vmax*MAVS^n/(shalve^n+MAVS^n));end

function z=CWP_hill_6(IFN,n,shalve,vmax), z=(vmax*IFN^n/(shalve^n+IFN^n));end

function z=CWP_hill_7(IRF,n,shalve,vmax), z=(vmax*IRF^n/(shalve^n+IRF^n));end

function z=_1_2_MA_2(IFN,k), z=(k*IFN/2);end

function z=CWP_Hill_Inhibitor_1(ka,ki,n,s49,s7), z=(ka*s7*1/(1+(s49/ki)^n));end

function z=CWP_hill_1(n,s18,shalve,vmax), z=(vmax*s18^n/(shalve^n+s18^n));end

function z=CWP_hill_2(n,s4,shalve,vmax), z=(vmax*s4^n/(shalve^n+s4^n));end

function z=CWP_hill_3(n,s34,shalve,vmax), z=(vmax*s34^n/(shalve^n+s34^n));end

function z=CWP_Hill_Inhibitor_4(X,ka,ki,n,s51), z=(ka*s51*1/(1+(X/ki)^n));end

function z=CWP_hill_8(CytoE,n,shalve,vmax), z=(vmax*CytoE^n/(shalve^n+CytoE^n));end

function z=CWP_Hill_Inhibitor_5(X,ka,ki,n,s4), z=(ka*s4*1/(1+(X/ki)^n));end

function z=_1_2_MA_3(CytoE,k), z=(k*CytoE/2);end

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


