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
% Model name = Whitcomb2004_Bicarbonate_Pancreas
%
% is http://identifiers.org/biomodels.db/MODEL1104180000
% is http://identifiers.org/biomodels.db/BIOMD0000000327
% isDescribedBy http://identifiers.org/pubmed/15257112
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 15.0;
	x0(2) = 60.0;
	x0(3) = 14.0;
	x0(4) = 32.0;
	x0(5) = 0;


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

% Compartment: id = plasma, name = plasma, constant
	compartment_plasma=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = lumen, name = lumen, constant
	compartment_lumen=0.1;
% Parameter:   id =  g_bi, name = g_bi
	global_par_g_bi=0.2;
% Parameter:   id =  g_cl, name = g_cl
	global_par_g_cl=1.0;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=50.0;
% Parameter:   id =  kbi, name = kbi
	global_par_kbi=1.0;
% Parameter:   id =  kcl, name = kcl
	global_par_kcl=10.0;
% Parameter:   id =  gnbc, name = gnbc
	global_par_gnbc=2.0;
% Parameter:   id =  gapl, name = gapl
	global_par_gapl=0.25;
% Parameter:   id =  gapbl, name = gapbl
	global_par_gapbl=0.005;
% Parameter:   id =  vr, name = vr
	global_par_vr=10.0;
% Parameter:   id =  bi0, name = bi0
	global_par_bi0=15.0;
% Parameter:   id =  buf, name = buf
	global_par_buf=0.1;
% Parameter:   id =  gcftron, name = gcftron
	global_par_gcftron=1.0;
% Parameter:   id =  gcftrbase, name = gcftrbase
	global_par_gcftrbase=7.0E-5;
% Parameter:   id =  ek, name = ek
	global_par_ek=-0.085;
% Parameter:   id =  gk, name = gk
	global_par_gk=1.0;
% Parameter:   id =  r, name = gas constant
	global_par_r=8.31451;
% Parameter:   id =  f, name = Faraday constant
	global_par_f=96485.0;
% Parameter:   id =  temp, name = temp
	global_par_temp=310.0;
% Parameter:   id =  ionstr, name = ionstr
	global_par_ionstr=160.0;
% Parameter:   id =  gnak, name = gnak
	global_par_gnak=3.125;
% Parameter:   id =  np0, name = np0
	global_par_np0=25.0;
% Parameter:   id =  epump, name = epump
	global_par_epump=-0.2;
% Parameter:   id =  gnaleak, name = gnaleak
	global_par_gnaleak=0.4;
% Parameter:   id =  jac, name = jac
	global_par_jac=0.025;
% Parameter:   id =  rat, name = rat
	global_par_rat=0.25;
% Parameter:   id =  ton, name = ton
	global_par_ton=60.0;
% Parameter:   id =  toff, name = toff
	global_par_toff=360.0;
% Parameter:   id =  gcftr, name = gcftr
	global_par_gcftr=NaN;
% Parameter:   id =  eb, name = eb
% Parameter:   id =  enbc, name = enbc
% Parameter:   id =  ec, name = ec
% Parameter:   id =  ena, name = ena
% Parameter:   id =  kccf, name = kccf
% Parameter:   id =  kbcf, name = kbcf
% Parameter:   id =  knbc, name = knbc
% Parameter:   id =  v, name = v
% Parameter:   id =  jnbc, name = jnbc
% Parameter:   id =  jbcftr, name = jbcftr
% Parameter:   id =  jccftr, name = jccftr
% Parameter:   id =  japl, name = japl
% Parameter:   id =  japbl, name = japbl
% Parameter:   id =  jlum, name = jlum
% Parameter:   id =  jnak, name = jnak
% Parameter:   id =  jnaleak, name = jnaleak
% assignmentRule: variable = cl
	x(5)=160-x(4);
% assignmentRule: variable = eb
	global_par_eb=global_par_r*global_par_temp/global_par_f*log(x(1)/x(4));
% assignmentRule: variable = enbc
	global_par_enbc=global_par_r*global_par_temp/global_par_f*log(x(1)^2*x(3)/(const_species_bb^2*const_species_nb));
% assignmentRule: variable = ec
	global_par_ec=global_par_r*global_par_temp/global_par_f*log(x(2)/x(5));
% assignmentRule: variable = ena
	global_par_ena=global_par_r*global_par_temp/global_par_f*log(const_species_nb/x(3));
% assignmentRule: variable = kccf
	global_par_kccf=g(x(2), x(5))*global_par_gcftr*global_par_g_cl;
% assignmentRule: variable = kbcf
	global_par_kbcf=g(x(1), x(4))*global_par_gcftr*global_par_g_bi;
% assignmentRule: variable = knbc
	global_par_knbc=global_par_gnbc;
