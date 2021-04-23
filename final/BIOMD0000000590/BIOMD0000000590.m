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
% Model name = Hermansen2015 - denovo biosynthesis of pyrimidines in yeast
%
% is http://identifiers.org/biomodels.db/MODEL1512160000
% isDescribedBy http://identifiers.org/pubmed/26511837
% is http://identifiers.org/biomodels.db/BIOMD0000000590
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 3.7E-4;
	x0(2) = 3.7E-4;
	x0(3) = 3.7E-4;
	x0(4) = 3.7E-4;
	x0(5) = 3.7E-4;
	x0(6) = 3.7E-4;
	x0(7) = 0.002886;
	x0(8) = 0.00666;
	x0(9) = 3.7E-4;


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
% Parameter:   id =  vmax1, name = vmax1
	global_par_vmax1=3.61602627459517;
% Parameter:   id =  bc, name = [bc]
	global_par_bc=1.52264278250403;
% Parameter:   id =  glu, name = [glu]
	global_par_glu=0.54620785996429;
% Parameter:   id =  K_utp, name = K_utp
	global_par_K_utp=1.413855257896;
% Parameter:   id =  K_q, name = K_q
	global_par_K_q=0.05784981576165;
% Parameter:   id =  K_bc, name = K_bc
	global_par_K_bc=2.3716657188714;
% Parameter:   id =  vmax2, name = vmax2
	global_par_vmax2=2.44590712912244;
% Parameter:   id =  asp, name = [asp]
	global_par_asp=0.0972544685826559;
% Parameter:   id =  atp, name = [atp]
	global_par_atp=0.150650172583633;
% Parameter:   id =  K_atp, name = K_atp
	global_par_K_atp=1.28940553329954;
% Parameter:   id =  K_m2, name = K_m2
	global_par_K_m2=2.00489353757245;
% Parameter:   id =  vmax3, name = vmax3
	global_par_vmax3=28.6613123782585;
% Parameter:   id =  K_m3, name = K_m3
	global_par_K_m3=1.27179181717468;
% Parameter:   id =  vmax4, name = vmax4
	global_par_vmax4=91.7802875108298;
% Parameter:   id =  K_m4, name = K_m4
	global_par_K_m4=0.0160033122150611;
% Parameter:   id =  vmax5, name = vmax5
	global_par_vmax5=5227.49670547203;
% Parameter:   id =  K_m5, name = K_m5
	global_par_K_m5=0.0195216150005324;
% Parameter:   id =  prpp, name = [prpp]
	global_par_prpp=0.181644900226225;
% Parameter:   id =  vmax6, name = vmax6
	global_par_vmax6=34.9720846528477;
% Parameter:   id =  K_m6, name = K_m6
	global_par_K_m6=20.3406449182435;
% Parameter:   id =  vmax10, name = vmax10
	global_par_vmax10=6.55543523218919;
% Parameter:   id =  K_m10, name = K_m10
	global_par_K_m10=0.0267841313759584;
% Parameter:   id =  vmax7, name = vmax7
	global_par_vmax7=5.83104141997666;
% Parameter:   id =  K_m7, name = K_m7
	global_par_K_m7=0.166382738667754;
% Parameter:   id =  g_pyr, name = g_pyr
	global_par_g_pyr=0.198306450999093;
% Parameter:   id =  K_Mp, name = K_Mp
	global_par_K_Mp=5.48714446027226;
% Parameter:   id =  vmax8, name = vmax8
	global_par_vmax8=0.162943604164789;
% Parameter:   id =  K_m8, name = K_m8
	global_par_K_m8=0.00435621076587497;
% Parameter:   id =  K_asp, name = K_asp
	global_par_K_asp=0.168308889432487;
% Parameter:   id =  d, name = d
	global_par_d=0.1;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_compartment*Function_for_r1(global_par_K_atp, global_par_K_bc, global_par_K_q, global_par_K_utp, global_par_atp, global_par_bc, compartment_compartment, global_par_glu, x(8), global_par_vmax1);

% Reaction: id = r2, name = r2
	reaction_r2=compartment_compartment*Function_for_r2(global_par_K_asp, global_par_K_m2, global_par_K_utp, global_par_asp, compartment_compartment, x(1), x(8), global_par_vmax2);

% Reaction: id = r3, name = r3
	reaction_r3=compartment_compartment*Function_for_r3(global_par_K_m3, x(2), compartment_compartment, global_par_vmax3);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_compartment*Function_for_r4(global_par_K_m4, compartment_compartment, x(3), global_par_vmax4);

% Reaction: id = r5, name = r5
	reaction_r5=compartment_compartment*Function_for_r5(global_par_K_m5, compartment_compartment, x(4), global_par_prpp, global_par_vmax5);

% Reaction: id = r6, name = r6
	reaction_r6=compartment_compartment*Function_for_r6(global_par_K_m6, compartment_compartment, x(5), global_par_vmax6);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_compartment*Function_for_r10(global_par_K_m10, compartment_compartment, x(6), global_par_vmax10);

% Reaction: id = r7, name = r7
	reaction_r7=compartment_compartment*Function_for_r7(global_par_K_m7, compartment_compartment, x(7), global_par_vmax7);

% Reaction: id = utp_degradation, name = utp_degradation
	reaction_utp_degradation=compartment_compartment*Function_for_utp_degradation(global_par_K_Mp, compartment_compartment, global_par_g_pyr, x(8));

% Reaction: id = r8, name = r8
	reaction_r8=compartment_compartment*Function_for_r8(global_par_K_m8, compartment_compartment, x(8), global_par_vmax8);

