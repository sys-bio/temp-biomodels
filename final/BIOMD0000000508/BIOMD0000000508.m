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
% Model name = Barrack2014 - Calcium/cell cycle coupling - Cyclin D dependent ATP release
%
% is http://identifiers.org/biomodels.db/MODEL1401200000
% is http://identifiers.org/biomodels.db/BIOMD0000000508
% isDescribedBy http://identifiers.org/pubmed/24434742
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000168
% isDerivedFrom http://identifiers.org/pubmed/16055527
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(17) = 0.0;
	x0(18) = 1.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
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
	x0(15) = 0.0;
	x0(16) = 0.0;


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
% Parameter:   id =  addash, name = addash
	global_par_addash=0.41;
% Parameter:   id =  vatp_s, name = vatp_s
	global_par_vatp_s=50.0;
% Parameter:   id =  smoothness, name = smoothness
	global_par_smoothness=0.01;
% Parameter:   id =  vdeg, name = vdeg
	global_par_vdeg=2.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.083;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  ae, name = ae
	global_par_ae=0.16;
% Parameter:   id =  ax, name = ax
	global_par_ax=0.08;
% Parameter:   id =  k, name = k
	global_par_k=0.05;
% Parameter:   id =  qd, name = qd
	global_par_qd=0.6;
% Parameter:   id =  qe, name = qe
	global_par_qe=0.6;
% Parameter:   id =  qx, name = qx
	global_par_qx=0.8;
% Parameter:   id =  f, name = f
	global_par_f=0.2;
% Parameter:   id =  g, name = g
	global_par_g=0.528;
% Parameter:   id =  ps, name = ps
	global_par_ps=0.6;
% Parameter:   id =  pd, name = pd
	global_par_pd=0.48;
% Parameter:   id =  pe, name = pe
	global_par_pe=0.096;
% Parameter:   id =  px, name = px
	global_par_px=0.48;
% Parameter:   id =  ddd, name = ddd
	global_par_ddd=0.4;
% Parameter:   id =  dee, name = dee
	global_par_dee=0.2;
% Parameter:   id =  dxx, name = dxx
	global_par_dxx=1.04;
% Parameter:   id =  af, name = af
	global_par_af=0.9;
% Parameter:   id =  rt, name = rt
	global_par_rt=2.5;
% Parameter:   id =  yo, name = yo
	global_par_yo=1.5;
% Parameter:   id =  gf, name = gf
	global_par_gf=6.3;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=0.0625;
% Parameter:   id =  kkdeg, name = kkdeg
	global_par_kkdeg=50.0;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.017;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.15;
% Parameter:   id =  rhstar, name = rhstar
	global_par_rhstar=0.6;
% Parameter:   id =  dip, name = dip
	global_par_dip=280.0;
% Parameter:   id =  krel, name = krel
	global_par_krel=10.0;
% Parameter:   id =  ip3min, name = ip3min
	global_par_ip3min=0.012;
% Parameter:   id =  datpp, name = datpp
	global_par_datpp=300.0;
% Parameter:   id =  kr, name = kr
	global_par_kr=25.0;
% Parameter:   id =  scale, name = scale
	global_par_scale=3600.0;
% Parameter:   id =  dcrit, name = dcrit
	global_par_dcrit=0.5;
% Parameter:   id =  ymax, name = ymax
	global_par_ymax=500.0;
% Parameter:   id =  cabasil, name = cabasil
	global_par_cabasil=0.02055236;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.0159835;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.514987;
% Parameter:   id =  p3, name = p3
	global_par_p3=1.31319;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.332195;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.787902;
% Parameter:   id =  m, name = m
	global_par_m=24.1946;
% Parameter:   id =  n, name = n
	global_par_n=9.79183;
% Parameter:   id =  dist, name = dist
	global_par_dist=50.0;
% Parameter:   id =  ip30, name = ip30
	global_par_ip30=0.013;
