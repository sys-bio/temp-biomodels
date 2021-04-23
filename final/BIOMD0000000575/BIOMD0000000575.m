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
% Model name = Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease
%
% is http://identifiers.org/biomodels.db/MODEL1504130001
% is http://identifiers.org/biomodels.db/BIOMD0000000575
% isDescribedBy http://identifiers.org/pubmed/19136028
%


function main()
%Initial conditions vector
	x0=zeros(50,1);
	x0(50) = 0.5;
	x0(1) = 0.05;
	x0(2) = 0.025;
	x0(3) = 0.01;
	x0(4) = 2.0;
	x0(5) = 0.5;
	x0(6) = 0.02;
	x0(7) = 0.1;
	x0(8) = 0.05;
	x0(9) = 1.0;
	x0(10) = 0.2;
	x0(11) = 0.35;
	x0(12) = 0.2;
	x0(13) = 0.35;
	x0(14) = 0.2;
	x0(15) = 0.1;
	x0(16) = 1.3;
	x0(17) = 2.5;
	x0(18) = 0.2;
	x0(19) = 0.1;
	x0(20) = 0.5;
	x0(21) = 1.0;
	x0(22) = 0.05;
	x0(23) = 0.3;
	x0(24) = 1.5;
	x0(25) = 1.5;
	x0(26) = 0.5;
	x0(27) = 0.5;
	x0(28) = 0.35;
	x0(29) = 0.35;
	x0(30) = 0.35;
	x0(31) = 0.2;
	x0(32) = 0.35;
	x0(33) = 0.1;
	x0(34) = 0.05;
	x0(35) = 0.025;
	x0(36) = 0.013;
	x0(37) = 0.1;
	x0(38) = 0.1;
	x0(39) = 0.025;
	x0(40) = 0.013;
	x0(41) = 0.5;
	x0(42) = 0.2;
	x0(43) = 0.02;
	x0(44) = 0.2;
	x0(45) = 1.0;
	x0(46) = 0.5;
	x0(47) = 10.0;
	x0(48) = 0.3;
	x0(49) = 0.5;


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

% Compartment: id = Neuronal_cytosol, name = Neuronal cytosol, constant
	compartment_Neuronal_cytosol=1.0;
% Compartment: id = Vesicle, name = Vesicle, constant
	compartment_Vesicle=1.0;
% Compartment: id = Autophagosome, name = Autophagosome, constant
	compartment_Autophagosome=1.0;
% Compartment: id = Proteasome, name = Proteasome, constant
	compartment_Proteasome=1.0;
% Compartment: id = Lysosome, name = Lysosome, constant
	compartment_Lysosome=1.0;
% Parameter:   id =  g11, name = g11
	global_par_g11=1.0;
% Parameter:   id =  p186, name = p186
	global_par_p186=0.5;
% Parameter:   id =  p110, name = p110
	global_par_p110=1.0;
% Parameter:   id =  p19, name = p19
	global_par_p19=1.0;
% Parameter:   id =  p18, name = p18
	global_par_p18=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.03;
% Parameter:   id =  g22, name = g22
	global_par_g22=1.0;
% Parameter:   id =  p286, name = p286
	global_par_p286=0.25;
% Parameter:   id =  p210, name = p210
	global_par_p210=0.5;
% Parameter:   id =  p29, name = p29
	global_par_p29=0.5;
% Parameter:   id =  p28, name = p28
	global_par_p28=0.5;
% Parameter:   id =  i26, name = i26
	global_par_i26=-1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.01;
% Parameter:   id =  g326, name = g326
	global_par_g326=1.0;
% Parameter:   id =  g23, name = g23
	global_par_g23=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.007;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.9;
% Parameter:   id =  i41, name = i41
	global_par_i41=-0.01;
% Parameter:   id =  i42, name = i42
	global_par_i42=-0.01;
% Parameter:   id =  i43, name = i43
	global_par_i43=-0.01;
% Parameter:   id =  g412, name = g412
	global_par_g412=1.0;
% Parameter:   id =  g415, name = g415
	global_par_g415=1.0;
% Parameter:   id =  g427, name = g427
	global_par_g427=1.0;
% Parameter:   id =  g430, name = g430
	global_par_g430=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.5;
% Parameter:   id =  g613, name = g613
	global_par_g613=1.0;
% Parameter:   id =  g614, name = g614
	global_par_g614=1.0;
% Parameter:   id =  g615, name = g615
	global_par_g615=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.03;
% Parameter:   id =  g715, name = g715
	global_par_g715=1.0;
% Parameter:   id =  g716, name = g716
	global_par_g716=1.0;
% Parameter:   id =  g717, name = g717
	global_par_g717=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.001;
% Parameter:   id =  g819, name = g819
	global_par_g819=1.0;
% Parameter:   id =  g821, name = g821
	global_par_g821=1.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.001;
% Parameter:   id =  g919, name = g919
	global_par_g919=1.0;
% Parameter:   id =  g920, name = g920
	global_par_g920=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.05;
% Parameter:   id =  g1025, name = g1025
	global_par_g1025=1.0;
% Parameter:   id =  g1072, name = g1072
	global_par_g1072=1.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.05;
% Parameter:   id =  g1124, name = g1124
	global_par_g1124=1.0;
% Parameter:   id =  g1170, name = g1170
	global_par_g1170=1.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.1;
% Parameter:   id =  i131, name = i131
	global_par_i131=-0.01;
% Parameter:   id =  i1310, name = i1310
	global_par_i1310=-0.01;
% Parameter:   id =  g1335, name = g1335
	global_par_g1335=1.0;
% Parameter:   id =  g1336, name = g1336
	global_par_g1336=1.0;
% Parameter:   id =  g1351, name = g1351
	global_par_g1351=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=3.0;
% Parameter:   id =  g1437, name = g1437
	global_par_g1437=1.0;
% Parameter:   id =  g1467, name = g1467
	global_par_g1467=1.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.2;
% Parameter:   id =  i152, name = i152
	global_par_i152=-0.1;