% Reaction: id = ctp_degradation, name = ctp_degradation
	reaction_ctp_degradation=compartment_compartment*Function_for_ctp_degradation(global_par_K_Mp, compartment_compartment, x(9), global_par_g_pyr);

% Reaction: id = cp_dilution, name = cp_dilution
	reaction_cp_dilution=compartment_compartment*Function_for_cp_dilution(compartment_compartment, x(1), global_par_d);

% Reaction: id = ca_dilution, name = ca_dilution
	reaction_ca_dilution=compartment_compartment*Function_for_ca_dilution(x(2), compartment_compartment, global_par_d);

% Reaction: id = dho_dilution, name = dho_dilution
	reaction_dho_dilution=compartment_compartment*Function_for_dho_dilution(compartment_compartment, global_par_d, x(3));

% Reaction: id = oro_dilution, name = oro_dilution
	reaction_oro_dilution=compartment_compartment*Function_for_oro_dilution(compartment_compartment, global_par_d, x(4));

% Reaction: id = omp_dilution, name = omp_dilution
	reaction_omp_dilution=compartment_compartment*Function_for_omp_dilution(compartment_compartment, global_par_d, x(5));

% Reaction: id = ump_dilution, name = ump_dilution
	reaction_ump_dilution=compartment_compartment*Function_for_ump_dilution(compartment_compartment, global_par_d, x(6));

% Reaction: id = udp_dilution, name = udp_dilution
	reaction_udp_dilution=compartment_compartment*Function_for_udp_dilution(compartment_compartment, global_par_d, x(7));

% Reaction: id = utp_dilution, name = utp_dilution
	reaction_utp_dilution=compartment_compartment*Function_for_utp_dilution(compartment_compartment, global_par_d, x(8));

% Reaction: id = ctp_dilution, name = ctp_dilution
	reaction_ctp_dilution=compartment_compartment*Function_for_ctp_dilution(compartment_compartment, x(9), global_par_d);

	xdot=zeros(9,1);
	
% Species:   id = cp, name = cp, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_cp_dilution));
	
% Species:   id = ca, name = ca, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_r2) + (-1.0 * reaction_r3) + (-1.0 * reaction_ca_dilution));
	
% Species:   id = dho, name = dho, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4) + (-1.0 * reaction_dho_dilution));
	
% Species:   id = oro, name = oro, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r5) + (-1.0 * reaction_oro_dilution));
	
% Species:   id = omp, name = omp, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r6) + (-1.0 * reaction_omp_dilution));
	
% Species:   id = ump, name = ump, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r10) + (-1.0 * reaction_ump_dilution));
	
% Species:   id = udp, name = udp, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r7) + (-1.0 * reaction_udp_dilution));
	
% Species:   id = utp, name = utp, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_r7) + (-1.0 * reaction_utp_degradation) + (-1.0 * reaction_r8) + (-1.0 * reaction_utp_dilution));
	
% Species:   id = ctp, name = ctp, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_r8) + (-1.0 * reaction_ctp_degradation) + (-1.0 * reaction_ctp_dilution));
end

function z=Function_for_r2(K_asp,K_m2,K_utp,asp,compartment,cp,utp,vmax2), z=(vmax2*cp*asp/((1+utp/K_utp)*(K_m2+cp)*(K_asp+asp))/compartment);end

function z=Function_for_r1(K_atp,K_bc,K_q,K_utp,atp,bc,compartment,glu,utp,vmax1), z=(vmax1*bc*glu*atp/((1+utp/K_utp)*(K_atp+atp)*(K_bc+bc)*(K_q+glu))/compartment);end

function z=Function_for_r3(K_m3,ca,compartment,vmax3), z=(vmax3*ca/(K_m3+ca)/compartment);end

function z=Function_for_r4(K_m4,compartment,dho,vmax4), z=(vmax4*dho/(K_m4+dho)/compartment);end

function z=Function_for_r5(K_m5,compartment,oro,prpp,vmax5), z=(vmax5*oro*prpp/(K_m5+oro*prpp)/compartment);end

function z=Function_for_r6(K_m6,compartment,omp,vmax6), z=(vmax6*omp/(K_m6+omp)/compartment);end

function z=Function_for_r10(K_m10,compartment,ump,vmax10), z=(vmax10*ump/(K_m10+ump)/compartment);end

function z=Function_for_r7(K_m7,compartment,udp,vmax7), z=(vmax7*udp/(K_m7+udp)/compartment);end

function z=Function_for_utp_degradation(K_Mp,compartment,g_pyr,utp), z=(g_pyr*utp/(K_Mp+utp)/compartment);end

function z=Function_for_r8(K_m8,compartment,utp,vmax8), z=(vmax8*utp/(K_m8+utp)/compartment);end

function z=Function_for_ctp_degradation(K_Mp,compartment,ctp,g_pyr), z=(g_pyr*ctp/(K_Mp+ctp)/compartment);end

function z=Function_for_cp_dilution(compartment,cp,d), z=(d*cp/compartment);end

function z=Function_for_ca_dilution(ca,compartment,d), z=(d*ca/compartment);end

function z=Function_for_dho_dilution(compartment,d,dho), z=(d*dho/compartment);end

function z=Function_for_oro_dilution(compartment,d,oro), z=(d*oro/compartment);end

function z=Function_for_omp_dilution(compartment,d,omp), z=(d*omp/compartment);end

function z=Function_for_ump_dilution(compartment,d,ump), z=(d*ump/compartment);end

function z=Function_for_udp_dilution(compartment,d,udp), z=(d*udp/compartment);end

function z=Function_for_utp_dilution(compartment,d,utp), z=(d*utp/compartment);end

function z=Function_for_ctp_dilution(compartment,ctp,d), z=(d*ctp/compartment);end

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


