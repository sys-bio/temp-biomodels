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
% Model name = Bray1995_chemotaxis_receptorlinkedcomplex
%
% is http://identifiers.org/biomodels.db/MODEL6409760567
% is http://identifiers.org/biomodels.db/BIOMD0000000200
% isDescribedBy http://identifiers.org/pubmed/8573792
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000404
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 2.5E-6;
	x0(2) = 0.0;
	x0(3) = 5.0E-6;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 2.5E-6;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0E-5;
	x0(18) = 0.0;
	x0(19) = 2.0E-5;
	x0(20) = 2.0E-6;
	x0(21) = 0.0;
	x0(22) = 1.63E-6;


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
	compartment_cell=1.41;
% Parameter:   id =  Hill, name = Hill
	global_par_Hill=4.0;
% Parameter:   id =  Bias, name = Bias
% assignmentRule: variable = Bias
	global_par_Bias=1-x(18)^global_par_Hill/(2.333*x(22)^global_par_Hill+x(18)^global_par_Hill);

% Reaction: id = complex_r1, name = complex_r1	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r1_k1=0.00365;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r1_k2=1000000.0;

	reaction_complex_r1=compartment_cell*(reaction_complex_r1_k1*x(9)-reaction_complex_r1_k2*x(8)*x(3));

% Reaction: id = complex_r2, name = complex_r2	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r2_k1=0.00894;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r2_k2=1000000.0;

	reaction_complex_r2=compartment_cell*(reaction_complex_r2_k1*x(4)-reaction_complex_r2_k2*x(3)*x(1));

% Reaction: id = complex_r3, name = complex_r3	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r3_k1=297.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r3_k2=1000000.0;

	reaction_complex_r3=compartment_cell*(reaction_complex_r3_k1*x(11)-reaction_complex_r3_k2*x(8)*x(4));

% Reaction: id = complex_r4, name = complex_r4	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r4_k1=0.64;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r4_k2=1000000.0;

	reaction_complex_r4=compartment_cell*(reaction_complex_r4_k1*x(15)-reaction_complex_r4_k2*x(9)*x(4));

% Reaction: id = complex_r5, name = complex_r5	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r5_k1=0.112;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r5_k2=1000000.0;

	reaction_complex_r5=compartment_cell*(reaction_complex_r5_k1*x(15)-reaction_complex_r5_k2*x(10)*x(1));

% Reaction: id = complex_r6, name = complex_r6	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r6_k1=0.0229;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r6_k2=1000000.0;

	reaction_complex_r6=compartment_cell*(reaction_complex_r6_k1*x(15)-reaction_complex_r6_k2*x(8)*x(6));

% Reaction: id = complex_r7, name = complex_r7	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r7_k1=39.3;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r7_k2=1000000.0;

	reaction_complex_r7=compartment_cell*(reaction_complex_r7_k1*x(13)-reaction_complex_r7_k2*x(8)*x(1));

% Reaction: id = complex_r8, name = complex_r8	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r8_k1=727.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r8_k2=1000000.0;

	reaction_complex_r8=compartment_cell*(reaction_complex_r8_k1*x(11)-reaction_complex_r8_k2*x(9)*x(1));

% Reaction: id = complex_r9, name = complex_r9	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r9_k1=7.87E-6;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r9_k2=1000000.0;

	reaction_complex_r9=compartment_cell*(reaction_complex_r9_k1*x(15)-reaction_complex_r9_k2*x(11)*x(3));

% Reaction: id = complex_r10, name = complex_r10	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r10_k1=0.0511;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r10_k2=1000000.0;

	reaction_complex_r10=compartment_cell*(reaction_complex_r10_k1*x(10)-reaction_complex_r10_k2*x(9)*x(3));

% Reaction: id = complex_r11, name = complex_r11	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r11_k1=0.102;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r11_k2=1000000.0;

	reaction_complex_r11=compartment_cell*(reaction_complex_r11_k1*x(6)-reaction_complex_r11_k2*x(3)*x(4));

