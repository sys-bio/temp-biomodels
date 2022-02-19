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
% Model name = Tham2008 - PDmodel, Tumour shrinkage by gemcitabine and carboplatin 
%
% is http://identifiers.org/biomodels.db/MODEL0911120001
% is http://identifiers.org/biomodels.db/BIOMD0000000234
% isDescribedBy http://identifiers.org/pubmed/18594002
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(2) = 0.0;
	x0(3) = 6.66;
	x0(1) = 0.0;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  rem_time, name = rem_time
% Parameter:   id =  Exposure, name = Exposure
% Parameter:   id =  Size, name = Size
% Parameter:   id =  Effect, name = Effect
% Parameter:   id =  Dose, name = Dose
	global_par_Dose=5203.84;
% Parameter:   id =  Dose_Int1, name = Dose_Int1
	global_par_Dose_Int1=0.0;
% Parameter:   id =  Dose_Int2, name = Dose_Int2
	global_par_Dose_Int2=1.0;
% Parameter:   id =  Dose_Length, name = Dose_Length
	global_par_Dose_Length=0.44359;
% Parameter:   id =  Cycle_Int, name = Cycle_Int
	global_par_Cycle_Int=3.0;
% Parameter:   id =  N_Cycle, name = N_Cycle
	global_par_N_Cycle=6.0;
% Parameter:   id =  conversion_factor, name = conversion_factor
	global_par_conversion_factor=604800.0;
% Parameter:   id =  AE50, name = AE50
	global_par_AE50=10600.0;
% Parameter:   id =  Keq, name = Keq
% Parameter:   id =  Teq, name = Teq
	global_par_Teq=7.67;
% Parameter:   id =  Size_0, name = Size_0
	global_par_Size_0=6.66;
% Parameter:   id =  RateIn, name = RateIn
% Parameter:   id =  T_Turnover, name = T_Turnover
	global_par_T_Turnover=21.8;
% Parameter:   id =  Kover, name = Kover
% rateRule: variable = Ce
x(1) = x(2);
% rateRule: variable = Size
global_par_Size = x(3);
% assignmentRule: variable = Exposure
	global_par_Exposure=piecewise(global_par_Dose, (time < (global_par_Cycle_Int*global_par_N_Cycle)) && (global_par_Dose_Int1 < global_par_rem_time) && (global_par_rem_time < global_par_Dose_Length), global_par_Dose, (time < (global_par_Cycle_Int*global_par_N_Cycle)) && (global_par_Dose_Int2 < global_par_rem_time) && (global_par_rem_time < (global_par_Dose_Int2+global_par_Dose_Length)), 0);
% assignmentRule: variable = rem_time
	global_par_rem_time=(time*global_par_conversion_factor-floor(time*global_par_conversion_factor/(global_par_Cycle_Int*global_par_conversion_factor))*global_par_Cycle_Int*global_par_conversion_factor)/global_par_conversion_factor;
% assignmentRule: variable = Effect
	global_par_Effect=1-x(1)/(global_par_AE50+x(1));
% assignmentRule: variable = RateIn
	global_par_RateIn=global_par_Size_0*global_par_Kover;
% assignmentRule: variable = Kover
	global_par_Kover=1/global_par_T_Turnover;

	xdot=zeros(3,1);
	% rateRule: variable = Ce
	xdot(2) = global_par_Exposure/1-x(1)*global_par_Keq;
	% rateRule: variable = Size
	xdot(3) = (global_par_RateIn*global_par_Effect-global_par_Kover*global_par_Size)*global_par_Size;
	
% Species:   id = Ce, name = Ce, defined in a rule 	xdot(1) = x(1);
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