% rateRule: variable = d
x(1) = x(17);
% assignmentRule: variable = ad
	x(2)=global_par_addash+global_par_gamma*(x(16)-global_par_p1);
% rateRule: variable = e
x(3) = x(18);
% rateRule: variable = r
x(4) = x(19);
% rateRule: variable = rs
x(5) = x(20);
% rateRule: variable = x
x(6) = x(21);
% rateRule: variable = ip3
x(7) = x(22);
% assignmentRule: variable = kg
	x(8)=global_par_kd/global_par_ka;
% assignmentRule: variable = gstar
	x(9)=(x(10)+x(15))/(x(8)+x(15)+x(10));
% assignmentRule: variable = ro
	x(10)=x(13)/(global_par_kr+x(13));
% assignmentRule: variable = ip3con
	x(11)=(tanh((x(7)-global_par_ip3min)/0.01)+1)/2;
% assignmentRule: variable = dcon
	x(12)=(tanh((x(1)-global_par_dcrit)/0.01)+1)/2;
% rateRule: variable = atp
x(13) = x(23);
% rateRule: variable = y
x(14) = x(24);
% assignmentRule: variable = delta
	x(15)=x(8)*global_par_kdeg*global_par_ip30/(global_par_rhstar-global_par_kdeg*global_par_ip30);
% assignmentRule: variable = ca
	x(16)=global_par_p1+global_par_p2*x(7)^global_par_m/(global_par_p3^global_par_m+x(7)^global_par_m)+global_par_p4*x(7)^global_par_n/(global_par_p5^global_par_n+x(7)^global_par_n);

	xdot=zeros(24,1);
	% rateRule: variable = d
	xdot(17) = x(2)*global_par_k*global_par_gf/(1+global_par_k*global_par_gf)-global_par_ddd*x(3)*x(1);
	% rateRule: variable = e
	xdot(18) = global_par_ae*(1+global_par_af*(global_par_yo-x(5)))-global_par_dee*x(6)*x(3);
	% rateRule: variable = r
	xdot(19) = global_par_px*(global_par_rt-x(5)-x(4))*x(6)/(global_par_qx+(global_par_rt-x(5)-x(4))+x(6))-global_par_ps*(global_par_yo-x(5))*x(4);
	% rateRule: variable = rs
	xdot(20) = global_par_ps*(global_par_yo-x(5))*x(4)-global_par_pd*x(5)*x(1)/(global_par_qd+x(5)+x(1))-global_par_pe*x(5)*x(3)/(global_par_qe+x(5)+x(3));
	% rateRule: variable = x
	xdot(21) = global_par_ax*x(3)+global_par_f*(global_par_yo-x(5))+global_par_g*x(6)^2*x(3)-global_par_dxx*x(6);
	% rateRule: variable = ip3
	xdot(22) = global_par_scale*(global_par_rhstar*x(9)-global_par_kdeg*x(7));
	% rateRule: variable = atp
	xdot(23) = global_par_scale*(global_par_vatp_s*(x(14)-x(13))*x(12)*x(11)*(x(7)-global_par_ip3min)/(global_par_krel+x(7))-global_par_vdeg*x(13)/(global_par_kkdeg+x(13)));
	% rateRule: variable = y
	xdot(24) = global_par_scale*(global_par_alpha*(global_par_ymax-x(14))-x(12)*x(11)*global_par_vatp_s*(x(14)-x(13))*(x(7)-global_par_ip3min)/(global_par_krel+x(7)));
	
% Species:   id = d, name = d, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = ad, name = ad, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = e, name = e, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = r, name = r, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = rs, name = rs, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = x, name = x, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = ip3, name = ip3, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = kg, name = kg, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = gstar, name = gstar, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = ro, name = ro, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = ip3con, name = ip3con, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = dcon, name = dcon, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = atp, name = atp, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = y, name = y, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = delta, name = delta, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = ca, name = ca, defined in a rule 	xdot(16) = x(16);
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


