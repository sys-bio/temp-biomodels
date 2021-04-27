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
% Model name = Potassium balance in lactating and non-lactating dairy cows
%
% is http://identifiers.org/biomodels.db/MODEL1710230000
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 0.175136827769812;
	x0(2) = 0.897325991903361;
	x0(3) = 0.0;
	x0(4) = 1509.6;
	x0(5) = 4.53818901679345;
	x0(6) = 6.24885128313371;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 43.1365559451142;
	x0(11) = 0.546566462071036;
	x0(12) = 21.8532954203392;
	x0(13) = 3647.74674176755;
	x0(14) = 34.0337183015116;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = intracell, constant
	compartment_c1=10.2;
% Compartment: id = c2, name = extracell, constant
	compartment_c2=22.8;
% Parameter:   id =  p3, name = p3
	global_par_p3=22.0;
% Parameter:   id =  p4, name = p4
	global_par_p4=1.783E-4;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.563;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.051;
% Parameter:   id =  p8, name = p8
	global_par_p8=0.5994;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.4016;
% Parameter:   id =  p13, name = p13
	global_par_p13=6.08;
% Parameter:   id =  p14, name = p14
	global_par_p14=0.15639932;
% Parameter:   id =  p15, name = p15
	global_par_p15=32.0;
% Parameter:   id =  p16, name = p16
	global_par_p16=10.0;
% Parameter:   id =  p18, name = p18
	global_par_p18=0.0223;
% Parameter:   id =  p19, name = p19
	global_par_p19=0.1373;
% Parameter:   id =  p20, name = p20
	global_par_p20=7.38;
% Parameter:   id =  p21, name = p21
	global_par_p21=0.1085;
% Parameter:   id =  p22, name = p22
	global_par_p22=0.25;
% Parameter:   id =  p23, name = p23
	global_par_p23=0.58649745;
% Parameter:   id =  p24, name = p24
	global_par_p24=0.1962811466;
% Parameter:   id =  p25, name = p25
	global_par_p25=6.6085;
% Parameter:   id =  p26, name = p26
	global_par_p26=49.0279;
% Parameter:   id =  p27, name = p27
	global_par_p27=0.232634885;
% Parameter:   id =  p29, name = p29
	global_par_p29=0.11729949;
% Parameter:   id =  p30, name = p30
	global_par_p30=0.95;
% Parameter:   id =  p31, name = p31
	global_par_p31=0.353;
% Parameter:   id =  p32, name = p32
	global_par_p32=1.31;
% Parameter:   id =  p33, name = p33
	global_par_p33=0.07819966;
% Parameter:   id =  pH, name = pH
% Parameter:   id =  p42, name = src_metact
	global_par_p42=4.5;
% Parameter:   id =  p43, name = T_src_metact
	global_par_p43=10.0;
% Parameter:   id =  p44, name = snc_metact
	global_par_p44=1.2;
% Parameter:   id =  p45, name = basic_metact
	global_par_p45=3.0;
% Parameter:   id =  p46, name = src_glucfeed
	global_par_p46=0.0854;
% Parameter:   id =  p48, name = scale_blood_gluc
	global_par_p48=0.08;
% Parameter:   id =  p49, name = p49
	global_par_p49=800.0;
% Parameter:   id =  p41, name = p41
	global_par_p41=20.0;
% Parameter:   id =  Pi, name = Pi
	global_par_Pi=3.14159265359;
% Parameter:   id =  dmi, name = dmi
% Parameter:   id =  K_feed, name = K_feed
% Parameter:   id =  Gluc_feed, name = Gluc_feed
% Parameter:   id =  p52, name = kmilk_content
	global_par_p52=1.4;
% Parameter:   id =  p53, name = basal_KeKu
	global_par_p53=0.01;
% Parameter:   id =  p54, name = dmi_percentage
	global_par_p54=1.0;
% Parameter:   id =  p55, name = Milk_in_l/h
	global_par_p55=0.0;
% Parameter:   id =  p56, name = perctK_in_dmi
	global_par_p56=0.01137;
% Parameter:   id =  p34, name = con
	global_par_p34=0.0390983;
% Parameter:   id =  p1, name = p1
	global_par_p1=40.4;
% Parameter:   id =  p11, name = p11
	global_par_p11=860.0;
% Parameter:   id =  p12, name = p12
	global_par_p12=0.0105;
% Parameter:   id =  p17, name = p17
	global_par_p17=16.0;
% Parameter:   id =  p28, name = p28
	global_par_p28=25.0;
% Parameter:   id =  p37, name = p37
	global_par_p37=0.0;
% Parameter:   id =  p39, name = p39
	global_par_p39=30.0;
% Parameter:   id =  p50, name = p50
	global_par_p50=0.4;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.925;
