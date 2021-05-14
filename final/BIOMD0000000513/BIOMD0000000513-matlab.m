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
% Model name = Kerkhoven2013 - Glycolysis in T.brucei - MODEL A
%
% is http://identifiers.org/biomodels.db/MODEL1401310000
% is http://identifiers.org/biomodels.db/BIOMD0000000513
% isDescribedBy http://identifiers.org/pubmed/24339766
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000428
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.1;
	x0(2) = 2.23132912;
	x0(3) = 0.2405;
	x0(4) = 8.483130623;
	x0(5) = 1.519;
	x0(6) = 0.5;
	x0(7) = 1.3165;
	x0(8) = 0.1;
	x0(9) = 0.5;
	x0(10) = 0.3417;
	x0(11) = 0.5;
	x0(12) = 0.1;
	x0(13) = 0.1;
	x0(14) = 10.0;
	x0(15) = 2.0;
	x0(16) = 10.0;
	x0(17) = 2.5;
	x0(18) = 2.76867088;
	x0(19) = 10.51686938;
	x0(20) = 1.0;
	x0(21) = 4.2405;
	x0(22) = 0.1;
	x0(23) = 2.2418;
	x0(24) = 2.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=5.4549;
% Compartment: id = glycosome, name = glycosome, constant
	compartment_glycosome=0.2451;
% Compartment: id = default, name = default, constant
	compartment_default=1.0;

% Reaction: id = TPI_g, name = TPI_g	% Local Parameter:   id =  TPI_g_Vmax, name = TPI_g_Vmax
	reaction_TPI_g_TPI_g_Vmax=999.3;
	% Local Parameter:   id =  TPI_g_Keq, name = TPI_g_Keq
	reaction_TPI_g_TPI_g_Keq=0.046;
	% Local Parameter:   id =  TPI_g_KmDHAP, name = TPI_g_KmDHAP
	reaction_TPI_g_TPI_g_KmDHAP=1.2;
	% Local Parameter:   id =  TPI_g_KmGA3P, name = TPI_g_KmGA3P
	reaction_TPI_g_TPI_g_KmGA3P=0.25;

	reaction_TPI_g=v1sub1prod(reaction_TPI_g_TPI_g_Vmax, reaction_TPI_g_TPI_g_Keq, x(4), reaction_TPI_g_TPI_g_KmDHAP, x(17), reaction_TPI_g_TPI_g_KmGA3P);

% Reaction: id = PYK_c, name = PYK_c	% Local Parameter:   id =  PYK_c_Vmax, name = PYK_c_Vmax
	reaction_PYK_c_PYK_c_Vmax=1020.0;
	% Local Parameter:   id =  PYK_c_KmPEP, name = PYK_c_KmPEP
	reaction_PYK_c_PYK_c_KmPEP=0.34;
	% Local Parameter:   id =  PYK_c_KiATP, name = PYK_c_KiATP
	reaction_PYK_c_PYK_c_KiATP=0.57;
	% Local Parameter:   id =  PYK_c_KiADP, name = PYK_c_KiADP
	reaction_PYK_c_PYK_c_KiADP=0.64;
	% Local Parameter:   id =  PYK_c_n, name = PYK_c_n
	reaction_PYK_c_PYK_c_n=2.5;
	% Local Parameter:   id =  PYK_c_KmADP, name = PYK_c_KmADP
	reaction_PYK_c_PYK_c_KmADP=0.114;
	% Local Parameter:   id =  PYK_c_Keq, name = PYK_c_Keq
	reaction_PYK_c_PYK_c_Keq=10800.0;
	% Local Parameter:   id =  PYK_c_KmPyr, name = PYK_c_KmPyr
	reaction_PYK_c_PYK_c_KmPyr=50.0;
	% Local Parameter:   id =  PYK_c_KmATP, name = PYK_c_KmATP
	reaction_PYK_c_PYK_c_KmATP=15.0;

	reaction_PYK_c=reaction_PYK_c_PYK_c_Vmax*x(7)*(1-x(14)*x(10)/(reaction_PYK_c_PYK_c_Keq*x(20)*x(7)))*(x(20)/(reaction_PYK_c_PYK_c_KmPEP*(1+x(7)/reaction_PYK_c_PYK_c_KiADP+x(10)/reaction_PYK_c_PYK_c_KiATP)))^reaction_PYK_c_PYK_c_n/(reaction_PYK_c_PYK_c_KmADP*(1+(x(20)/(reaction_PYK_c_PYK_c_KmPEP*(1+x(7)/reaction_PYK_c_PYK_c_KiADP+x(10)/reaction_PYK_c_PYK_c_KiATP)))^reaction_PYK_c_PYK_c_n+x(14)/reaction_PYK_c_PYK_c_KmPyr)*(1+x(7)/reaction_PYK_c_PYK_c_KmADP+x(10)/reaction_PYK_c_PYK_c_KmATP));

