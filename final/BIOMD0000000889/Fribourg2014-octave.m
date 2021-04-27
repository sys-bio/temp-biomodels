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
% Model name = Fribourg2014 - Model of influenza A virus infection dynamics of viral antagonism and innate immune response.
%
% isDescribedBy http://identifiers.org/pubmed/24594370
% is http://identifiers.org/biomodels.db/MODEL1912120001
% is http://identifiers.org/biomodels.db/BIOMD0000000889
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
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
	x0(12) = 1.0;


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
% Parameter:   id =  r_0, name = r_0
	global_par_r_0=0.001;
% Parameter:   id =  k_15, name = k_15
	global_par_k_15=3.6E-5;
% Parameter:   id =  t_1, name = t_1
	global_par_t_1=2.5;
% Parameter:   id =  v_max217, name = v_max217
% Parameter:   id =  K_217, name = K_217
	global_par_K_217=0.002;
% Parameter:   id =  TJ_tot, name = TJ_tot
	global_par_TJ_tot=1.0E-4;
% Parameter:   id =  K_3, name = K_3
	global_par_K_3=0.0043;
% Parameter:   id =  d, name = d
	global_par_d=3.0E-4;
% Parameter:   id =  K_9, name = K_9
	global_par_K_9=780.0;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=3600.0;
% Parameter:   id =  K_5, name = K_5
	global_par_K_5=0.01;
% Parameter:   id =  t_3, name = t_3
	global_par_t_3=0.56;
% Parameter:   id =  r_3, name = r_3
	global_par_r_3=1.0E-7;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=0.0036;
% Parameter:   id =  t_4, name = t_4
	global_par_t_4=0.46;
% Parameter:   id =  k_11, name = k_11
	global_par_k_11=3.6E-4;
% Parameter:   id =  k_14, name = k_14
% Parameter:   id =  t_6, name = t_6
	global_par_t_6=1.0;
% Parameter:   id =  k_12, name = k_12
	global_par_k_12=360.0;
% Parameter:   id =  k_16, name = k_16
	global_par_k_16=0.36;
% Parameter:   id =  t_8, name = t_8
	global_par_t_8=2.0;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=1.0E-4;
% Parameter:   id =  r_20, name = r_20
	global_par_r_20=0.001;
% Parameter:   id =  K_20, name = K_20
	global_par_K_20=6.0E-4;
% Parameter:   id =  t_9, name = t_9
	global_par_t_9=2.0;
% Parameter:   id =  v_max19, name = v_max19
% Parameter:   id =  K_19, name = K_19
	global_par_K_19=0.004;
% Parameter:   id =  r_4, name = r_4
	global_par_r_4=1.0E-6;
% Parameter:   id =  k_26, name = k_26
% Parameter:   id =  t_12, name = t_12
	global_par_t_12=1.0;
% Parameter:   id =  k_28, name = k_28
	global_par_k_28=360.0;
% Parameter:   id =  t_13, name = t_13
	global_par_t_13=15.0;
% Parameter:   id =  r_5, name = r_5
	global_par_r_5=1.0;
% Parameter:   id =  n_3, name = n_3
	global_par_n_3=5.0;
% Parameter:   id =  b_m, name = b_m
	global_par_b_m=6.0;
% Parameter:   id =  sp, name = sp
	global_par_sp=0.3;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=0.1;
% Parameter:   id =  n_1, name = n_1
	global_par_n_1=1.0;
% Parameter:   id =  sv, name = sv
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=0.4;
% Parameter:   id =  n_2, name = n_2
	global_par_n_2=5.0;
% Parameter:   id =  TJ, name = TJ
% Parameter:   id =  delta, name = delta
	global_par_delta=3.0E-4;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.1;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=0.4;
% Parameter:   id =  IC1, name = IC1
% Parameter:   id =  NS, name = NS
% Parameter:   id =  IC2, name = IC2
% Parameter:   id =  C, name = C
	global_par_C=500000.0;
% Parameter:   id =  gamma, name = gamma
% assignmentRule: variable = gamma
	global_par_gamma=1000000000/6.023E23;
% assignmentRule: variable = NS
	global_par_NS=global_par_r_5*time^global_par_n_3/(global_par_b_m^global_par_n_3+time^global_par_n_3);
% assignmentRule: variable = IC1
	global_par_IC1=(1+global_par_sp*(global_par_NS/global_par_delta_1)^global_par_n_1)/(1+(global_par_NS/global_par_delta_1)^global_par_n_1);
% assignmentRule: variable = TJ
	global_par_TJ=global_par_TJ_tot/(1+global_par_K_9*x(4)/global_par_delta)*(x(2)+x(8))/(global_par_K_3+x(2)+x(8));
% assignmentRule: variable = v_max19
	global_par_v_max19=46*3600;
% assignmentRule: variable = sv
	global_par_sv=0.1/0.3;
% assignmentRule: variable = IC2
	global_par_IC2=(1+global_par_sv*(global_par_NS/global_par_delta_2)^global_par_n_2)/(1+(global_par_NS/global_par_delta_2)^global_par_n_2);
% assignmentRule: variable = k_26
	global_par_k_26=3600*5E-6;
