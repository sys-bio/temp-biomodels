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
% Model name = Nijhout2004_Folate_Cycle
%
% is http://identifiers.org/biomodels.db/MODEL4336555445
% is http://identifiers.org/biomodels.db/BIOMD0000000213
% isDescribedBy http://identifiers.org/pubmed/15496403
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 5.16;
	x0(2) = 6.73;
	x0(3) = 0.027;
	x0(4) = 0.94;
	x0(5) = 1.153;
	x0(6) = 5.99;
	x0(7) = 468.0;
	x0(8) = 1850.0;
	x0(9) = 20.0;
	x0(10) = 10.0;
	x0(11) = 2.1;
	x0(12) = 900.0;
	x0(13) = 50.0;
	x0(14) = 1.0;


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
% Parameter:   id =  NE_k1, name = NE_k1
	global_par_NE_k1=0.15;
% Parameter:   id =  NE_k2, name = NE_k2
	global_par_NE_k2=12.0;
% Parameter:   id =  MS_Vmax, name = MS_Vmax
	global_par_MS_Vmax=500.0;
% Parameter:   id =  MS_Km_5mTHF, name = MS_Km_5mTHF
	global_par_MS_Km_5mTHF=25.0;
% Parameter:   id =  MS_Km_Hcy, name = MS_Km_Hcy
	global_par_MS_Km_Hcy=0.1;
% Parameter:   id =  MS_Kd, name = MS_Kd
	global_par_MS_Kd=1.0;
% Parameter:   id =  MTHFR_Vmax, name = MTHFR_Vmax
	global_par_MTHFR_Vmax=6000.0;
% Parameter:   id =  MTHFR_Km_NADPH, name = MTHFR_Km_NADPH
	global_par_MTHFR_Km_NADPH=16.0;
% Parameter:   id =  MTHFR_Km_5_10_CH2THF, name = MTHFR_Km_5_10_CH2THF
	global_par_MTHFR_Km_5_10_CH2THF=50.0;
% Parameter:   id =  FTD_Vmax, name = FTD_Vmax
	global_par_FTD_Vmax=14000.0;
% Parameter:   id =  FTD_Km_10fTHF, name = FTD_Km_10fTHF
	global_par_FTD_Km_10fTHF=20.0;
% Parameter:   id =  FTS_Vmax, name = FTS_Vmax
	global_par_FTS_Vmax=2000.0;
% Parameter:   id =  FTS_Km_HCOOH, name = FTS_Km_HCOOH
	global_par_FTS_Km_HCOOH=43.0;
% Parameter:   id =  FTS_Km_THF, name = FTS_Km_THF
	global_par_FTS_Km_THF=3.0;
% Parameter:   id =  AICART_Vmax, name = AICART_Vmax
	global_par_AICART_Vmax=45000.0;
% Parameter:   id =  AICART_Km_AICAR, name = AICART_Km_AICAR
	global_par_AICART_Km_AICAR=100.0;
% Parameter:   id =  AICART_Km_10fTHF, name = AICART_Km_10fTHF
	global_par_AICART_Km_10fTHF=5.9;
% Parameter:   id =  PGT_Vmax, name = PGT_Vmax
	global_par_PGT_Vmax=16200.0;
% Parameter:   id =  PGT_Km_GAR, name = PGT_Km_GAR
	global_par_PGT_Km_GAR=520.0;
% Parameter:   id =  PGT_Km_10fTHF, name = PGT_Km_10fTHF
	global_par_PGT_Km_10fTHF=4.9;
% Parameter:   id =  TS_Vmax, name = TS_Vmax
	global_par_TS_Vmax=50.0;
% Parameter:   id =  TS_Km_dUMP, name = TS_Km_dUMP
	global_par_TS_Km_dUMP=6.3;
% Parameter:   id =  TS_Km_5_10_CH2THF, name = TS_Km_5_10_CH2THF
	global_par_TS_Km_5_10_CH2THF=14.0;
% Parameter:   id =  DHFR_Vmax, name = DHFR_Vmax
	global_par_DHFR_Vmax=50.0;
% Parameter:   id =  DHFR_Km_NADPH, name = DHFR_Km_NADPH
	global_par_DHFR_Km_NADPH=4.0;
% Parameter:   id =  DHFR_Km_DHF, name = DHFR_Km_DHF
	global_par_DHFR_Km_DHF=0.5;
% Parameter:   id =  MTCH_VmaxF, name = MTCH_VmaxF
	global_par_MTCH_VmaxF=800000.0;
% Parameter:   id =  MTCH_Km_5_10_CHTHF, name = MTCH_Km_5_10_CHTHF
	global_par_MTCH_Km_5_10_CHTHF=250.0;
% Parameter:   id =  MTCH_VmaxR, name = MTCH_VmaxR
	global_par_MTCH_VmaxR=20000.0;
% Parameter:   id =  MTCH_Km_10fTHF, name = MTCH_Km_10fTHF
	global_par_MTCH_Km_10fTHF=100.0;
% Parameter:   id =  SHMT_VmaxF, name = SHMT_VmaxF
	global_par_SHMT_VmaxF=40000.0;
% Parameter:   id =  SHMT_Km_Ser, name = SHMT_Km_Ser
	global_par_SHMT_Km_Ser=600.0;
% Parameter:   id =  SHMT_Km_THF, name = SHMT_Km_THF
	global_par_SHMT_Km_THF=50.0;
% Parameter:   id =  SHMT_VmaxR, name = SHMT_VmaxR
	global_par_SHMT_VmaxR=25000.0;
% Parameter:   id =  MTD_VmaxF, name = MTD_VmaxF
	global_par_MTD_VmaxF=200000.0;