% Parameter:   id =  g156, name = g156
	global_par_g156=1.0;
% Parameter:   id =  g1544, name = g1544
	global_par_g1544=1.0;
% Parameter:   id =  g1545, name = g1545
	global_par_g1545=1.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.0E-4;
% Parameter:   id =  g1643, name = g1643
	global_par_g1643=1.0;
% Parameter:   id =  g1644, name = g1644
	global_par_g1644=1.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.0E-4;
% Parameter:   id =  g1742, name = g1742
	global_par_g1742=1.0;
% Parameter:   id =  g1744, name = g1744
	global_par_g1744=1.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.02;
% Parameter:   id =  g186, name = g186
	global_par_g186=1.0;
% Parameter:   id =  g1851, name = g1851
	global_par_g1851=1.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.01;
% Parameter:   id =  g196, name = g196
	global_par_g196=1.0;
% Parameter:   id =  g1951, name = g1951
	global_par_g1951=1.0;
% Parameter:   id =  g1953, name = g1953
	global_par_g1953=1.0;
% Parameter:   id =  g1960, name = g1960
	global_par_g1960=1.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.1;
% Parameter:   id =  g209, name = g209
	global_par_g209=1.0;
% Parameter:   id =  g2065, name = g2065
	global_par_g2065=1.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.1;
% Parameter:   id =  g2166, name = g2166
	global_par_g2166=1.0;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.5;
% Parameter:   id =  g229, name = g229
	global_par_g229=1.0;
% Parameter:   id =  g2259, name = g2259
	global_par_g2259=1.0;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.5;
% Parameter:   id =  g239, name = g239
	global_par_g239=1.0;
% Parameter:   id =  g2361, name = g2361
	global_par_g2361=1.0;
% Parameter:   id =  g2362, name = g2362
	global_par_g2362=1.0;
% Parameter:   id =  k24, name = k24
	global_par_k24=1.0;
% Parameter:   id =  g2463, name = g2463
	global_par_g2463=1.0;
% Parameter:   id =  g2464, name = g2464
	global_par_g2464=1.0;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.05;
% Parameter:   id =  g2552, name = g2552
	global_par_g2552=1.0;
% Parameter:   id =  g2555, name = g2555
	global_par_g2555=0.3;
% Parameter:   id =  g2556, name = g2556
	global_par_g2556=0.25;
% Parameter:   id =  k26f, name = k26f
	global_par_k26f=0.05;
% Parameter:   id =  g26f15, name = g26f15
	global_par_g26f15=1.0;
% Parameter:   id =  g26f16, name = g26f16
	global_par_g26f16=1.0;
% Parameter:   id =  g26f18, name = g26f18
	global_par_g26f18=1.0;
% Parameter:   id =  k26r, name = k26r
	global_par_k26r=0.005;
% Parameter:   id =  g26r30, name = g26r30
	global_par_g26r30=1.0;
% Parameter:   id =  g26r68, name = g26r68
	global_par_g26r68=1.0;
% Parameter:   id =  k27f, name = k27f
	global_par_k27f=0.05;
% Parameter:   id =  g27f15, name = g27f15
	global_par_g27f15=1.0;
% Parameter:   id =  g27f16, name = g27f16
	global_par_g27f16=1.0;
% Parameter:   id =  g27f68, name = g27f68
	global_par_g27f68=1.0;
% Parameter:   id =  k27r, name = k27r
	global_par_k27r=0.005;
% Parameter:   id =  g27r30, name = g27r30
	global_par_g27r30=1.0;
% Parameter:   id =  g27r69, name = g27r69
	global_par_g27r69=1.0;
% Parameter:   id =  k28f, name = k28f
	global_par_k28f=0.05;
% Parameter:   id =  g28f15, name = g28f15
	global_par_g28f15=1.0;
% Parameter:   id =  g28f16, name = g28f16
	global_par_g28f16=1.0;
% Parameter:   id =  g28f69, name = g28f69
	global_par_g28f69=1.0;
% Parameter:   id =  k28r, name = k28r
	global_par_k28r=0.005;
% Parameter:   id =  g28r30, name = g28r30
	global_par_g28r30=1.0;
% Parameter:   id =  g28r70, name = g28r70
	global_par_g28r70=1.0;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.05;
% Parameter:   id =  g2915, name = g2915
	global_par_g2915=1.0;
% Parameter:   id =  g2916, name = g2916
	global_par_g2916=1.0;
% Parameter:   id =  g2971, name = g2971
	global_par_g2971=1.0;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.001;
% Parameter:   id =  g301, name = g301
	global_par_g301=1.0;
% Parameter:   id =  g3030, name = g3030
	global_par_g3030=1.0;
% Parameter:   id =  k31, name = k31
	global_par_k31=0.05;
% Parameter:   id =  g3172, name = g3172
	global_par_g3172=1.0;
% Parameter:   id =  g3173, name = g3173
	global_par_g3173=1.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.001;
% Parameter:   id =  g321, name = g321
	global_par_g321=1.0;
% Parameter:   id =  p328, name = p328
	global_par_p328=0.1;
% Parameter:   id =  p329, name = p329
	global_par_p329=0.1;
% Parameter:   id =  p3210, name = p3210
	global_par_p3210=0.1;
% Parameter:   id =  p3286, name = p3286
	global_par_p3286=0.05;
% Parameter:   id =  g3274, name = g3274
	global_par_g3274=1.0;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.001;
% Parameter:   id =  g332, name = g332
	global_par_g332=1.0;
% Parameter:   id =  g3330, name = g3330
	global_par_g3330=1.0;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.05;
% Parameter:   id =  g3472, name = g3472
	global_par_g3472=1.0;
% Parameter:   id =  g3475, name = g3475
	global_par_g3475=1.0;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.001;
% Parameter:   id =  g352, name = g352
	global_par_g352=1.0;
% Parameter:   id =  p358, name = p358
	global_par_p358=0.1;
% Parameter:   id =  p359, name = p359
	global_par_p359=0.1;