% Parameter:   id =  p51, name = p51
	global_par_p51=0.1;
% Parameter:   id =  p57, name = p57
	global_par_p57=3800.0;
% Parameter:   id =  p59, name = p59
	global_par_p59=1.0;
% Parameter:   id =  p60, name = p60
	global_par_p60=2.0;
% Parameter:   id =  p61, name = p61
	global_par_p61=5.0;
% Parameter:   id =  p40, name = p40
	global_par_p40=0.01;
% Parameter:   id =  p47, name = p47
	global_par_p47=72.0;
% Parameter:   id =  p58, name = p58
	global_par_p58=0.01;
% Parameter:   id =  p63, name = p63
	global_par_p63=800.0;
% Parameter:   id =  p64, name = p64
	global_par_p64=0.2;
% Parameter:   id =  p65, name = p65
	global_par_p65=0.3;
% Parameter:   id =  p66, name = p66
	global_par_p66=1.4;
% Parameter:   id =  p2, name = p2
	global_par_p2=1600.0;
% Parameter:   id =  p10, name = p10
	global_par_p10=1400.0;
% Parameter:   id =  p35, name = p35
	global_par_p35=100.0;
% Parameter:   id =  p62, name = p62
	global_par_p62=1.0;
% Parameter:   id =  p38, name = p38
	global_par_p38=1509.6;
% Parameter:   id =  p36, name = p36
	global_par_p36=1.0;
% assignmentRule: variable = pH
	global_par_pH=7.5-x(6)/40;
% assignmentRule: variable = dmi
	global_par_dmi=global_par_p54*487.5*(1-sin(pi*t/12));
% assignmentRule: variable = K_feed
	global_par_K_feed=global_par_p56*global_par_dmi;
% assignmentRule: variable = Gluc_feed
	global_par_Gluc_feed=global_par_p46*global_par_dmi;
% assignmentRule: variable = K_ECF_mmol
	x(8)=x(1)/global_par_p34;
% assignmentRule: variable = K_ICF_mmol
	x(9)=x(2)/global_par_p34;

% Reaction: id = re20, name = DmMa
	reaction_re20=global_par_p45+global_par_p42*global_par_dmi^2/(global_par_dmi^2+global_par_p43^2);

% Reaction: id = re37, name = GbGs
	reaction_re37=global_par_Gluc_feed^10/(global_par_Gluc_feed^10+global_par_p1^10)*global_par_p12*x(14)*global_par_p57^10/(x(13)^10+global_par_p57^10)*x(12)*x(11)*global_par_p36^10/(global_par_p36^10+global_par_p55^10);

% Reaction: id = re41, name = GpGb
	reaction_re41=(global_par_p37+global_par_p39*x(14))*1/(1+(x(11)/global_par_p50)^10);

% Reaction: id = re39, name = GpGs
	reaction_re39=global_par_p51*x(14)*global_par_p57^10/(x(13)^10+global_par_p57^10)*global_par_p62^10/(global_par_p62^10+global_par_p55^10);

% Reaction: id = re38, name = GsGb
	reaction_re38=1/(1+(global_par_Gluc_feed/global_par_p1)^10)*global_par_p17*(global_par_p7-x(11))*x(13)^10/(x(13)^10+global_par_p35^10)+1/(1+(global_par_p64/global_par_p55)^10)*global_par_p65^10/(global_par_p65^10+x(11)^10)*global_par_p63*x(13)^10/(x(13)^10+global_par_p35^10);

% Reaction: id = re43, name = GsGp
	reaction_re43=global_par_p60*1/(1+(global_par_Gluc_feed/global_par_p61)^5)*x(13)^10/(x(13)^10+global_par_p35^10);

% Reaction: id = re4, name = KeKi
	reaction_re4=(global_par_p8+global_par_p9*x(12)^8/(x(12)^8+global_par_p3^8))*x(1)^2/(x(1)^2+global_par_p33^2)*(1+global_par_p21*global_par_pH^10/(global_par_pH^10+global_par_p20^10));

% Reaction: id = re5, name = KeKs
	reaction_re5=global_par_p18*x(1)*global_par_dmi;

% Reaction: id = re7, name = KeKt
	reaction_re7=x(10)^10/(x(10)^10+global_par_p15^10)*global_par_p25*x(1)*(global_par_p2-global_par_p10)^10/((x(4)-global_par_p10)^10+(global_par_p2-global_par_p10)^10);

% Reaction: id = re9, name = KeKu
	reaction_re9=(1+global_par_p13*x(1)^5/(x(1)^5+global_par_p24^5))*global_par_p6*x(10)*(1+global_par_p16*x(1)^10/(x(1)^10+global_par_p22^10))+global_par_p53*x(1);

