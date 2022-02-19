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
% Model name = Xie2007_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL1029395046
% is http://identifiers.org/biomodels.db/BIOMD0000000160
% isDescribedBy http://identifiers.org/pubmed/17157878
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.5566;
	x0(2) = 0.4982;
	x0(3) = 0.003185;
	x0(4) = 0.003185;
	x0(5) = 0.2583;
	x0(6) = 0.2395;
	x0(7) = 0.4014;
	x0(8) = 0.003185;
	x0(9) = 0.2571;
	x0(10) = 3.175;
	x0(11) = 0.003185;
	x0(12) = 0.3175;
	x0(13) = 4.1953;
	x0(14) = 3.6628;
	x0(15) = 2.7527;
	x0(16) = 0.003185;
	x0(17) = 0.2395;
	x0(18) = 2.7527;
	x0(19) = 0.0431;
	x0(20) = 0.0585;
	x0(21) = 0.08;
	x0(22) = 0.489;
	x0(23) = 0.426;
	x0(24) = 0.043;


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

% Compartment: id = wholeCell, name = wholeCell, constant
	compartment_wholeCell=1.0;
% Parameter:   id =  dccpt, name = dccpt
	global_par_dccpt=15.06;
% Parameter:   id =  bccperp, name = bccperp
	global_par_bccperp=0.069;
% Parameter:   id =  ubccperp, name = ubccperp
	global_par_ubccperp=0.262;
% Parameter:   id =  bccpt, name = bccpt
	global_par_bccpt=51.0;
% Parameter:   id =  dperm, name = dperm
	global_par_dperm=0.053;
% Parameter:   id =  tlper, name = tlper
	global_par_tlper=36.0;
% Parameter:   id =  tcccperp, name = tcccperp
	global_par_tcccperp=11.0;
% Parameter:   id =  tcdvpmt, name = tcdvpmt
	global_par_tcdvpmt=0.028;
% Parameter:   id =  dvri, name = dvri
	global_par_dvri=1.226;
% Parameter:   id =  tcclkp, name = tcclkp
	global_par_tcclkp=1.42;
% Parameter:   id =  bcc, name = bcc
	global_par_bcc=2.349;
% Parameter:   id =  dclk, name = dclk
	global_par_dclk=0.2;
% Parameter:   id =  ubcc, name = ubcc
	global_par_ubcc=0.89;
% Parameter:   id =  bpt, name = bpt
	global_par_bpt=1.1;
% Parameter:   id =  ubpt, name = ubpt
	global_par_ubpt=2.93;
% Parameter:   id =  dper, name = dper
	global_par_dper=0.62;
% Parameter:   id =  tcccvrip, name = tcccvrip
	global_par_tcccvrip=16.86;
% Parameter:   id =  tcccpdpp, name = tcccpdpp
	global_par_tcccpdpp=9.831;
% Parameter:   id =  dvrim, name = dvrim
	global_par_dvrim=0.07;
% Parameter:   id =  dpdpm, name = dpdpm
	global_par_dpdpm=0.06;
% Parameter:   id =  ubccpt, name = ubccpt
	global_par_ubccpt=7.89;
% Parameter:   id =  tlvri, name = tlvri
	global_par_tlvri=14.68;
% Parameter:   id =  tlpdp, name = tlpdp
	global_par_tlpdp=1.87;
% Parameter:   id =  bccvrip, name = bccvrip
	global_par_bccvrip=0.1;
% Parameter:   id =  bccpdpp, name = bccpdpp
	global_par_bccpdpp=0.062;
% Parameter:   id =  ubccvrip, name = ubccvrip
	global_par_ubccvrip=0.276;
% Parameter:   id =  ubccpdpp, name = ubccpdpp
	global_par_ubccpdpp=0.145;
% Parameter:   id =  tcpdpclkp, name = tcpdpclkp
	global_par_tcpdpclkp=125.54;
% Parameter:   id =  dclkm, name = dclkm
	global_par_dclkm=0.643;
% Parameter:   id =  bvriclkp, name = bvriclkp
	global_par_bvriclkp=1.858;