% Reaction: id = PFK_g, name = PFK_g	% Local Parameter:   id =  PFK_g_Vmax, name = PFK_g_Vmax
	reaction_PFK_g_PFK_g_Vmax=1708.0;
	% Local Parameter:   id =  PFK_g_Ki1, name = PFK_g_Ki1
	reaction_PFK_g_PFK_g_Ki1=15.8;
	% Local Parameter:   id =  PFK_g_KmFru6P, name = PFK_g_KmFru6P
	reaction_PFK_g_PFK_g_KmFru6P=0.999;
	% Local Parameter:   id =  PFK_g_KmATP, name = PFK_g_KmATP
	reaction_PFK_g_PFK_g_KmATP=0.0648;
	% Local Parameter:   id =  PFK_g_Keq, name = PFK_g_Keq
	reaction_PFK_g_PFK_g_Keq=1035.0;
	% Local Parameter:   id =  PFK_g_KsATP, name = PFK_g_KsATP
	reaction_PFK_g_PFK_g_KsATP=0.0393;
	% Local Parameter:   id =  PFK_g_KmADP, name = PFK_g_KmADP
	reaction_PFK_g_PFK_g_KmADP=1.0;
	% Local Parameter:   id =  PFK_g_Ki2, name = PFK_g_Ki2
	reaction_PFK_g_PFK_g_Ki2=10.7;

	reaction_PFK_g=reaction_PFK_g_PFK_g_Vmax*reaction_PFK_g_PFK_g_Ki1*x(9)*x(3)*(1-x(16)*x(5)/(reaction_PFK_g_PFK_g_Keq*x(9)*x(3)))/(reaction_PFK_g_PFK_g_KmFru6P*reaction_PFK_g_PFK_g_KmATP*(x(16)+reaction_PFK_g_PFK_g_Ki1)*(reaction_PFK_g_PFK_g_KsATP/reaction_PFK_g_PFK_g_KmATP+x(9)/reaction_PFK_g_PFK_g_KmFru6P+x(3)/reaction_PFK_g_PFK_g_KmATP+x(5)/reaction_PFK_g_PFK_g_KmADP+x(16)*x(5)/(reaction_PFK_g_PFK_g_KmADP*reaction_PFK_g_PFK_g_Ki2)+x(9)*x(3)/(reaction_PFK_g_PFK_g_KmFru6P*reaction_PFK_g_PFK_g_KmATP)));

% Reaction: id = GlcT_g, name = GlcT_g	% Local Parameter:   id =  GlcT_g_k1, name = GlcT_g_k1
	reaction_GlcT_g_GlcT_g_k1=250000.0;
	% Local Parameter:   id =  GlcT_g_k2, name = GlcT_g_k2
	reaction_GlcT_g_GlcT_g_k2=250000.0;

	reaction_GlcT_g=mass_action_rev(reaction_GlcT_g_GlcT_g_k1, x(12), reaction_GlcT_g_GlcT_g_k2, x(13));

% Reaction: id = PGAM_c, name = PGAM_c	% Local Parameter:   id =  PGAM_c_Vmax, name = PGAM_c_Vmax
	reaction_PGAM_c_PGAM_c_Vmax=225.0;
	% Local Parameter:   id =  PGAM_c_Keq, name = PGAM_c_Keq
	reaction_PGAM_c_PGAM_c_Keq=0.17;
	% Local Parameter:   id =  PGAM_c_Km3PGA, name = PGAM_c_Km3PGA
	reaction_PGAM_c_PGAM_c_Km3PGA=0.15;
	% Local Parameter:   id =  PGAM_c_Km2PGA, name = PGAM_c_Km2PGA
	reaction_PGAM_c_PGAM_c_Km2PGA=0.16;

	reaction_PGAM_c=v1sub1prod(reaction_PGAM_c_PGAM_c_Vmax, reaction_PGAM_c_PGAM_c_Keq, x(8), reaction_PGAM_c_PGAM_c_Km3PGA, x(1), reaction_PGAM_c_PGAM_c_Km2PGA);

