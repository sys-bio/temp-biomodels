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
% Model name = Stucki2005 - caspase-3 metabolism
%
% is http://identifiers.org/biomodels.db/MODEL2205200001
% is http://identifiers.org/biomodels.db/BIOMD0000001059
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.1;
	x0(2) = 0.710362;
	x0(3) = 0.3;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.44919;
	x0(7) = 0.00483757;
	x0(8) = 0.0;
	x0(9) = 9.99999999999994;
	x0(10) = 0.0076907;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.1;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.001;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  km5, name = km5
	global_par_km5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  km6, name = km6
	global_par_km6=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.0;
% Parameter:   id =  km8, name = km8
	global_par_km8=1.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.001;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.002;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.001;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.002;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.01;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.002;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.001;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  H, name = H
	global_par_H=2.0;
% Parameter:   id =  k10_cascade, name = k10_cascade
	global_par_k10_cascade=0.0;

% Reaction: id = cleavage_of_procaspase_3_into_caspase_3, name = cleavage of procaspase-3 into caspase-3
	reaction_cleavage_of_procaspase_3_into_caspase_3=compartment_Cytoplasm*global_par_k2*x(1);

% Reaction: id = caspase_3_proteolysis, name = caspase-3 proteolysis
	reaction_caspase_3_proteolysis=compartment_Cytoplasm*lysis(global_par_k3, x(6), global_par_n, global_par_H, x(2));

% Reaction: id = IAP_caspas_3_complex_formation, name = IAP caspas-3 complex formation
	reaction_IAP_caspas_3_complex_formation=compartment_Cytoplasm*global_par_k5*x(2)*x(3);

% Reaction: id = Separation_of_caspase_3_and_iap, name = Separation of caspase-3 and iap
	reaction_Separation_of_caspase_3_and_iap=compartment_Cytoplasm*global_par_km5*x(6);

% Reaction: id = Degradation_of_caspas_3, name = Degradation of caspas-3
	reaction_Degradation_of_caspas_3=compartment_Cytoplasm*global_par_k10*x(2);

% Reaction: id = Formation_of_iap_smac_complex, name = Formation of iap-smac complex
	reaction_Formation_of_iap_smac_complex=compartment_Cytoplasm*global_par_k6*x(3)*x(10);

% Reaction: id = Separation_of_iap_and_smac, name = Separation of iap and smac
	reaction_Separation_of_iap_and_smac=compartment_Cytoplasm*global_par_km6*x(7);

% Reaction: id = Degradation_of_iap, name = Degradation of iap
	reaction_Degradation_of_iap=compartment_Cytoplasm*global_par_k13*x(3);

% Reaction: id = release_of_smac_in_cytoplasm, name = release of smac in cytoplasm
	reaction_release_of_smac_in_cytoplasm=compartment_Cytoplasm*global_par_k7*x(9);

% Reaction: id = Formation_of_smac_survivin_complex, name = Formation of smac-survivin complex
	reaction_Formation_of_smac_survivin_complex=compartment_Cytoplasm*global_par_k8*x(10)*x(4);

% Reaction: id = cleavage_of_smac_survivin_complex, name = cleavage of smac survivin complex
	reaction_cleavage_of_smac_survivin_complex=compartment_Cytoplasm*global_par_km8*x(8);

% Reaction: id = Degradation_of_survivin, name = Degradation of survivin
	reaction_Degradation_of_survivin=compartment_Cytoplasm*global_par_k16*x(4);

% Reaction: id = Degradation_of_iap_caspase_3_complex, name = Degradation of iap-caspase-3 complex
	reaction_Degradation_of_iap_caspase_3_complex=compartment_Cytoplasm*global_par_k12*x(6);

% Reaction: id = Degradation_of_iapsmac, name = Degradation of iapsmac
	reaction_Degradation_of_iapsmac=compartment_Cytoplasm*global_par_k14*x(7);

% Reaction: id = Degradation_of_sursmac, name = Degradation of sursmac
	reaction_Degradation_of_sursmac=compartment_Cytoplasm*global_par_k15*x(8);