% Parameter:   id =  bpdpclkp, name = bpdpclkp
	global_par_bpdpclkp=1.155;
% Parameter:   id =  ubvriclkp, name = ubvriclkp
	global_par_ubvriclkp=1.043;
% Parameter:   id =  ubpdpclkp, name = ubpdpclkp
	global_par_ubpdpclkp=0.952;
% Parameter:   id =  tcvriclkp, name = tcvriclkp
	global_par_tcvriclkp=0.053;
% Parameter:   id =  dpdp, name = dpdp
	global_par_dpdp=0.156;
% Parameter:   id =  tlclk, name = tlclk
	global_par_tlclk=35.0;
% Parameter:   id =  dcc, name = dcc
	global_par_dcc=0.184;
% Parameter:   id =  dpt, name = dpt
	global_par_dpt=0.279;
% Parameter:   id =  dtim, name = dtim
	global_par_dtim=0.62;
% Parameter:   id =  dtimm, name = dtimm
	global_par_dtimm=0.053;
% Parameter:   id =  tltim, name = tltim
	global_par_tltim=36.0;
% Parameter:   id =  bcctimp, name = bcctimp
	global_par_bcctimp=0.069;
% Parameter:   id =  ubcctimp, name = ubcctimp
	global_par_ubcctimp=0.262;
% Parameter:   id =  tccctimp, name = tccctimp
	global_par_tccctimp=11.0;
% Parameter:   id =  npt, name = npt
	global_par_npt=5.0;
% Parameter:   id =  nvri, name = nvri
	global_par_nvri=4.0;
% Parameter:   id =  npdp, name = npdp
	global_par_npdp=6.0;

% Reaction: id = re1, name = CC PT association
	reaction_re1=compartment_wholeCell*x(1)*x(7)*global_par_bccpt;

% Reaction: id = re2, name = Degradation of CLK CYK dimer
	reaction_re2=compartment_wholeCell*x(1)*global_par_dcc;

% Reaction: id = re3, name = Degradation of CC PT dimer
	reaction_re3=compartment_wholeCell*x(2)*global_par_dccpt;

% Reaction: id = re4, name = Degradation of PER TIM dimer
	reaction_re4=compartment_wholeCell*x(7)*global_par_dpt;

% Reaction: id = re9, name = Degradation of clk mRNA
	reaction_re9=compartment_wholeCell*x(5)*global_par_dclkm;

% Reaction: id = re10, name = clkm translation
	reaction_re10=compartment_wholeCell*x(5)*global_par_tlclk;

% Reaction: id = re15, name = Degradation of per mRNA
	reaction_re15=compartment_wholeCell*x(6)*global_par_dperm;

% Reaction: id = re17, name = perm translation
	reaction_re17=compartment_wholeCell*x(6)*global_par_tlper;

% Reaction: id = re20, name = per transcription
	reaction_re20=compartment_wholeCell*((1-(1-x(19))^global_par_npt)*global_par_tcccperp+(1-x(19))^global_par_npt*global_par_tcdvpmt)*x(4);

% Reaction: id = re28, name = vri transcription
	reaction_re28=compartment_wholeCell*((1-(1-x(20))^global_par_nvri)*global_par_tcccvrip+(1-x(20))^global_par_nvri*global_par_tcdvpmt)*x(8);

% Reaction: id = re30, name = Degradation of vri mRNA
	reaction_re30=compartment_wholeCell*x(9)*global_par_dvrim;

% Reaction: id = re31, name = vrim translation
	reaction_re31=compartment_wholeCell*x(9)*global_par_tlvri;

% Reaction: id = re32, name = VRI protein degradation
	reaction_re32=compartment_wholeCell*x(10)*global_par_dvri;

% Reaction: id = re35, name = pdp transcription
	reaction_re35=compartment_wholeCell*((1-(1-x(21))^global_par_npdp)*global_par_tcccpdpp+(1-x(21))^global_par_npdp*global_par_tcdvpmt)*x(11);

% Reaction: id = re37, name = Degradation of pdp mRNA
	reaction_re37=compartment_wholeCell*x(12)*global_par_dpdpm;

