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
% Model name = Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response
%
% is http://identifiers.org/biomodels.db/MODEL1803300000
% isDescribedBy http://identifiers.org/pubmed/29668363
% is http://identifiers.org/biomodels.db/BIOMD0000000703
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;


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

% Compartment: id = ER, name = ER, constant
	compartment_ER=1.0;
% Parameter:   id =  B, name = B
% Parameter:   id =  KBU, name = KBU
	global_par_KBU=0.8;
% Parameter:   id =  KBP, name = KBP
	global_par_KBP=0.01;
% Parameter:   id =  KBA6, name = KBA6
	global_par_KBA6=1.6E-5;
% Parameter:   id =  A6tot_norm, name = A6tot_norm
	global_par_A6tot_norm=15.0;
% Parameter:   id =  CHOP_BiP_ratio, name = CHOP/BiP ratio
% Parameter:   id =  G_star, name = G_star
	global_par_G_star=1.0;
% Parameter:   id =  C_star, name = C_star
	global_par_C_star=1.0;
% Parameter:   id =  A4_star, name = A4_star
	global_par_A4_star=1.0;
% Parameter:   id =  U_star, name = U_star
	global_par_U_star=1.0;
% Parameter:   id =  A6_star, name = A6_star
	global_par_A6_star=1.0;
% Parameter:   id =  b_star, name = b_star
	global_par_b_star=1.0;
% Parameter:   id =  c_star, name = c_star
	global_par_c_star=1.0;
% Parameter:   id =  g_star, name = g_star
	global_par_g_star=1.0;
% Parameter:   id =  Btot_star, name = Btot_star
	global_par_Btot_star=1.0;
% Parameter:   id =  kdB, name = kdB
	global_par_kdB=2.514E-4;
% Parameter:   id =  kdb, name = kdb
	global_par_kdb=0.001284;
% Parameter:   id =  kdA4, name = kdA4
	global_par_kdA4=0.00384;
% Parameter:   id =  kdA6, name = kdA6
	global_par_kdA6=0.00384;
% Parameter:   id =  kdc, name = kdc
	global_par_kdc=0.00393;
% Parameter:   id =  kdC, name = kdC
	global_par_kdC=0.005478;
% Parameter:   id =  kdg, name = kdg
	global_par_kdg=0.003468;
% Parameter:   id =  kdG, name = kdG
	global_par_kdG=0.003852;
% Parameter:   id =  Ep_star, name = Ep_star
	global_par_Ep_star=1.0;
% Parameter:   id =  Stress, name = Stress
	global_par_Stress=2.0;
% Parameter:   id =  Etot_norm, name = Etot_norm
	global_par_Etot_norm=20.0;
% Parameter:   id =  f, name = f
	global_par_f=0.02;
% Parameter:   id =  x_star, name = x_star
	global_par_x_star=1.0;
% Parameter:   id =  xtot_norm, name = xtot_norm
	global_par_xtot_norm=16.0;
% Parameter:   id =  kdx, name = kdx
	global_par_kdx=0.006546;
% Parameter:   id =  KUP, name = KUP
% Parameter:   id =  KBI, name = KBI
	global_par_KBI=0.01;
% Parameter:   id =  KUI, name = KUI
% Parameter:   id =  Pp, name = Pp
% Parameter:   id =  Ip, name = Ip
% Parameter:   id =  KOperk, name = KOperk
	global_par_KOperk=1.0;
% Parameter:   id =  KOire1, name = KOire1
	global_par_KOire1=1.0;
% Parameter:   id =  fi, name = fi
	global_par_fi=0.01;
% Parameter:   id =  alphaI, name = alphaI
	global_par_alphaI=0.2;
% Parameter:   id =  Ip_star, name = Ip_star
	global_par_Ip_star=1.0;
% Parameter:   id =  betaI, name = betaI
	global_par_betaI=0.1;
% assignmentRule: variable = B
	global_par_B=x(4)/(1+x(1)/global_par_KBU);
% assignmentRule: variable = CHOP_BiP_ratio
	global_par_CHOP_BiP_ratio=x(7)/x(4);