% Reaction: id = PyrT_c, name = PyrT_c	% Local Parameter:   id =  PyrT_c_Vmax, name = PyrT_c_Vmax
	reaction_PyrT_c_PyrT_c_Vmax=230.0;
	% Local Parameter:   id =  PyrT_c_KmPyr, name = PyrT_c_KmPyr
	reaction_PyrT_c_PyrT_c_KmPyr=1.96;

	reaction_PyrT_c=v1sub(reaction_PyrT_c_PyrT_c_Vmax, x(14), reaction_PyrT_c_PyrT_c_KmPyr);

% Reaction: id = GlcT_c, name = GlcT_c	% Local Parameter:   id =  GlcT_c_Vmax, name = GlcT_c_Vmax
	reaction_GlcT_c_GlcT_c_Vmax=111.7;
	% Local Parameter:   id =  GlcT_c_KmGlc, name = GlcT_c_KmGlc
	reaction_GlcT_c_GlcT_c_KmGlc=1.0;
	% Local Parameter:   id =  GlcT_c_alpha, name = GlcT_c_alpha
	reaction_GlcT_c_GlcT_c_alpha=0.75;

	reaction_GlcT_c=reaction_GlcT_c_GlcT_c_Vmax*(const_species_Glc_e-x(12))/(reaction_GlcT_c_GlcT_c_KmGlc+const_species_Glc_e+x(12)+reaction_GlcT_c_GlcT_c_alpha*const_species_Glc_e*x(12)/reaction_GlcT_c_GlcT_c_KmGlc);

% Reaction: id = ALD_g, name = ALD_g	% Local Parameter:   id =  ALD_g_Vmax, name = ALD_g_Vmax
	reaction_ALD_g_ALD_g_Vmax=560.0;
	% Local Parameter:   id =  ALD_g_KmFru16BP, name = ALD_g_KmFru16BP
	reaction_ALD_g_ALD_g_KmFru16BP=0.009;
	% Local Parameter:   id =  ALD_g_KiATP, name = ALD_g_KiATP
	reaction_ALD_g_ALD_g_KiATP=0.68;
	% Local Parameter:   id =  ALD_g_KiADP, name = ALD_g_KiADP
	reaction_ALD_g_ALD_g_KiADP=1.51;
	% Local Parameter:   id =  ALD_g_KiAMP, name = ALD_g_KiAMP
	reaction_ALD_g_ALD_g_KiAMP=3.65;
	% Local Parameter:   id =  ALD_g_Keq, name = ALD_g_Keq
	reaction_ALD_g_ALD_g_Keq=0.084;
	% Local Parameter:   id =  ALD_g_KmGA3P, name = ALD_g_KmGA3P
	reaction_ALD_g_ALD_g_KmGA3P=0.067;
	% Local Parameter:   id =  ALD_g_KmDHAP, name = ALD_g_KmDHAP
	reaction_ALD_g_ALD_g_KmDHAP=0.015;
	% Local Parameter:   id =  ALD_g_KiGA3P, name = ALD_g_KiGA3P
	reaction_ALD_g_ALD_g_KiGA3P=0.098;

	reaction_ALD_g=reaction_ALD_g_ALD_g_Vmax*x(16)*(1-x(17)*x(4)/(x(16)*reaction_ALD_g_ALD_g_Keq))/(reaction_ALD_g_ALD_g_KmFru16BP*(1+x(3)/reaction_ALD_g_ALD_g_KiATP+x(5)/reaction_ALD_g_ALD_g_KiADP+x(21)/reaction_ALD_g_ALD_g_KiAMP)*(1+x(17)/reaction_ALD_g_ALD_g_KmGA3P+x(4)/reaction_ALD_g_ALD_g_KmDHAP+x(16)/(reaction_ALD_g_ALD_g_KmFru16BP*(1+x(3)/reaction_ALD_g_ALD_g_KiATP+x(5)/reaction_ALD_g_ALD_g_KiADP+x(21)/reaction_ALD_g_ALD_g_KiAMP))+x(17)*x(4)/(reaction_ALD_g_ALD_g_KmGA3P*reaction_ALD_g_ALD_g_KmDHAP)+x(16)*x(17)/(reaction_ALD_g_ALD_g_KmFru16BP*reaction_ALD_g_ALD_g_KiGA3P*(1+x(3)/reaction_ALD_g_ALD_g_KiATP+x(5)/reaction_ALD_g_ALD_g_KiADP+x(21)/reaction_ALD_g_ALD_g_KiAMP))));