% Reaction: id = complex_r12, name = complex_r12	% Local Parameter:   id =  k1, name = k1
	reaction_complex_r12_k1=0.0676;
	% Local Parameter:   id =  k2, name = k2
	reaction_complex_r12_k2=1000000.0;

	reaction_complex_r12=compartment_cell*(reaction_complex_r12_k1*x(11)-reaction_complex_r12_k2*x(13)*x(3));

% Reaction: id = phosphorylation_r1, name = phosphorylation_r1	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r1_k1=15.5;

	reaction_phosphorylation_r1=compartment_cell*reaction_phosphorylation_r1_k1*x(15);

% Reaction: id = phosphorylation_r2, name = phosphorylation_r2	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r2_k1=0.0227;

	reaction_phosphorylation_r2=compartment_cell*reaction_phosphorylation_r2_k1*x(1);

% Reaction: id = phosphorylation_r3, name = phosphorylation_r3	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r3_k1=0.0227;

	reaction_phosphorylation_r3=compartment_cell*reaction_phosphorylation_r3_k1*x(4);

% Reaction: id = phosphorylation_r4, name = phosphorylation_r4	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r4_k1=0.0227;

	reaction_phosphorylation_r4=compartment_cell*reaction_phosphorylation_r4_k1*x(6);

% Reaction: id = phosphorylation_r5, name = phosphorylation_r5	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r5_k1=0.0227;

	reaction_phosphorylation_r5=compartment_cell*reaction_phosphorylation_r5_k1*x(13);

% Reaction: id = phosphorylation_r6, name = phosphorylation_r6	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r6_k1=0.0227;

	reaction_phosphorylation_r6=compartment_cell*reaction_phosphorylation_r6_k1*x(11);

% Reaction: id = phosphorylation_r7, name = phosphorylation_r7	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r7_k1=0.00124;

	reaction_phosphorylation_r7=compartment_cell*reaction_phosphorylation_r7_k1*x(17);

% Reaction: id = phosphorylation_r8, name = phosphorylation_r8	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r8_k1=0.037;

	reaction_phosphorylation_r8=compartment_cell*reaction_phosphorylation_r8_k1*x(18);

% Reaction: id = phosphorylation_r9, name = phosphorylation_r9	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r9_k1=500000.0;

	reaction_phosphorylation_r9=compartment_cell*reaction_phosphorylation_r9_k1*x(18)*x(19);

% Reaction: id = phosphorylation_r10, name = phosphorylation_r10	% Local Parameter:   id =  k1, name = k1
	reaction_phosphorylation_r10_k1=0.35;

	reaction_phosphorylation_r10=compartment_cell*reaction_phosphorylation_r10_k1*x(21);

% Reaction: id = phosphotransfer_r1, name = phosphotransfer_r1	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r1_k1=6000000.0;

	reaction_phosphotransfer_r1=compartment_cell*reaction_phosphotransfer_r1_k1*x(20)*x(2);

% Reaction: id = phosphotransfer_r2, name = phosphotransfer_r2	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r2_k1=6000000.0;

	reaction_phosphotransfer_r2=compartment_cell*reaction_phosphotransfer_r2_k1*x(20)*x(5);

% Reaction: id = phosphotransfer_r3, name = phosphotransfer_r3	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r3_k1=6000000.0;

	reaction_phosphotransfer_r3=compartment_cell*reaction_phosphotransfer_r3_k1*x(20)*x(7);

% Reaction: id = phosphotransfer_r4, name = phosphotransfer_r4	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r4_k1=6000000.0;

	reaction_phosphotransfer_r4=compartment_cell*reaction_phosphotransfer_r4_k1*x(20)*x(14);

% Reaction: id = phosphotransfer_r5, name = phosphotransfer_r5	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r5_k1=6000000.0;

	reaction_phosphotransfer_r5=compartment_cell*reaction_phosphotransfer_r5_k1*x(20)*x(12);

