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
% Model name = Queralt2006_MitoticExit_Cdc55DownregulationBySeparase
%
% is http://identifiers.org/biomodels.db/MODEL5951818256
% is http://identifiers.org/biomodels.db/BIOMD0000000409
% isDescribedBy http://identifiers.org/pubmed/16713564
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 0.997;
	x0(2) = 0.0;
	x0(3) = 3.8E-5;
	x0(4) = 0;
	x0(5) = 0.6;
	x0(6) = 0;
	x0(7) = 0.25;
	x0(8) = 0;
	x0(9) = 0.248;
	x0(10) = 0.098;
	x0(11) = 0.485;
	x0(12) = 0.99;
	x0(13) = 0.945;
	x0(14) = 0;
	x0(15) = 0.00389;
	x0(16) = 0;
	x0(17) = 0.0257;
	x0(18) = 0;
	x0(19) = 8.0E-6;
	x0(20) = 0;
	x0(21) = 0;
	x0(22) = 0;


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
% Parameter:   id =  Cdk, name = Cdk activity
% Parameter:   id =  ksclb2, name = ksclb2
	global_par_ksclb2=0.03;
% Parameter:   id =  kdclb2, name = kdclb2
	global_par_kdclb2=0.03;
% Parameter:   id =  kadclb2, name = kadclb2
	global_par_kadclb2=0.2;
% Parameter:   id =  kaadclb2, name = kaadclb2
	global_par_kaadclb2=2.0;
% Parameter:   id =  kscdc20, name = kscdc20
	global_par_kscdc20=0.015;
% Parameter:   id =  kdcdc20, name = kdcdc20
	global_par_kdcdc20=0.05;
% Parameter:   id =  kadcdc20, name = kadcdc20
	global_par_kadcdc20=2.0;
% Parameter:   id =  kdcdh, name = kdcdh
	global_par_kdcdh=0.01;
% Parameter:   id =  kadcdh, name = kadcdh
	global_par_kadcdh=1.0;
% Parameter:   id =  kapcdh, name = kapcdh
	global_par_kapcdh=1.0;
% Parameter:   id =  Jcdh, name = Jcdh
	global_par_Jcdh=0.0015;
% Parameter:   id =  Cdh1T, name = Cdh1T
	global_par_Cdh1T=1.0;
% Parameter:   id =  kssecurin, name = kssecurin
	global_par_kssecurin=0.03;
% Parameter:   id =  kdsecurin, name = kdsecurin
	global_par_kdsecurin=0.05;
% Parameter:   id =  kadsecurin, name = kadsecurin
	global_par_kadsecurin=2.0;
% Parameter:   id =  ksseparase, name = ksseparase
	global_par_ksseparase=0.001;
% Parameter:   id =  kdseparase, name = kdseparase
	global_par_kdseparase=0.004;
% Parameter:   id =  lasecurin, name = lasecurin
	global_par_lasecurin=500.0;
% Parameter:   id =  ldsecurin, name = ldsecurin
	global_par_ldsecurin=1.0;
% Parameter:   id =  kad, name = kad
	global_par_kad=0.1;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.45;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.4;
% Parameter:   id =  kap, name = kap
	global_par_kap=2.0;
% Parameter:   id =  Jnet, name = Jnet
	global_par_Jnet=0.2;
% Parameter:   id =  lanet, name = lanet
	global_par_lanet=500.0;
% Parameter:   id =  ldnet, name = ldnet
	global_par_ldnet=1.0;
% Parameter:   id =  Net1T, name = Net1T
	global_par_Net1T=1.0;
% Parameter:   id =  Cdc14T, name = Cdc14T
	global_par_Cdc14T=0.5;
% Parameter:   id =  kspolo, name = kspolo
	global_par_kspolo=0.01;
% Parameter:   id =  kdpolo, name = kdpolo
	global_par_kdpolo=0.01;
% Parameter:   id =  kadpolo, name = kadpolo
	global_par_kadpolo=0.25;
% Parameter:   id =  kapolo, name = kapolo
	global_par_kapolo=0.0;
% Parameter:   id =  kaapolo, name = kaapolo
	global_par_kaapolo=0.5;
% Parameter:   id =  kipolo, name = kipolo
	global_par_kipolo=0.1;
% Parameter:   id =  Jpolo, name = Jpolo
	global_par_Jpolo=0.25;
% Parameter:   id =  katem, name = katem
	global_par_katem=0.0;
% Parameter:   id =  kaatem, name = kaatem
	global_par_kaatem=0.5;
