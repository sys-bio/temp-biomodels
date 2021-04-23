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
% Model name = Bray1993_chemotaxis
%
% is http://identifiers.org/biomodels.db/MODEL6929313478
% is http://identifiers.org/biomodels.db/BIOMD0000000404
% isDescribedBy http://identifiers.org/pubmed/8334303
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 0.0;
	x0(2) = 3.12E-6;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 2.89E-6;
	x0(6) = 5.91E-7;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 4.44E-7;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 6.78E-7;
	x0(13) = 8.47E-7;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 3.0E-6;
	x0(17) = 3.48E-8;
	x0(18) = 1.93E-6;
	x0(19) = 6.87E-8;
	x0(20) = 2.0E-5;
	x0(21) = 9.9E-6;
	x0(22) = 7.0E-9;
	x0(23) = 6.24E-9;
	x0(24) = 7.77E-10;
	x0(25) = 2.99E-10;
	x0(26) = 3.78E-10;
	x0(27) = 2.31E-9;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.41E-15;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.14;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=2.25E-7;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.1;
% Parameter:   id =  Bias, name = Bias
% Parameter:   id =  parameter_1, name = asp_pulse
	global_par_parameter_1=1.0E-7;
% Parameter:   id =  parameter_2, name = autoPhospho
% Parameter:   id =  parameter_3, name = KmATP
	global_par_parameter_3=3.0E-4;
% assignmentRule: variable = Bias
	global_par_Bias=(x(23)+x(24))/(x(23)+x(24)+x(25)+x(26)+x(27));
% assignmentRule: variable = parameter_2
	global_par_parameter_2=const_species_species_1/(const_species_species_1+global_par_parameter_3);

% Reaction: id = phosphorylation_r1, name = A->Ap	% Local Parameter:   id =  kcat, name = kcat
	reaction_phosphorylation_r1_kcat=0.001;

	reaction_phosphorylation_r1=compartment_cell*Autophosphorylation(reaction_phosphorylation_r1_kcat, global_par_parameter_2, x(16));

% Reaction: id = phosphorylation_r2, name = TWA+A->TWA+Ap	% Local Parameter:   id =  kcat, name = kcat
	reaction_phosphorylation_r2_kcat=75000.0;

	reaction_phosphorylation_r2=compartment_cell*ModAutophosphorylation(x(13), x(16), reaction_phosphorylation_r2_kcat, global_par_parameter_2);

% Reaction: id = phosphorylation_r3, name = Tni_WA+A->Tni_WA+Ap	% Local Parameter:   id =  kcat, name = kcat
	reaction_phosphorylation_r3_kcat=200000.0;

	reaction_phosphorylation_r3=compartment_cell*ModAutophosphorylation(x(15), x(16), reaction_phosphorylation_r3_kcat, global_par_parameter_2);

% Reaction: id = phosphorylation_r4, name = Tasp_WA+Yp->Tasp_WA+Y	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r4_k1=1.0E8;

	reaction_phosphorylation_r4=compartment_cell*reaction_phosphorylation_r4_k1*x(14)*x(22);

% Reaction: id = phosphorylation_r5, name = Ap+Y->A+Yp	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r5_k1=200000.0;

	reaction_phosphorylation_r5=compartment_cell*reaction_phosphorylation_r5_k1*x(17)*x(21);

% Reaction: id = phosphorylation_r6, name = Y ->Yp	% Local Parameter:   id =  kcat, name = kcat
	reaction_phosphorylation_r6_kcat=0.0;

	reaction_phosphorylation_r6=compartment_cell*Autophosphorylation(reaction_phosphorylation_r6_kcat, global_par_parameter_2, x(21));

% Reaction: id = phosphorylation_r7, name = Yp->Y	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r7_k1=0.037;

	reaction_phosphorylation_r7=compartment_cell*reaction_phosphorylation_r7_k1*x(22);

% Reaction: id = phosphorylation_r8, name = Yp+Z->Y+Z	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r8_k1=500000.0;

	reaction_phosphorylation_r8=compartment_cell*reaction_phosphorylation_r8_k1*x(22)*x(20);

% Reaction: id = phosphorylation_r9, name = Ap+B->A+Bp	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r9_k1=1000000.0;

	reaction_phosphorylation_r9=compartment_cell*reaction_phosphorylation_r9_k1*x(17)*x(18);

% Reaction: id = phosphorylation_r10, name = Bp->B	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r10_k1=1.0;

	reaction_phosphorylation_r10=compartment_cell*reaction_phosphorylation_r10_k1*x(19);

