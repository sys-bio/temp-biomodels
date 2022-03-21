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
% Model name = Troein2011_ClockCircuit_OstreococcusTauri
%
% is http://identifiers.org/biomodels.db/MODEL1107230000
% is http://identifiers.org/biomodels.db/BIOMD0000000350
% isDescribedBy http://identifiers.org/pubmed/21219507
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 0.272067372878265;
	x0(2) = 0.0385665277682963;
	x0(3) = 0.206521274112594;
	x0(4) = 0.312711901675853;
	x0(5) = 0.104555645465821;
	x0(6) = 0.051315426489096;
	x0(7) = 3.07283764226433;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;


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
% Parameter:   id =  toc1luc, name = toc1luc
% Parameter:   id =  D_luc, name = D_luc
	global_par_D_luc=0.182881217463259;
% Parameter:   id =  D_mrna_luc, name = D_mrna_luc
	global_par_D_mrna_luc=1.0;
% Parameter:   id =  acc_rate, name = acc_rate
	global_par_acc_rate=0.0820132250303287;
% Parameter:   id =  R_toc1_cca1, name = R_toc1_cca1
	global_par_R_toc1_cca1=1.08706126858966;
% Parameter:   id =  H_toc1_cca1, name = H_toc1_cca1
	global_par_H_toc1_cca1=2.07807738692343;
% Parameter:   id =  L_toc1, name = L_toc1
	global_par_L_toc1=1.0E-4;
% Parameter:   id =  R_toc1_acc, name = R_toc1_acc
	global_par_R_toc1_acc=0.231107032949407;
% Parameter:   id =  D_mrna_toc1, name = D_mrna_toc1
	global_par_D_mrna_toc1=0.29213049778373;
% Parameter:   id =  T_toc1, name = T_toc1
	global_par_T_toc1=0.769970172977886;
% Parameter:   id =  Di_toc1_12_l, name = Di_toc1_12_l
	global_par_Di_toc1_12_l=0.136490583368648;
% Parameter:   id =  Di_toc1_12_d, name = Di_toc1_12_d
	global_par_Di_toc1_12_d=0.326619492089715;
% Parameter:   id =  D_toc1_2_l, name = D_toc1_2_l
	global_par_D_toc1_2_l=0.461550559180802;
% Parameter:   id =  D_toc1_2_d, name = D_toc1_2_d
	global_par_D_toc1_2_d=0.356613920551118;
% Parameter:   id =  H_cca1_toc1, name = H_cca1_toc1
	global_par_H_cca1_toc1=2.5007062880634;
% Parameter:   id =  R_cca1_toc1_2_l, name = R_cca1_toc1_2_l
	global_par_R_cca1_toc1_2_l=3.27520292103832;
% Parameter:   id =  R_cca1_toc1_2_d, name = R_cca1_toc1_2_d
	global_par_R_cca1_toc1_2_d=1.38563901682266;
% Parameter:   id =  D_mrna_cca1, name = D_mrna_cca1
	global_par_D_mrna_cca1=1.33082080954527;
% Parameter:   id =  T_cca1, name = T_cca1
	global_par_T_cca1=4.90486610428652;
% Parameter:   id =  Di_cca1_cn, name = Di_cca1_cn
	global_par_Di_cca1_cn=10.0;
% Parameter:   id =  D_cca1_l, name = D_cca1_l
	global_par_D_cca1_l=0.424177877449438;
% Parameter:   id =  D_cca1_d, name = D_cca1_d
	global_par_D_cca1_d=0.269380178154091;
% Parameter:   id =  effcopies_cca1_LHY7, name = effcopies_cca1_LHY7
	global_par_effcopies_cca1_LHY7=1.13965755508623;
% Parameter:   id =  effcopies_toc1_TOC8, name = effcopies_toc1_TOC8
	global_par_effcopies_toc1_TOC8=1.0;
% Parameter:   id =  parameter_1, name = T_luc
	global_par_parameter_1=1.0;
% Parameter:   id =  parameter_2, name = rep_TOC1
	global_par_parameter_2=0.0;
% Parameter:   id =  parameter_3, name = rep_pTOC1
	global_par_parameter_3=0.0;
% Parameter:   id =  parameter_4, name = rep_CCA1
	global_par_parameter_4=0.0;
% Parameter:   id =  parameter_5, name = rep_pCCA1
	global_par_parameter_5=0.0;
% assignmentRule: variable = toc1luc
	global_par_toc1luc=x(9)+x(10);

% Reaction: id = reaction_1, name = Light accumulator increase
	reaction_reaction_1=compartment_compartment*function_1(global_par_acc_rate, time);

% Reaction: id = reaction_2, name = Light accumulator decrease
	reaction_reaction_2=compartment_compartment*function_2(global_par_acc_rate, x(1));

% Reaction: id = reaction_3, name = TOC1 transcription
	reaction_reaction_3=compartment_compartment*function_3(global_par_R_toc1_acc, x(1), global_par_R_toc1_cca1, global_par_H_toc1_cca1, x(7), time, global_par_L_toc1, global_par_parameter_4, global_par_effcopies_cca1_LHY7);

