
#
# This file is automatically generated with 
# the System Biology Format Converter (http://sbfc.sourceforge.net/)
# from an SBML file.
#
# The conversion system has the following limitations:
#  - You may have to re order some reactions and Assignment Rules definition
#  - Delays are not taken into account
#  - You should change the lsode parameters (start, end, steps) to get better results
#

#
# The following line is there to be sure that Octave think that this file 
# is a script and not function file
#
1;

#
# Model name = Phillips2007_AscendingArousalSystem_SleepWakeDynamics
#
# is urn:miriam:biomodels.db:MODEL1006230025
# isDescribedBy urn:miriam:pubmed:17440218
#
function z=pow(x,y),z=x^y;endfunction
function z=root(x,y),z=y^(1/x);endfunction
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		endif
	end
	if foundResult == 0
		result = varargin{numArgs};
	endif
z = result;
endfunction

function xdot=f(x,t)
# Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
# Parameter:   id =  Qv, name = Qv
# Parameter:   id =  Vv, name = Vv
# Parameter:   id =  tau_v, name = tau_v
	global_par_tau_v=10.0;
# Parameter:   id =  v_vm, name = v_vm
	global_par_v_vm=-1.9;
# Parameter:   id =  Qa, name = Qa
# Parameter:   id =  Va, name = Va
# Parameter:   id =  Vao, name = Vao
	global_par_Vao=1.0;
# Parameter:   id =  Qm, name = Qm
# Parameter:   id =  Vm, name = Vm
# Parameter:   id =  tau_m, name = tau_m
	global_par_tau_m=10.0;
# Parameter:   id =  v_mv, name = v_mv
	global_par_v_mv=-1.9;
# Parameter:   id =  v_maQao, name = v_maQao
	global_par_v_maQao=1.0;
# Parameter:   id =  H, name = H
# Parameter:   id =  chi, name = chi
	global_par_chi=10.8;
# Parameter:   id =  mu, name = mu
	global_par_mu=3.6;
# Parameter:   id =  D, name = D
# Parameter:   id =  C, name = C
# Parameter:   id =  c0, name = c0
	global_par_c0=1.0;
# Parameter:   id =  omega, name = omega
# Parameter:   id =  v_vc, name = v_vc
	global_par_v_vc=-6.3;
# Parameter:   id =  v_vh, name = v_vh
	global_par_v_vh=0.19;
# Parameter:   id =  Qmax, name = Qmax
	global_par_Qmax=100.0;
# Parameter:   id =  theta, name = theta
	global_par_theta=10.0;
# Parameter:   id =  sigma, name = sigma
	global_par_sigma=3.0;
# rateRule: variable = Vv
global_par_Vv = x(1);
# rateRule: variable = Vm
global_par_Vm = x(2);
# rateRule: variable = H
global_par_H = x(3);
# assignmentRule: variable = Qv
	global_par_Qv=global_par_Qmax/(1+exp((-(global_par_Vv-global_par_theta))/global_par_sigma));
# assignmentRule: variable = Qa
	global_par_Qa=global_par_Qmax/(1+exp((-(global_par_Va-global_par_theta))/global_par_sigma));
# assignmentRule: variable = Va
	global_par_Va=global_par_Vao;
# assignmentRule: variable = Qm
	global_par_Qm=global_par_Qmax/(1+exp((-(global_par_Vm-global_par_theta))/global_par_sigma));
# assignmentRule: variable = D
	global_par_D=global_par_v_vc*global_par_C+global_par_v_vh*global_par_H;
# assignmentRule: variable = C
	global_par_C=global_par_c0+cos(global_par_omega*time);
# assignmentRule: variable = omega
	global_par_omega=2*pi/24;
	xdot=zeros(3,1);
	# rateRule: variable = Vv
	xdot(1) = (global_par_v_vm*global_par_Qm+global_par_D-global_par_Vv)/global_par_tau_v/3600;

	# rateRule: variable = Vm
	xdot(2) = (global_par_v_maQao+global_par_v_mv*global_par_Qv-global_par_Vm)/global_par_tau_m/3600;

	# rateRule: variable = H
	xdot(3) = (global_par_mu*global_par_Qm-global_par_H)/global_par_chi;

endfunction

#Initial conditions vector
x0=zeros(3,1);
x0(1) = 0.0;
x0(2) = 0.0;
x0(3) = 15.0;


#Creating linespace
t=linspace(0,90,100);

#Solving equations
x=lsode("f",x0,t);

#ploting the results
plot(t,x);
