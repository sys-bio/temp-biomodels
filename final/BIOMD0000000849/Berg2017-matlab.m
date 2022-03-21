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
% hasInstance http://identifiers.org/biomodels.db/MODEL1710230000
% hasInstance http://identifiers.org/taxonomy/9913
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/28987591
% is http://identifiers.org/biomodels.db/MODEL1710230000
% is http://identifiers.org/biomodels.db/BIOMD0000000849
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 0.175136827769812;
	x0(2) = 0.897325991903361;
	x0(3) = 0.0;
	x0(4) = 1509.6;
	x0(5) = 4.53818901679345;
	x0(6) = 6.24885128313371;
	x0(7) = 0.0;
	x0(8) = 4.47939751267477;
	x0(9) = 22.9505117077561;
	x0(10) = 43.1365559451142;
	x0(11) = 0.546566462071036;
	x0(12) = 21.8532954203392;
	x0(13) = 3647.74674176755;
	x0(14) = 34.0337183015116;
	x0(15) = 0.0;


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
% Parameter:   id =  parameter_1, name = amount to particle factor
	global_par_parameter_1=6.022140857E23;
% assignmentRule: variable = K_ECF_mmol
	x(8)=x(1)/global_par_p34;
% assignmentRule: variable = K_ICF_mmol
	x(9)=x(2)/global_par_p34;
% assignmentRule: variable = pH
	global_par_pH=7.5-x(6)/40;
% assignmentRule: variable = dmi
	global_par_dmi=global_par_p54*487.5*(1-sin(pi*time/12));
% assignmentRule: variable = K_feed
	global_par_K_feed=global_par_p56*global_par_dmi;
% assignmentRule: variable = Gluc_feed
	global_par_Gluc_feed=global_par_p46*global_par_dmi;

% Reaction: id = re20, name = DmMa
	reaction_re20=compartment_default*Function_for_DmMa(compartment_default, global_par_dmi, global_par_p42, global_par_p43, global_par_p45);

% Reaction: id = re37, name = GbGs
	reaction_re37=Function_for_GbGs(x(11), global_par_Gluc_feed, x(14), x(13), compartment_default, x(12), global_par_p1, global_par_p12, global_par_p36, global_par_p55, global_par_p57);

% Reaction: id = re41, name = GpGb
	reaction_re41=Function_for_GpGb(x(11), x(14), compartment_default, global_par_p37, global_par_p39, global_par_p50);

% Reaction: id = re39, name = GpGs
	reaction_re39=compartment_default*Function_for_GpGs(x(14), x(13), compartment_default, global_par_p51, global_par_p55, global_par_p57, global_par_p62);

% Reaction: id = re38, name = GsGb
	reaction_re38=Function_for_GsGb(x(11), global_par_Gluc_feed, x(13), compartment_default, global_par_p1, global_par_p17, global_par_p35, global_par_p55, global_par_p63, global_par_p64, global_par_p65, global_par_p7);

% Reaction: id = re43, name = GsGp
	reaction_re43=compartment_default*Function_for_GsGp(global_par_Gluc_feed, x(13), compartment_default, global_par_p35, global_par_p60, global_par_p61);

% Reaction: id = re4, name = KeKi
	reaction_re4=Function_for_KeKi(x(1), x(12), global_par_p20, global_par_p21, global_par_p3, global_par_p33, global_par_p8, global_par_p9, global_par_pH);

% Reaction: id = re5, name = KeKs
	reaction_re5=Function_for_KeKs(x(1), global_par_dmi, global_par_p18);

% Reaction: id = re7, name = KeKt
	reaction_re7=Function_for_KeKt(x(1), x(10), x(4), compartment_default, global_par_p10, global_par_p15, global_par_p2, global_par_p25);

% Reaction: id = re9, name = KeKu
	reaction_re9=Function_for_KeKu(x(1), x(10), compartment_default, global_par_p13, global_par_p16, global_par_p22, global_par_p24, global_par_p53, global_par_p6);

% Reaction: id = re35, name = KeMi
	reaction_re35=Function_for_KeMi(x(1), global_par_p40, global_par_p52, global_par_p55);

% Reaction: id = re6, name = KeR
	reaction_re6=global_par_p4*x(1);

% Reaction: id = re34, name = KfKg
	reaction_re34=compartment_default*Function_for_KfKg(global_par_K_feed, compartment_default, global_par_p30);

% Reaction: id = re10, name = KgKe
	reaction_re10=Function_for_KgKe(x(10), compartment_default, global_par_p31);