% Parameter:   id =  p3510, name = p3510
	global_par_p3510=0.1;
% Parameter:   id =  p3586, name = p3586
	global_par_p3586=0.05;
% Parameter:   id =  g3576, name = g3576
	global_par_g3576=1.0;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.05;
% Parameter:   id =  i368, name = i368
	global_par_i368=-0.1;
% Parameter:   id =  i369, name = i369
	global_par_i369=-0.1;
% Parameter:   id =  i3610, name = i3610
	global_par_i3610=-0.1;
% Parameter:   id =  i3686, name = i3686
	global_par_i3686=-0.05;
% Parameter:   id =  g3677, name = g3677
	global_par_g3677=1.0;
% Parameter:   id =  g3679, name = g3679
	global_par_g3679=1.0;
% Parameter:   id =  k37, name = k37
	global_par_k37=0.05;
% Parameter:   id =  g3770, name = g3770
	global_par_g3770=1.0;
% Parameter:   id =  g3773, name = g3773
	global_par_g3773=1.0;
% Parameter:   id =  k38, name = k38
	global_par_k38=0.7;
% Parameter:   id =  i381, name = i381
	global_par_i381=-0.01;
% Parameter:   id =  i382, name = i382
	global_par_i382=-0.01;
% Parameter:   id =  i383, name = i383
	global_par_i383=-0.01;
% Parameter:   id =  g3812, name = g3812
	global_par_g3812=1.0;
% Parameter:   id =  g3815, name = g3815
	global_par_g3815=1.0;
% Parameter:   id =  g3830, name = g3830
	global_par_g3830=1.0;
% Parameter:   id =  g3878, name = g3878
	global_par_g3878=1.0;
% Parameter:   id =  k43, name = k43
	global_par_k43=0.05;
% Parameter:   id =  g431, name = g431
	global_par_g431=1.0;
% Parameter:   id =  g4384, name = g4384
	global_par_g4384=1.0;
% Parameter:   id =  k44, name = k44
	global_par_k44=0.045;
% Parameter:   id =  g442, name = g442
	global_par_g442=1.0;
% Parameter:   id =  g4484, name = g4484
	global_par_g4484=1.0;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.04;
% Parameter:   id =  g453, name = g453
	global_par_g453=1.0;
% Parameter:   id =  g4584, name = g4584
	global_par_g4584=1.0;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.03;
% Parameter:   id =  i468, name = i468
	global_par_i468=-0.1;
% Parameter:   id =  i469, name = i469
	global_par_i469=-0.1;
% Parameter:   id =  i4610, name = i4610
	global_par_i4610=-0.1;
% Parameter:   id =  i4686, name = i4686
	global_par_i4686=-0.05;
% Parameter:   id =  g4677, name = g4677
	global_par_g4677=1.0;
% Parameter:   id =  g4681, name = g4681
	global_par_g4681=1.0;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.03;
% Parameter:   id =  i478, name = i478
	global_par_i478=-0.1;
% Parameter:   id =  i479, name = i479
	global_par_i479=-0.1;
% Parameter:   id =  i4710, name = i4710
	global_par_i4710=-0.1;
% Parameter:   id =  i4786, name = i4786
	global_par_i4786=-0.05;
% Parameter:   id =  g4777, name = g4777
	global_par_g4777=1.0;
% Parameter:   id =  g4782, name = g4782
	global_par_g4782=1.0;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.03;
% Parameter:   id =  i488, name = i488
	global_par_i488=-0.1;
% Parameter:   id =  i489, name = i489
	global_par_i489=-0.1;
% Parameter:   id =  i4810, name = i4810
	global_par_i4810=-0.1;
% Parameter:   id =  i4886, name = i4886
	global_par_i4886=-0.05;
% Parameter:   id =  g4877, name = g4877
	global_par_g4877=1.0;
% Parameter:   id =  g4883, name = g4883
	global_par_g4883=1.0;
% Parameter:   id =  k50, name = k50
	global_par_k50=0.05;
% Parameter:   id =  g501, name = g501
	global_par_g501=1.0;
% Parameter:   id =  g5080, name = g5080
	global_par_g5080=1.0;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.05;
% Parameter:   id =  g512, name = g512
	global_par_g512=1.0;
% Parameter:   id =  g5180, name = g5180
	global_par_g5180=1.0;
% Parameter:   id =  k52, name = k52
	global_par_k52=0.05;
% Parameter:   id =  g523, name = g523
	global_par_g523=1.0;
% Parameter:   id =  g5280, name = g5280
	global_par_g5280=1.0;
% Parameter:   id =  k53, name = k53
	global_par_k53=0.05;
% Parameter:   id =  g534, name = g534
	global_par_g534=1.0;
% Parameter:   id =  g5380, name = g5380
	global_par_g5380=1.0;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.005;
% Parameter:   id =  g5410, name = g5410
	global_par_g5410=1.0;
% Parameter:   id =  g5419, name = g5419
	global_par_g5419=1.0;
% Parameter:   id =  k55, name = k55
	global_par_k55=0.05;
% Parameter:   id =  g556, name = g556
	global_par_g556=1.0;
% Parameter:   id =  g5586, name = g5586
	global_par_g5586=1.0;
% Parameter:   id =  k56, name = k56
	global_par_k56=0.05;
% Parameter:   id =  g5686, name = g5686
	global_par_g5686=1.0;
% Parameter:   id =  g5687, name = g5687
	global_par_g5687=1.0;
% Parameter:   id =  k57, name = k57
	global_par_k57=0.005;
% Parameter:   id =  g5710, name = g5710
	global_par_g5710=1.0;
% Parameter:   id =  g5762, name = g5762
	global_par_g5762=1.0;
% Parameter:   id =  k100, name = k100
	global_par_k100=0.005;
% Parameter:   id =  g10037, name = g10037
	global_par_g10037=1.0;
% Parameter:   id =  g10051, name = g10051
	global_par_g10051=1.0;