% Reaction: id = ENO_c, name = ENO_c	% Local Parameter:   id =  ENO_c_Vmax, name = ENO_c_Vmax
	reaction_ENO_c_ENO_c_Vmax=598.0;
	% Local Parameter:   id =  ENO_c_Keq, name = ENO_c_Keq
	reaction_ENO_c_ENO_c_Keq=4.17;
	% Local Parameter:   id =  ENO_c_Km2PGA, name = ENO_c_Km2PGA
	reaction_ENO_c_ENO_c_Km2PGA=0.054;
	% Local Parameter:   id =  ENO_c_KmPEP, name = ENO_c_KmPEP
	reaction_ENO_c_ENO_c_KmPEP=0.24;

	reaction_ENO_c=v1sub1prod(reaction_ENO_c_ENO_c_Vmax, reaction_ENO_c_ENO_c_Keq, x(1), reaction_ENO_c_ENO_c_Km2PGA, x(20), reaction_ENO_c_ENO_c_KmPEP);

% Reaction: id = HXK_g, name = HXK_g	% Local Parameter:   id =  HXK_g_Vmax, name = HXK_g_Vmax
	reaction_HXK_g_HXK_g_Vmax=1774.68;
	% Local Parameter:   id =  HXK_g_Keq, name = HXK_g_Keq
	reaction_HXK_g_HXK_g_Keq=759.0;
	% Local Parameter:   id =  HXK_g_KmGlc, name = HXK_g_KmGlc
	reaction_HXK_g_HXK_g_KmGlc=0.1;
	% Local Parameter:   id =  HXK_g_KmATP, name = HXK_g_KmATP
	reaction_HXK_g_HXK_g_KmATP=0.116;
	% Local Parameter:   id =  HXK_g_KmGlc6P, name = HXK_g_KmGlc6P
	reaction_HXK_g_HXK_g_KmGlc6P=12.0;
	% Local Parameter:   id =  HXK_g_KmADP, name = HXK_g_KmADP
	reaction_HXK_g_HXK_g_KmADP=0.126;

	reaction_HXK_g=v2sub2prod(reaction_HXK_g_HXK_g_Vmax, reaction_HXK_g_HXK_g_Keq, x(13), reaction_HXK_g_HXK_g_KmGlc, x(3), reaction_HXK_g_HXK_g_KmATP, x(6), reaction_HXK_g_HXK_g_KmGlc6P, x(5), reaction_HXK_g_HXK_g_KmADP);

% Reaction: id = _3PGAT_g, name = _3PGAT_g	% Local Parameter:   id =  _3PGAT_g_k, name = _3PGAT_g_k
	reaction__3PGAT_g__3PGAT_g_k=250.0;

	reaction__3PGAT_g=mass_action_rev(reaction__3PGAT_g__3PGAT_g_k, x(22), reaction__3PGAT_g__3PGAT_g_k, x(8));