% Reaction: id = re3, name = KiKe
	reaction_re3=Function_for_KiKe(x(1), x(2), global_par_p14, global_par_p19, global_par_p20, global_par_p23, global_par_p29, global_par_p5, global_par_pH);

% Reaction: id = re11, name = KsKg
	reaction_re11=compartment_default*Function_for_KsKg(x(5), compartment_default, global_par_p32);

% Reaction: id = re8, name = KtKe
	reaction_re8=Function_for_KtKe(x(1), x(10), x(4), compartment_default, global_par_p10, global_par_p15, global_par_p26, global_par_p27, global_par_p38);

% Reaction: id = re21, name = MaSnk
	reaction_re21=compartment_default*Function_for_MaSnk(compartment_default, x(6), global_par_p44);

% Reaction: id = re40, name = SnkGb
	reaction_re40=Function_for_SnkGb(x(11), x(14), compartment_default, global_par_p28, global_par_p47, global_par_p55, global_par_p58, global_par_p59, global_par_p66);

% Reaction: id = re32, name = SnkIn
	reaction_re32=compartment_c2*Function_for_SnkIn(compartment_c2, x(12), global_par_p41);

% Reaction: id = re33, name = SrcGb
	reaction_re33=compartment_c2*Function_for_SrcGb(global_par_Gluc_feed, compartment_c2, global_par_p48);

% Reaction: id = re36, name = SrcGp
	reaction_re36=compartment_default*Function_for_SrcGp(global_par_Gluc_feed, compartment_default, global_par_p48);

% Reaction: id = re31, name = SrcIn
	reaction_re31=compartment_c2*Function_for_SrcIn(x(11), compartment_c2, global_par_p49);

% Species:   id = src_metact, name = src_metact, constant	const_species_src_metact=0.0;

% Species:   id = snk_metact, name = snk_metact, constant	const_species_snk_metact=0.0;

% Species:   id = src_Kgit, name = src_Kgit, constant	const_species_src_Kgit=0.0;

% Species:   id = src_Glucblood, name = src_Glucb, constant	const_species_src_Glucblood=0.0;

% Species:   id = s23, name = src_Gprod, constant	const_species_s23=0.0;

% Species:   id = sa4_degraded, name = snk_Kecf, constant	const_species_sa4_degraded=0.0;

% Species:   id = src_insnew, name = src_ins, constant	const_species_src_insnew=0.0;

% Species:   id = snk_insnew, name = snk_ins, constant	const_species_snk_insnew=0.0;

	xdot=zeros(15,1);
	
% Species:   id = K_ECF, name = K_ECF, affected by kineticLaw
	xdot(1) = (1/(compartment_c2))*((-1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re7) + (-1.0 * reaction_re9) + (-1.0 * reaction_re35) + (-1.0 * reaction_re6) + ( 1.0 * reaction_re10) + ( 1.0 * reaction_re3) + ( 1.0 * reaction_re8));
	
% Species:   id = K_ICF, name = K_ICF, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re3));
	
% Species:   id = K_urin, name = K_urin, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re9));
	
% Species:   id = K_tiss, name = K_tiss, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_re7) + (-1.0 * reaction_re8));
	
% Species:   id = K_sal, name = K_sal, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re5) + (-1.0 * reaction_re11));
	
% Species:   id = met_act, name = met_act, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re20) + (-1.0 * reaction_re21));
	
% Species:   id = K_milk, name = K_milk, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re35));
	
% Species:   id = K_ECF_mmol, name = K_ECF_mmol, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = K_ICF_mmol, name = K_ICF_mmol, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = K_git, name = K_git, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re34) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re11));
	
% Species:   id = Gluc_b, name = Gluc_b, affected by kineticLaw
	xdot(11) = (1/(compartment_c2))*((-1.0 * reaction_re37) + ( 1.0 * reaction_re41) + ( 1.0 * reaction_re38) + (-1.0 * reaction_re40) + ( 1.0 * reaction_re33));
	
% Species:   id = ins_b, name = ins_b, affected by kineticLaw
	xdot(12) = (1/(compartment_c2))*((-1.0 * reaction_re32) + ( 1.0 * reaction_re31));
	
% Species:   id = Gluc_stor, name = Gluc_stor, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re37) + ( 1.0 * reaction_re39) + (-1.0 * reaction_re38) + (-1.0 * reaction_re43));
	
% Species:   id = Gluc_prod, name = Gluc_prod, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*((-1.0 * reaction_re41) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re36));
	
% Species:   id = s24, name = Gluc_use, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*(( 1.0 * reaction_re40));
end

function z=Function_for_DmMa(default,dmi,p42,p43,p45), z=((p45+p42*dmi^2/(dmi^2+p43^2))/default);end