% Parameter:   id =  g100115, name = g100115
	global_par_g100115=1.0;
% Parameter:   id =  k101, name = k101
	global_par_k101=0.005;
% Parameter:   id =  g10136, name = g10136
	global_par_g10136=1.0;
% Parameter:   id =  g10151, name = g10151
	global_par_g10151=1.0;
% Parameter:   id =  g101115, name = g101115
	global_par_g101115=1.0;
% Parameter:   id =  k102, name = k102
	global_par_k102=0.005;
% Parameter:   id =  g10210, name = g10210
	global_par_g10210=1.0;
% Parameter:   id =  g10251, name = g10251
	global_par_g10251=1.0;
% Parameter:   id =  g102115, name = g102115
	global_par_g102115=1.0;
% Parameter:   id =  k115, name = k115
	global_par_k115=0.5;
% Parameter:   id =  g11565, name = g11565
	global_par_g11565=1.0;
% Parameter:   id =  g11566, name = g11566
	global_par_g11566=1.0;
% Parameter:   id =  g115118, name = g115118
	global_par_g115118=1.0;
% Parameter:   id =  k116, name = k116
	global_par_k116=0.5;
% Parameter:   id =  g11642, name = g11642
	global_par_g11642=1.0;
% Parameter:   id =  g116118, name = g116118
	global_par_g116118=1.0;
% Parameter:   id =  k1_0, name = k1'
% Parameter:   id =  k2_0, name = k2'
% Parameter:   id =  k4_0, name = k4'
% Parameter:   id =  k13_0, name = k13'
% Parameter:   id =  k15_0, name = k15'
% Parameter:   id =  k32_0, name = k32'
% Parameter:   id =  k35_0, name = k35'
% Parameter:   id =  k36_0, name = k36'
% Parameter:   id =  k38_0, name = k38'
% Parameter:   id =  k46_0, name = k46'
% Parameter:   id =  k47_0, name = k47'
% Parameter:   id =  k48_0, name = k48'
% assignmentRule: variable = k1_0
	global_par_k1_0=0.0003*(global_par_p18*x(6)+global_par_p19*x(7)+global_par_p110*x(8)+global_par_p186*x(43));
% assignmentRule: variable = k2_0
	global_par_k2_0=0.0001*(global_par_i26*x(4)+global_par_p28*x(6)+global_par_p29*x(7)+global_par_p210*x(8)+global_par_p286*x(43));
% assignmentRule: variable = k4_0
	global_par_k4_0=0.009*(global_par_i41*const_species_Alpha_synuclein+global_par_i42*x(1)+global_par_i43*x(2));
% assignmentRule: variable = k13_0
	global_par_k13_0=0.001*(global_par_i131*const_species_Alpha_synuclein+global_par_i1310*x(8));
% assignmentRule: variable = k15_0
	global_par_k15_0=0.002*global_par_i152*x(1);
% assignmentRule: variable = k32_0
	global_par_k32_0=1E-5*(global_par_p328*x(6)+global_par_p329*x(7)+global_par_p3210*x(8)+global_par_p3286*x(43));
% assignmentRule: variable = k35_0
	global_par_k35_0=1E-5*(global_par_p358*x(6)+global_par_p359*x(7)+global_par_p3510*x(8)+global_par_p3586*x(43));
% assignmentRule: variable = k36_0
	global_par_k36_0=0.0005*(global_par_i368*x(6)+global_par_i369*x(7)+global_par_i3610*x(8)+global_par_i3686*x(43));
% assignmentRule: variable = k38_0
	global_par_k38_0=0.007*(global_par_i381*const_species_Alpha_synuclein+global_par_i382*x(1)+global_par_i383*x(2));
% assignmentRule: variable = k46_0
	global_par_k46_0=0.0003*(global_par_i468*x(6)+global_par_i469*x(7)+global_par_i4610*x(8)+global_par_i4686*x(43));
% assignmentRule: variable = k47_0
	global_par_k47_0=0.0003*(global_par_i478*x(6)+global_par_i479*x(7)+global_par_i4710*x(8)+global_par_i4786*x(43));
% assignmentRule: variable = k48_0
	global_par_k48_0=0.0003*(global_par_i488*x(6)+global_par_i489*x(7)+global_par_i4810*x(8)+global_par_i4886*x(43));
% rateRule: variable = Fe2
x(26) = x(50);

% Reaction: id = J1, name = J1
	reaction_J1=compartment_Neuronal_cytosol*J1Sub(global_par_k1, const_species_Alpha_synuclein, global_par_g11);

% Reaction: id = J2, name = J2
	reaction_J2=compartment_Neuronal_cytosol*J1Sub(global_par_k2, x(1), global_par_g22);

% Reaction: id = J3, name = J3
	reaction_J3=compartment_Neuronal_cytosol*J2Sub(global_par_k3, x(2), global_par_g23, x(17), global_par_g326);

% Reaction: id = J4, name = J4
	reaction_J4=compartment_Neuronal_cytosol*J1Sub3Mod(global_par_k4, x(18), global_par_g427, const_species_Proteasome_0, global_par_g412, const_species_ATP, global_par_g415, x(20), global_par_g430);

% Reaction: id = J6, name = J6
	reaction_J6=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k6, x(9), global_par_g613, x(10), global_par_g614, const_species_ATP, global_par_g615);

% Reaction: id = J7, name = J7
	reaction_J7=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k7, x(11), global_par_g716, x(12), global_par_g717, const_species_ATP, global_par_g715);

% Reaction: id = J8, name = J8
	reaction_J8=compartment_Neuronal_cytosol*J2Sub(global_par_k8, x(14), global_par_g819, const_species_Substrate, global_par_g821);

% Reaction: id = J9, name = J9
	reaction_J9=compartment_Neuronal_cytosol*J2Sub(global_par_k9, x(14), global_par_g919, const_species_Synphilin_1, global_par_g920);

% Reaction: id = J10, name = J10
	reaction_J10=compartment_Neuronal_cytosol*J2Sub(global_par_k10, x(16), global_par_g1025, x(32), global_par_g1072);