% Reaction: id = PGK_g, name = PGK_g	% Local Parameter:   id =  PGK_g_Vmax, name = PGK_g_Vmax
	reaction_PGK_g_PGK_g_Vmax=2862.0;
	% Local Parameter:   id =  PGK_g_Keq, name = PGK_g_Keq
	reaction_PGK_g_PGK_g_Keq=3377.0;
	% Local Parameter:   id =  PGK_g_Km13BPGA, name = PGK_g_Km13BPGA
	reaction_PGK_g_PGK_g_Km13BPGA=0.003;
	% Local Parameter:   id =  PGK_g_KmADP, name = PGK_g_KmADP
	reaction_PGK_g_PGK_g_KmADP=0.1;
	% Local Parameter:   id =  PGK_g_Km3PGA, name = PGK_g_Km3PGA
	reaction_PGK_g_PGK_g_Km3PGA=1.62;
	% Local Parameter:   id =  PGK_g_KmATP, name = PGK_g_KmATP
	reaction_PGK_g_PGK_g_KmATP=0.29;

	reaction_PGK_g=v2sub2prod(reaction_PGK_g_PGK_g_Vmax, reaction_PGK_g_PGK_g_Keq, x(11), reaction_PGK_g_PGK_g_Km13BPGA, x(5), reaction_PGK_g_PGK_g_KmADP, x(22), reaction_PGK_g_PGK_g_Km3PGA, x(3), reaction_PGK_g_PGK_g_KmATP);

% Reaction: id = G3PDH_g, name = G3PDH_g	% Local Parameter:   id =  G3PDH_g_Vmax, name = G3PDH_g_Vmax
	reaction_G3PDH_g_G3PDH_g_Vmax=465.0;
	% Local Parameter:   id =  G3PDH_g_Keq, name = G3PDH_g_Keq
	reaction_G3PDH_g_G3PDH_g_Keq=17085.0;
	% Local Parameter:   id =  G3PDH_g_KmDHAP, name = G3PDH_g_KmDHAP
	reaction_G3PDH_g_G3PDH_g_KmDHAP=0.1;
	% Local Parameter:   id =  G3PDH_g_KmNADH, name = G3PDH_g_KmNADH
	reaction_G3PDH_g_G3PDH_g_KmNADH=0.01;
	% Local Parameter:   id =  G3PDH_g_KmGly3P, name = G3PDH_g_KmGly3P
	reaction_G3PDH_g_G3PDH_g_KmGly3P=2.0;
	% Local Parameter:   id =  G3PDH_g_KmNAD, name = G3PDH_g_KmNAD
	reaction_G3PDH_g_G3PDH_g_KmNAD=0.4;

	reaction_G3PDH_g=v2sub2prod(reaction_G3PDH_g_G3PDH_g_Vmax, reaction_G3PDH_g_G3PDH_g_Keq, x(4), reaction_G3PDH_g_G3PDH_g_KmDHAP, x(24), reaction_G3PDH_g_G3PDH_g_KmNADH, x(19), reaction_G3PDH_g_G3PDH_g_KmGly3P, x(15), reaction_G3PDH_g_G3PDH_g_KmNAD);

% Reaction: id = GPO_c, name = GPO_c	% Local Parameter:   id =  GPO_c_Vmax, name = GPO_c_Vmax
	reaction_GPO_c_GPO_c_Vmax=368.0;
	% Local Parameter:   id =  GPO_c_KmGly3P, name = GPO_c_KmGly3P
	reaction_GPO_c_GPO_c_KmGly3P=1.7;

	reaction_GPO_c=v1sub(reaction_GPO_c_GPO_c_Vmax, x(18), reaction_GPO_c_GPO_c_KmGly3P);

% Reaction: id = ATPu_c, name = ATPu_c	% Local Parameter:   id =  ATPu_c_k, name = ATPu_c_k
	reaction_ATPu_c_ATPu_c_k=50.0;

	reaction_ATPu_c=reaction_ATPu_c_ATPu_c_k*x(10)/x(7);

% Reaction: id = GK_g, name = GK_g	% Local Parameter:   id =  GK_g_Vmax, name = GK_g_Vmax
	reaction_GK_g_GK_g_Vmax=200.0;
	% Local Parameter:   id =  GK_g_Keq, name = GK_g_Keq
	reaction_GK_g_GK_g_Keq=8.37E-4;
	% Local Parameter:   id =  GK_g_KmGly3P, name = GK_g_KmGly3P
	reaction_GK_g_GK_g_KmGly3P=3.83;
	% Local Parameter:   id =  GK_g_KmADP, name = GK_g_KmADP
	reaction_GK_g_GK_g_KmADP=0.56;
	% Local Parameter:   id =  GK_g_KmGly, name = GK_g_KmGly
	reaction_GK_g_GK_g_KmGly=0.44;
	% Local Parameter:   id =  GK_g_KmATP, name = GK_g_KmATP
	reaction_GK_g_GK_g_KmATP=0.24;

	reaction_GK_g=v2sub2prod(reaction_GK_g_GK_g_Vmax, reaction_GK_g_GK_g_Keq, x(19), reaction_GK_g_GK_g_KmGly3P, x(5), reaction_GK_g_GK_g_KmADP, const_species_Gly_e, reaction_GK_g_GK_g_KmGly, x(3), reaction_GK_g_GK_g_KmATP);