% Reaction: id = reaction_4, name = TOC1 degradation
	reaction_reaction_4=compartment_compartment*function_4(time, global_par_D_toc1_2_l, global_par_D_toc1_2_d, x(4));

% Reaction: id = reaction_5, name = TOC1 translation
	reaction_reaction_5=compartment_compartment*Translation(time, global_par_T_toc1, x(2));

% Reaction: id = reaction_6, name = TOC1 conversion
	reaction_reaction_6=compartment_compartment*function_5(time, global_par_Di_toc1_12_l, global_par_Di_toc1_12_d, x(3));

% Reaction: id = reaction_7, name = TOC1 mRNA degradation
	reaction_reaction_7=compartment_compartment*global_par_D_mrna_toc1*x(2);

% Reaction: id = reaction_8, name = CCA1 transcription
	reaction_reaction_8=compartment_compartment*function_6(time, x(4), global_par_R_cca1_toc1_2_l, global_par_R_cca1_toc1_2_d, global_par_H_cca1_toc1, global_par_parameter_2, global_par_effcopies_toc1_TOC8);

% Reaction: id = reaction_9, name = CCA1 mRNA degradation
	reaction_reaction_9=compartment_compartment*global_par_D_mrna_cca1*x(5);

% Reaction: id = reaction_10, name = CCA1 translation
	reaction_reaction_10=compartment_compartment*Translation(time, global_par_T_cca1, x(5));

% Reaction: id = reaction_11, name = CCA1 nuclear transport
	reaction_reaction_11=compartment_compartment*global_par_Di_cca1_cn*x(6);

% Reaction: id = reaction_12, name = CCA1 degradation, cytosol
	reaction_reaction_12=compartment_compartment*function_4(time, global_par_D_cca1_l, global_par_D_cca1_d, x(6));

% Reaction: id = reaction_13, name = CCA1 degradation, nucleus
	reaction_reaction_13=compartment_compartment*function_4(time, global_par_D_cca1_l, global_par_D_cca1_d, x(7));

% Reaction: id = reaction_14, name = LUC transcription, pTOC1
	reaction_reaction_14=compartment_compartment*function_7(time, global_par_R_toc1_acc, x(1), global_par_R_toc1_cca1, x(7), global_par_H_toc1_cca1, global_par_parameter_3, global_par_L_toc1);

% Reaction: id = reaction_15, name = LUC mRNA degradation
	reaction_reaction_15=compartment_compartment*global_par_D_mrna_luc*x(13);

% Reaction: id = reaction_16, name = LUC translation
	reaction_reaction_16=compartment_compartment*Translation(time, global_par_parameter_1, x(13));

% Reaction: id = reaction_17, name = LUC decay
	reaction_reaction_17=compartment_compartment*global_par_D_luc*x(14);

% Reaction: id = reaction_18, name = TOC1-LUC transcription
	reaction_reaction_18=compartment_compartment*function_8(time, global_par_R_toc1_acc, x(1), global_par_R_toc1_cca1, x(7), global_par_H_toc1_cca1, global_par_parameter_2, global_par_L_toc1);

% Reaction: id = reaction_19, name = TOC1-LUC mRNA degradation
	reaction_reaction_19=compartment_compartment*global_par_D_mrna_toc1*x(8);

% Reaction: id = reaction_20, name = TOC1-LUC translation
	reaction_reaction_20=compartment_compartment*Translation(time, global_par_T_toc1, x(8));

% Reaction: id = reaction_21, name = TOC1-LUC conversion
	reaction_reaction_21=compartment_compartment*function_5(time, global_par_Di_toc1_12_l, global_par_Di_toc1_12_d, x(9));

% Reaction: id = reaction_22, name = TOC1-LUC degradation
	reaction_reaction_22=compartment_compartment*function_4(time, global_par_D_toc1_2_l, global_par_D_toc1_2_d, x(10));

% Reaction: id = reaction_23, name = TOC1-LUC(1) deactivation
	reaction_reaction_23=compartment_compartment*global_par_D_luc*x(9);

% Reaction: id = reaction_24, name = TOC1-LUC(2) deactivation
	reaction_reaction_24=compartment_compartment*global_par_D_luc*x(10);

% Reaction: id = reaction_25, name = LUC transcription, pCCA1
	reaction_reaction_25=compartment_compartment*function_9(time, x(4), global_par_R_cca1_toc1_2_l, global_par_R_cca1_toc1_2_d, global_par_H_cca1_toc1, global_par_parameter_5);

% Reaction: id = reaction_26, name = CCA1-LUC transcription
	reaction_reaction_26=compartment_compartment*function_10(time, x(4), global_par_R_cca1_toc1_2_l, global_par_R_cca1_toc1_2_d, global_par_H_cca1_toc1, global_par_parameter_4);

% Reaction: id = reaction_27, name = CCA1-LUC mRNA degradation
	reaction_reaction_27=compartment_compartment*global_par_D_mrna_cca1*x(11);