% Reaction: id = phosphotransfer_r6, name = phosphotransfer_r6	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r6_k1=6000000.0;

	reaction_phosphotransfer_r6=compartment_cell*reaction_phosphotransfer_r6_k1*x(20)*x(16);

% Reaction: id = phosphotransfer_r7, name = phosphotransfer_r7	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r7_k1=3.0E7;

	reaction_phosphotransfer_r7=compartment_cell*reaction_phosphotransfer_r7_k1*x(17)*x(2);

% Reaction: id = phosphotransfer_r8, name = phosphotransfer_r8	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r8_k1=3.0E7;

	reaction_phosphotransfer_r8=compartment_cell*reaction_phosphotransfer_r8_k1*x(17)*x(5);

% Reaction: id = phosphotransfer_r9, name = phosphotransfer_r9	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r9_k1=3.0E7;

	reaction_phosphotransfer_r9=compartment_cell*reaction_phosphotransfer_r9_k1*x(17)*x(7);

% Reaction: id = phosphotransfer_r10, name = phosphotransfer_r10	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r10_k1=3.0E7;

	reaction_phosphotransfer_r10=compartment_cell*reaction_phosphotransfer_r10_k1*x(17)*x(14);

% Reaction: id = phosphotransfer_r11, name = phosphotransfer_r11	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r11_k1=3.0E7;

	reaction_phosphotransfer_r11=compartment_cell*reaction_phosphotransfer_r11_k1*x(17)*x(12);

% Reaction: id = phosphotransfer_r12, name = phosphotransfer_r12	% Local Parameter:   id =  k1, name = k1
	reaction_phosphotransfer_r12_k1=3.0E7;

	reaction_phosphotransfer_r12=compartment_cell*reaction_phosphotransfer_r12_k1*x(17)*x(16);

	xdot=zeros(22,1);
	
% Species:   id = AA, name = AA, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_complex_r2) + ( 1.0 * reaction_complex_r5) + ( 1.0 * reaction_complex_r7) + ( 1.0 * reaction_complex_r8) + (-1.0 * reaction_phosphorylation_r2) + ( 1.0 * reaction_phosphotransfer_r1) + ( 1.0 * reaction_phosphotransfer_r7));
	
% Species:   id = AAp, name = AAp, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r2) + (-1.0 * reaction_phosphotransfer_r1) + (-1.0 * reaction_phosphotransfer_r7));
	
% Species:   id = W, name = W, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_complex_r1) + ( 1.0 * reaction_complex_r2) + ( 1.0 * reaction_complex_r9) + ( 1.0 * reaction_complex_r10) + ( 1.0 * reaction_complex_r11) + ( 1.0 * reaction_complex_r12));
	
% Species:   id = WAA, name = WAA, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_complex_r2) + ( 1.0 * reaction_complex_r3) + ( 1.0 * reaction_complex_r4) + ( 1.0 * reaction_complex_r11) + (-1.0 * reaction_phosphorylation_r3) + ( 1.0 * reaction_phosphotransfer_r2) + ( 1.0 * reaction_phosphotransfer_r8));
	
% Species:   id = WAAp, name = WAAp, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r3) + (-1.0 * reaction_phosphotransfer_r2) + (-1.0 * reaction_phosphotransfer_r8));
	
% Species:   id = WWAA, name = WWAA, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_complex_r6) + (-1.0 * reaction_complex_r11) + (-1.0 * reaction_phosphorylation_r4) + ( 1.0 * reaction_phosphotransfer_r3) + ( 1.0 * reaction_phosphotransfer_r9));
	
% Species:   id = WWAAp, name = WWAAp, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r4) + (-1.0 * reaction_phosphotransfer_r3) + (-1.0 * reaction_phosphotransfer_r9));
	
% Species:   id = TT, name = TT, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_complex_r1) + ( 1.0 * reaction_complex_r3) + ( 1.0 * reaction_complex_r6) + ( 1.0 * reaction_complex_r7));
	
