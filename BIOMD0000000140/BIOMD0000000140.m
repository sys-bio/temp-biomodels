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
% Model name = Hoffmann2002_WT_IkBNFkB_Signaling
%
% is http://identifiers.org/biomodels.db/MODEL7158174175
% is http://identifiers.org/biomodels.db/BIOMD0000000140
% isDescribedBy http://identifiers.org/pubmed/12424381
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(25) = 0.5;
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.001;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  a4, name = a4
	global_par_a4=30.0;
% Parameter:   id =  d4, name = d4
	global_par_d4=0.03;
% Parameter:   id =  a5, name = a5
	global_par_a5=30.0;
% Parameter:   id =  d5, name = d5
	global_par_d5=0.03;
% Parameter:   id =  a6, name = a6
	global_par_a6=30.0;
% Parameter:   id =  d6, name = d6
	global_par_d6=0.03;
% Parameter:   id =  r4, name = r4
	global_par_r4=1.224;
% Parameter:   id =  r5, name = r5
	global_par_r5=0.45;
% Parameter:   id =  r6, name = r6
	global_par_r6=0.66;
% Parameter:   id =  deg4, name = deg4
	global_par_deg4=0.00135;
% Parameter:   id =  k1, name = k1
	global_par_k1=5.4;
% Parameter:   id =  k01, name = k01
	global_par_k01=0.0048;
% Parameter:   id =  tr2a, name = tr2a
	global_par_tr2a=9.25E-5;
% Parameter:   id =  tr2, name = tr2
	global_par_tr2=0.99;
% Parameter:   id =  tr3, name = tr3
	global_par_tr3=0.0168;
% Parameter:   id =  tr2b, name = tr2b
	global_par_tr2b=1.068E-5;
% Parameter:   id =  tr2e, name = tr2e
	global_par_tr2e=7.62E-6;
% Parameter:   id =  a1, name = a1
	global_par_a1=1.35;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.075;
% Parameter:   id =  tr1, name = tr1
	global_par_tr1=0.2448;
% Parameter:   id =  deg1, name = deg1
	global_par_deg1=0.00678;
% Parameter:   id =  tp1, name = tp1
	global_par_tp1=0.018;
% Parameter:   id =  tp2, name = tp2
	global_par_tp2=0.012;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.36;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.105;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.54;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.105;
% Parameter:   id =  a7, name = a7
	global_par_a7=11.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.828;
% Parameter:   id =  a8, name = a8
	global_par_a8=2.88;
% Parameter:   id =  k2_beta, name = k2_beta
	global_par_k2_beta=0.624;
% Parameter:   id =  a9, name = a9
	global_par_a9=4.2;
% Parameter:   id =  k2_eps, name = k2_eps
	global_par_k2_eps=0.624;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.2442;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.09;
% Parameter:   id =  r3, name = r3
	global_par_r3=0.132;
% Parameter:   id =  k02, name = k02
	global_par_k02=0.0072;
% Parameter:   id =  trigger_value, name = trigger_value
	global_par_trigger_value=0.0;
% Parameter:   id =  fr, name = fr
% Warning parameter fr is not constant, it should be controlled by a Rule and/or events
	global_par_fr=1.0;
% Parameter:   id =  fr_after_trigger, name = fr_after_trigger
% Parameter:   id =  Total_IkBbeta, name = Total_IkBbeta
% Parameter:   id =  Total_IkBeps, name = Total_IkBeps
% Parameter:   id =  Total_IkBalpha, name = Total_IkBalpha
% Parameter:   id =  Total_NFkBn, name = Total_NFkBn
% Parameter:   id =  flag_for_after_trigger, name = flag_for_after_trigger
	global_par_flag_for_after_trigger=0.5;
% assignmentRule: variable = Total_IkBbeta
	global_par_Total_IkBbeta=x(4)+x(5)+x(11)+x(12);
% assignmentRule: variable = Total_IkBeps
	global_par_Total_IkBeps=x(6)+x(7)+x(13)+x(14);
% assignmentRule: variable = Total_IkBalpha
	global_par_Total_IkBalpha=x(1)+x(3)+x(8)+x(9);
% assignmentRule: variable = Total_NFkBn
	global_par_Total_NFkBn=x(19)+x(15);
% rateRule: variable = fr_after_trigger
global_par_fr_after_trigger = x(25);