% Reaction: id = J11, name = J11
	reaction_J11=compartment_Neuronal_cytosol*J2Sub(global_par_k11, x(15), global_par_g1124, x(30), global_par_g1170);

% Reaction: id = J13, name = J13
	reaction_J13=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k13, const_species_L_Tyr, global_par_g1336, const_species_O2_0, global_par_g1351, const_species_TH, global_par_g1335);

% Reaction: id = J14, name = J14
	reaction_J14=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k14, x(21), global_par_g1437, const_species_DDC, global_par_g1467);

% Reaction: id = J15, name = J15
	reaction_J15=J2Sub1Mod(global_par_k15, x(4), global_par_g156, const_species_Vesicle_0, global_par_g1544, const_species_VMAT2, global_par_g1545);

% Reaction: id = J16, name = J16
	reaction_J16=J2Sub(global_par_k16, const_species_Bioamines, global_par_g1643, const_species_Vesicle_0, global_par_g1644);

% Reaction: id = J17, name = J17
	reaction_J17=J2Sub(global_par_k17, const_species_Neurotoxins, global_par_g1742, const_species_Vesicle_0, global_par_g1744);

% Reaction: id = J18, name = J18
	reaction_J18=compartment_Neuronal_cytosol*J2Sub(global_par_k18, x(4), global_par_g186, const_species_O2_0, global_par_g1851);

% Reaction: id = J19, name = J19
	reaction_J19=compartment_Neuronal_cytosol*J3Sub1Mod(global_par_k19, x(4), global_par_g196, const_species_O2_0, global_par_g1951, const_species_H2O, global_par_g1960, const_species_MAO, global_par_g1953);

% Reaction: id = J20, name = J20
	reaction_J20=compartment_Neuronal_cytosol*J2Sub(global_par_k20, x(7), global_par_g209, x(26), global_par_g2065);

% Reaction: id = J21, name = J21
	reaction_J21=compartment_Neuronal_cytosol*J1Sub(global_par_k21, x(27), global_par_g2166);

% Reaction: id = J22, name = J22
	reaction_J22=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k22, x(7), global_par_g229, const_species_Catalase, global_par_g2259);

% Reaction: id = J23, name = J23
	reaction_J23=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k23, x(7), global_par_g239, x(24), global_par_g2362, const_species_Gluta_per, global_par_g2361);

% Reaction: id = J24, name = J24
	reaction_J24=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k24, x(25), global_par_g2463, const_species_Gluta_red, global_par_g2464);

% Reaction: id = J25, name = J25
	reaction_J25=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k25, x(22), global_par_g2552, const_species_NAD, global_par_g2556, const_species_ALDH, global_par_g2555);

% Reaction: id = J26f, name = J26f
	reaction_J26f=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k26f, x(11), global_par_g26f16, x(13), global_par_g26f18, const_species_ATP, global_par_g26f15);

% Reaction: id = J26r, name = J26r
	reaction_J26r=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k26r, x(28), global_par_g26r68, x(20), global_par_g26r30);

% Reaction: id = J27f, name = J27f
	reaction_J27f=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k27f, x(11), global_par_g27f16, x(28), global_par_g27f68, const_species_ATP, global_par_g27f15);

% Reaction: id = J27r, name = J27r
	reaction_J27r=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k27r, x(29), global_par_g27r69, x(20), global_par_g27r30);

% Reaction: id = J28f, name = J28f
	reaction_J28f=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k28f, x(11), global_par_g28f16, x(29), global_par_g28f69, const_species_ATP, global_par_g28f15);

% Reaction: id = J28r, name = J28r
	reaction_J28r=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k28r, x(30), global_par_g28r70, x(20), global_par_g28r30);

% Reaction: id = J29, name = J29
	reaction_J29=compartment_Neuronal_cytosol*J2Sub1Mod(global_par_k29, x(11), global_par_g2916, x(31), global_par_g2971, const_species_ATP, global_par_g2915);

% Reaction: id = J30, name = J30
	reaction_J30=compartment_Neuronal_cytosol*J2Sub(global_par_k30, const_species_Alpha_synuclein, global_par_g301, x(20), global_par_g3030);

% Reaction: id = J31, name = J31
	reaction_J31=compartment_Neuronal_cytosol*J2Sub(global_par_k31, x(32), global_par_g3172, x(33), global_par_g3173);

% Reaction: id = J32, name = J32
	reaction_J32=compartment_Neuronal_cytosol*J2Sub(global_par_k32, const_species_Alpha_synuclein, global_par_g321, x(34), global_par_g3274);

% Reaction: id = J33, name = J33
	reaction_J33=compartment_Neuronal_cytosol*J2Sub(global_par_k33, x(1), global_par_g332, x(20), global_par_g3330);

% Reaction: id = J34, name = J34
	reaction_J34=compartment_Neuronal_cytosol*J2Sub(global_par_k34, x(32), global_par_g3472, x(35), global_par_g3475);

% Reaction: id = J35, name = J35
	reaction_J35=compartment_Neuronal_cytosol*J2Sub(global_par_k35, x(1), global_par_g352, x(36), global_par_g3576);

% Reaction: id = J36, name = J36
	reaction_J36=J1Sub1Mod(global_par_k36, x(49), global_par_g3679, const_species_Lysosome_0, global_par_g3677);

% Reaction: id = J37, name = J37
	reaction_J37=compartment_Neuronal_cytosol*J2Sub(global_par_k37, x(30), global_par_g3770, x(33), global_par_g3773);

% Reaction: id = J38, name = J38
	reaction_J38=compartment_Neuronal_cytosol*J1Sub3Mod(global_par_k38, x(37), global_par_g3878, const_species_Proteasome_0, global_par_g3812, const_species_ATP, global_par_g3815, x(20), global_par_g3830);

% Reaction: id = J43, name = J43
	reaction_J43=compartment_Neuronal_cytosol*J2Sub(global_par_k43, const_species_Alpha_synuclein, global_par_g431, x(41), global_par_g4384);