% assignmentRule: variable = KUP
	global_par_KUP=(1/global_par_f-1)*global_par_U_star/(1+global_par_Btot_star/global_par_KBP*1/(1+global_par_U_star/global_par_KBU));
% assignmentRule: variable = KUI
	global_par_KUI=(1/global_par_fi-1)*global_par_U_star/(1+global_par_Btot_star/global_par_KBI*1/(1+global_par_U_star/global_par_KBU));
% assignmentRule: variable = Pp
	global_par_Pp=global_par_KOperk*1/global_par_f*x(1)/(global_par_KUP+global_par_KUP/global_par_KBP*global_par_B+x(1));
% assignmentRule: variable = Ip
	global_par_Ip=global_par_KOire1*1/global_par_fi*x(1)/(global_par_KUI+global_par_KUI/global_par_KBI*global_par_B+x(1));

% Reaction: id = Btot_degr, name = Btot degr
	reaction_Btot_degr=compartment_ER*global_par_kdB*x(4);

% Reaction: id = b_syn, name = b syn	% Local Parameter:   id =  KA4, name = KA4
	reaction_b_syn_KA4=3.0;
	% Local Parameter:   id =  KA6, name = KA6
	reaction_b_syn_KA6=3.0;
	% Local Parameter:   id =  KX, name = KX
	reaction_b_syn_KX=8.0;
	% Local Parameter:   id =  Kb4, name = Kb4
	reaction_b_syn_Kb4=0.5;
	% Local Parameter:   id =  Kb6, name = Kb6
	reaction_b_syn_Kb6=0.56;
	% Local Parameter:   id =  Kth4, name = Kth4
	reaction_b_syn_Kth4=0.167;
	% Local Parameter:   id =  Kth6, name = Kth6
	reaction_b_syn_Kth6=1.0E-5;
	% Local Parameter:   id =  alphaA4, name = alphaA4
	reaction_b_syn_alphaA4=0.007;
	% Local Parameter:   id =  alphaA6, name = alphaA6
	reaction_b_syn_alphaA6=0.012;
	% Local Parameter:   id =  alphaX, name = alphaX
	reaction_b_syn_alphaX=0.002;
	% Local Parameter:   id =  nA, name = nA
	reaction_b_syn_nA=7.0;
	% Local Parameter:   id =  nA4, name = nA4
	reaction_b_syn_nA4=2.0;
	% Local Parameter:   id =  nA6, name = nA6
	reaction_b_syn_nA6=2.0;

	reaction_b_syn=compartment_ER*Rate_Law_for_b_syn_1(x(5), global_par_A4_star, x(2), global_par_A6_star, global_par_Ip, global_par_Ip_star, reaction_b_syn_KA4, reaction_b_syn_KA6, reaction_b_syn_KX, reaction_b_syn_Kb4, reaction_b_syn_Kb6, reaction_b_syn_Kth4, reaction_b_syn_Kth6, reaction_b_syn_alphaA4, reaction_b_syn_alphaA6, global_par_alphaI, reaction_b_syn_alphaX, global_par_b_star, global_par_betaI, global_par_kdb, reaction_b_syn_nA, reaction_b_syn_nA4, reaction_b_syn_nA6, x(11), global_par_x_star);

% Reaction: id = b_degr, name = b degr
	reaction_b_degr=compartment_ER*Rate_Law_for_b_degr_1(global_par_Ip, global_par_Ip_star, global_par_alphaI, x(3), global_par_betaI, global_par_kdb);

% Reaction: id = A6_degr, name = A6 degr
	reaction_A6_degr=compartment_ER*global_par_kdA6*x(2);

% Reaction: id = A6_syn, name = A6 syn	% Local Parameter:   id =  kcl, name = kcl
	reaction_A6_syn_kcl=4.0;

	reaction_A6_syn=compartment_ER*Rate_Law_for_A6_syn_1(x(2), global_par_A6_star, global_par_A6tot_norm, global_par_B, global_par_KBA6, x(1), global_par_U_star, reaction_A6_syn_kcl, global_par_kdA6);