% Reaction: id = v1, name = NFkB-IkBalpha complex formation
	reaction_v1=compartment_cytoplasm*(global_par_a4*x(1)*x(2)-global_par_d4*x(3));

% Reaction: id = v2, name = NFkB-IkBbeta complex formation
	reaction_v2=compartment_cytoplasm*(global_par_a5*x(4)*x(2)-global_par_d5*x(5));

% Reaction: id = v3, name = NFkB-IkBeps complex formation
	reaction_v3=compartment_cytoplasm*(global_par_a6*x(6)*x(2)-global_par_d6*x(7));

% Reaction: id = v4, name = NFkB-binary IKK IkBalpha complex formation
	reaction_v4=compartment_cytoplasm*(global_par_a4*x(8)*x(2)-global_par_d4*x(9));

% Reaction: id = v5, name = IkBalpha degradation
	reaction_v5=compartment_cytoplasm*global_par_r4*x(9);

% Reaction: id = v6, name = NFkB binary IKK IkBbeta complex formation
	reaction_v6=compartment_cytoplasm*(global_par_a5*x(11)*x(2)-global_par_d5*x(12));

% Reaction: id = v7, name = IkBbeta degradation
	reaction_v7=compartment_cytoplasm*global_par_r5*x(12);

% Reaction: id = v8, name = NFkB binary IKK IkBeps complex formation
	reaction_v8=compartment_cytoplasm*(global_par_a6*x(13)*x(2)-global_par_d6*x(14));

% Reaction: id = v9, name = IkBeps degradation
	reaction_v9=compartment_cytoplasm*global_par_r6*x(14);

% Reaction: id = v10, name = IkBalpha degradation
	reaction_v10=compartment_cytoplasm*global_par_deg4*x(3);

% Reaction: id = v11, name = IkBbeta degradation
	reaction_v11=compartment_cytoplasm*global_par_deg4*x(5);

% Reaction: id = v12, name = IkBeps degradation
	reaction_v12=compartment_cytoplasm*global_par_deg4*x(7);

% Reaction: id = v13, name = NFkB translocation
	reaction_v13=compartment_cytoplasm*global_par_k1*x(2)-compartment_nucleus*global_par_k01*x(15);

% Reaction: id = v14, name = NFkB-IkBalpha complex formation
	reaction_v14=compartment_nucleus*(global_par_a4*x(16)*x(15)-global_par_d4*x(17));

% Reaction: id = v15, name = NFkB-IkBbeta complex formation
	reaction_v15=compartment_nucleus*(global_par_a5*x(18)*x(15)-global_par_d5*x(19));

% Reaction: id = v16, name = NFkB-IkBeps complex formation
	reaction_v16=compartment_nucleus*(global_par_a6*x(20)*x(15)-global_par_d6*x(24));

% Reaction: id = v17, name = IkBalpha transcription
	reaction_v17=compartment_nucleus*global_par_tr2a;

% Reaction: id = v18, name = IkBalpha inducible transcription
	reaction_v18=compartment_nucleus*global_par_tr2*x(15)^2;

% Reaction: id = v19, name = IkBalpha transcript degradation
	reaction_v19=compartment_nucleus*global_par_tr3*x(21);

% Reaction: id = v20, name = IkBbeta transcription
	reaction_v20=compartment_nucleus*global_par_tr2b;

% Reaction: id = v21, name = IkBbeta transcript degradation
	reaction_v21=compartment_nucleus*global_par_tr3*x(22);

% Reaction: id = v22, name = IkBeps transcription
	reaction_v22=compartment_nucleus*global_par_tr2e;

% Reaction: id = v23, name = IkBeps transcript degradation
	reaction_v23=compartment_nucleus*global_par_tr3*x(23);

% Reaction: id = v24, name = IKK-IkBalpha complex formation
	reaction_v24=compartment_cytoplasm*(global_par_a1*x(1)*x(10)-global_par_d1*x(8));

% Reaction: id = v25, name = IkBalpha synthesis
	reaction_v25=compartment_nucleus*global_par_tr1*x(21);

% Reaction: id = v26, name = IkBalpha degradation
	reaction_v26=compartment_cytoplasm*global_par_deg1*x(1);

% Reaction: id = v27, name = IkBalpha translocation
	reaction_v27=compartment_cytoplasm*global_par_tp1*x(1)-compartment_nucleus*global_par_tp2*x(16);