% assignmentRule: variable = v
	global_par_v=(global_par_knbc*global_par_enbc+global_par_kbcf*global_par_eb+global_par_kccf*global_par_ec+global_par_gk*global_par_ek+global_par_gnaleak*global_par_ena)/(global_par_knbc+global_par_kbcf+global_par_kccf+global_par_gk);
% assignmentRule: variable = jnbc
	global_par_jnbc=global_par_knbc*(global_par_v-global_par_enbc);
% assignmentRule: variable = jbcftr
	global_par_jbcftr=global_par_kbcf*(global_par_v-global_par_eb);
% assignmentRule: variable = jccftr
	global_par_jccftr=global_par_kccf*(global_par_v-global_par_ec);
% assignmentRule: variable = japl
	global_par_japl=ap(x(4), x(1), x(5), x(2), global_par_kbi, global_par_kcl)*global_par_gapl;
% assignmentRule: variable = japbl
	global_par_japbl=ap(const_species_bb, x(1), const_species_cb, x(2), global_par_kbi, global_par_kcl)*global_par_gapbl;
% assignmentRule: variable = jlum
	global_par_jlum=((-(global_par_jccftr+global_par_jbcftr))*global_par_vr+global_par_jac*(1+global_par_rat))/global_par_ionstr;
% assignmentRule: variable = jnak
	global_par_jnak=global_par_gnak*(global_par_v-global_par_epump)*(x(3)/global_par_np0)^3;
% assignmentRule: variable = jnaleak
	global_par_jnaleak=global_par_gnaleak*(global_par_v-global_par_ena);

% Reaction: id = nbc
	reaction_nbc=compartment_cell*global_par_zeta*global_par_japl;

% Reaction: id = bcftr
	reaction_bcftr=compartment_cell*global_par_zeta*global_par_jbcftr;

% Reaction: id = ccftr
	reaction_ccftr=compartment_cell*global_par_zeta*global_par_jccftr;

% Reaction: id = apl
	reaction_apl=compartment_cell*global_par_zeta*global_par_japl;

% Reaction: id = apbl
	reaction_apbl=compartment_cell*global_par_zeta*global_par_japbl;

% Reaction: id = nak
	reaction_nak=compartment_cell*global_par_zeta*global_par_jnak;

% Reaction: id = naleak
	reaction_naleak=compartment_cell*global_par_zeta*global_par_jnaleak;

% Reaction: id = buffering
	reaction_buffering=compartment_cell*global_par_zeta*global_par_buf*(global_par_bi0-x(1));

% Reaction: id = bac
	reaction_bac=compartment_lumen*global_par_zeta*global_par_jac*global_par_rat;

% Reaction: id = cac
	reaction_cac=compartment_lumen*global_par_zeta*global_par_jac;

% Reaction: id = outflow
	reaction_outflow=compartment_lumen*global_par_zeta*global_par_jlum*x(4);

% Species:   id = bb, name = HCO3-, constant	const_species_bb=22.0;

% Species:   id = cb, name = CL-, constant	const_species_cb=130.0;

% Species:   id = nb, name = Na+, constant	const_species_nb=140.0;

%Event: id=
	event_=t >= global_par_ton;

	if(event_) 
		global_par_gcftr=global_par_gcftron;
	end

%Event: id=
	event_=t >= global_par_toff;

	if(event_) 
		global_par_gcftr=global_par_gcftrbase;
	end

	xdot=zeros(5,1);
	
% Species:   id = bi, name = HCO3-, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 2.0 * reaction_nbc) + ( 1.0 * reaction_bcftr) + ( 1.0 * reaction_apl) + ( 1.0 * reaction_apbl) + ( 1.0 * reaction_buffering));
	
% Species:   id = ci, name = CL-, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_ccftr) + (-1.0 * reaction_apl) + (-1.0 * reaction_apbl));
	
% Species:   id = ni, name = Na+, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_nbc) + (-1.0 * reaction_nak) + (-1.0 * reaction_naleak));
	
% Species:   id = bl, name = HCO3-, affected by kineticLaw
	xdot(4) = (1/(compartment_lumen))*((-1.0 * reaction_bcftr) + (-1.0 * reaction_apl) + ( 1.0 * reaction_bac) + (-1.0 * reaction_outflow));
	
% Species:   id = cl, name = CL-, involved in a rule 	xdot(5) = x(5);
end

function z=ap(ao,ai,bo,bi,ka,kb), z=((ao*bi-bo*ai)/(ka*kb*((1+ai/ka+bi/kb)*(ao/ka+bo/kb)+(1+ao/ka+bo/kb)*(ai/ka+bi/kb))));end

function z=g(xi,xo), z=(xi*xo*log(xi/xo)/(xi-xo));end

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