% Reaction: id = AK_c, name = AK_c	% Local Parameter:   id =  AK_c_k1, name = AK_c_k1
	reaction_AK_c_AK_c_k1=480.0;
	% Local Parameter:   id =  AK_c_k2, name = AK_c_k2
	reaction_AK_c_AK_c_k2=1000.0;

	reaction_AK_c=vAK(x(7), x(23), x(10), reaction_AK_c_AK_c_k1, reaction_AK_c_AK_c_k2);

% Reaction: id = PGI_g, name = PGI_g	% Local Parameter:   id =  PGI_g_Vmax, name = PGI_g_Vmax
	reaction_PGI_g_PGI_g_Vmax=1305.0;
	% Local Parameter:   id =  PGI_g_KmGlc6P, name = PGI_g_KmGlc6P
	reaction_PGI_g_PGI_g_KmGlc6P=0.4;
	% Local Parameter:   id =  PGI_g_Keq, name = PGI_g_Keq
	reaction_PGI_g_PGI_g_Keq=0.457;
	% Local Parameter:   id =  PGI_g_KmFru6P, name = PGI_g_KmFru6P
	reaction_PGI_g_PGI_g_KmFru6P=0.12;
	% Local Parameter:   id =  _6PG_g, name = _6PG_g
	reaction_PGI_g__6PG_g=0.0841958;
	% Local Parameter:   id =  PGI_g_Ki6PG, name = PGI_g_Ki6PG
	reaction_PGI_g_PGI_g_Ki6PG=0.14;

	reaction_PGI_g=reaction_PGI_g_PGI_g_Vmax*x(6)*(1-x(9)/(reaction_PGI_g_PGI_g_Keq*x(6)))/(reaction_PGI_g_PGI_g_KmGlc6P*(1+x(6)/reaction_PGI_g_PGI_g_KmGlc6P+x(9)/reaction_PGI_g_PGI_g_KmFru6P+reaction_PGI_g__6PG_g/reaction_PGI_g_PGI_g_Ki6PG));

% Reaction: id = GAPDH_g, name = GAPDH_g	% Local Parameter:   id =  GAPDH_g_Vmax, name = GAPDH_g_Vmax
	reaction_GAPDH_g_GAPDH_g_Vmax=720.9;
	% Local Parameter:   id =  GAPDH_g_Keq, name = GAPDH_g_Keq
	reaction_GAPDH_g_GAPDH_g_Keq=0.066;
	% Local Parameter:   id =  GAPDH_g_KmGA3P, name = GAPDH_g_KmGA3P
	reaction_GAPDH_g_GAPDH_g_KmGA3P=0.15;
	% Local Parameter:   id =  GAPDH_g_KmNAD, name = GAPDH_g_KmNAD
	reaction_GAPDH_g_GAPDH_g_KmNAD=0.45;
	% Local Parameter:   id =  GAPDH_g_Km13BPGA, name = GAPDH_g_Km13BPGA
	reaction_GAPDH_g_GAPDH_g_Km13BPGA=0.1;
	% Local Parameter:   id =  GAPDH_g_KmNADH, name = GAPDH_g_KmNADH
	reaction_GAPDH_g_GAPDH_g_KmNADH=0.02;

	reaction_GAPDH_g=v2sub2prod(reaction_GAPDH_g_GAPDH_g_Vmax, reaction_GAPDH_g_GAPDH_g_Keq, x(17), reaction_GAPDH_g_GAPDH_g_KmGA3P, x(15), reaction_GAPDH_g_GAPDH_g_KmNAD, x(11), reaction_GAPDH_g_GAPDH_g_Km13BPGA, x(24), reaction_GAPDH_g_GAPDH_g_KmNADH);