% Reaction: id = regulatory_r1, name = T+asp<->Tasp	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r1_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r1_k2=1.0;

	reaction_regulatory_r1=compartment_cell*(reaction_regulatory_r1_k1*x(2)*x(1)-reaction_regulatory_r1_k2*x(3));

% Reaction: id = regulatory_r2, name = T+ni<->Tni	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r2_k1=1000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r2_k2=1.0;

	reaction_regulatory_r2=compartment_cell*(reaction_regulatory_r2_k1*x(2)*const_species_ni-reaction_regulatory_r2_k2*x(4));

% Reaction: id = regulatory_r3, name = T+W<->TW	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r3_k1=100000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r3_k2=1.0;

	reaction_regulatory_r3=compartment_cell*(reaction_regulatory_r3_k1*x(2)*x(5)-reaction_regulatory_r3_k2*x(6));

% Reaction: id = regulatory_r4, name = T+A<->TA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r4_k1=10000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r4_k2=1.0;

	reaction_regulatory_r4=compartment_cell*(reaction_regulatory_r4_k1*x(2)*x(16)-reaction_regulatory_r4_k2*x(9));

% Reaction: id = regulatory_r5, name = W+A<->WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r5_k1=100000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r5_k2=1.0;

	reaction_regulatory_r5=compartment_cell*(reaction_regulatory_r5_k1*x(5)*x(16)-reaction_regulatory_r5_k2*x(12));

% Reaction: id = regulatory_r6, name = TW+A<->TWA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r6_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r6_k2=1.0;

	reaction_regulatory_r6=compartment_cell*(reaction_regulatory_r6_k1*x(6)*x(16)-reaction_regulatory_r6_k2*x(13));

% Reaction: id = regulatory_r7, name = TA+W<->TWA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r7_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r7_k2=1.0;

	reaction_regulatory_r7=compartment_cell*(reaction_regulatory_r7_k1*x(9)*x(5)-reaction_regulatory_r7_k2*x(13));

% Reaction: id = regulatory_r8, name = T+WA<->TWA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r8_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r8_k2=1.0;

	reaction_regulatory_r8=compartment_cell*(reaction_regulatory_r8_k1*x(2)*x(12)-reaction_regulatory_r8_k2*x(13));

% Reaction: id = regulatory_r9, name = Tasp+W<->Tasp_W	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r9_k1=100000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r9_k2=1.0;

	reaction_regulatory_r9=compartment_cell*(reaction_regulatory_r9_k1*x(3)*x(5)-reaction_regulatory_r9_k2*x(7));

% Reaction: id = regulatory_r10, name = Tasp+A<->Tasp_A	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r10_k1=10000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r10_k2=1.0;

	reaction_regulatory_r10=compartment_cell*(reaction_regulatory_r10_k1*x(3)*x(16)-reaction_regulatory_r10_k2*x(10));

% Reaction: id = regulatory_r11, name = Tasp_W+A<->Tasp_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r11_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r11_k2=1.0;

	reaction_regulatory_r11=compartment_cell*(reaction_regulatory_r11_k1*x(7)*x(16)-reaction_regulatory_r11_k2*x(14));

% Reaction: id = regulatory_r12, name = Tasp_A+W<->Tasp_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r12_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r12_k2=1.0;

	reaction_regulatory_r12=compartment_cell*(reaction_regulatory_r12_k1*x(10)*x(5)-reaction_regulatory_r12_k2*x(14));

% Reaction: id = regulatory_r13, name = Tasp+WA<->Tasp_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r13_k1=400000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r13_k2=1.0;

	reaction_regulatory_r13=compartment_cell*(reaction_regulatory_r13_k1*x(3)*x(12)-reaction_regulatory_r13_k2*x(14));

% Reaction: id = regulatory_r14, name = Tni+W<->Tni_W	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r14_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r14_k2=1.0;

	reaction_regulatory_r14=compartment_cell*(reaction_regulatory_r14_k1*x(4)*x(5)-reaction_regulatory_r14_k2*x(8));

% Reaction: id = regulatory_r15, name = Tni+A<->Tni_A	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r15_k1=0.01;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r15_k2=1.0;

	reaction_regulatory_r15=compartment_cell*(reaction_regulatory_r15_k1*x(4)*x(16)-reaction_regulatory_r15_k2*x(11));

% Reaction: id = regulatory_r16, name = Tni_W+A<->Tni_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r16_k1=0.4;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r16_k2=1.0;

	reaction_regulatory_r16=compartment_cell*(reaction_regulatory_r16_k1*x(8)*x(16)-reaction_regulatory_r16_k2*x(15));

