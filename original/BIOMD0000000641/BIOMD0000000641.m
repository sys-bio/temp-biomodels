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
% Model name = Jaiswal2017 - Cell cycle arrest
%
% is http://identifiers.org/biomodels.db/MODEL1704030000
% is http://identifiers.org/biomodels.db/BIOMD0000000641
% isDescribedBy http://identifiers.org/pubmed/28607002
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(10) = 0.0;
	x0(11) = 0.999999999999999;
	x0(12) = 0.0;
	x0(13) = 3.0;
	x0(14) = 7.0;
	x0(1) = 0.0;
	x0(2) = 10.0;
	x0(3) = 0.999999999999999;
	x0(4) = 9.0;
	x0(5) = 0.0;
	x0(6) = 10.0;
	x0(7) = 10.0;
	x0(8) = 3.0;
	x0(9) = 7.0;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  Kd2t, name = Kd2t
	global_par_Kd2t=2.0;
% Parameter:   id =  Kti2t, name = Kti2t
	global_par_Kti2t=10.0;
% Parameter:   id =  Kcc2ch, name = Kcc2ch
	global_par_Kcc2ch=1.0;
% Parameter:   id =  Kt2cc, name = Kt2cc
	global_par_Kt2cc=10.0;
% Parameter:   id =  Kcc2a, name = Kcc2a
	global_par_Kcc2a=1.0;
% Parameter:   id =  Kd2ch, name = Kd2ch
	global_par_Kd2ch=1.0;
% Parameter:   id =  Kch2cc, name = Kch2cc
	global_par_Kch2cc=1.0;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=1.0;
% Parameter:   id =  Km10, name = Km10
	global_par_Km10=10.0;
% assignmentRule: variable = Effectorina
	x(6)=const_species_Effectortot-x(5);
% assignmentRule: variable = Damage
	x(7)=x(8)+x(9);
% assignmentRule: variable = Timerinact
	x(2)=const_species_Timertot-x(1);
% assignmentRule: variable = CellCina
	x(4)=const_species_CellCycletot-x(3);
% rateRule: variable = Timeract
x(1) = x(10);
% rateRule: variable = CellCact
x(3) = x(11);
% rateRule: variable = Effectoract
x(5) = x(12);
% rateRule: variable = HR
x(8) = x(13);
% rateRule: variable = NHEJ
x(9) = x(14);

% Species:   id = CellCycletot, name = CellCycletot, constant	const_species_CellCycletot=10.0;

% Species:   id = Effectortot, name = Effectortot, constant	const_species_Effectortot=10.0;

% Species:   id = Timertot, name = Timertot, constant	const_species_Timertot=10.0;

	xdot=zeros(14,1);
	% rateRule: variable = Timeract
	xdot(10) = global_par_Kd2t*x(7)*x(2)/(global_par_Km1+x(2))-global_par_Kti2t*x(1)/(global_par_Km1+x(1));
	% rateRule: variable = CellCact
	xdot(11) = (global_par_Kcc2a+x(3))*x(4)/(global_par_Km10+x(4))-global_par_Kt2cc*x(1)*x(3)/(global_par_Km10+x(3))-global_par_Kch2cc*x(3)*x(5)/(global_par_Km10+x(3));
	% rateRule: variable = Effectoract
	xdot(12) = global_par_Kd2ch*x(7)*x(6)/(global_par_Km10+x(6))-global_par_Kcc2ch*x(3)*x(5)/(global_par_Km10+x(5));
	% rateRule: variable = HR
	xdot(13) = (-x(8))*0.2;
	% rateRule: variable = NHEJ
	xdot(14) = (-x(9))*0.5;
	
% Species:   id = Timeract, name = Timeract, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Timerinact, name = Timerinact, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = CellCact, name = CellCact, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = CellCina, name = CellCina, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Effectoract, name = Effectoract, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Effectorina, name = Effectorina, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = Damage, name = Damage, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = HR, name = HR, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = NHEJ, name = NHEJ, involved in a rule 	xdot(9) = x(9);
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