% assignmentRule: variable = k_14
	global_par_k_14=3600*8.9E-11;
% assignmentRule: variable = v_max217
	global_par_v_max217=20.1*3600;

% Reaction: id = IFNb_mRNA_Induction, name = IFNb_mRNA_Induction
	reaction_IFNb_mRNA_Induction=compartment_compartment*Function_for_IFNb_mRNA_Turnover(global_par_r_0, global_par_IC1, global_par_k_15, x(6), global_par_IC2);

% Reaction: id = IFNb_mRNA_Degradation, name = IFNb_mRNA_Degradation
	reaction_IFNb_mRNA_Degradation=compartment_compartment*Function_for_IFNb_mRNA_Degradation(x(1), global_par_t_1);

% Reaction: id = IFNBenv_Translation_Secretion, name = IFNBenv_Translation_Secretion
	reaction_IFNBenv_Translation_Secretion=compartment_compartment*Function_for_IFNBenv_Turnover(global_par_gamma, global_par_C, global_par_v_max217, x(2), global_par_K_217);

% Reaction: id = STATP2n_Formation, name = STATP2n_Formation
	reaction_STATP2n_Formation=compartment_compartment*Function_for_STATP2n_Formation(global_par_k_5, global_par_TJ, x(12), global_par_K_5);

% Reaction: id = STATP2n_Dephosphorylation, name = STATP2n_Dephosphorylation
	reaction_STATP2n_Dephosphorylation=compartment_compartment*Function_for_STATP2n_Dephosphorylation(x(3), global_par_t_3);

% Reaction: id = SOCS_mRNA_Induction, name = SOCS_mRNA_Induction
	reaction_SOCS_mRNA_Induction=compartment_compartment*Function_for_SOCS_mRNA_Induction(global_par_r_3, global_par_IC1, global_par_k_8, x(3), global_par_IC2);

% Reaction: id = SOCS_mRNA_Degradation, name = SOCS_mRNA_Degradation
	reaction_SOCS_mRNA_Degradation=compartment_compartment*Function_for_SOCS_mRNA_Degradation(x(4), global_par_t_4);

% Reaction: id = IRF7_mRNA_Induction, name = IRF7_mRNA_Induction
	reaction_IRF7_mRNA_Induction=compartment_compartment*Function_for_IRF7_mRNA_Induction(global_par_k_11, x(3), global_par_k_14, x(6), global_par_IC2);

% Reaction: id = IRF7_mRNA_Degradation, name = IRF7_mRNA_Degradation
	reaction_IRF7_mRNA_Degradation=compartment_compartment*Function_for_IRF7_mRNA_Degradation(x(5), global_par_t_6);

% Reaction: id = IRF7_Translation, name = IRF7_Translation
	reaction_IRF7_Translation=compartment_compartment*Function_for_IRF7_Translation(global_par_k_12, x(5), global_par_IC1);

% Reaction: id = IFNa_mRNA_Induction, name = IFNa_mRNA_Induction
	reaction_IFNa_mRNA_Induction=compartment_compartment*Function_for_IFNa_mRNA_Induction(global_par_k_16, x(6), global_par_IC2);

% Reaction: id = IFNa_mRNA_Degradation, name = IFNa_mRNA_Degradation
	reaction_IFNa_mRNA_Degradation=compartment_compartment*Function_for_IFNa_mRNA_Degradation(x(7), global_par_t_8);

% Reaction: id = IFNaenv_Translation_Secretion, name = IFNaenv_Translation_Secretion
	reaction_IFNaenv_Translation_Secretion=compartment_compartment*Function_for_IFNaenv_Translation_Secretion(global_par_gamma, global_par_C, global_par_v_max217, x(7), global_par_K_217);

% Reaction: id = TNFa_mRNA_Induction, name = TNFa_mRNA_Induction
	reaction_TNFa_mRNA_Induction=compartment_compartment*Function_for_TNFa_mRNA_Induction(global_par_IC2, global_par_r_1, global_par_IC1, global_par_r_20, x(10), global_par_K_20);

% Reaction: id = TNFa_mRNA_Degradation, name = TNFa_mRNA_Degradation
	reaction_TNFa_mRNA_Degradation=compartment_compartment*Function_for_TNFa_mRNA_Degradation(x(9), global_par_t_9);

% Reaction: id = TNFa_Translation_Secretion, name = TNFa_Translation_Secretion
	reaction_TNFa_Translation_Secretion=compartment_compartment*Function_for_TNFa_Translation_Secretion(global_par_gamma, global_par_C, global_par_v_max19, x(9), global_par_K_19);

% Reaction: id = STAT_mRNA_Induction, name = STAT_mRNA_Induction
	reaction_STAT_mRNA_Induction=compartment_compartment*Function_for_STAT_mRNA_Induction(global_par_r_4, global_par_IC1, global_par_k_26, x(3), global_par_IC2);

% Reaction: id = STAT_mRNA_Degradation, name = STAT_mRNA_Degradation
	reaction_STAT_mRNA_Degradation=compartment_compartment*Function_for_STAT_mRNA_Degradation(x(11), global_par_t_12);