% Reaction: id = v28, name = IKK-IkBbeta complex formation
	reaction_v28=compartment_cytoplasm*(global_par_a2*x(4)*x(10)-global_par_d2*x(11));

% Reaction: id = v29, name = IkBbeta synthesis
	reaction_v29=compartment_nucleus*global_par_tr1*x(22);

% Reaction: id = v30, name = IkBbeta degradation
	reaction_v30=compartment_cytoplasm*global_par_deg1*x(4);

% Reaction: id = v31, name = IkBbeta translocation
	reaction_v31=compartment_cytoplasm*0.5*global_par_tp1*x(4)-compartment_nucleus*0.5*global_par_tp2*x(18);

% Reaction: id = v32, name = IKK-IkBeps complex formation
	reaction_v32=compartment_cytoplasm*(global_par_a3*x(6)*x(10)-global_par_d3*x(13));

% Reaction: id = v33, name = IkBeps synthesis
	reaction_v33=compartment_nucleus*global_par_tr1*x(23);

% Reaction: id = v34, name = IkBeps degradation
	reaction_v34=compartment_cytoplasm*global_par_deg1*x(6);

% Reaction: id = v35, name = IkBeps translocation
	reaction_v35=compartment_cytoplasm*0.5*global_par_tp1*x(6)-compartment_nucleus*0.5*global_par_tp2*x(20);

% Reaction: id = v36, name = IKK-binary IkBalpha NFkB complex formation
	reaction_v36=compartment_cytoplasm*(global_par_a7*x(10)*x(3)-global_par_d1*x(9));

% Reaction: id = v37, name = IkBalpha_NFkB translocation
	reaction_v37=compartment_nucleus*global_par_k2*x(17);

% Reaction: id = v38, name = IKK binary IkBbeta NFkB complex formation
	reaction_v38=compartment_cytoplasm*(global_par_a8*x(10)*x(5)-global_par_d2*x(12));

% Reaction: id = v39, name = IkBbeta_NFkB translocation	% Local Parameter:   id =  k2_IkBbeta_nuc_NFkB_nuc, name = k2_IkBbeta_nuc_NFkB_nuc
	reaction_v39_k2_IkBbeta_nuc_NFkB_nuc=0.0069;

	reaction_v39=compartment_nucleus*reaction_v39_k2_IkBbeta_nuc_NFkB_nuc*(global_par_fr_after_trigger+global_par_flag_for_after_trigger)*x(19);

% Reaction: id = v40, name = IKK binary IkBeps NFkB complex formation
	reaction_v40=compartment_cytoplasm*(global_par_a9*x(10)*x(7)-global_par_d3*x(14));

% Reaction: id = v41, name = IkBeps_NFkB translocation
	reaction_v41=compartment_nucleus*0.5*global_par_k2_eps*x(24);

% Reaction: id = v42, name = IkBalpha degradation
	reaction_v42=compartment_cytoplasm*global_par_r1*x(8);

% Reaction: id = v43, name = IkBbeta degradation
	reaction_v43=compartment_cytoplasm*global_par_r2*x(11);

% Reaction: id = v44, name = IkBeps degradation
	reaction_v44=compartment_cytoplasm*global_par_r3*x(13);

% Reaction: id = v45, name = IKK consumption
	reaction_v45=compartment_cytoplasm*global_par_k02*x(10);

%Event: id=event_0000001
	event_event_0000001=(t >= 2000) && (global_par_trigger_value == 0);

	if(event_event_0000001) 
		x(10)=0.1;
		global_par_trigger_value=1;
		global_par_flag_for_after_trigger=0;
	end

	xdot=zeros(25,1);
	% rateRule: variable = fr_after_trigger
	xdot(25) = global_par_trigger_value*(-0.5)/(1+(t-2000))^2;
	
% Species:   id = IkBalpha, name = IkBalpha, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v1) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v25) + (-1.0 * reaction_v26) + (-1.0 * reaction_v27));
	
% Species:   id = NFkB, name = NFkB, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v9) + ( 1.0 * reaction_v10) + ( 1.0 * reaction_v11) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v13));
	
% Species:   id = IkBalpha_NFkB, name = IkBalpha_NFkB, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v10) + (-1.0 * reaction_v36) + ( 1.0 * reaction_v37));
	