% Reaction: id = U_degr, name = U degr	% Local Parameter:   id =  KII, name = KII
	reaction_U_degr_KII=0.01;
	% Local Parameter:   id =  delta, name = delta
	reaction_U_degr_delta=1.5;

	reaction_U_degr=compartment_ER*Rate_Law_for_U_degr_1(global_par_B, global_par_Ip, global_par_Ip_star, reaction_U_degr_KII, x(1), reaction_U_degr_delta);

% Reaction: id = A4_syn, name = A4 syn	% Local Parameter:   id =  gamma, name = gamma
	reaction_A4_syn_gamma=0.001;

	reaction_A4_syn=compartment_ER*Rate_Law_for_A4_syn_1(global_par_A4_star, x(10), x(1), global_par_U_star, reaction_A4_syn_gamma, global_par_kdA4);

% Reaction: id = A4_degr, name = A4 degr
	reaction_A4_degr=compartment_ER*global_par_kdA4*x(5);

% Reaction: id = c_syn, name = c syn	% Local Parameter:   id =  KA4c, name = KA4c
	reaction_c_syn_KA4c=2.0;
	% Local Parameter:   id =  Kc4, name = Kc4
	reaction_c_syn_Kc4=0.56;
	% Local Parameter:   id =  Kth4c, name = Kth4c
	reaction_c_syn_Kth4c=0.25;
	% Local Parameter:   id =  muA4, name = muA4
	reaction_c_syn_muA4=0.1;
	% Local Parameter:   id =  n, name = n
	reaction_c_syn_n=2.0;

	reaction_c_syn=compartment_ER*Rate_Law_for_c_syn_1(x(5), global_par_A4_star, x(2), reaction_c_syn_KA4c, reaction_c_syn_Kc4, reaction_c_syn_Kth4c, global_par_c_star, global_par_kdc, reaction_c_syn_muA4, reaction_c_syn_n);

% Reaction: id = c_degr, name = c degr
	reaction_c_degr=compartment_ER*global_par_kdc*x(6);

% Reaction: id = C_syn, name = C syn	% Local Parameter:   id =  ktC, name = ktC
	reaction_C_syn_ktC=1.0E-4;

	reaction_C_syn=compartment_ER*Rate_Law_for_C_syn_1(global_par_C_star, x(10), global_par_Ep_star, x(6), global_par_c_star, global_par_kdC, reaction_C_syn_ktC);

% Reaction: id = C_degr, name = C degr
	reaction_C_degr=compartment_ER*global_par_kdC*x(7);

% Reaction: id = g_syn, name = g syn	% Local Parameter:   id =  KA4g, name = KA4g
	reaction_g_syn_KA4g=0.75;
	% Local Parameter:   id =  KC, name = KC
	reaction_g_syn_KC=5.0;
	% Local Parameter:   id =  Kth4g, name = Kth4g
	reaction_g_syn_Kth4g=0.1;
	% Local Parameter:   id =  etaC, name = etaC
	reaction_g_syn_etaC=0.012;

	reaction_g_syn=compartment_ER*Rate_Law_for_g_syn_1(x(5), global_par_A4_star, x(7), global_par_C_star, reaction_g_syn_KA4g, reaction_g_syn_KC, reaction_g_syn_Kth4g, reaction_g_syn_etaC, global_par_g_star, global_par_kdg);

% Reaction: id = g_degr, name = g degr
	reaction_g_degr=compartment_ER*global_par_kdg*x(8);

% Reaction: id = G_syn, name = G syn	% Local Parameter:   id =  ktG, name = ktG
	reaction_G_syn_ktG=0.0015;

	reaction_G_syn=compartment_ER*Rate_Law_for_G_syn_1(x(10), global_par_Ep_star, global_par_G_star, x(8), global_par_g_star, global_par_kdG, reaction_G_syn_ktG);

% Reaction: id = G_degr, name = G degr
	reaction_G_degr=compartment_ER*global_par_kdG*x(9);

% Reaction: id = Ep_degr, name = Ep degr	% Local Parameter:   id =  Kdeph, name = Kdeph
	reaction_Ep_degr_Kdeph=7.0;
	% Local Parameter:   id =  kdeph1, name = kdeph1
	reaction_Ep_degr_kdeph1=0.03;
	% Local Parameter:   id =  kdeph2, name = kdeph2
	reaction_Ep_degr_kdeph2=0.08;

	reaction_Ep_degr=compartment_ER*Rate_Law_for_Ep_degr_1(x(10), x(9), global_par_G_star, reaction_Ep_degr_Kdeph, reaction_Ep_degr_kdeph1, reaction_Ep_degr_kdeph2);

