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
% Model name = Reiterer2013 - pseudophosphatase STYX role in ERK signalling
%
% is http://identifiers.org/biomodels.db/MODEL1410300001
% is http://identifiers.org/biomodels.db/BIOMD0000000557
% isDescribedBy http://identifiers.org/pubmed/23847209
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 572.5;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 100.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1630.9;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 3000.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 1.0;
	x0(19) = 10.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=0.94;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=0.22;
% Parameter:   id =  k_ERKin, name = k_ERKin
	global_par_k_ERKin=0.144;
% Parameter:   id =  k_ERKout, name = k_ERKout
	global_par_k_ERKout=1.08;
% Parameter:   id =  k_pERKin, name = k_pERKin
	global_par_k_pERKin=0.144;
% Parameter:   id =  k_pERKout, name = k_pERKout
	global_par_k_pERKout=1.08;
% Parameter:   id =  k_ppERKin, name = k_ppERKin
	global_par_k_ppERKin=0.66;
% Parameter:   id =  k_ppERKout, name = k_ppERKout
	global_par_k_ppERKout=0.78;
% Parameter:   id =  k1_ES, name = k1_ES
	global_par_k1_ES=1.0;
% Parameter:   id =  k2_ES, name = k2_ES
	global_par_k2_ES=60.0;
% Parameter:   id =  k1_pES, name = k1_pES
	global_par_k1_pES=1.0;
% Parameter:   id =  k2_pES, name = k2_pES
	global_par_k2_pES=60.0;
% Parameter:   id =  k1_ppES, name = k1_ppES
	global_par_k1_ppES=1.0;
% Parameter:   id =  k2_ppES, name = k2_ppES
	global_par_k2_ppES=60.0;
% Parameter:   id =  k1_ERKc, name = k1_ERKc
	global_par_k1_ERKc=1.0;
% Parameter:   id =  k2_ERKc, name = k2_ERKc
	global_par_k2_ERKc=350.0;
% Parameter:   id =  k3_ERKc, name = k3_ERKc
	global_par_k3_ERKc=13.2;
% Parameter:   id =  kd1_ppERKc, name = kd1_ppERKc
	global_par_kd1_ppERKc=1.0;
% Parameter:   id =  kd2_ppERKc, name = kd2_ppERKc
	global_par_kd2_ppERKc=60.0;
% Parameter:   id =  kd3_ppERKc, name = kd3_ppERKc
	global_par_kd3_ppERKc=0.388;
% Parameter:   id =  kd1_pERKc, name = kd1_pERKc
	global_par_kd1_pERKc=1.0;
% Parameter:   id =  kd2_pERKc, name = kd2_pERKc
	global_par_kd2_pERKc=160.0;
% Parameter:   id =  kd3_pERKc, name = kd3_pERKc
	global_par_kd3_pERKc=0.432;
% Parameter:   id =  kd1_ERKc, name = kd1_ERKc
	global_par_kd1_ERKc=0.0;
% Parameter:   id =  kd2_ERKc, name = kd2_ERKc
	global_par_kd2_ERKc=5160.0;
% Parameter:   id =  k1_ERKn, name = k1_ERKn
	global_par_k1_ERKn=1.0;
% Parameter:   id =  k2_ERKn, name = k2_ERKn
	global_par_k2_ERKn=350.0;
% Parameter:   id =  k3_ERKn, name = k3_ERKn
	global_par_k3_ERKn=13.2;
% Parameter:   id =  kd1_ppERKn, name = kd1_ppERKn
	global_par_kd1_ppERKn=1.0;
% Parameter:   id =  kd2_ppERKn, name = kd2_ppERKn
	global_par_kd2_ppERKn=60.0;
% Parameter:   id =  kd3_ppERKn, name = kd3_ppERKn
	global_par_kd3_ppERKn=38.88;
% Parameter:   id =  kd1_pERKn, name = kd1_pERKn
	global_par_kd1_pERKn=1.0;
% Parameter:   id =  kd2_pERKn, name = kd2_pERKn
	global_par_kd2_pERKn=160.0;
% Parameter:   id =  kd3_pERKn, name = kd3_pERKn
	global_par_kd3_pERKn=43.2;