% Reaction: id = J44, name = J44
	reaction_J44=compartment_Neuronal_cytosol*J2Sub(global_par_k44, x(1), global_par_g442, x(41), global_par_g4484);

% Reaction: id = J45, name = J45
	reaction_J45=compartment_Neuronal_cytosol*J2Sub(global_par_k45, x(2), global_par_g453, x(41), global_par_g4584);

% Reaction: id = J46, name = J46
	reaction_J46=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k46, x(38), global_par_g4681, const_species_Lysosome_0, global_par_g4677);

% Reaction: id = J47, name = J47
	reaction_J47=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k47, x(39), global_par_g4782, const_species_Lysosome_0, global_par_g4777);

% Reaction: id = J48, name = J48
	reaction_J48=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k48, x(40), global_par_g4883, const_species_Lysosome_0, global_par_g4877);

% Reaction: id = J50, name = J50
	reaction_J50=J2Sub(global_par_k50, const_species_Alpha_synuclein, global_par_g501, const_species_Preautophagosome_membrane, global_par_g5080);

% Reaction: id = J51, name = J51
	reaction_J51=J2Sub(global_par_k51, x(1), global_par_g512, const_species_Preautophagosome_membrane, global_par_g5180);

% Reaction: id = J52, name = J52
	reaction_J52=J2Sub(global_par_k52, x(2), global_par_g523, const_species_Preautophagosome_membrane, global_par_g5280);

% Reaction: id = J53, name = J53
	reaction_J53=J2Sub(global_par_k53, x(3), global_par_g534, const_species_Preautophagosome_membrane, global_par_g5380);

% Reaction: id = J54, name = J54
	reaction_J54=compartment_Neuronal_cytosol*J2Sub(global_par_k54, x(8), global_par_g5410, x(14), global_par_g5419);

% Reaction: id = J55, name = J55
	reaction_J55=compartment_Neuronal_cytosol*J2Sub(global_par_k55, x(4), global_par_g556, x(43), global_par_g5586);

% Reaction: id = J56, name = J56
	reaction_J56=compartment_Neuronal_cytosol*J1Sub1Mod(global_par_k56, x(43), global_par_g5686, const_species_SOD, global_par_g5687);

% Reaction: id = J57, name = J57
	reaction_J57=compartment_Neuronal_cytosol*J2Sub(global_par_k57, x(8), global_par_g5710, x(24), global_par_g5762);

% Reaction: id = J100, name = J100
	reaction_J100=compartment_Neuronal_cytosol*J3Sub(global_par_k100, x(21), global_par_g10037, const_species_O2_0, global_par_g10051, const_species_Cysteine, global_par_g100115);

% Reaction: id = J101, name = J101
	reaction_J101=compartment_Neuronal_cytosol*J3Sub(global_par_k101, const_species_L_Tyr, global_par_g10136, const_species_O2_0, global_par_g10151, const_species_Cysteine, global_par_g101115);

% Reaction: id = J102, name = J102
	reaction_J102=compartment_Neuronal_cytosol*J3Sub(global_par_k102, x(8), global_par_g10210, const_species_O2_0, global_par_g10251, const_species_Cysteine, global_par_g102115);

% Reaction: id = J115, name = J115
	reaction_J115=compartment_Neuronal_cytosol*J2Sub(global_par_k115, x(27), global_par_g11565, x(45), global_par_g115118);

% Reaction: id = J116, name = J116
	reaction_J116=compartment_Neuronal_cytosol*J2Sub(global_par_k116, x(45), global_par_g116118, const_species_Neurotoxins, global_par_g11642);

% Species:   id = Alpha_synuclein, name = Alpha_synuclein, constant	const_species_Alpha_synuclein=0.2;

% Species:   id = ATP, name = ATP, constant	const_species_ATP=2.0;

% Species:   id = Synphilin_1, name = Synphilin-1, constant	const_species_Synphilin_1=0.05;

% Species:   id = Substrate, name = Substrate, constant	const_species_Substrate=0.4;

% Species:   id = TH, name = TH, constant	const_species_TH=0.6;

% Species:   id = L_Tyr, name = L-Tyr, constant	const_species_L_Tyr=5.0;

% Species:   id = CO2, name = CO2, constant	const_species_CO2=0.5;

% Species:   id = Neurotoxins, name = Neurotoxins, constant	const_species_Neurotoxins=0.01;

% Species:   id = Bioamines, name = Bioamines, constant	const_species_Bioamines=0.1;

% Species:   id = VMAT2, name = VMAT2, constant	const_species_VMAT2=2.0;

% Species:   id = O2_0, name = O2, constant	const_species_O2_0=2.0;

% Species:   id = MAO, name = MAO, constant	const_species_MAO=1.5;

% Species:   id = NH3, name = NH3, constant	const_species_NH3=0.5;

% Species:   id = ALDH, name = ALDH, constant	const_species_ALDH=1.5;

% Species:   id = NAD, name = NAD+, constant	const_species_NAD=1.5;

% Species:   id = NADH, name = NADH, constant	const_species_NADH=1.5;

% Species:   id = Catalase, name = Catalase, constant	const_species_Catalase=1.0;

% Species:   id = H2O, name = H2O, constant	const_species_H2O=3.0;

% Species:   id = Gluta_per, name = Gluta_per, constant	const_species_Gluta_per=0.8;

% Species:   id = Gluta_red, name = Gluta_red, constant	const_species_Gluta_red=0.8;

% Species:   id = DDC, name = DDC, constant	const_species_DDC=1.5;

% Species:   id = Preautophagosome_membrane, name = Preautophagosome_membrane, constant	const_species_Preautophagosome_membrane=1.0;

% Species:   id = SOD, name = SOD, constant	const_species_SOD=0.6;

% Species:   id = Cysteine, name = Cysteine, constant	const_species_Cysteine=0.5;

% Species:   id = Vesicle_0, name = Vesicle, constant	const_species_Vesicle_0=1.0;