% Reaction: id = AK_g, name = AK_g	% Local Parameter:   id =  AK_g_k1, name = AK_g_k1
	reaction_AK_g_AK_g_k1=480.0;
	% Local Parameter:   id =  AK_g_k2, name = AK_g_k2
	reaction_AK_g_AK_g_k2=1000.0;

	reaction_AK_g=vAK(x(5), x(21), x(3), reaction_AK_g_AK_g_k1, reaction_AK_g_AK_g_k2);

% Reaction: id = GDA_g, name = GDA_g	% Local Parameter:   id =  GDA_g_k, name = GDA_g_k
	reaction_GDA_g_GDA_g_k=600.0;

	reaction_GDA_g=x(19)*reaction_GDA_g_GDA_g_k*x(2)-x(18)*reaction_GDA_g_GDA_g_k*x(4);

% Species:   id = Pi_g, name = Pi_g, constant	const_species_Pi_g=0.0;

% Species:   id = O2_c, name = O2_c, constant	const_species_O2_c=1.0;

% Species:   id = Gly_e, name = Gly_e, constant	const_species_Gly_e=0.0;

% Species:   id = Glc_e, name = Glc_e, constant	const_species_Glc_e=5.0;

% Species:   id = Pyr_e, name = Pyr_e, constant	const_species_Pyr_e=0.0;

% Species:   id = CO2_c, name = CO2_c, constant	const_species_CO2_c=0.0;

% Species:   id = CO2_g, name = CO2_g, constant	const_species_CO2_g=0.0;

	xdot=zeros(24,1);
	
% Species:   id = _2PGA_c, name = _2PGA_c, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_PGAM_c) + (-1.0 * reaction_ENO_c));
	
% Species:   id = DHAP_c, name = DHAP_c, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_GPO_c) + (-1.0 * reaction_GDA_g));
	
% Species:   id = ATP_g, name = ATP_g, affected by kineticLaw
	xdot(3) = (1/(compartment_glycosome))*((-1.0 * reaction_PFK_g) + (-1.0 * reaction_HXK_g) + ( 1.0 * reaction_PGK_g) + ( 1.0 * reaction_GK_g) + ( 1.0 * reaction_AK_g));
	
% Species:   id = DHAP_g, name = DHAP_g, affected by kineticLaw
	xdot(4) = (1/(compartment_glycosome))*((-1.0 * reaction_TPI_g) + ( 1.0 * reaction_ALD_g) + (-1.0 * reaction_G3PDH_g) + ( 1.0 * reaction_GDA_g));
	
% Species:   id = ADP_g, name = ADP_g, affected by kineticLaw
	xdot(5) = (1/(compartment_glycosome))*(( 1.0 * reaction_PFK_g) + ( 1.0 * reaction_HXK_g) + (-1.0 * reaction_PGK_g) + (-1.0 * reaction_GK_g) + (-2.0 * reaction_AK_g));
	
% Species:   id = Glc6P_g, name = Glc6P_g, affected by kineticLaw
	xdot(6) = (1/(compartment_glycosome))*(( 1.0 * reaction_HXK_g) + (-1.0 * reaction_PGI_g));
	
% Species:   id = ADP_c, name = ADP_c, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*((-1.0 * reaction_PYK_c) + ( 1.0 * reaction_ATPu_c) + (-2.0 * reaction_AK_c));
	
% Species:   id = _3PGA_c, name = _3PGA_c, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol))*((-1.0 * reaction_PGAM_c) + ( 1.0 * reaction__3PGAT_g));
	
% Species:   id = Fru6P_g, name = Fru6P_g, affected by kineticLaw
	xdot(9) = (1/(compartment_glycosome))*((-1.0 * reaction_PFK_g) + ( 1.0 * reaction_PGI_g));
	
% Species:   id = ATP_c, name = ATP_c, affected by kineticLaw
	xdot(10) = (1/(compartment_cytosol))*(( 1.0 * reaction_PYK_c) + (-1.0 * reaction_ATPu_c) + ( 1.0 * reaction_AK_c));
	
% Species:   id = _13BPGA_g, name = _13BPGA_g, affected by kineticLaw
	xdot(11) = (1/(compartment_glycosome))*((-1.0 * reaction_PGK_g) + ( 1.0 * reaction_GAPDH_g));
	