% Parameter:   id =  kd1_ERKn, name = kd1_ERKn
	global_par_kd1_ERKn=0.0;
% Parameter:   id =  kd2_ERKn, name = kd2_ERKn
	global_par_kd2_ERKn=160.0;
% Parameter:   id =  k_ppMEKc_tot, name = k_ppMEKc_tot
	global_par_k_ppMEKc_tot=100.0;
% Parameter:   id =  actCompl, name = actCompl
	global_par_actCompl=1.0E-9;
% Parameter:   id =  duspn_basal, name = duspn_basal
	global_par_duspn_basal=1.0;
% Parameter:   id =  duspn_ind, name = duspn_ind
	global_par_duspn_ind=20.0;
% Parameter:   id =  Kduspn, name = Kduspn
	global_par_Kduspn=1000.0;
% Parameter:   id =  Tduspn, name = Tduspn
	global_par_Tduspn=10.0;
% Parameter:   id =  v2, name = v2
	global_par_v2=10.0;
% Parameter:   id =  TDUSPn, name = TDUSPn
	global_par_TDUSPn=45.0;
% Parameter:   id =  scale_cytERK_tot, name = scale_cytERK_tot
	global_par_scale_cytERK_tot=1.0;
% Parameter:   id =  scale_nucERK_tot, name = scale_nucERK_tot
	global_par_scale_nucERK_tot=1.0;
% Parameter:   id =  scale_cellERK_tot, name = scale_cellERK_tot
	global_par_scale_cellERK_tot=1.0;
% Parameter:   id =  scale_cytppERK_tot, name = scale_cytppERK_tot
	global_par_scale_cytppERK_tot=1.0;
% Parameter:   id =  scale_nucppERK_tot, name = scale_nucppERK_tot
	global_par_scale_nucppERK_tot=1.0;
% Parameter:   id =  scale_cellppERK_tot, name = scale_cellppERK_tot
	global_par_scale_cellppERK_tot=0.0193861307997638;
% Parameter:   id =  scale_tDUSPn, name = scale_tDUSPn
	global_par_scale_tDUSPn=1.0;
% Parameter:   id =  scale_tERK_STYXn, name = scale_tERK_STYXn
	global_par_scale_tERK_STYXn=1.0;
% assignmentRule: variable = ppMEKc_tot
	x(21)=x(20)*global_par_k_ppMEKc_tot;
% assignmentRule: variable = ERKc_obs
	x(22)=x(1);
% assignmentRule: variable = pERKc_obs
	x(23)=x(2);
% assignmentRule: variable = ppERKc_obs
	x(24)=x(3);
% assignmentRule: variable = ERK_ppMEKc_obs
	x(25)=x(4);
% assignmentRule: variable = u_ppMEKc_tot
	x(20)=piecewise(0, time < -1, 0, time < 0, 1, time < 120, 1);

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_k1_ERKc*x(1)*(x(21)*compartment_cytosol-x(4)*compartment_cytosol-x(5))*compartment_cytosol-global_par_k2_ERKc*x(4)*compartment_cytosol;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_k3_ERKc*x(4)*compartment_cytosol;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_k1_ERKc*x(2)*(x(21)*compartment_cytosol-x(5)*compartment_cytosol-x(4))*compartment_cytosol-global_par_k2_ERKc*x(5)*compartment_cytosol;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_k3_ERKc*x(5)*compartment_cytosol;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_k_ERKin*x(1)*compartment_cytosol-global_par_k_ERKout*x(9)*compartment_nucleus;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_k_pERKin*x(2)*compartment_cytosol-global_par_k_pERKout*x(10)*compartment_nucleus;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_k_ppERKin*x(3)*compartment_cytosol-global_par_k_ppERKout*x(11)*compartment_nucleus;

% Reaction: id = reaction_8
	reaction_reaction_8=(global_par_kd1_ppERKc*x(3)*x(6)/0.94*compartment_cytosol-global_par_kd2_ppERKc*x(8))*compartment_cytosol;

% Reaction: id = reaction_9
	reaction_reaction_9=global_par_kd3_ppERKc*x(8)*compartment_cytosol;