function z=Function_for_GbGs(Gluc_b,Gluc_feed,Gluc_prod,Gluc_stor,default,ins_b,p1,p12,p36,p55,p57), z=(Gluc_feed^10/(Gluc_feed^10+p1^10)*p12*Gluc_prod*default*p57^10/((Gluc_stor*default)^10+p57^10)*ins_b*Gluc_b*p36^10/(p36^10+p55^10));end

function z=Function_for_GpGb(Gluc_b,Gluc_prod,default,p37,p39,p50), z=((p37+p39*Gluc_prod*default)*1/(1+(Gluc_b/p50)^10));end

function z=Function_for_GpGs(Gluc_prod,Gluc_stor,default,p51,p55,p57,p62), z=(p51*Gluc_prod*default*p57^10/((Gluc_stor*default)^10+p57^10)*p62^10/(p62^10+p55^10)/default);end

function z=Function_for_GsGb(Gluc_b,Gluc_feed,Gluc_stor,default,p1,p17,p35,p55,p63,p64,p65,p7), z=(1/(1+(Gluc_feed/p1)^10)*p17*(p7-Gluc_b)*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10)+1/(1+(p64/p55)^10)*p65^10/(p65^10+Gluc_b^10)*p63*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10));end

function z=Function_for_GsGp(Gluc_feed,Gluc_stor,default,p35,p60,p61), z=(p60*1/(1+(Gluc_feed/p61)^5)*(Gluc_stor*default)^10/((Gluc_stor*default)^10+p35^10)/default);end

function z=Function_for_KeKi(K_ECF,ins_b,p20,p21,p3,p33,p8,p9,pH), z=((p8+p9*ins_b^8/(ins_b^8+p3^8))*K_ECF^2/(K_ECF^2+p33^2)*(1+p21*pH^10/(pH^10+p20^10)));end

function z=Function_for_KeKs(K_ECF,dmi,p18), z=(p18*K_ECF*dmi);end

function z=Function_for_KeKt(K_ECF,K_git,K_tiss,default,p10,p15,p2,p25), z=((K_git*default)^10/((K_git*default)^10+p15^10)*p25*K_ECF*(p2-p10)^10/((K_tiss*default-p10)^10+(p2-p10)^10));end

function z=Function_for_KeKu(K_ECF,K_git,default,p13,p16,p22,p24,p53,p6), z=((1+p13*K_ECF^5/(K_ECF^5+p24^5))*p6*K_git*default*(1+p16*K_ECF^10/(K_ECF^10+p22^10))+p53*K_ECF);end

function z=Function_for_KeMi(K_ECF,p40,p52,p55), z=(p52*p55*K_ECF^10/(K_ECF^10+p40^10));end

function z=Function_for_KfKg(K_feed,default,p30), z=(p30*K_feed/default);end

function z=Function_for_KgKe(K_git,default,p31), z=(p31*K_git*default);end

function z=Function_for_KiKe(K_ECF,K_ICF,p14,p19,p20,p23,p29,p5,pH), z=((1+1/(1+(K_ECF/p29)^10))*p5*(1+1/(1+(pH/p20)^10))*K_ICF^2/(K_ICF^2+p23^2)*(1+p19*K_ICF^2/(K_ICF^2+p14^2)));end

function z=Function_for_KsKg(K_sal,default,p32), z=(p32*K_sal*default/default);end

function z=Function_for_KtKe(K_ECF,K_git,K_tiss,default,p10,p15,p26,p27,p38), z=(1/(1+(K_git*default/p15)^10)*p26*(p27-K_ECF)*(K_tiss*default-p10)^10/((K_tiss*default-p10)^10+(p38*0.99-p10)^10));end

function z=Function_for_MaSnk(default,met_act,p44), z=(p44*met_act*default/default);end

function z=Function_for_SnkGb(Gluc_b,Gluc_prod,default,p28,p47,p55,p58,p59,p66), z=(Gluc_b^10/(Gluc_b^10+p58^10)*(p28*Gluc_b+p59*Gluc_prod*default*exp((-p66)*p55)+p55*p47));end

function z=Function_for_SnkIn(c2,ins_b,p41), z=(p41*ins_b/c2);end

function z=Function_for_SrcGb(Gluc_feed,c2,p48), z=(p48*Gluc_feed/c2);end

function z=Function_for_SrcGp(Gluc_feed,default,p48), z=((1-p48)*Gluc_feed/default);end

function z=Function_for_SrcIn(Gluc_b,c2,p49), z=(p49*Gluc_b/c2);end

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