% Reaction: id = STAT_Translation, name = STAT_Translation
	reaction_STAT_Translation=compartment_compartment*Function_for_STAT_Translation(global_par_k_28, x(11));

% Reaction: id = STAT_Degradation, name = STAT_Degradation
	reaction_STAT_Degradation=compartment_compartment*Function_for_STAT_Degradation(x(12), global_par_t_13);

	xdot=zeros(12,1);
	
% Species:   id = IFNBm, name = IFNBm, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_IFNb_mRNA_Induction) + (-1.0 * reaction_IFNb_mRNA_Degradation));
	
% Species:   id = IFNBenv, name = IFNBenv, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_IFNBenv_Translation_Secretion));
	
% Species:   id = STATP2n, name = STATP2n, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_STATP2n_Formation) + (-1.0 * reaction_STATP2n_Dephosphorylation));
	
% Species:   id = SOCSm, name = SOCSm, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_SOCS_mRNA_Induction) + (-1.0 * reaction_SOCS_mRNA_Degradation));
	
% Species:   id = IRF7m, name = IRF7m, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF7_mRNA_Induction) + (-1.0 * reaction_IRF7_mRNA_Degradation));
	
% Species:   id = IRF7Pn, name = IRF7Pn, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF7_Translation));
	
% Species:   id = IFNam, name = IFNam, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_IFNa_mRNA_Induction) + (-1.0 * reaction_IFNa_mRNA_Degradation));
	
% Species:   id = IFNaenv, name = IFNaenv, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_IFNaenv_Translation_Secretion));
	
% Species:   id = TNFam, name = TNFam, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_TNFa_mRNA_Induction) + (-1.0 * reaction_TNFa_mRNA_Degradation));
	
% Species:   id = TFNenv, name = TFNenv, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_TNFa_Translation_Secretion));
	
% Species:   id = STATm, name = STATm, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT_mRNA_Induction) + (-1.0 * reaction_STAT_mRNA_Degradation));
	
% Species:   id = STAT, name = STAT, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT_Translation) + (-1.0 * reaction_STAT_Degradation));
end

function z=Function_for_STATP2n_Formation(k5,TJ,STAT,K_5), z=(k5*TJ*STAT/(2*(K_5+STAT)));end

function z=Function_for_TNFa_mRNA_Degradation(TNFam,t_9), z=(TNFam*log(2)/t_9);end

function z=Function_for_STAT_mRNA_Induction(r_4,IC1,k_26,STATP2n,IC2), z=((r_4*IC1+k_26*STATP2n)*IC2);end

function z=Function_for_IFNBenv_Turnover(gamma,C,vmax2,IFNBm,K_2), z=(gamma*C*vmax2*IFNBm/(K_2+IFNBm));end

function z=Function_for_SOCS_mRNA_Degradation(SOCSm,t_4), z=(SOCSm*log(2)/t_4);end

function z=Function_for_IFNaenv_Translation_Secretion(gamma,C,vmax_17,IFNam,K_17), z=(gamma*C*vmax_17*IFNam/(K_17+IFNam));end

function z=Function_for_STATP2n_Dephosphorylation(STATP2n,t3), z=(STATP2n*log(2)/t3);end

function z=Function_for_IFNb_mRNA_Turnover(r0,IC1,k15,IRF7Pn,IC2), z=((r0*IC1+k15*IRF7Pn)*IC2);end

function z=Function_for_SOCS_mRNA_Induction(r_3,IC1,k_8,STATP2n,IC2), z=((r_3*IC1+k_8*STATP2n)*IC2);end

function z=Function_for_IFNa_mRNA_Induction(k_16,IRF7Pn,IC2), z=(k_16*IRF7Pn*IC2);end

function z=Function_for_IFNb_mRNA_Degradation(IFNBm,t1), z=(IFNBm*log(2)/t1);end

function z=Function_for_STAT_Translation(k_26,STATm), z=(k_26*STATm);end

function z=Function_for_IRF7_Translation(k_12,IRF7m,IC1), z=(k_12*IRF7m*IC1);end

function z=Function_for_IFNa_mRNA_Degradation(IFNam,t_8), z=(IFNam*log(2)/t_8);end

function z=Function_for_TNFa_Translation_Secretion(gamma,C,vmax_19,TFNam,K_19), z=(gamma*C*vmax_19*TFNam/(K_19+TFNam));end

function z=Function_for_STAT_mRNA_Degradation(STATm,t_12), z=(STATm*log(2)/t_12);end

function z=Function_for_TNFa_mRNA_Induction(IC2,r_1,IC1,r_20,TNFenv,K_20), z=(IC2*(r_1*IC1+r_20*TNFenv/(K_20+TNFenv)));end

function z=Function_for_IRF7_mRNA_Degradation(IRF7m,t_6), z=(IRF7m*log(2)/t_6);end

function z=Function_for_IRF7_mRNA_Induction(k_11,STATP2n,k_14,IRF7Pn,IC2), z=((k_11*STATP2n+k_14*IRF7Pn)*IC2);end

function z=Function_for_STAT_Degradation(STAT,t_13), z=(STAT*log(2)/t_13);end

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


