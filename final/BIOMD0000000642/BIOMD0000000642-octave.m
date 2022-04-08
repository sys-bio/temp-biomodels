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
% Model name = Mufudza2012 - Estrogen effect on the dynamics of breast cancer
%
% is http://identifiers.org/biomodels.db/MODEL1304190001
% is http://identifiers.org/biomodels.db/BIOMD0000000642
% isDescribedBy http://identifiers.org/pubmed/23365616
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 0.999999999999998;
	x0(5) = 9.99999999999998E-6;
	x0(6) = 1.379310345;
	x0(1) = 0.999999999999998;
	x0(2) = 9.99999999999998E-6;
	x0(3) = 1.379310345;


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

% Compartment: id = Tissue, name = breast, constant
	compartment_Tissue=1.0;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.7;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.98;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.3;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.4;
% Parameter:   id =  delta1, name = delta1
	global_par_delta1=1.0;
% Parameter:   id =  gamma2, name = gamma2
	global_par_gamma2=0.9;
% Parameter:   id =  s, name = s
	global_par_s=0.4;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.2;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.3;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.29;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=1.0;
% Parameter:   id =  gamma3, name = gamma3
	global_par_gamma3=0.085;
% Parameter:   id =  sigma1, name = sigma1
	global_par_sigma1=1.2;
% Parameter:   id =  sigma2, name = sigma2
	global_par_sigma2=0.94;
% Parameter:   id =  sigma3, name = sigma3
	global_par_sigma3=0.3;
% Parameter:   id =  v, name = v
	global_par_v=0.4;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.8;
% Parameter:   id =  pi, name = pi
	global_par_pi=0.0;
% rateRule: variable = H
x(1) = x(4);
% rateRule: variable = T
x(2) = x(5);
% rateRule: variable = I
x(3) = x(6);

% Species:   id = E, name = estrogen, constant	const_species_E=0.499999999999999;

	xdot=zeros(6,1);
	% rateRule: variable = H
	xdot(4) = x(1)*(global_par_alpha1-global_par_beta1*x(1)-global_par_delta1*x(2))-global_par_sigma1*x(1)*const_species_E;
	% rateRule: variable = T
	xdot(5) = x(2)*(global_par_alpha3-global_par_beta2*x(2))-global_par_gamma2*x(3)*x(2)+global_par_sigma2*x(1)*const_species_E;
	% rateRule: variable = I
	xdot(6) = global_par_s+global_par_rho*x(3)*x(2)/(global_par_omega+x(2))-global_par_gamma3*x(3)*x(2)-global_par_mu*x(3)-global_par_sigma3*x(3)*const_species_E/(global_par_v+const_species_E);
	
% Species:   id = H, name = normal cells, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = T, name = Tumour cells, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = I, name = Immune cells, involved in a rule 	xdot(3) = x(3);
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