% Species:   id = TTW, name = TTW, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_complex_r1) + ( 1.0 * reaction_complex_r4) + ( 1.0 * reaction_complex_r8) + ( 1.0 * reaction_complex_r10));
	
% Species:   id = TTWW, name = TTWW, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_complex_r5) + (-1.0 * reaction_complex_r10));
	
% Species:   id = TTWAA, name = TTWAA, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*((-1.0 * reaction_complex_r3) + (-1.0 * reaction_complex_r8) + ( 1.0 * reaction_complex_r9) + (-1.0 * reaction_complex_r12) + (-1.0 * reaction_phosphorylation_r6) + ( 1.0 * reaction_phosphotransfer_r5) + ( 1.0 * reaction_phosphotransfer_r11));
	
% Species:   id = TTWAAp, name = TTWAAp, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r6) + (-1.0 * reaction_phosphotransfer_r5) + (-1.0 * reaction_phosphotransfer_r11));
	
% Species:   id = TTAA, name = TTAA, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_complex_r7) + ( 1.0 * reaction_complex_r12) + (-1.0 * reaction_phosphorylation_r5) + ( 1.0 * reaction_phosphotransfer_r4) + ( 1.0 * reaction_phosphotransfer_r10));
	
% Species:   id = TTAAp, name = TTAAp, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r5) + (-1.0 * reaction_phosphotransfer_r4) + (-1.0 * reaction_phosphotransfer_r10));
	
% Species:   id = TTWWAA, name = TTWWAA, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_complex_r4) + (-1.0 * reaction_complex_r5) + (-1.0 * reaction_complex_r6) + (-1.0 * reaction_complex_r9) + (-1.0 * reaction_phosphorylation_r1) + ( 1.0 * reaction_phosphotransfer_r6) + ( 1.0 * reaction_phosphotransfer_r12));
	
% Species:   id = TTWWAAp, name = TTWWAAp, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r1) + (-1.0 * reaction_phosphotransfer_r6) + (-1.0 * reaction_phosphotransfer_r12));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r7) + ( 1.0 * reaction_phosphorylation_r8) + ( 1.0 * reaction_phosphorylation_r9) + (-1.0 * reaction_phosphotransfer_r7) + (-1.0 * reaction_phosphotransfer_r8) + (-1.0 * reaction_phosphotransfer_r9) + (-1.0 * reaction_phosphotransfer_r10) + (-1.0 * reaction_phosphotransfer_r11) + (-1.0 * reaction_phosphotransfer_r12));
	
% Species:   id = Yp, name = Yp, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r7) + (-1.0 * reaction_phosphorylation_r8) + (-1.0 * reaction_phosphorylation_r9) + ( 1.0 * reaction_phosphotransfer_r7) + ( 1.0 * reaction_phosphotransfer_r8) + ( 1.0 * reaction_phosphotransfer_r9) + ( 1.0 * reaction_phosphotransfer_r10) + ( 1.0 * reaction_phosphotransfer_r11) + ( 1.0 * reaction_phosphotransfer_r12));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r9) + ( 1.0 * reaction_phosphorylation_r9));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_phosphorylation_r10) + (-1.0 * reaction_phosphotransfer_r1) + (-1.0 * reaction_phosphotransfer_r2) + (-1.0 * reaction_phosphotransfer_r3) + (-1.0 * reaction_phosphotransfer_r4) + (-1.0 * reaction_phosphotransfer_r5) + (-1.0 * reaction_phosphotransfer_r6));
	
% Species:   id = Bp, name = Bp, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_phosphorylation_r10) + ( 1.0 * reaction_phosphotransfer_r1) + ( 1.0 * reaction_phosphotransfer_r2) + ( 1.0 * reaction_phosphotransfer_r3) + ( 1.0 * reaction_phosphotransfer_r4) + ( 1.0 * reaction_phosphotransfer_r5) + ( 1.0 * reaction_phosphotransfer_r6));
	
% Species:   id = SetYp, name = setYp
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
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