% Reaction: id = regulatory_r17, name = Tni_A+W<->Tni_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r17_k1=0.4;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r17_k2=1.0;

	reaction_regulatory_r17=compartment_cell*(reaction_regulatory_r17_k1*x(11)*x(5)-reaction_regulatory_r17_k2*x(15));

% Reaction: id = regulatory_r18, name = Tni+WA<->Tni_WA	% Local Parameter:   id =  k1, name = k1
	reaction_regulatory_r18_k1=0.4;
	% Local Parameter:   id =  k2, name = k2
	reaction_regulatory_r18_k2=1.0;

	reaction_regulatory_r18=compartment_cell*(reaction_regulatory_r18_k1*x(4)*x(12)-reaction_regulatory_r18_k2*x(15));

% Reaction: id = motor_r1, name = M+Yp<->MYp
	reaction_motor_r1=compartment_cell*function_4_motor_r1(x(23), x(24), x(22), compartment_cell, global_par_ka, global_par_kappa);

% Reaction: id = motor_r2, name = MYp+Yp<->MYpYp
	reaction_motor_r2=compartment_cell*function_4_motor_r2(x(24), x(25), x(22), global_par_alpha, compartment_cell, global_par_ka, global_par_kappa);

% Reaction: id = motor_r3, name = MYpYp+Yp<->MYpYpYp
	reaction_motor_r3=compartment_cell*function_4_motor_r3(x(25), x(26), x(22), global_par_alpha, compartment_cell, global_par_ka, global_par_kappa);

% Reaction: id = motor_r4, name = MYpYpYp+Yp<->MYpYpYpYp
	reaction_motor_r4=compartment_cell*function_4_motor_r4(x(26), x(27), x(22), global_par_alpha, compartment_cell, global_par_ka, global_par_kappa);

% Reaction: id = reaction_1, name = TA + asp <-> Tasp_A	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=1.0;

	reaction_reaction_1=compartment_cell*(reaction_reaction_1_k1*x(9)*x(1)-reaction_reaction_1_k2*x(10));

% Reaction: id = reaction_2, name = TW+asp <-> Tasp_W	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_2_k2=1.0;

	reaction_reaction_2=compartment_cell*(reaction_reaction_2_k1*x(6)*x(1)-reaction_reaction_2_k2*x(7));

% Reaction: id = reaction_3, name = TWA+asp <-> Tasp_WA	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=1000000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=1.0;

	reaction_reaction_3=compartment_cell*(reaction_reaction_3_k1*x(13)*x(1)-reaction_reaction_3_k2*x(14));

% Species:   id = ni, name = ni, constant	const_species_ni=0.0;

% Species:   id = species_1, name = ATP, constant	const_species_species_1=0.1;

%Event: id=event_1
	event_event_1=time >= 5;

	if(event_event_1) 
		x(1)=global_par_parameter_1;
	end

%Event: id=event_2
	event_event_2=time >= 10;

	if(event_event_2) 
		x(1)=0;
	end

	xdot=zeros(27,1);
	
% Species:   id = asp, name = asp	xdot(1) = ;
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_regulatory_r1) + (-1.0 * reaction_regulatory_r2) + (-1.0 * reaction_regulatory_r3) + (-1.0 * reaction_regulatory_r4) + (-1.0 * reaction_regulatory_r8));
	
% Species:   id = Tasp, name = Tasp, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r1) + (-1.0 * reaction_regulatory_r9) + (-1.0 * reaction_regulatory_r10) + (-1.0 * reaction_regulatory_r13));
	
% Species:   id = Tni, name = Tni, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r2) + (-1.0 * reaction_regulatory_r14) + (-1.0 * reaction_regulatory_r15) + (-1.0 * reaction_regulatory_r18));
	
% Species:   id = W, name = W, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_regulatory_r3) + (-1.0 * reaction_regulatory_r5) + (-1.0 * reaction_regulatory_r7) + (-1.0 * reaction_regulatory_r9) + (-1.0 * reaction_regulatory_r12) + (-1.0 * reaction_regulatory_r14) + (-1.0 * reaction_regulatory_r17));
	
% Species:   id = TW, name = TW, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r3) + (-1.0 * reaction_regulatory_r6) + (-1.0 * reaction_reaction_2));
	
% Species:   id = Tasp_W, name = Tasp_W, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r9) + (-1.0 * reaction_regulatory_r11) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = Tni_W, name = Tni_W, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r14) + (-1.0 * reaction_regulatory_r16));
	
% Species:   id = TA, name = TA, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r4) + (-1.0 * reaction_regulatory_r7) + (-1.0 * reaction_reaction_1));
	