% Parameter:   id =  kitem, name = kitem
	global_par_kitem=0.1;
% Parameter:   id =  kaitem, name = kaitem
	global_par_kaitem=1.0;
% Parameter:   id =  Jtem1, name = Jtem1
	global_par_Jtem1=0.005;
% Parameter:   id =  Tem1T, name = Tem1T
	global_par_Tem1T=1.0;
% Parameter:   id =  kacdc15, name = kacdc15
	global_par_kacdc15=0.02;
% Parameter:   id =  kaacdc15, name = kaacdc15
	global_par_kaacdc15=0.5;
% Parameter:   id =  kicdc15, name = kicdc15
	global_par_kicdc15=0.0;
% Parameter:   id =  kaicdc15, name = kaicdc15
	global_par_kaicdc15=0.2;
% Parameter:   id =  Jcdc15, name = Jcdc15
	global_par_Jcdc15=0.2;
% Parameter:   id =  lamen, name = lamen
	global_par_lamen=10.0;
% Parameter:   id =  ldmen, name = ldmen
	global_par_ldmen=0.1;
% Parameter:   id =  Cdc15T, name = Cdc15T
	global_par_Cdc15T=1.0;
% Parameter:   id =  kpp, name = kpp
	global_par_kpp=0.1;
% Parameter:   id =  ki, name = ki
	global_par_ki=20.0;
% Parameter:   id =  PP2AT, name = PP2AT
	global_par_PP2AT=1.0;
% Parameter:   id =  Inh, name = Inh
	global_par_Inh=0.0;
% assignmentRule: variable = separase
	x(8)=x(7)-x(9);
% assignmentRule: variable = Cdh1_i
	x(4)=global_par_Cdh1T-x(3);
% assignmentRule: variable = Tem1_i
	x(16)=global_par_Tem1T-x(15);
% assignmentRule: variable = securin
	x(6)=x(5)-x(9);
% assignmentRule: variable = Polo_i
	x(14)=x(12)-x(13);
% assignmentRule: variable = Cdk
	global_par_Cdk=x(1)/(1+global_par_Inh);
% assignmentRule: variable = Net1P
	x(21)=global_par_Net1T-x(10)-x(11);
% assignmentRule: variable = Cdc14
	x(22)=global_par_Cdc14T-x(11);
% assignmentRule: variable = Cdc15_i
	x(18)=global_par_Cdc15T-x(17);
% assignmentRule: variable = PP2A
	x(20)=(1+global_par_kpp*global_par_ki*x(8))/(1+global_par_ki*x(8))*global_par_PP2AT;

% Reaction: id = v1, name = v1
	reaction_v1=global_par_ksclb2;

% Reaction: id = v2, name = v2
	reaction_v2=(global_par_kdclb2+global_par_kadclb2*x(2)+global_par_kaadclb2*x(3))*x(1);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_kscdc20;

% Reaction: id = v4, name = v4
	reaction_v4=(global_par_kdcdc20+global_par_kadcdc20*x(3))*x(2);

% Reaction: id = v5, name = v5
	reaction_v5=(global_par_kdcdh+global_par_kadcdh*x(22))*(global_par_Cdh1T-x(3))/(global_par_Jcdh+global_par_Cdh1T-x(3));

% Reaction: id = v6, name = v6
	reaction_v6=global_par_kapcdh*global_par_Cdk*x(3)/(global_par_Jcdh+x(3));

% Reaction: id = v7, name = v7
	reaction_v7=global_par_kssecurin;

% Reaction: id = v8, name = v8
	reaction_v8=(global_par_kdsecurin+global_par_kadsecurin*x(2))*x(5);

% Reaction: id = v9, name = v9
	reaction_v9=global_par_ksseparase;

% Reaction: id = v10, name = v10
	reaction_v10=global_par_kdseparase*x(7);

% Reaction: id = v11, name = v11
	reaction_v11=global_par_lasecurin*x(6)*x(8)-global_par_ldsecurin*x(9);

% Reaction: id = securinseparase_securindegradation, name = securinseparase securindegradation
	reaction_securinseparase_securindegradation=(global_par_kdsecurin+global_par_kadsecurin*x(2))*x(9);

% Reaction: id = securinseparase_separase_degradation, name = securin:separase separase degradation
	reaction_securinseparase_separase_degradation=global_par_kdseparase*x(9);

% Reaction: id = v13, name = Net1P dephosphorylation
	reaction_v13=(global_par_kad*x(22)+global_par_kd*x(20))*x(21)/(global_par_Jnet+x(21));