% Reaction: id = U_syn, name = U syn	% Local Parameter:   id =  KE, name = KE
	reaction_U_syn_KE=3.0;
	% Local Parameter:   id =  KUI, name = KUI
	reaction_U_syn_KUI=0.01;
	% Local Parameter:   id =  KUU, name = KUU
	reaction_U_syn_KUU=6.0;
	% Local Parameter:   id =  ksU, name = ksU
	reaction_U_syn_ksU=0.89;
	% Local Parameter:   id =  n, name = n
	reaction_U_syn_n=4.0;

	reaction_U_syn=compartment_ER*Rate_Law_for_U_syn_1(x(10), global_par_Ip, global_par_Ip_star, reaction_U_syn_KE, reaction_U_syn_KUI, reaction_U_syn_KUU, global_par_Stress, x(1), reaction_U_syn_ksU, reaction_U_syn_n);

% Reaction: id = Btot_syn, name = Btot syn
	reaction_Btot_syn=compartment_ER*Rate_Law_for_Btot_syn_1(global_par_Btot_star, x(3), global_par_b_star, global_par_kdB);

% Reaction: id = Ep_syn, name = Ep syn	% Local Parameter:   id =  Kph, name = Kph
	reaction_Ep_syn_Kph=14.0;
	% Local Parameter:   id =  kph, name = kph
	reaction_Ep_syn_kph=0.00651;

	reaction_Ep_syn=compartment_ER*Rate_Law_for_Ep_syn_1(x(10), global_par_Etot_norm, reaction_Ep_syn_Kph, global_par_Pp, reaction_Ep_syn_kph);

% Reaction: id = x_degr, name = x degr
	reaction_x_degr=compartment_ER*global_par_kdx*x(11);

% Reaction: id = x_syn, name = x syn	% Local Parameter:   id =  Kx, name = Kx
	reaction_x_syn_Kx=3.0;
	% Local Parameter:   id =  ksp, name = ksp
	reaction_x_syn_ksp=0.00785;

	reaction_x_syn=compartment_ER*Rate_Law_for_x_syn_1(global_par_Ip, reaction_x_syn_Kx, reaction_x_syn_ksp, x(11), global_par_xtot_norm);

	xdot=zeros(11,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_ER))*((-1.0 * reaction_U_degr) + ( 1.0 * reaction_U_syn));
	
% Species:   id = A6, name = A6, affected by kineticLaw
	xdot(2) = (1/(compartment_ER))*((-1.0 * reaction_A6_degr) + ( 1.0 * reaction_A6_syn));
	
% Species:   id = b, name = b, affected by kineticLaw
	xdot(3) = (1/(compartment_ER))*(( 1.0 * reaction_b_syn) + (-1.0 * reaction_b_degr));
	
% Species:   id = Btot, name = Btot, affected by kineticLaw
	xdot(4) = (1/(compartment_ER))*((-1.0 * reaction_Btot_degr) + ( 1.0 * reaction_Btot_syn));
	
% Species:   id = A4, name = A4, affected by kineticLaw
	xdot(5) = (1/(compartment_ER))*(( 1.0 * reaction_A4_syn) + (-1.0 * reaction_A4_degr));
	
% Species:   id = c, name = c, affected by kineticLaw
	xdot(6) = (1/(compartment_ER))*(( 1.0 * reaction_c_syn) + (-1.0 * reaction_c_degr));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(7) = (1/(compartment_ER))*(( 1.0 * reaction_C_syn) + (-1.0 * reaction_C_degr));
	
% Species:   id = g, name = g, affected by kineticLaw
	xdot(8) = (1/(compartment_ER))*(( 1.0 * reaction_g_syn) + (-1.0 * reaction_g_degr));
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(9) = (1/(compartment_ER))*(( 1.0 * reaction_G_syn) + (-1.0 * reaction_G_degr));
	
