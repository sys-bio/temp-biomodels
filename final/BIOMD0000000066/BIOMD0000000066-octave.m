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
% Model name = Chassagnole2001_Threonine Synthesis
%
% is http://identifiers.org/biomodels.db/MODEL6624131052
% is http://identifiers.org/biomodels.db/BIOMD0000000066
% isDescribedBy http://identifiers.org/pubmed/11368770
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 2.0;
	x0(7) = 2.0;
	x0(8) = 0.0;
	x0(9) = 2.0;
	x0(10) = 0.0;
	x0(11) = 10.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;

% Reaction: id = vak, name = Aspartate Kinase	% Local Parameter:   id =  vm11, name = vm11
	reaction_vak_vm11=0.15;
	% Local Parameter:   id =  keqak, name = keqak
	reaction_vak_keqak=6.4E-4;
	% Local Parameter:   id =  k11, name = k11
	reaction_vak_k11=0.97;
	% Local Parameter:   id =  k1thr, name = k1thr
	reaction_vak_k1thr=0.167;
	% Local Parameter:   id =  nak1, name = nak1
	reaction_vak_nak1=4.09;
	% Local Parameter:   id =  alpha, name = alpha
	reaction_vak_alpha=2.47;
	% Local Parameter:   id =  k1aspp, name = k1aspp
	reaction_vak_k1aspp=0.017;
	% Local Parameter:   id =  k1atp, name = k1atp
	reaction_vak_k1atp=0.98;
	% Local Parameter:   id =  k1adp, name = k1adp
	reaction_vak_k1adp=0.25;
	% Local Parameter:   id =  vm13, name = vm13
	reaction_vak_vm13=0.0722;
	% Local Parameter:   id =  lys, name = lys
	reaction_vak_lys=0.46;
	% Local Parameter:   id =  k1lys, name = k1lys
	reaction_vak_k1lys=0.391;
	% Local Parameter:   id =  nak3, name = nak3
	reaction_vak_nak3=2.8;
	% Local Parameter:   id =  k13, name = k13
	reaction_vak_k13=0.32;
	% Local Parameter:   id =  k13aspp, name = k13aspp
	reaction_vak_k13aspp=0.017;
	% Local Parameter:   id =  k13atp, name = k13atp
	reaction_vak_k13atp=0.22;
	% Local Parameter:   id =  k13adp, name = k13adp
	reaction_vak_k13adp=0.25;

	reaction_vak=compartment_compartment*(reaction_vak_vm11*(x(7)*x(11)-x(1)*x(10)/reaction_vak_keqak)/((reaction_vak_k11*(1+(x(6)/reaction_vak_k1thr)^reaction_vak_nak1)/(1+(x(6)/(reaction_vak_alpha*reaction_vak_k1thr))^reaction_vak_nak1)+reaction_vak_k11*x(1)/reaction_vak_k1aspp+x(7))*(reaction_vak_k1atp*(1+x(10)/reaction_vak_k1adp)+x(11)))+reaction_vak_vm13*(x(7)*x(11)-x(1)*x(10)/reaction_vak_keqak)/((1+(reaction_vak_lys/reaction_vak_k1lys)^reaction_vak_nak3)*(reaction_vak_k13*(1+x(1)/reaction_vak_k13aspp)+x(7))*(reaction_vak_k13atp*(1+x(10)/reaction_vak_k13adp)+x(11))));

% Reaction: id = vasd, name = Aspartate semialdehyde dehydrogenase	% Local Parameter:   id =  vm2f, name = vm2f
	reaction_vasd_vm2f=0.1812;
	% Local Parameter:   id =  k2eq, name = k2eq
	reaction_vasd_k2eq=56.4150334574039;
	% Local Parameter:   id =  k2aspp, name = k2aspp
	reaction_vasd_k2aspp=0.022;
	% Local Parameter:   id =  k2asa, name = k2asa
	reaction_vasd_k2asa=0.11;
	% Local Parameter:   id =  k2p, name = k2p
	reaction_vasd_k2p=10.0;
	% Local Parameter:   id =  k2nadph, name = k2nadph
	reaction_vasd_k2nadph=0.029;
	% Local Parameter:   id =  k2nadp, name = k2nadp
	reaction_vasd_k2nadp=0.144;

	reaction_vasd=compartment_compartment*reaction_vasd_vm2f*(x(1)*x(9)-x(2)*x(8)*x(5)/reaction_vasd_k2eq)/((reaction_vasd_k2aspp*(1+x(2)/reaction_vasd_k2asa)*(1+x(5)/reaction_vasd_k2p)+x(1))*(reaction_vasd_k2nadph*(1+x(8)/reaction_vasd_k2nadp)+x(9)));

