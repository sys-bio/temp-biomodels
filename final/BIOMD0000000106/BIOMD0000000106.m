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
% Model name = Yang2007_ArachidonicAcid
%
% is http://identifiers.org/biomodels.db/MODEL8610058649
% is http://identifiers.org/biomodels.db/BIOMD0000000106
% isDescribedBy http://identifiers.org/pubmed/17381237
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 0.001;
	x0(2) = 0.001;
	x0(3) = 0.001;
	x0(4) = 0.001;
	x0(5) = 0.001;
	x0(6) = 0.001;
	x0(7) = 1.5;
	x0(8) = 1.5;
	x0(9) = 0.5;
	x0(10) = 0.2;
	x0(11) = 0.5;
	x0(12) = 0.001;
	x0(13) = 0.5;
	x0(14) = 5.0;
	x0(15) = 0.76;
	x0(16) = 0.07;
	x0(17) = 0.8;
	x0(18) = 0.0;
	x0(19) = 0.001;
	x0(20) = 0.001;
	x0(21) = 0.001;
	x0(22) = 0.001;
	x0(23) = 0.001;
	x0(24) = 0.001;
	x0(25) = 0.001;


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
	compartment_cell=1.0;
% Parameter:   id =  lin, name = lin
	global_par_lin=12.0;
% Parameter:   id =  K15, name = Kcat(PLA2)
	global_par_K15=3600.0;
% Parameter:   id =  k15, name = Km(PLA2)
	global_par_k15=2600.0;
% Parameter:   id =  K16, name = Kcat(15-LOX)
	global_par_K16=1000.0;
% Parameter:   id =  k16, name = Km(15-LOX)
	global_par_k16=70.0;
% Parameter:   id =  K17, name = Kcat(12-LOX)
	global_par_K17=1000.0;
% Parameter:   id =  k17, name = Km(12-LOX)
	global_par_k17=50.0;
% Parameter:   id =  K18, name = Kcat(COX-2)
	global_par_K18=1000.0;
% Parameter:   id =  k18, name = Km(COX-2)
	global_par_k18=50.0;
% Parameter:   id =  K19, name = Kcat(PGES)
	global_par_K19=3000.0;
% Parameter:   id =  k19, name = Km(PGES)
	global_par_k19=160.0;
% Parameter:   id =  K20, name = Kcat(TXAS)
	global_par_K20=1599.0;
% Parameter:   id =  k20, name = Km(TXAS)
	global_par_k20=4.0;
% Parameter:   id =  K21, name = Kcat(5-LOX)
	global_par_K21=5000.0;
% Parameter:   id =  k21, name = Km(5-LOX)
	global_par_k21=5.0;
% Parameter:   id =  K22, name = Kcat(LTA4H)
	global_par_K22=125.0;
% Parameter:   id =  k22, name = Km(LTA4H)
	global_par_k22=20.0;
% Parameter:   id =  K23, name = Kcat(CYP4F3)
	global_par_K23=150.0;
% Parameter:   id =  k23, name = Km(CYP4F3)
	global_par_k23=3.9;
% Parameter:   id =  K24, name = Kcat(PHGPx)
	global_par_K24=500.0;
% Parameter:   id =  k24, name = Km(PHGPx)
	global_par_k24=70.0;
% Parameter:   id =  kd2, name = kd2
	global_par_kd2=0.05;
% Parameter:   id =  kd3, name = kd3
	global_par_kd3=0.01;
% Parameter:   id =  kd8, name = kd8
	global_par_kd8=0.1;
% Parameter:   id =  kd9, name = kd9
	global_par_kd9=0.001;
% Parameter:   id =  kd11, name = kd11
	global_par_kd11=0.001;
% Parameter:   id =  kd12, name = kd12
	global_par_kd12=0.07;
% Parameter:   id =  kd13, name = kd13
	global_par_kd13=0.01;
% Parameter:   id =  kd16, name = kd16
	global_par_kd16=0.01;
% Parameter:   id =  ki1, name = ki1
	global_par_ki1=0.3;
% Parameter:   id =  ki2, name = ki2
	global_par_ki2=30.0;
% Parameter:   id =  ki3, name = ki3
	global_par_ki3=30.0;
% Parameter:   id =  ki4, name = ki4
	global_par_ki4=0.6;
% Parameter:   id =  ki5, name = ki5
	global_par_ki5=0.1;
% Parameter:   id =  ki6, name = ki6
	global_par_ki6=0.01;
% Parameter:   id =  ki7, name = ki7
	global_par_ki7=30.0;
% Parameter:   id =  ki8, name = ki8
	global_par_ki8=4.0;