% Species:   id = IkBbeta, name = IkBbeta, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v2) + (-1.0 * reaction_v28) + ( 1.0 * reaction_v29) + (-1.0 * reaction_v30) + (-1.0 * reaction_v31));
	
% Species:   id = IkBbeta_NFkB, name = IkBbeta_NFkB, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v11) + (-1.0 * reaction_v38) + ( 1.0 * reaction_v39));
	
% Species:   id = IkBeps, name = IkBeps, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v3) + (-1.0 * reaction_v32) + ( 1.0 * reaction_v33) + (-1.0 * reaction_v34) + (-1.0 * reaction_v35));
	
% Species:   id = IkBeps_NFkB, name = IkBeps_NFkB, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v12) + (-1.0 * reaction_v40) + ( 1.0 * reaction_v41));
	
% Species:   id = IKK_IkBalpha, name = IKK_IkBalpha, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v4) + ( 1.0 * reaction_v24) + (-1.0 * reaction_v42));
	
% Species:   id = IKK_IkBalpha_NFkB, name = IKK_IkBalpha_NFkB, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v36));
	
% Species:   id = IKK, name = IKK, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v5) + ( 1.0 * reaction_v7) + ( 1.0 * reaction_v9) + (-1.0 * reaction_v24) + (-1.0 * reaction_v28) + (-1.0 * reaction_v32) + (-1.0 * reaction_v36) + (-1.0 * reaction_v38) + (-1.0 * reaction_v40) + ( 1.0 * reaction_v42) + ( 1.0 * reaction_v43) + ( 1.0 * reaction_v44) + (-1.0 * reaction_v45));
	
% Species:   id = IKK_IkBbeta, name = IKK_IkBbeta, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v6) + ( 1.0 * reaction_v28) + (-1.0 * reaction_v43));
	
% Species:   id = IKK_IkBbeta_NFkB, name = IKK_IkBbeta_NFkB, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v38));
	
% Species:   id = IKK_IkBeps, name = IKK_IkBeps, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*((-1.0 * reaction_v8) + ( 1.0 * reaction_v32) + (-1.0 * reaction_v44));
	
% Species:   id = IKK_IkBeps_NFkB, name = IKK_IkBeps_NFkB, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v40));
	
% Species:   id = NFkB_nuc, name = NFkB_nuc, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15) + (-1.0 * reaction_v16));
	
% Species:   id = IkBalpha_nuc, name = IkBalpha_nuc, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*((-1.0 * reaction_v14) + ( 1.0 * reaction_v27));
	
% Species:   id = IkBalpha_nuc_NFkB_nuc, name = IkBalpha_nuc_NFkB_nuc, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*(( 1.0 * reaction_v14) + (-1.0 * reaction_v37));
	
% Species:   id = IkBbeta_nuc, name = IkBbeta_nuc, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*((-1.0 * reaction_v15) + ( 1.0 * reaction_v31));
	
% Species:   id = IkBbeta_nuc_NFkB_nuc, name = IkBbeta_nuc_NFkB_nuc, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v39));
	
% Species:   id = IkBeps_nuc, name = IkBeps_nuc, affected by kineticLaw
	xdot(20) = (1/(compartment_nucleus))*((-1.0 * reaction_v16) + ( 1.0 * reaction_v35));
	
% Species:   id = IkBalpha_transcript, name = IkBalpha_transcript, affected by kineticLaw
	xdot(21) = (1/(compartment_nucleus))*(( 1.0 * reaction_v17) + ( 1.0 * reaction_v18) + (-1.0 * reaction_v19));
	
% Species:   id = IkBbeta_transcript, name = IkBbeta_transcript, affected by kineticLaw
	xdot(22) = (1/(compartment_nucleus))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v21));
	
% Species:   id = IkBeps_transcript, name = IkBeps_transcript, affected by kineticLaw
	xdot(23) = (1/(compartment_nucleus))*(( 1.0 * reaction_v22) + (-1.0 * reaction_v23));
	
% Species:   id = IkBeps_nuc_NFkB_nuc, name = IkBeps_nuc_NFkB_nuc, affected by kineticLaw
	xdot(24) = (1/(compartment_nucleus))*(( 1.0 * reaction_v16) + (-1.0 * reaction_v41));
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