% Species:   id = Glc_c, name = Glc_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*((-1.0 * reaction_GlcT_g) + ( 1.0 * reaction_GlcT_c));
	
% Species:   id = Glc_g, name = Glc_g, affected by kineticLaw
	xdot(13) = (1/(compartment_glycosome))*(( 1.0 * reaction_GlcT_g) + (-1.0 * reaction_HXK_g));
	
% Species:   id = Pyr_c, name = Pyr_c, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*(( 1.0 * reaction_PYK_c) + (-1.0 * reaction_PyrT_c));
	
% Species:   id = NAD_g, name = NAD_g, affected by kineticLaw
	xdot(15) = (1/(compartment_glycosome))*(( 1.0 * reaction_G3PDH_g) + (-1.0 * reaction_GAPDH_g));
	
% Species:   id = Fru16BP_g, name = Fru16BP_g, affected by kineticLaw
	xdot(16) = (1/(compartment_glycosome))*(( 1.0 * reaction_PFK_g) + (-1.0 * reaction_ALD_g));
	
% Species:   id = GA3P_g, name = GA3P_g, affected by kineticLaw
	xdot(17) = (1/(compartment_glycosome))*(( 1.0 * reaction_TPI_g) + ( 1.0 * reaction_ALD_g) + (-1.0 * reaction_GAPDH_g));
	
% Species:   id = Gly3P_c, name = Gly3P_c, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*((-1.0 * reaction_GPO_c) + ( 1.0 * reaction_GDA_g));
	
% Species:   id = Gly3P_g, name = Gly3P_g, affected by kineticLaw
	xdot(19) = (1/(compartment_glycosome))*(( 1.0 * reaction_G3PDH_g) + (-1.0 * reaction_GK_g) + (-1.0 * reaction_GDA_g));
	
% Species:   id = PEP_c, name = PEP_c, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*((-1.0 * reaction_PYK_c) + ( 1.0 * reaction_ENO_c));
	
% Species:   id = AMP_g, name = AMP_g, affected by kineticLaw
	xdot(21) = (1/(compartment_glycosome))*(( 1.0 * reaction_AK_g));
	
% Species:   id = _3PGA_g, name = _3PGA_g, affected by kineticLaw
	xdot(22) = (1/(compartment_glycosome))*((-1.0 * reaction__3PGAT_g) + ( 1.0 * reaction_PGK_g));
	
% Species:   id = AMP_c, name = AMP_c, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol))*(( 1.0 * reaction_AK_c));
	
% Species:   id = NADH_g, name = NADH_g, affected by kineticLaw
	xdot(24) = (1/(compartment_glycosome))*((-1.0 * reaction_G3PDH_g) + ( 1.0 * reaction_GAPDH_g));
end

function z=vAK(ADP,AMP,ATP,k1,k2), z=(k1*ADP^2-AMP*ATP*k2);end

function z=v2sub2prod(Vfmax,Keq,S1,Ks1,S2,Ks2,P1,Kp1,P2,Kp2), z=(Vfmax*S1*S2*(1-P1*P2/(Keq*S1*S2))/(Ks1*Ks2*(1+S1/Ks1+P1/Kp1)*(1+S2/Ks2+P2/Kp2)));end

function z=v1sub(Vfmax,S,Ks), z=(Vfmax*S/(Ks*(1+S/Ks)));end

function z=v2sub2prod_compinhib(Vfmax,Keq,S1,Ks1,S2,Ks2,P1,Kp1,P2,Kp2,I1,Ki1,I2,Ki2), z=(Vfmax*S1*S2*(1-P1*P2/(Keq*S1*S2))/(Ks1*Ks2*(1+S1/Ks1+P1/Kp1)*(1+S2/Ks2+P2/Kp2+I1/Ki1+I2/Ki2)));end

function z=mass_action_rev(k1,S,k2,P), z=(k1*S-k2*P);end

function z=v1sub1prod(Vfmax,Keq,S,Ks,P,Kp), z=(Vfmax*S*(1-P/(Keq*S))/(Ks*(1+S/Ks+P/Kp)));end

function z=mass_action_irrev(k,S), z=(k*S);end

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