% Species:   id = Proteasome_0, name = Proteasome, constant	const_species_Proteasome_0=1.5;

% Species:   id = Lysosome_0, name = Lysosome, constant	const_species_Lysosome_0=2.5;

	xdot=zeros(50,1);
	% rateRule: variable = Fe2
	xdot(50) = reaction_J21-reaction_J20+0.01;
	
% Species:   id = Protofibril, name = Protofibril, affected by kineticLaw
	xdot(1) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J1) + (-1.0 * reaction_J2) + ( 1.0 * reaction_J32) + (-1.0 * reaction_J33) + (-1.0 * reaction_J35) + (-1.0 * reaction_J44) + (-1.0 * reaction_J51));
	
% Species:   id = Fibril, name = Fibril, affected by kineticLaw
	xdot(2) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J2) + (-1.0 * reaction_J3) + ( 1.0 * reaction_J35) + (-1.0 * reaction_J45) + (-1.0 * reaction_J52));
	
% Species:   id = Lewy_body, name = Lewy_body, affected by kineticLaw
	xdot(3) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J3) + (-1.0 * reaction_J53));
	
% Species:   id = Dopamine, name = Dopamine, affected by kineticLaw
	xdot(4) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J14) + (-1.0 * reaction_J15) + (-1.0 * reaction_J18) + (-1.0 * reaction_J19) + (-1.0 * reaction_J55));
	
% Species:   id = OH, name = OH-, affected by kineticLaw
	xdot(5) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J20));
	
% Species:   id = OH_radical, name = OH_radical, affected by kineticLaw
	xdot(6) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J20));
	
% Species:   id = H2O2, name = H2O2, affected by kineticLaw
	xdot(7) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J19) + (-1.0 * reaction_J20) + (-1.0 * reaction_J22) + (-1.0 * reaction_J23) + ( 1.0 * reaction_J55) + ( 1.0 * reaction_J56) + ( 1.0 * reaction_J100) + ( 1.0 * reaction_J101));
	
% Species:   id = DA_quinone, name = DA_quinone, affected by kineticLaw
	xdot(8) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J18) + (-1.0 * reaction_J54) + ( 1.0 * reaction_J55) + (-1.0 * reaction_J57) + (-1.0 * reaction_J102));
	
% Species:   id = Ubiquitin, name = Ubiquitin, affected by kineticLaw
	xdot(9) = (1/(compartment_Neuronal_cytosol))*(( 4.0 * reaction_J4) + (-1.0 * reaction_J6) + ( 2.0 * reaction_J26r) + ( 3.0 * reaction_J27r) + ( 4.0 * reaction_J28r) + ( 4.0 * reaction_J38));
	
% Species:   id = E1, name = E1, affected by kineticLaw
	xdot(10) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J6) + ( 1.0 * reaction_J7) + ( 1.0 * reaction_J26f) + ( 1.0 * reaction_J27f) + ( 1.0 * reaction_J28f) + ( 1.0 * reaction_J29));
	
% Species:   id = Ub_E1, name = Ub-E1, affected by kineticLaw
	xdot(11) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J6) + (-1.0 * reaction_J7) + (-1.0 * reaction_J26f) + (-1.0 * reaction_J27f) + (-1.0 * reaction_J28f) + (-1.0 * reaction_J29));
	
% Species:   id = UbcH8, name = UbcH8, affected by kineticLaw
	xdot(12) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J7) + ( 1.0 * reaction_J11) + ( 1.0 * reaction_J26r) + ( 1.0 * reaction_J27r) + ( 1.0 * reaction_J28r) + ( 1.0 * reaction_J37));
	
% Species:   id = UbcH8_Ub, name = UbcH8-Ub, affected by kineticLaw
	xdot(13) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J7) + (-1.0 * reaction_J26f));
	
% Species:   id = Parkin, name = Parkin, affected by kineticLaw
	xdot(14) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J4) + (-1.0 * reaction_J8) + (-1.0 * reaction_J9) + (-1.0 * reaction_J54));
	
% Species:   id = Parkin_sub, name = Parkin-sub, affected by kineticLaw
	xdot(15) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J8) + (-1.0 * reaction_J11));
	
% Species:   id = Parkin_synphilin_1, name = Parkin-synphilin-1, affected by kineticLaw
	xdot(16) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J9) + (-1.0 * reaction_J10));
	
% Species:   id = Parkin_synphilin_1_ub, name = Parkin-synphilin-1-ub, affected by kineticLaw
	xdot(17) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J3) + ( 1.0 * reaction_J10));
	
% Species:   id = Parkin_sub_ub4, name = Parkin-sub-ub4, affected by kineticLaw
	xdot(18) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J4) + ( 1.0 * reaction_J11));
	
% Species:   id = Fragments, name = Fragments, affected by kineticLaw
	xdot(19) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J4) + ( 1.0 * reaction_J36) + ( 1.0 * reaction_J38) + ( 1.0 * reaction_J46) + ( 1.0 * reaction_J47) + ( 1.0 * reaction_J48));
	
% Species:   id = UCH_L1, name = UCH-L1, affected by kineticLaw
	xdot(20) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J30) + ( 1.0 * reaction_J31) + (-1.0 * reaction_J33) + ( 1.0 * reaction_J34) + ( 1.0 * reaction_J38));
	
% Species:   id = L_Dopa, name = L-Dopa, affected by kineticLaw
	xdot(21) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J13) + (-1.0 * reaction_J14) + (-1.0 * reaction_J100));
	
% Species:   id = DOPAL, name = DOPAL, affected by kineticLaw
	xdot(22) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J19) + (-1.0 * reaction_J25));
	
% Species:   id = DOPAC, name = DOPAC, affected by kineticLaw
	xdot(23) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J25));
	
% Species:   id = GSH, name = GSH, affected by kineticLaw
	xdot(24) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J23) + ( 1.0 * reaction_J24) + (-1.0 * reaction_J57));
	