% Parameter:   id =  MTD_Km_5_10_CH2THF, name = MTD_Km_5_10_CH2THF
	global_par_MTD_Km_5_10_CH2THF=2.0;
% Parameter:   id =  MTD_VmaxR, name = MTD_VmaxR
	global_par_MTD_VmaxR=594000.0;
% Parameter:   id =  MTD_Km_5_10_CHTHF, name = MTD_Km_5_10_CHTHF
	global_par_MTD_Km_5_10_CHTHF=10.0;

% Reaction: id = V_NE
	reaction_V_NE=x(12)*global_par_NE_k1*x(2)-global_par_NE_k2*x(4);

% Reaction: id = V_MS
	reaction_V_MS=global_par_MS_Vmax*x(1)/global_par_MS_Km_5mTHF*x(14)/global_par_MS_Km_Hcy/(global_par_MS_Kd/global_par_MS_Km_5mTHF+x(1)/global_par_MS_Km_5mTHF+x(14)/global_par_MS_Km_Hcy+x(1)*x(14)/(global_par_MS_Km_5mTHF*global_par_MS_Km_Hcy));

% Reaction: id = V_MTHFR
	reaction_V_MTHFR=global_par_MTHFR_Vmax*x(13)/(global_par_MTHFR_Km_NADPH+x(13))*x(4)/(global_par_MTHFR_Km_5_10_CH2THF+x(4));

% Reaction: id = V_FTD
	reaction_V_FTD=global_par_FTD_Vmax*x(6)/(global_par_FTD_Km_10fTHF+x(6));

% Reaction: id = V_FTS
	reaction_V_FTS=global_par_FTS_Vmax*x(12)/(global_par_FTS_Km_HCOOH+x(12))*x(2)/(global_par_FTS_Km_THF+x(2));

% Reaction: id = V_AICART
	reaction_V_AICART=global_par_AICART_Vmax*x(11)/(global_par_AICART_Km_AICAR+x(11))*x(6)/(global_par_AICART_Km_10fTHF+x(6));

% Reaction: id = V_PGT
	reaction_V_PGT=global_par_PGT_Vmax*x(10)/(global_par_PGT_Km_GAR+x(10))*x(6)/(global_par_PGT_Km_10fTHF+x(6));

% Reaction: id = V_TS
	reaction_V_TS=global_par_TS_Vmax*x(9)/(global_par_TS_Km_dUMP+x(9))*x(4)/(global_par_TS_Km_5_10_CH2THF+x(4));

% Reaction: id = V_DHFR
	reaction_V_DHFR=global_par_DHFR_Vmax*x(13)/(global_par_DHFR_Km_NADPH+x(13))*x(3)/(global_par_DHFR_Km_DHF+x(3));

% Reaction: id = V_MTCH
	reaction_V_MTCH=global_par_MTCH_VmaxF*x(5)/(global_par_MTCH_Km_5_10_CHTHF+x(5))-global_par_MTCH_VmaxR*x(6)/(global_par_MTCH_Km_10fTHF+x(6));

% Reaction: id = V_SHMT
	reaction_V_SHMT=global_par_SHMT_VmaxF*x(7)/(global_par_SHMT_Km_Ser+x(7))*x(2)/(global_par_SHMT_Km_THF+x(2))-global_par_SHMT_VmaxR*x(8)/(global_par_SHMT_Km_Ser+x(8))*x(4)/(global_par_SHMT_Km_THF+x(4));

% Reaction: id = V_MTD
	reaction_V_MTD=global_par_MTD_VmaxF*x(4)/(global_par_MTD_Km_5_10_CH2THF+x(4))-global_par_MTD_VmaxR*x(5)/(global_par_MTD_Km_5_10_CHTHF+x(5));

	xdot=zeros(14,1);
	
% Species:   id = _5mTHF, name = _5mTHF, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_V_MS) + ( 1.0 * reaction_V_MTHFR));
	
% Species:   id = THF, name = THF, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_V_NE) + ( 1.0 * reaction_V_MS) + ( 1.0 * reaction_V_FTD) + (-1.0 * reaction_V_FTS) + ( 1.0 * reaction_V_AICART) + ( 1.0 * reaction_V_PGT) + ( 1.0 * reaction_V_DHFR) + (-1.0 * reaction_V_SHMT));
	
% Species:   id = DHF, name = DHF, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_V_TS) + (-1.0 * reaction_V_DHFR));
	
% Species:   id = _5_10_CH2THF, name = _5_10_CH2THF, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_V_NE) + (-1.0 * reaction_V_MTHFR) + (-1.0 * reaction_V_TS) + ( 1.0 * reaction_V_SHMT) + (-1.0 * reaction_V_MTD));
	
% Species:   id = _5_10_CHTHF, name = _5_10_CHTHF, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_V_MTCH) + ( 1.0 * reaction_V_MTD));
	
% Species:   id = _10fTHF, name = _10fTHF, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_V_FTD) + ( 1.0 * reaction_V_FTS) + (-1.0 * reaction_V_AICART) + (-1.0 * reaction_V_PGT) + ( 1.0 * reaction_V_MTCH));
	
% Species:   id = Ser, name = Ser
%WARNING speciesID: Ser, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = Gly, name = Gly
%WARNING speciesID: Gly, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = dUMP, name = dUMP
%WARNING speciesID: dUMP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = GAR, name = GAR
%WARNING speciesID: GAR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = AICAR, name = AICAR
%WARNING speciesID: AICAR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = HCOOH, name = HCOOH
%WARNING speciesID: HCOOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = NADPH, name = NADPH
%WARNING speciesID: NADPH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = Hcy, name = Hcy
%WARNING speciesID: Hcy, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(14) = 0.0;
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