% Reaction: id = activation_of_cascade_controled_by_caspase_3, name = activation of cascade controled by caspase-3
	reaction_activation_of_cascade_controled_by_caspase_3=compartment_Cytoplasm*function_1(global_par_k4, x(2));

% Reaction: id = Auto_amplification_of_cascade, name = Auto-amplification of cascade
	reaction_Auto_amplification_of_cascade=compartment_Cytoplasm*function_1(global_par_k17, x(5));

% Reaction: id = Degradation_of_cascade, name = Degradation of cascade
	reaction_Degradation_of_cascade=compartment_Cytoplasm*global_par_k10_cascade*x(5);

%Event: id=Release_of_SMAC
	event_Release_of_SMAC=time == 2000;

	if(event_Release_of_SMAC) 
		global_par_k7=0.025;
	end

%Event: id=cascade__1
	event_cascade__1=(x(5) <= 20) && (x(2) >= 4.5);

	if(event_cascade__1) 
		global_par_k4=0.001;
		global_par_k10_cascade=0.001;
		global_par_k17=0.01;
	end

%Event: id=cascade__2
	event_cascade__2=x(5) > 20;

	if(event_cascade__2) 
		global_par_k10_cascade=0;
		global_par_k17=0;
		global_par_k4=0;
	end

	xdot=zeros(10,1);
	
% Species:   id = pc3, name = pc3, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_Production_of_procaspase_3) + (-1.0 * reaction_cleavage_of_procaspase_3_into_caspase_3));
	
% Species:   id = c3, name = c3, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_cleavage_of_procaspase_3_into_caspase_3) + (-1.0 * reaction_caspase_3_proteolysis) + (-1.0 * reaction_IAP_caspas_3_complex_formation) + ( 1.0 * reaction_Separation_of_caspase_3_and_iap) + (-1.0 * reaction_Degradation_of_caspas_3));
	
% Species:   id = iap, name = iap, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_IAP_caspas_3_complex_formation) + ( 1.0 * reaction_Separation_of_caspase_3_and_iap) + (-1.0 * reaction_Formation_of_iap_smac_complex) + ( 1.0 * reaction_Separation_of_iap_and_smac) + ( 1.0 * reaction_Production_of_iap) + (-1.0 * reaction_Degradation_of_iap));
	
% Species:   id = survivin, name = survivin, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_Formation_of_smac_survivin_complex) + ( 1.0 * reaction_cleavage_of_smac_survivin_complex) + ( 1.0 * reaction_Productio_of_survivin) + (-1.0 * reaction_Degradation_of_survivin));
	
% Species:   id = cascade, name = cascade, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_activation_of_cascade_controled_by_caspase_3) + ( 1.0 * reaction_Auto_amplification_of_cascade) + (-1.0 * reaction_Degradation_of_cascade));
	
% Species:   id = iapc3, name = iapc3, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_IAP_caspas_3_complex_formation) + (-1.0 * reaction_Separation_of_caspase_3_and_iap) + (-1.0 * reaction_Degradation_of_iap_caspase_3_complex));
	
% Species:   id = iapsmac, name = iapsmac, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_Formation_of_iap_smac_complex) + (-1.0 * reaction_Separation_of_iap_and_smac) + (-1.0 * reaction_Degradation_of_iapsmac));
	
% Species:   id = sursmac, name = sursmac, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_Formation_of_smac_survivin_complex) + (-1.0 * reaction_cleavage_of_smac_survivin_complex) + (-1.0 * reaction_Degradation_of_sursmac));
	
% Species:   id = smacmit, name = smacmit, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_release_of_smac_in_cytoplasm));
	
% Species:   id = smac, name = smac, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_Formation_of_iap_smac_complex) + ( 1.0 * reaction_Separation_of_iap_and_smac) + ( 1.0 * reaction_release_of_smac_in_cytoplasm) + (-1.0 * reaction_Formation_of_smac_survivin_complex) + ( 1.0 * reaction_cleavage_of_smac_survivin_complex));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=lysis(k3,iapc3,n,H,c3), z=(k3*iapc3^n/(H^n+iapc3^n)*c3);end

function z=function_1(k,modifier), z=(k*modifier);end

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