% Reaction: id = vhdh, name = Homoserine dehydrogenase	% Local Parameter:   id =  vm3f, name = vm3f
	reaction_vhdh_vm3f=1.001;
	% Local Parameter:   id =  k3eq, name = k3eq
	reaction_vhdh_k3eq=3162.27766016838;
	% Local Parameter:   id =  k3thr, name = k3thr
	reaction_vhdh_k3thr=0.097;
	% Local Parameter:   id =  nhdh1, name = nhdh1
	reaction_vhdh_nhdh1=1.41;
	% Local Parameter:   id =  alpha3, name = alpha3
	reaction_vhdh_alpha3=3.93;
	% Local Parameter:   id =  k3asa, name = k3asa
	reaction_vhdh_k3asa=0.24;
	% Local Parameter:   id =  k3hs, name = k3hs
	reaction_vhdh_k3hs=3.39;
	% Local Parameter:   id =  k3nadph, name = k3nadph
	reaction_vhdh_k3nadph=0.037;
	% Local Parameter:   id =  k3nadp, name = k3nadp
	reaction_vhdh_k3nadp=0.067;

	reaction_vhdh=compartment_compartment*reaction_vhdh_vm3f*(x(2)*x(9)-x(3)*x(8)/reaction_vhdh_k3eq)/((1+(x(6)/reaction_vhdh_k3thr)^reaction_vhdh_nhdh1)/(1+(x(6)/(reaction_vhdh_alpha3*reaction_vhdh_k3thr))^reaction_vhdh_nhdh1)*(reaction_vhdh_k3asa+x(2)+x(3)*reaction_vhdh_k3asa/reaction_vhdh_k3hs)*(reaction_vhdh_k3nadph*(1+x(8)/reaction_vhdh_k3nadp)+x(9)));

% Reaction: id = vtsy, name = Threonine synthase	% Local Parameter:   id =  vm5, name = vm5
	reaction_vtsy_vm5=0.0434;
	% Local Parameter:   id =  k5hsp, name = k5hsp
	reaction_vtsy_k5hsp=0.31;

	reaction_vtsy=compartment_compartment*reaction_vtsy_vm5*x(4)/(x(4)+reaction_vtsy_k5hsp);

% Reaction: id = vhk, name = Homoserine kinase	% Local Parameter:   id =  vm4f, name = vm4f
	reaction_vhk_vm4f=0.1;
	% Local Parameter:   id =  lys, name = lys
	reaction_vhk_lys=0.46;
	% Local Parameter:   id =  k4lys, name = k4lys
	reaction_vhk_k4lys=9.45;
	% Local Parameter:   id =  k4atp, name = k4atp
	reaction_vhk_k4atp=0.072;
	% Local Parameter:   id =  k4ihs, name = k4ihs
	reaction_vhk_k4ihs=4.7;
	% Local Parameter:   id =  k4hs, name = k4hs
	reaction_vhk_k4hs=0.11;
	% Local Parameter:   id =  k4thr, name = k4thr
	reaction_vhk_k4thr=1.09;
	% Local Parameter:   id =  k4iatp, name = k4iatp
	reaction_vhk_k4iatp=4.35;

	reaction_vhk=compartment_compartment*reaction_vhk_vm4f*x(3)*x(11)/((1+reaction_vhk_lys/reaction_vhk_k4lys)*(x(11)+reaction_vhk_k4atp*(1+x(3)/reaction_vhk_k4ihs))*(x(3)+reaction_vhk_k4hs*(1+x(6)/reaction_vhk_k4thr)*(1+x(11)/reaction_vhk_k4iatp)));

% Reaction: id = vnadph_endo, name = Endogenous consumption of NADPH	% Local Parameter:   id =  knadph, name = knadph
	reaction_vnadph_endo_knadph=5.4E-6;
	% Local Parameter:   id =  prot, name = Protein
	reaction_vnadph_endo_prot=202.0;

	reaction_vnadph_endo=compartment_compartment*reaction_vnadph_endo_prot*reaction_vnadph_endo_knadph*x(9);

% Reaction: id = vatpase, name = ATPase	% Local Parameter:   id =  katpase, name = katpase
	reaction_vatpase_katpase=4.1E-5;
	% Local Parameter:   id =  prot, name = Protein
	reaction_vatpase_prot=202.0;

	reaction_vatpase=compartment_compartment*reaction_vatpase_prot*reaction_vatpase_katpase;

	xdot=zeros(11,1);
	
% Species:   id = aspp, name = Aspartyl phosphate, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_vak) + (-1.0 * reaction_vasd));
	
% Species:   id = asa, name = Aspartate beta-semialdehyde, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_vasd) + (-1.0 * reaction_vhdh));
	
% Species:   id = hs, name = Homoserine, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_vhdh) + (-1.0 * reaction_vhk));
	
% Species:   id = hsp, name = O-Phospho-homoserine, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_vtsy) + ( 1.0 * reaction_vhk));
	
% Species:   id = phos, name = Phos, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_vasd) + ( 1.0 * reaction_vtsy) + ( 1.0 * reaction_vatpase));
	
% Species:   id = thr, name = Threonine, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_vtsy));
	
% Species:   id = asp, name = Aspartate, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_vak));
	
% Species:   id = nadp, name = NADP, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_vasd) + ( 1.0 * reaction_vhdh) + ( 1.0 * reaction_vnadph_endo));
	
% Species:   id = nadph, name = NADPH, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_vasd) + (-1.0 * reaction_vhdh) + (-1.0 * reaction_vnadph_endo));
	
% Species:   id = adp, name = ADP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_vak) + ( 1.0 * reaction_vhk) + ( 1.0 * reaction_vatpase));
	
% Species:   id = atp, name = ATP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_vak) + (-1.0 * reaction_vhk) + (-1.0 * reaction_vatpase));
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