% Species:   id = GSSG, name = GSSG, affected by kineticLaw
	xdot(25) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J23) + (-1.0 * reaction_J24));
	
% Species:   id = Fe2, name = Fe2+, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = Fe3, name = Fe3+, affected by kineticLaw
	xdot(27) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J20) + (-1.0 * reaction_J21) + (-1.0 * reaction_J115));
	
% Species:   id = UbcH8ub2, name = UbcH8ub2, affected by kineticLaw
	xdot(28) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J26f) + (-1.0 * reaction_J26r) + (-1.0 * reaction_J27f));
	
% Species:   id = UbcH8ub3, name = UbcH8ub3, affected by kineticLaw
	xdot(29) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J27f) + (-1.0 * reaction_J27r) + (-1.0 * reaction_J28f));
	
% Species:   id = UbcH8ub4, name = UbcH8ub4, affected by kineticLaw
	xdot(30) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J11) + ( 1.0 * reaction_J28f) + (-1.0 * reaction_J28r) + (-1.0 * reaction_J37));
	
% Species:   id = UbcH13_Uev1a, name = UbcH13/Uev1a, affected by kineticLaw
	xdot(31) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J10) + (-1.0 * reaction_J29) + ( 1.0 * reaction_J31) + ( 1.0 * reaction_J34));
	
% Species:   id = UbcH13_Uev1a_ub, name = UbcH13/Uev1a-ub, affected by kineticLaw
	xdot(32) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J10) + ( 1.0 * reaction_J29) + (-1.0 * reaction_J31) + (-1.0 * reaction_J34));
	
% Species:   id = asyn_UCH_L1, name = asyn-UCH-L1, affected by kineticLaw
	xdot(33) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J30) + (-1.0 * reaction_J31) + (-1.0 * reaction_J37));
	
% Species:   id = asyn_ub, name = asyn-ub, affected by kineticLaw
	xdot(34) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J31) + (-1.0 * reaction_J32));
	
% Species:   id = Protofibril_UCH_L1, name = Protofibril-UCH-L1, affected by kineticLaw
	xdot(35) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J33) + (-1.0 * reaction_J34));
	
% Species:   id = Protofibril_Ub, name = Protofibril-Ub, affected by kineticLaw
	xdot(36) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J34) + (-1.0 * reaction_J35));
	
% Species:   id = UCH_L1_asyn_ub4, name = UCH-L1-asyn-ub4, affected by kineticLaw
	xdot(37) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J37) + (-1.0 * reaction_J38));
	
% Species:   id = Hsc70_asyn, name = Hsc70-asyn, affected by kineticLaw
	xdot(38) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J43) + (-1.0 * reaction_J46));
	
% Species:   id = Hsc70_Protofibril, name = Hsc70-Protofibril, affected by kineticLaw
	xdot(39) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J44) + (-1.0 * reaction_J47));
	
% Species:   id = Hsc70_fibril, name = Hsc70-fibril, affected by kineticLaw
	xdot(40) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J45) + (-1.0 * reaction_J48));
	
% Species:   id = Hsc70, name = Hsc70, affected by kineticLaw
	xdot(41) = (1/(compartment_Neuronal_cytosol))*((-1.0 * reaction_J43) + (-1.0 * reaction_J44) + (-1.0 * reaction_J45) + ( 1.0 * reaction_J46) + ( 1.0 * reaction_J47) + ( 1.0 * reaction_J48));
	
% Species:   id = DA_S_parkin, name = DA-S-parkin, affected by kineticLaw
	xdot(42) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J54));
	
% Species:   id = O2, name = O2-, affected by kineticLaw
	xdot(43) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J18) + (-1.0 * reaction_J55) + (-1.0 * reaction_J56));
	
% Species:   id = DA_GSH, name = DA-GSH, affected by kineticLaw
	xdot(44) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J57));
	
% Species:   id = Neuromelanin, name = Neuromelanin, affected by kineticLaw
	xdot(45) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J100) + ( 1.0 * reaction_J101) + ( 1.0 * reaction_J102) + (-1.0 * reaction_J115) + (-1.0 * reaction_J116));
	
% Species:   id = Neuromelanin_ntox_Fe3, name = Neuromelanin-ntox-Fe3+, affected by kineticLaw
	xdot(46) = (1/(compartment_Neuronal_cytosol))*(( 1.0 * reaction_J115) + ( 1.0 * reaction_J116));
	
% Species:   id = V_DA, name = V-DA, affected by kineticLaw
	xdot(47) = (1/(compartment_Vesicle))*(( 1.0 * reaction_J15));
	
% Species:   id = V_ntox_ba, name = V-ntox-ba, affected by kineticLaw
	xdot(48) = (1/(compartment_Vesicle))*(( 1.0 * reaction_J16) + ( 1.0 * reaction_J17));
	
% Species:   id = Autophagosome_0, name = Autophagosome, affected by kineticLaw
	xdot(49) = (1/(compartment_Autophagosome))*((-1.0 * reaction_J36) + ( 1.0 * reaction_J50) + ( 1.0 * reaction_J51) + ( 1.0 * reaction_J52) + ( 1.0 * reaction_J53));
end

function z=J3Sub(K,X1,G1,X2,G2,X3,G3), z=(K*X1^G1*X2^G2*X3^G3);end

function z=J1Sub(K,X,G), z=(K*X^G);end

function z=J2Sub(K,X1,G1,X2,G2), z=(K*X1^G1*X2^G2);end

function z=J1Sub3Mod(K,X1,G1,X2,G2,X3,G3,X4,G4), z=(K*X1^G1*X2^G2*X3^G3*X4^G4);end

function z=J2Sub1Mod(K,X1,G1,X2,G2,X3,G3), z=(K*X1^G1*X2^G2*X3^G3);end

function z=J1Sub1Mod(K,X1,G1,X2,G2), z=(K*X1^G1*X2^G2);end

function z=J3Sub1Mod(K,X1,G1,X2,G2,X3,G3,X4,G4), z=(K*X1^G1*X2^G2*X3^G3*X4^G4);end

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