% Reaction: id = re35, name = KeMi
	reaction_re35=global_par_p52*global_par_p55*x(1)^10/(x(1)^10+global_par_p40^10);

% Reaction: id = re6, name = KeR
	reaction_re6=global_par_p4*x(1);

% Reaction: id = re34, name = KfKg
	reaction_re34=global_par_p30*global_par_K_feed;

% Reaction: id = re10, name = KgKe
	reaction_re10=global_par_p31*x(10);

% Reaction: id = re3, name = KiKe
	reaction_re3=(1+1/(1+(x(1)/global_par_p29)^10))*global_par_p5*(1+1/(1+(global_par_pH/global_par_p20)^10))*x(2)^2/(x(2)^2+global_par_p23^2)*(1+global_par_p19*x(2)^2/(x(2)^2+global_par_p14^2));

% Reaction: id = re11, name = KsKg
	reaction_re11=global_par_p32*x(5);

% Reaction: id = re8, name = KtKe
	reaction_re8=1/(1+(x(10)/global_par_p15)^10)*global_par_p26*(global_par_p27-x(1))*(x(4)-global_par_p10)^10/((x(4)-global_par_p10)^10+(global_par_p38*0.99-global_par_p10)^10);

% Reaction: id = re21, name = MaSnk
	reaction_re21=global_par_p44*x(6);

% Reaction: id = re40, name = SnkGb
	reaction_re40=x(11)^10/(x(11)^10+global_par_p58^10)*(global_par_p28*x(11)+global_par_p59*x(14)*exp((-global_par_p66)*global_par_p55)+global_par_p55*global_par_p47);

% Reaction: id = re32, name = SnkIn
	reaction_re32=global_par_p41*x(12);

% Reaction: id = re33, name = SrcGb
	reaction_re33=global_par_p48*global_par_Gluc_feed;

% Reaction: id = re36, name = SrcGp
	reaction_re36=(1-global_par_p48)*global_par_Gluc_feed;

% Reaction: id = re31, name = SrcIn
	reaction_re31=global_par_p49*x(11);

	xdot=zeros(23,1);
	
% Species:   id = K_ECF, name = K_ECF, affected by kineticLaw
	xdot(1) = (1/(compartment_c2))*((-1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re7) + (-1.0 * reaction_re9) + (-1.0 * reaction_re35) + (-1.0 * reaction_re6) + ( 1.0 * reaction_re10) + ( 1.0 * reaction_re3) + ( 1.0 * reaction_re8));
	
% Species:   id = K_ICF, name = K_ICF, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re3));
	
% Species:   id = K_urin, name = K_urin, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re9));
	
% Species:   id = K_tiss, name = K_tiss, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re7) + (-1.0 * reaction_re8);
	
% Species:   id = K_sal, name = K_sal, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_re5) + (-1.0 * reaction_re11);
	
% Species:   id = met_act, name = met_act, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_re20) + (-1.0 * reaction_re21);
	
% Species:   id = K_milk, name = K_milk, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_re35);
	
% Species:   id = K_ECF_mmol, name = K_ECF_mmol, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = K_ICF_mmol, name = K_ICF_mmol, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = K_git, name = K_git, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re34) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re11);
	
% Species:   id = Gluc_b, name = Gluc_b, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*((-1.0 * reaction_re37) + ( 1.0 * reaction_re41) + ( 1.0 * reaction_re38) + (-1.0 * reaction_re40) + ( 1.0 * reaction_re33));
	
% Species:   id = ins_b, name = ins_b, affected by kineticLaw
	xdot(12) = (1/(compartment_c2))*((-1.0 * reaction_re32) + ( 1.0 * reaction_re31));
	
% Species:   id = Gluc_stor, name = Gluc_stor, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_re37) + ( 1.0 * reaction_re39) + (-1.0 * reaction_re38) + (-1.0 * reaction_re43);
	
% Species:   id = Gluc_prod, name = Gluc_prod, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_re41) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re36);
	
% Species:   id = src_metact, name = src_metact
%WARNING speciesID: src_metact, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(15) = 0.0;
	
% Species:   id = snk_metact, name = snk_metact
%WARNING speciesID: snk_metact, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = src_Kgit, name = src_Kgit
%WARNING speciesID: src_Kgit, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
	
% Species:   id = src_Glucblood, name = src_Glucb
%WARNING speciesID: src_Glucblood, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
	
% Species:   id = s23, name = src_Gprod
%WARNING speciesID: s23, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = sa4_degraded, name = snk_Kecf
%WARNING speciesID: sa4_degraded, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = s24, name = Gluc_use, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_re40));
	
% Species:   id = src_insnew, name = src_ins
%WARNING speciesID: src_insnew, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = snk_insnew, name = snk_ins
%WARNING speciesID: snk_insnew, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
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