% Species:   id = Tasp_A, name = Tasp_A, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r10) + (-1.0 * reaction_regulatory_r12) + ( 1.0 * reaction_reaction_1));
	
% Species:   id = Tni_A, name = Tni_A, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r15) + (-1.0 * reaction_regulatory_r17));
	
% Species:   id = WA, name = WA, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r5) + (-1.0 * reaction_regulatory_r8) + (-1.0 * reaction_regulatory_r13) + (-1.0 * reaction_regulatory_r18));
	
% Species:   id = TWA, name = TWA, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r6) + ( 1.0 * reaction_regulatory_r7) + ( 1.0 * reaction_regulatory_r8) + (-1.0 * reaction_reaction_3));
	
% Species:   id = Tasp_WA, name = Tasp_WA, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r4) + ( 1.0 * reaction_phosphorylation_r4) + ( 1.0 * reaction_regulatory_r11) + ( 1.0 * reaction_regulatory_r12) + ( 1.0 * reaction_regulatory_r13) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = Tni_WA, name = Tni_WA, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_regulatory_r16) + ( 1.0 * reaction_regulatory_r17) + ( 1.0 * reaction_regulatory_r18));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r1) + (-1.0 * reaction_phosphorylation_r2) + (-1.0 * reaction_phosphorylation_r3) + ( 1.0 * reaction_phosphorylation_r5) + ( 1.0 * reaction_phosphorylation_r9) + (-1.0 * reaction_regulatory_r4) + (-1.0 * reaction_regulatory_r5) + (-1.0 * reaction_regulatory_r6) + (-1.0 * reaction_regulatory_r10) + (-1.0 * reaction_regulatory_r11) + (-1.0 * reaction_regulatory_r15) + (-1.0 * reaction_regulatory_r16));
	
% Species:   id = Ap, name = Ap, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r1) + ( 1.0 * reaction_phosphorylation_r2) + ( 1.0 * reaction_phosphorylation_r3) + (-1.0 * reaction_phosphorylation_r5) + (-1.0 * reaction_phosphorylation_r9));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r9) + ( 1.0 * reaction_phosphorylation_r10));
	
% Species:   id = Bp, name = Bp, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r9) + (-1.0 * reaction_phosphorylation_r10));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r8) + ( 1.0 * reaction_phosphorylation_r8));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r4) + (-1.0 * reaction_phosphorylation_r5) + (-1.0 * reaction_phosphorylation_r6) + ( 1.0 * reaction_phosphorylation_r7) + ( 1.0 * reaction_phosphorylation_r8));
	
% Species:   id = Yp, name = Yp, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r4) + ( 1.0 * reaction_phosphorylation_r5) + ( 1.0 * reaction_phosphorylation_r6) + (-1.0 * reaction_phosphorylation_r7) + (-1.0 * reaction_phosphorylation_r8) + (-1.0 * reaction_motor_r1) + (-1.0 * reaction_motor_r2) + (-1.0 * reaction_motor_r3) + (-1.0 * reaction_motor_r4));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_motor_r1));
	
% Species:   id = MYp, name = MYp, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_motor_r1) + (-1.0 * reaction_motor_r2));
	
% Species:   id = MYpYp, name = MYpYp, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_motor_r2) + (-1.0 * reaction_motor_r3));
	
% Species:   id = MYpYpYp, name = MYpYpYp, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_motor_r3) + (-1.0 * reaction_motor_r4));
	
% Species:   id = MYpYpYpYp, name = MYpYpYpYp, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_motor_r4));
end

function z=function_4_motor_r1(M,MYp,Yp,cell,ka,kappa), z=(ka*(M*Yp-kappa/4*MYp)/cell);end

function z=function_4_motor_r2(MYp,MYpYp,Yp,alpha,cell,ka,kappa), z=(ka*(MYp*Yp-2*alpha*kappa/3*MYpYp)/cell);end

function z=function_4_motor_r3(MYpYp,MYpYpYp,Yp,alpha,cell,ka,kappa), z=(ka*(MYpYp*Yp-3*alpha*alpha*kappa/2*MYpYpYp)/cell);end

function z=function_4_motor_r4(MYpYpYp,MYpYpYpYp,Yp,alpha,cell,ka,kappa), z=(ka*(MYpYpYp*Yp-4*alpha*alpha*alpha*kappa*MYpYpYpYp)/cell);end

function z=Autophosphorylation(kcat,correction,E), z=(kcat*correction*E);end

function z=ModAutophosphorylation(M,S,kcat,correction), z=(M*S*kcat*correction);end

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