% Parameter:   id =  ki9, name = ki9
	global_par_ki9=0.175;
% Parameter:   id =  ki10, name = ki10
	global_par_ki10=0.01;
% Parameter:   id =  ki11, name = ki11
	global_par_ki11=15.0;
% Parameter:   id =  ki12, name = ki12
	global_par_ki12=6.3;
% Parameter:   id =  ki14, name = ki14
	global_par_ki14=0.2;
% Parameter:   id =  ki15, name = ki15
	global_par_ki15=0.86;
% Parameter:   id =  ki16, name = ki16
	global_par_ki16=10.0;
% Parameter:   id =  ki17, name = ki17
	global_par_ki17=10.0;
% Parameter:   id =  ki18, name = ki18
	global_par_ki18=10.0;
% Parameter:   id =  KI19, name = KI19
	global_par_KI19=500.0;
% Parameter:   id =  KI20, name = KI20
	global_par_KI20=200.0;
% Parameter:   id =  KI21, name = KI21
	global_par_KI21=500.0;
% Parameter:   id =  KI22, name = KI22
	global_par_KI22=500.0;
% Parameter:   id =  KI23, name = KI23
	global_par_KI23=0.053;
% Parameter:   id =  KI24, name = KI24
	global_par_KI24=2.3E-5;
% Parameter:   id =  a24, name = a24
	global_par_a24=0.15;
% Parameter:   id =  ks, name = ks
	global_par_ks=500.0;

% Reaction: id = R1, name = AA production
	reaction_R1=compartment_cell*global_par_K15*x(7)*global_par_lin*(1+x(20)/global_par_KI19+x(12)/global_par_KI20+x(5)/global_par_KI21+x(3)/global_par_KI22)/(global_par_lin+global_par_k15*(1+x(1)/global_par_ks));

% Reaction: id = R2, name = 15-HPETE production
	reaction_R2=compartment_cell*global_par_K16*x(8)*x(1)/(x(1)+global_par_k16*(1+x(12)/global_par_ks));

% Reaction: id = R3, name = 15-HETE production
	reaction_R3=compartment_cell*global_par_K24*x(17)*x(12)/(x(12)+global_par_k24*(1+x(19)/global_par_ks));

% Reaction: id = R4, name = 12-HPETE production
	reaction_R4=compartment_cell*global_par_K17*x(9)*x(1)/(x(1)+global_par_k17*(1+x(20)/global_par_ki18+x(19)/global_par_ki16+x(20)/global_par_ks));

% Reaction: id = R5, name = 12-HETE production
	reaction_R5=compartment_cell*global_par_K24*x(17)*x(20)/(x(20)+global_par_k24*(1+x(21)/global_par_ks));

% Reaction: id = R6, name = PGH2 production
	reaction_R6=compartment_cell*global_par_K18*x(10)*x(1)/(x(1)+global_par_k18*(1+x(23)/global_par_ki3+x(22)/global_par_ks));

% Reaction: id = R7, name = PGE2 production
	reaction_R7=compartment_cell*global_par_K19*x(11)*x(22)/(x(22)+global_par_k19*(1+x(1)/global_par_ki1+x(19)/global_par_ki2+x(23)/global_par_ks));

% Reaction: id = R8, name = TXA2 production
	reaction_R8=compartment_cell*global_par_K20*x(13)*x(22)/(x(22)+global_par_k20*(1+x(24)/global_par_ks));

% Reaction: id = R9, name = TXB2 production
	reaction_R9=global_par_kd8*x(24)*compartment_cell;

% Reaction: id = R10, name = 5-HPETE production
	reaction_R10=compartment_cell*global_par_K21*x(14)*x(1)/(x(1)+global_par_k21*(1+x(21)/global_par_ki7+x(19)/global_par_ki8+x(23)/global_par_ki11+x(3)/global_par_ki12+x(2)/global_par_ks));

% Reaction: id = R11, name = 5-HETE production
	reaction_R11=compartment_cell*global_par_K24*x(17)*x(2)/(x(2)+global_par_k24*(1+x(3)/global_par_ks));

% Reaction: id = R12, name = LTA4 production
	reaction_R12=compartment_cell*global_par_K21*x(14)*x(2)/(x(2)+global_par_k21*(1+x(21)/global_par_ki7+x(19)/global_par_ki8+x(23)/global_par_ki11+x(3)/global_par_ki12+x(4)/global_par_ks));

% Reaction: id = R13, name = LTB4 production
	reaction_R13=compartment_cell*global_par_K22*x(15)*x(4)/(x(4)+global_par_k22*(1+x(5)/global_par_ks));