% Reaction: id = re38, name = pdpm translation
	reaction_re38=compartment_wholeCell*x(12)*global_par_tlpdp;

% Reaction: id = re39, name = PDP protein degradation
	reaction_re39=compartment_wholeCell*x(13)*global_par_dpdp;

% Reaction: id = re42, name = clk transcription
	reaction_re42=compartment_wholeCell*(x(22)*global_par_tcvriclkp+x(23)*global_par_tcpdpclkp+(1-x(22)-x(23))*global_par_tcclkp)*x(3);

% Reaction: id = re43, name = CLK CYC association
	reaction_re43=compartment_wholeCell*x(14)*global_par_bcc*const_species_CYC;

% Reaction: id = re44, name = CLK protein degradation
	reaction_re44=compartment_wholeCell*x(14)*global_par_dclk;

% Reaction: id = re45, name = CLK CYC dissociation
	reaction_re45=compartment_wholeCell*x(1)*global_par_ubcc;

% Reaction: id = re46, name = PER TIM association
	reaction_re46=compartment_wholeCell*x(15)*x(18)*global_par_bpt;

% Reaction: id = re47, name = PER TIM dissociation
	reaction_re47=compartment_wholeCell*x(7)*global_par_ubpt;

% Reaction: id = re48, name = PER protein degradation
	reaction_re48=compartment_wholeCell*x(15)*global_par_dper;

% Reaction: id = re51, name = tim transcription
	reaction_re51=compartment_wholeCell*((1-(1-x(24))^global_par_npt)*global_par_tccctimp+(1-x(24))^global_par_npt*global_par_tcdvpmt)*x(16);

% Reaction: id = re53, name = Degradation of tim mRNA
	reaction_re53=compartment_wholeCell*x(17)*global_par_dtimm;

% Reaction: id = re54, name = timm translation
	reaction_re54=compartment_wholeCell*x(17)*global_par_tltim;

% Reaction: id = re55, name = TIM protein degradation
	reaction_re55=compartment_wholeCell*x(18)*global_par_dtim;

% Reaction: id = re56, name = CC PT dimer dissociation
	reaction_re56=compartment_wholeCell*x(2)*global_par_ubccpt;

% Reaction: id = re57, name = CC binding probability in per promoter
	reaction_re57=compartment_wholeCell*(1-x(19))*global_par_bccperp*x(1);

% Reaction: id = re58, name = CC Unbinding probability in per promoter
	reaction_re58=compartment_wholeCell*x(19)*global_par_ubccperp;

% Reaction: id = re59, name = CC Unbinding probability in vri promoter
	reaction_re59=compartment_wholeCell*global_par_ubccvrip*x(20);

% Reaction: id = re60, name = CC binding probability in vri promoter
	reaction_re60=compartment_wholeCell*(1-x(20))*global_par_bccvrip*x(1);

% Reaction: id = re61, name = CC Unbinding probability in pdp1 promoter
	reaction_re61=compartment_wholeCell*global_par_ubccpdpp*x(21);

% Reaction: id = re62, name = CC binding probability in pdp1 promoter
	reaction_re62=compartment_wholeCell*(1-x(21))*global_par_bccpdpp*x(1);

% Reaction: id = re63, name = VRI binding clk promoter
	reaction_re63=compartment_wholeCell*(1-x(22)-x(23))*global_par_bvriclkp*x(10);

% Reaction: id = re64, name = VRI unbinding clk promoter
	reaction_re64=compartment_wholeCell*x(22)*global_par_ubvriclkp;

% Reaction: id = re65, name = PDP binding clk promoter
	reaction_re65=compartment_wholeCell*(1-x(22)-x(23))*global_par_bpdpclkp*x(13);

% Reaction: id = re66, name = PDP unbinding clk promoter
	reaction_re66=compartment_wholeCell*x(23)*global_par_ubpdpclkp;

% Reaction: id = re68, name = CC binding probability in tim promoter
	reaction_re68=compartment_wholeCell*(1-x(24))*global_par_bcctimp*x(1);