% Species:   id = Ep, name = Ep, affected by kineticLaw
	xdot(10) = (1/(compartment_ER))*((-1.0 * reaction_Ep_degr) + ( 1.0 * reaction_Ep_syn));
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(11) = (1/(compartment_ER))*((-1.0 * reaction_x_degr) + ( 1.0 * reaction_x_syn));
end

function z=Rate_Law_for_b_syn_1(A4,A4_star,A6,A6_star,Ip,Ip_star,KA4,KA6,KX,Kb4,Kb6,Kth4,Kth6,alphaA4,alphaA6,alphaI,alphaX,b_star,betaI,kdb,nA,nA4,nA6,x,x_star), z=(kdb*(1+alphaI*(Ip-Ip_star))/(1+betaI*(Ip-Ip_star))*b_star+alphaA6*(1+Kb6*A4)*(A6-A6_star)^nA6/((A6-A6_star)^nA6+KA6^nA6*(1+Kth6*A4^nA))+alphaA4*(1+Kb4*A6)*(A4-A4_star)^nA4/((A4-A4_star)^nA4+KA4^nA4*(1+Kth4*A6)^nA4)+alphaX*(x-x_star)/((x-x_star)+KX));end

function z=Rate_Law_for_b_degr_1(Ip,Ip_star,alphaI,b,betaI,kdb), z=(kdb*(1+alphaI*(Ip-Ip_star))/(1+betaI*(Ip-Ip_star))*b);end

function z=Rate_Law_for_A6_syn_1(A6,A6_star,A6tot_norm,B,KBA6,U,U_star,kcl,kdA6), z=(kdA6*A6_star+kcl*(U-U_star)*(A6tot_norm-A6)/(1+B/KBA6));end

function z=Rate_Law_for_U_degr_1(B,Ip,Ip_star,KII,U,delta), z=(delta*U/(1+KII*(Ip-Ip_star))*B);end

function z=Rate_Law_for_A4_syn_1(A4_star,Ep,U,U_star,gamma,kdA4), z=(kdA4*A4_star+gamma*(U-U_star)*Ep);end

function z=Rate_Law_for_c_syn_1(A4,A4_star,A6,KA4c,Kc4,Kth4c,c_star,kdc,muA4,n), z=(kdc*c_star+muA4*(1+Kc4*A6)*(A4-A4_star)^n/((A4-A4_star)^n+KA4c^n*(1+Kth4c*A6)^n));end

function z=Rate_Law_for_C_syn_1(C_star,Ep,Ep_star,c,c_star,kdC,ktC), z=((kdC*C_star/c_star+ktC*(Ep-Ep_star))*c);end

function z=Rate_Law_for_g_syn_1(A4,A4_star,C,C_star,KA4g,KC,Kth4g,etaC,g_star,kdg), z=(kdg*g_star+etaC*((A4-A4_star)+KA4g*(A4-A4_star)*(C-C_star))/((A4-A4_star)+Kth4g*(A4-A4_star)*(C-C_star)+KC));end

function z=Rate_Law_for_G_syn_1(Ep,Ep_star,G_star,g,g_star,kdG,ktG), z=((kdG*G_star/g_star+ktG*(Ep-Ep_star))*g);end

function z=Rate_Law_for_Ep_degr_1(Ep,G,G_star,Kdeph,kdeph1,kdeph2), z=((kdeph1+kdeph2*(G-G_star))*Ep/(Kdeph+Ep));end

function z=Rate_Law_for_U_syn_1(Ep,Ip,Ip_star,KE,KUI,KUU,Stress,U,ksU,n), z=((ksU/(1+KUI*(Ip-Ip_star))+Stress)/(1+Ep/KE+(U/KUU)^n));end

function z=Rate_Law_for_Btot_syn_1(Btot_star,b,b_star,kdB), z=(kdB*Btot_star/b_star*b);end

function z=Rate_Law_for_Ep_syn_1(Ep,Etot_norm,Kph,Pp,kph), z=(kph*(Etot_norm-Ep)*Pp/(Kph+(Etot_norm-Ep)));end

function z=Rate_Law_for_x_syn_1(Ip,Kx,ksp,x,xtot_norm), z=(ksp*Ip*(xtot_norm-x)/((Kx+xtot_norm)-x));end

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


