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
% Model name = Sturrock2015 - glioma growth
%
% isDescribedBy http://identifiers.org/pubmed/26073722
% is http://identifiers.org/biomodels.db/MODEL1908200001
% is http://identifiers.org/biomodels.db/BIOMD0000000801
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.14;
	x0(2) = 3.92E-4;
	x0(3) = 2.84E-4;
	x0(4) = 4.39E-4;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  at, name = at
	global_par_at=1.575;
% Parameter:   id =  kt, name = kt
	global_par_kt=2.0;
% Parameter:   id =  dti, name = dti
	global_par_dti=0.072;
% Parameter:   id =  ati, name = ati
	global_par_ati=3.0E-4;
% Parameter:   id =  dt, name = dt
	global_par_dt=1.0E-4;
% Parameter:   id =  di, name = di
	global_par_di=0.01;
% Parameter:   id =  as, name = as
	global_par_as=0.7;
% Parameter:   id =  v, name = v
	global_par_v=0.7;
% Parameter:   id =  dto, name = dto
	global_par_dto=1.0;
% Parameter:   id =  ao, name = ao
	global_par_ao=20.0;
% Parameter:   id =  omin, name = omin
	global_par_omin=8.0E-4;
% Parameter:   id =  oo, name = oo
	global_par_oo=0.0016;
% Parameter:   id =  do, name = do
	global_par_do=0.01;
% Parameter:   id =  dtt, name = dtt
	global_par_dtt=0.72;
% Parameter:   id =  F, name = F
% Parameter:   id =  F2, name = F2
% Parameter:   id =  c, name = c
% assignmentRule: variable = c
	global_par_c=piecewise(piecewise(2, time < 4745, 1), 1095 < time, 1);
% assignmentRule: variable = F
	global_par_F=piecewise(global_par_oo*sin(6*pi*time), global_par_omin < (global_par_oo*sin(6*pi*time)), global_par_omin);
% assignmentRule: variable = F2
	global_par_F2=piecewise(global_par_oo*sin(6*pi*time)*global_par_c, global_par_omin < (global_par_oo*sin(6*pi*time)*global_par_c), global_par_omin);

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*tg(global_par_at, x(2), x(1), global_par_kt);

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tme*global_par_dt*x(1);

% Reaction: id = tumor_immune, name = tumor immune
	reaction_tumor_immune=compartment_tme*_1mod(global_par_dti, x(3), x(1));

% Reaction: id = glucose_b_s, name = glucose b-s
	reaction_glucose_b_s=compartment_tme*global_par_ao*x(2);

% Reaction: id = glioma_consumption, name = glioma consumption
	reaction_glioma_consumption=compartment_tme*_1mod(global_par_dto, x(1), x(2));

% Reaction: id = glucose_consumption_b, name = glucose consumption-b
	reaction_glucose_consumption_b=compartment_tme*gcb(global_par_do, global_par_as, global_par_v, x(3), x(2));

% Reaction: id = immune_growth, name = immune growth
	reaction_immune_growth=compartment_tme*ig(global_par_as, global_par_v, x(3), x(2));

% Reaction: id = immune_recruitment, name = immune recruitment
	reaction_immune_recruitment=compartment_tme*ir(global_par_ati, x(1), x(3));

% Reaction: id = immune_cell_death, name = immune cell death
	reaction_immune_cell_death=compartment_tme*global_par_di*x(3);

% Reaction: id = glioma_response, name = glioma response
	reaction_glioma_response=compartment_tme*_1mod(global_par_dtt, x(1), x(3));

% Reaction: id = glucose_consumption_s, name = glucose consumption-s
	reaction_glucose_consumption_s=compartment_tme*global_par_do*x(4);

% Reaction: id = glucose_s_b, name = glucose s-b
	reaction_glucose_s_b=compartment_tme*global_par_ao*x(4);

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_immune));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*((-1.0 * reaction_glucose_b_s) + (-1.0 * reaction_glioma_consumption) + (-1.0 * reaction_glucose_consumption_b) + ( 1.0 * reaction_glucose_s_b));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_immune_growth) + ( 1.0 * reaction_immune_recruitment) + (-1.0 * reaction_immune_cell_death) + (-1.0 * reaction_glioma_response));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_glucose_b_s) + ( 1.0 * reaction_glucose_intake) + (-1.0 * reaction_glucose_consumption_s) + (-1.0 * reaction_glucose_s_b));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=ir(ati,T,I), z=(ati*T*I);end

function z=_1mod(d,mod,sub), z=(d*mod*sub);end

function z=tg(at,B,T,kt), z=(at*B*T*(1-T/kt));end

function z=ig(as,v,I,B), z=(as*(v+I)*B);end

function z=gcb(do,as,v,I,B), z=((do+as*(v+I))*B);end

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