% Reaction: id = re69, name = CC Unbinding probability in tim promoter
	reaction_re69=compartment_wholeCell*x(24)*global_par_ubcctimp;

% Species:   id = CYC, name = CYC, constant	const_species_CYC=1.0;

	xdot=zeros(24,1);
	
% Species:   id = CC, name = CC, affected by kineticLaw
	xdot(1) = (1/(compartment_wholeCell))*((-1.0 * reaction_re1) + (-1.0 * reaction_re2) + ( 1.0 * reaction_re43) + (-1.0 * reaction_re45) + ( 1.0 * reaction_re56));
	
% Species:   id = CCPT, name = CCPT, affected by kineticLaw
	xdot(2) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re3) + (-1.0 * reaction_re56));
	
% Species:   id = clkp, name = clkp
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = perp, name = perp
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = clkm, name = clkm, affected by kineticLaw
	xdot(5) = (1/(compartment_wholeCell))*((-1.0 * reaction_re9) + ( 1.0 * reaction_re42));
	
% Species:   id = perm, name = perm, affected by kineticLaw
	xdot(6) = (1/(compartment_wholeCell))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re20));
	
% Species:   id = PT, name = PT, affected by kineticLaw
	xdot(7) = (1/(compartment_wholeCell))*((-1.0 * reaction_re1) + (-1.0 * reaction_re4) + ( 1.0 * reaction_re46) + (-1.0 * reaction_re47) + ( 1.0 * reaction_re56));
	
% Species:   id = vrip, name = vrip
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = vrim, name = vrim, affected by kineticLaw
	xdot(9) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re28) + (-1.0 * reaction_re30));
	
% Species:   id = VRI, name = VRI, affected by kineticLaw
	xdot(10) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re31) + (-1.0 * reaction_re32));
	
% Species:   id = pdpp, name = pdpp
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = pdpm, name = pdpm, affected by kineticLaw
	xdot(12) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re35) + (-1.0 * reaction_re37));
	
% Species:   id = PDP, name = PDP, affected by kineticLaw
	xdot(13) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re38) + (-1.0 * reaction_re39));
	
% Species:   id = CLK, name = CLK, affected by kineticLaw
	xdot(14) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re10) + (-1.0 * reaction_re43) + (-1.0 * reaction_re44) + ( 1.0 * reaction_re45));
	
% Species:   id = PER, name = PER, affected by kineticLaw
	xdot(15) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re17) + (-1.0 * reaction_re46) + ( 1.0 * reaction_re47) + (-1.0 * reaction_re48));
	
% Species:   id = timp, name = timp
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = timm, name = timm, affected by kineticLaw
	xdot(17) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re51) + (-1.0 * reaction_re53));
	
% Species:   id = TIM, name = TIM, affected by kineticLaw
	xdot(18) = (1/(compartment_wholeCell))*((-1.0 * reaction_re46) + ( 1.0 * reaction_re47) + ( 1.0 * reaction_re54) + (-1.0 * reaction_re55));
	
% Species:   id = prcper, name = CCbindingPer, affected by kineticLaw
	xdot(19) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re57) + (-1.0 * reaction_re58));
	
% Species:   id = prcv, name = CCbindingvri, affected by kineticLaw
	xdot(20) = (1/(compartment_wholeCell))*((-1.0 * reaction_re59) + ( 1.0 * reaction_re60));
	
% Species:   id = prcpdp, name = CCbindingpdp, affected by kineticLaw
	xdot(21) = (1/(compartment_wholeCell))*((-1.0 * reaction_re61) + ( 1.0 * reaction_re62));
	
% Species:   id = prvc, name = VRIbindingclkp, affected by kineticLaw
	xdot(22) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re63) + (-1.0 * reaction_re64));
	
% Species:   id = prpc, name = PDPbindingclkp, affected by kineticLaw
	xdot(23) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re65) + (-1.0 * reaction_re66));
	
% Species:   id = prct, name = CCbindingtim, affected by kineticLaw
	xdot(24) = (1/(compartment_wholeCell))*(( 1.0 * reaction_re68) + (-1.0 * reaction_re69));
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