% Reaction: id = R14, name = 20-OH-LTB4 production
	reaction_R14=compartment_cell*global_par_K23*x(16)*x(5)/(x(5)+global_par_k23*(1+x(21)/global_par_ki14+x(3)/global_par_ki15+x(6)/global_par_ks));

% Reaction: id = R16, name = 15-LOX upregulation
	reaction_R16=compartment_cell*global_par_a24*x(23)*x(23)/(x(23)*x(23)+global_par_KI24*global_par_KI24);

% Reaction: id = R17, name = 12-LOX inhibition
	reaction_R17=compartment_cell*global_par_ki17*x(12)*x(9);

% Reaction: id = R20, name = TXAS inhibition
	reaction_R20=global_par_ki4*x(12)*x(13)*compartment_cell;

% Reaction: id = R21, name = 5-LOX upregulation
	reaction_R21=compartment_cell*global_par_KI23*x(5)*x(14);

% Reaction: id = R22, name = LTA4H inhibition
	reaction_R22=compartment_cell*global_par_K22*x(15)*x(4)/((x(4)+global_par_k22)*129);

% Reaction: id = R18, name = TXB2 decay
	reaction_R18=global_par_kd9*x(25)*compartment_cell;

% Reaction: id = R19, name = TXAS inhibition by PGH2
	reaction_R19=compartment_cell*global_par_ki5*x(22)*x(13);

% Reaction: id = R25, name = TAX2 decay
	reaction_R25=compartment_cell*global_par_kd8*x(24);

% Reaction: id = R24, name = LTB4 decay
	reaction_R24=compartment_cell*global_par_kd13*x(5);

% Reaction: id = R23, name = LTA4 decay
	reaction_R23=compartment_cell*x(4)*global_par_kd12;

% Reaction: id = R26, name = 15-HETE decay
	reaction_R26=global_par_kd3*x(19)*compartment_cell;

% Reaction: id = R27, name = 15-HPETE decay
	reaction_R27=global_par_kd2*compartment_cell*x(12);

% Reaction: id = R28, name = 15-LOX decay
	reaction_R28=compartment_cell*global_par_kd16*x(8);

% Reaction: id = R29, name = 5-HETE decay
	reaction_R29=global_par_kd11*x(3)*compartment_cell;

% Reaction: id = R30, name = 5-LOX inhibition by x12
	reaction_R30=compartment_cell*global_par_ki9*x(4)*x(14);

% Reaction: id = R31, name = 5-LOX inhibition by x10
	reaction_R31=compartment_cell*global_par_ki10*x(2)*x(14);

% Reaction: id = R32, name = 5-LOX inhibition by x2
	reaction_R32=compartment_cell*global_par_ki6*x(14)*x(12);

% Reaction: id = R34, name = AA decay
	reaction_R34=0.1*x(1)*compartment_cell;

	xdot=zeros(25,1);
	
% Species:   id = x1, name = AA, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R4) + (-1.0 * reaction_R6) + (-1.0 * reaction_R10) + (-1.0 * reaction_R34));
	
% Species:   id = x10, name = 5-HPETE, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = x11, name = 5-HETE, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R29));
	
% Species:   id = x12, name = LTA4, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R23));
	
% Species:   id = x13, name = LTB4, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14) + (-1.0 * reaction_R24));
	
% Species:   id = x14, name = w-LTB4, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_R14));
	
% Species:   id = x15, name = PLA2
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
	
% Species:   id = x16, name = 15-LOX, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R28));
	
% Species:   id = x17, name = 12-LOX, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_R17));
	
% Species:   id = x18, name = COX-2
% Warning species is not changed by either rules or reactions
	xdot(10) = ;
	
% Species:   id = x19, name = PGES
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = x2, name = 15-HPETE, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R27));
	
% Species:   id = x20, name = TXAS, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_R20) + (-1.0 * reaction_R19));
	
% Species:   id = x21, name = 5-LOX, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R30) + (-1.0 * reaction_R31) + (-1.0 * reaction_R32));
	
% Species:   id = x22, name = LTA4H, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_R22));
	
% Species:   id = x23, name = CYP4F3
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = x24, name = PHGPx
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = x25, name = exo-AA
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = x3, name = 15-HETE, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R26));
	
% Species:   id = x4, name = 12-HPETE, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = x5, name = 12-HETE, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_R5));
	
% Species:   id = x6, name = PGH2, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = x7, name = PGE2, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_R7));
	
% Species:   id = x8, name = TXA2, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R25));
	
% Species:   id = x9, name = TXB2, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R18));
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