% Reaction: id = reaction_28, name = CCA1-LUC translation
	reaction_reaction_28=compartment_compartment*Translation(time, global_par_T_cca1, x(11));

% Reaction: id = reaction_30, name = CCA1-LUC degradation
	reaction_reaction_30=compartment_compartment*function_4(time, global_par_D_cca1_l, global_par_D_cca1_d, x(12));

% Reaction: id = reaction_32, name = CCA1-LUC deactivation
	reaction_reaction_32=compartment_compartment*global_par_D_luc*x(12);

	xdot=zeros(14,1);
	
% Species:   id = acc, name = acc, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = toc1_mrna, name = toc1_mrna, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7));
	
% Species:   id = toc1_1, name = toc1_1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = toc1_2, name = toc1_2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = cca1_mrna, name = cca1_mrna, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = cca1_c, name = cca1_c, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = cca1_n, name = cca1_n, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_13));
	
% Species:   id = toc1luc_mrna, name = toc1luc_mrna, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = toc1luc_1, name = toc1luc_1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23));
	
% Species:   id = toc1luc_2, name = toc1luc_2, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_24));
	
% Species:   id = cca1luc_mrna, name = cca1luc_mrna, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = cca1luc, name = cca1luc, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_32));
	
% Species:   id = luc_mrna, name = luc_mrna, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_25));
	
% Species:   id = luc, name = luc, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
end

function z=LD1212(tod), z=(ceil(sin(pi*tod/12)/2));end

function z=function_2(acc_rate,acc), z=(acc_rate*acc);end

function z=light(tod), z=(LD1212(tod));end

function z=transcription(t), z=(1+0*t);end

function z=ox_toc1(t), z=(0*t);end

function z=copies_toc1(t), z=(1+0*t);end

function z=copies_cca1(t), z=(1+0*t);end

function z=ox_cca1(t), z=(0*t);end

function z=translation(t), z=(1+0*t);end

function z=proteasome(t), z=(1+0*t);end

function z=Translation(t,T,mrna), z=(translation(t)*T*mrna);end

function z=function_4(t,D_l,D_d,level), z=(proteasome(t)*(light(t)*D_l+(1-light(t))*D_d)*level);end

function z=function_5(t,Di_l,Di_d,level), z=((light(t)*Di_l+(1-light(t))*Di_d)*level);end

function z=function_7(t,R_toc1_acc,acc,R_toc1_cca1,cca1_n,H_toc1_cca1,rep_pTOC1,L_toc1), z=(rep_pTOC1*transcription(t)*(L_toc1+R_toc1_acc*acc)/(1+L_toc1+R_toc1_acc*acc+(R_toc1_cca1*cca1_n)^H_toc1_cca1));end

function z=function_8(t,R_toc1_acc,acc,R_toc1_cca1,cca1_n,H_toc1_cca1,rep_TOC1,L_toc1), z=(rep_TOC1*transcription(t)*copies_toc1(t)*(L_toc1+R_toc1_acc*acc)/(1+L_toc1+R_toc1_acc*acc+(R_toc1_cca1*cca1_n)^H_toc1_cca1));end

function z=function_9(t,toc1_2,R_cca1_toc1_2_l,R_cca1_toc1_2_d,H_cca1_toc1,rep_pCCA1), z=(rep_pCCA1*transcription(t)*(toc1_2*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1/((toc1_2*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1+1));end

function z=function_10(t,toc1_2,R_cca1_toc1_2_l,R_cca1_toc1_2_d,H_cca1_toc1,rep_CCA1), z=(rep_CCA1*transcription(t)*copies_cca1(t)*(toc1_2*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1/((toc1_2*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1+1));end

function z=tf_output(reporter,effcopies,tf), z=((1+reporter*(effcopies-1))*tf);end

function z=function_1(acc_rate,t), z=(acc_rate*light(t));end

function z=function_3(R_toc1_acc,acc,R_toc1_cca1,H_toc1_cca1,cca1_n,t,L_toc1,rep_CCA1,effcopies_cca1_LHY7,effcopies_cca1_LHY7), z=(transcription(t)*(ox_toc1(t)+copies_toc1(t)*(L_toc1+R_toc1_acc*acc)/(1+L_toc1+R_toc1_acc*acc+(R_toc1_cca1*tf_output(rep_CCA1,cca1_n))^H_toc1_cca1)));end

function z=function_6(t,toc1_2,R_cca1_toc1_2_l,R_cca1_toc1_2_d,H_cca1_toc1,rep_TOC1,effcopies_toc1_TOC8,effcopies_toc1_TOC8,effcopies_toc1_TOC8), z=(transcription(t)*(ox_cca1(t)+copies_cca1(t)*(tf_output(rep_TOC1,toc1_2)*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1/((tf_output(rep_TOC1,toc1_2)*(light(t)*R_cca1_toc1_2_l+(1-light(t))*R_cca1_toc1_2_d))^H_cca1_toc1+1)));end

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