% Reaction: id = reaction_10
	reaction_reaction_10=(global_par_kd1_pERKc*x(2)*x(6)/0.94*compartment_cytosol-global_par_kd2_pERKc*x(7))*compartment_cytosol;

% Reaction: id = reaction_11
	reaction_reaction_11=global_par_kd3_pERKc*x(7)*compartment_cytosol;

% Reaction: id = reaction_12
	reaction_reaction_12=(global_par_kd1_ppERKn*x(11)*x(19)/0.22*compartment_nucleus-global_par_kd2_ppERKn*x(13))*compartment_nucleus;

% Reaction: id = reaction_13
	reaction_reaction_13=global_par_kd3_ppERKn*x(13)*compartment_nucleus;

% Reaction: id = reaction_14
	reaction_reaction_14=(global_par_kd1_pERKn*x(10)*x(19)/0.22*compartment_nucleus-global_par_kd2_pERKn*x(12))*compartment_nucleus;

% Reaction: id = reaction_15
	reaction_reaction_15=global_par_kd3_pERKn*x(12)*compartment_nucleus;

% Reaction: id = reaction_16
	reaction_reaction_16=global_par_duspn_basal*(1+global_par_duspn_ind*x(11)^2/(x(11)^2*compartment_nucleus+global_par_Kduspn^2))*0.693/global_par_Tduspn;

% Reaction: id = reaction_17
	reaction_reaction_17=x(18)*0.693/global_par_Tduspn*compartment_nucleus;

% Reaction: id = reaction_18
	reaction_reaction_18=global_par_v2*x(18)/0.22*0.693/global_par_TDUSPn*compartment_nucleus;

% Reaction: id = reaction_19
	reaction_reaction_19=x(19)*0.693/global_par_TDUSPn*compartment_nucleus;

% Reaction: id = reaction_20
	reaction_reaction_20=(global_par_k1_ES*x(9)*x(14)/0.22*compartment_nucleus-global_par_k2_ES*x(15))*compartment_nucleus;

% Reaction: id = reaction_21
	reaction_reaction_21=(global_par_k1_pES*x(10)*x(14)/0.22*compartment_nucleus-global_par_k2_pES*x(16))*compartment_nucleus;

% Reaction: id = reaction_22
	reaction_reaction_22=(global_par_k1_ppES*x(11)*x(14)/0.22*compartment_nucleus-global_par_k2_ppES*x(17))*compartment_nucleus;

	xdot=zeros(25,1);
	
% Species:   id = ERKc, name = ERKc, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = pERKc, name = pERKc, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = ppERKc, name = ppERKc, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = ERK_ppMEKc, name = ERK_ppMEKc, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = pERK_ppMEKc, name = pERK_ppMEKc, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = DUSPc, name = DUSPc, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = pERK_DUSPc, name = pERK_DUSPc, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = ppERK_DUSPc, name = ppERK_DUSPc, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = ERKn, name = ERKn, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_20));
	
% Species:   id = pERKn, name = pERKn, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_21));
	
% Species:   id = ppERKn, name = ppERKn, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_22));
	
% Species:   id = pERK_DUSPn, name = pERK_DUSPn, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = ppERK_DUSPn, name = ppERK_DUSPn, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = STYXn, name = STYXn, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*((-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = ERK_STYXn, name = ERK_STYXn, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_20));
	
% Species:   id = pERK_STYXn, name = pERK_STYXn, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_21));
	
% Species:   id = ppERK_STYXn, name = ppERK_STYXn, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_22));
	
% Species:   id = duspn, name = duspn, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = DUSPn, name = DUSPn, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = u_ppMEKc_tot, name = u_ppMEKc_tot, defined in a rule 	xdot(20) = x(20);
	
% Species:   id = ppMEKc_tot, name = ppMEKc_tot, defined in a rule 	xdot(21) = x(21);
	
% Species:   id = ERKc_obs, name = ERKc_obs, defined in a rule 	xdot(22) = x(22);
	
% Species:   id = pERKc_obs, name = pERKc_obs, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = ppERKc_obs, name = ppERKc_obs, defined in a rule 	xdot(24) = x(24);
	
% Species:   id = ERK_ppMEKc_obs, name = ERK_ppMEKc_obs, defined in a rule 	xdot(25) = x(25);
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