% Reaction: id = v14, name = Net1 phosphorylation
	reaction_v14=(global_par_kp*global_par_Cdk+global_par_kap*x(19))*x(10)/(global_par_Jnet+x(10)+x(11));

% Reaction: id = v15, name = v15
	reaction_v15=global_par_lanet*x(10)*x(22);

% Reaction: id = v16, name = v16
	reaction_v16=global_par_ldnet*x(11);

% Reaction: id = v17, name = Net1Cdc14 phosphorylation
	reaction_v17=(global_par_kp*global_par_Cdk+global_par_kap*x(19))*x(11)/(global_par_Jnet+x(10)+x(11));

% Reaction: id = v18, name = v18
	reaction_v18=global_par_kspolo;

% Reaction: id = v19, name = v19
	reaction_v19=(global_par_kdpolo+global_par_kadpolo*x(3))*x(12);

% Reaction: id = v20, name = v20
	reaction_v20=(global_par_kapolo+global_par_kaapolo*global_par_Cdk)*(x(12)-x(13))/(global_par_Jpolo+x(12)-x(13));

% Reaction: id = v21, name = v21
	reaction_v21=global_par_kipolo*x(13)/(global_par_Jpolo+x(13));

% Reaction: id = v22, name = v22
	reaction_v22=(global_par_kdpolo+global_par_kadpolo*x(3))*x(13);

% Reaction: id = v23, name = v23
	reaction_v23=(global_par_katem+global_par_kaatem*x(13))*(global_par_Tem1T-x(15))/(global_par_Jtem1+global_par_Tem1T-x(15));

% Reaction: id = v24, name = v24
	reaction_v24=(global_par_kitem+global_par_kaitem*x(20))*x(15)/(global_par_Jtem1+x(15));

% Reaction: id = v25, name = v25
	reaction_v25=(global_par_kacdc15+global_par_kaacdc15*x(22))*(global_par_Cdc15T-x(17))/(global_par_Jcdc15+global_par_Cdc15T-x(17));

% Reaction: id = v26, name = v26
	reaction_v26=(global_par_kicdc15+global_par_kaicdc15*global_par_Cdk)*x(17)/(global_par_Jcdc15+x(17));

% Reaction: id = v27, name = v27
	reaction_v27=global_par_lamen*(x(15)-x(19))*(x(17)-x(19));

% Reaction: id = v28, name = v28
	reaction_v28=global_par_ldmen*x(19);

% Reaction: id = v29, name = Tem1 degradation in MEN
	reaction_v29=(global_par_kitem+global_par_kaitem*x(20))*x(19)/(global_par_Jtem1+x(15));

% Reaction: id = v30, name = Cdc15 degradation in MEN
	reaction_v30=(global_par_kicdc15+global_par_kaicdc15*global_par_Cdk)*x(19)/(global_par_Jcdc15+x(17));

% Species:   id = AA, name = AA, constant	const_species_AA=1.0;

% Species:   id = degr, name = degr, constant	const_species_degr=1.0;

	xdot=zeros(22,1);
	
% Species:   id = Clb2, name = Clb2, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = Cdc20, name = Cdc20, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = Cdh1_i, name = inactive Cdh1, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = securinT, name = securinT, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = securin, name = securin, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = separaseT, name = separaseT, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = separase, name = separase, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = securinseparase, name = securin:separase, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_securinseparase_securindegradation) + (-1.0 * reaction_securinseparase_separase_degradation));
	
% Species:   id = Net1, name = Net1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v16));
	
% Species:   id = Net1Cdc14, name = Net1Cdc14, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v16) + (-1.0 * reaction_v17));
	
% Species:   id = PoloT, name = PoloT, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_v18) + (-1.0 * reaction_v19));
	
% Species:   id = Polo, name = Polo, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = Polo_i, name = inactive Polo, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = Tem1, name = Tem1, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v24));
	
% Species:   id = Tem1_i, name = inactive Tem1, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = Cdc15, name = Cdc15, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_v25) + (-1.0 * reaction_v26));
	
% Species:   id = Cdc15_i, name = inactive Cdc15, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = MEN, name = MEN, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_v27) + (-1.0 * reaction_v28) + (-1.0 * reaction_v29) + (-1.0 * reaction_v30));
	
% Species:   id = PP2A, name = PP2A, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = Net1P, name = Net1P, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = Cdc14, name = Cdc14, involved in a rule 	xdot(22) = x(22);
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


