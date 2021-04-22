
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// re1_k1_re1   id: re1_k1     reactionID: re1
	re1_k1_re1=0.0001;
	
// re1_k2_re1   id: re1_k2     reactionID: re1
	re1_k2_re1=0.0001;
	
// re2_k1_re2   id: re2_k1     reactionID: re2
	re2_k1_re2=2.2833;
	
// re2_k2_re2   id: re2_k2     reactionID: re2
	re2_k2_re2=0.0029666;
	
// re8_k1_re8   id: re8_k1     reactionID: re8
	re8_k1_re8=10;
	
// re8_k2_re8   id: re8_k2     reactionID: re8
	re8_k2_re8=0.02;
	
// J3_k1_J3   id: J3_k1     reactionID: J3
	J3_k1_J3=0.03;
	
// J3_k2_J3   id: J3_k2     reactionID: J3
	J3_k2_J3=0.0168;
	
// J4_k1_J4   id: J4_k1     reactionID: J4
	J4_k1_J4=0.03;
	
// J4_k2_J4   id: J4_k2     reactionID: J4
	J4_k2_J4=0.0168;
	
// J5_k1_J5   id: J5_k1     reactionID: J5
	J5_k1_J5=4;
	
// J5_k2_J5   id: J5_k2     reactionID: J5
	J5_k2_J5=0.001;
	
// J6_k1_J6   id: J6_k1     reactionID: J6
	J6_k1_J6=0.5;
	
// J6_k2_J6   id: J6_k2     reactionID: J6
	J6_k2_J6=0.2;
	
// J7_k1_J7   id: J7_k1     reactionID: J7
	J7_k1_J7=10;
	
// J7_k2_J7   id: J7_k2     reactionID: J7
	J7_k2_J7=0.2;
	
// J8_k1_J8   id: J8_k1     reactionID: J8
	J8_k1_J8=0.002;
	
// J8_k2_J8   id: J8_k2     reactionID: J8
	J8_k2_J8=1E-5;
	
// J9_k1_J9   id: J9_k1     reactionID: J9
	J9_k1_J9=0.5;
	
// J9_k2_J9   id: J9_k2     reactionID: J9
	J9_k2_J9=0.2;
	
// J10_k_J10   id: J10_k     reactionID: J10
	J10_k_J10=0.002;
	
// J11_k_J11   id: J11_k     reactionID: J11
	J11_k_J11=0.002;
	
// J12_k1_J12   id: J12_k1     reactionID: J12
	J12_k1_J12=10;
	
// J12_k2_J12   id: J12_k2     reactionID: J12
	J12_k2_J12=0.2;
	
// J13_k_J13   id: J13_k     reactionID: J13
	J13_k_J13=1;
	
// J14_k_J14   id: J14_k     reactionID: J14
	J14_k_J14=0.05;
	
// J15_k_J15   id: J15_k     reactionID: J15
	J15_k_J15=0.001;
	
// J16_k1_J16   id: J16_k1     reactionID: J16
	J16_k1_J16=0.5;
	
// J16_k2_J16   id: J16_k2     reactionID: J16
	J16_k2_J16=0.2;
	
// J17_k_J17   id: J17_k     reactionID: J17
	J17_k_J17=0.05;
	
// J18_k_J18   id: J18_k     reactionID: J18
	J18_k_J18=0.001;
	
// J19_k_J19   id: J19_k     reactionID: J19
	J19_k_J19=0.05;
	
// J20_k_J20   id: J20_k     reactionID: J20
	J20_k_J20=0.001;
	
// J21_k_J21   id: J21_k     reactionID: J21
	J21_k_J21=1;
	
// J22_k1_J22   id: J22_k1     reactionID: J22
	J22_k1_J22=10;
	
// J22_k2_J22   id: J22_k2     reactionID: J22
	J22_k2_J22=0.2;
	
// J23_k1_J23   id: J23_k1     reactionID: J23
	J23_k1_J23=10;
	
// J23_k2_J23   id: J23_k2     reactionID: J23
	J23_k2_J23=0.2;
	
// J24_k1_J24   id: J24_k1     reactionID: J24
	J24_k1_J24=10;
	
// J24_k2_J24   id: J24_k2     reactionID: J24
	J24_k2_J24=0.2;
	
// J25_k1_J25   id: J25_k1     reactionID: J25
	J25_k1_J25=0.5;
	
// J25_k2_J25   id: J25_k2     reactionID: J25
	J25_k2_J25=0.2;
	
// J27_k1_J27   id: J27_k1     reactionID: J27
	J27_k1_J27=10;
	
// J27_k2_J27   id: J27_k2     reactionID: J27
	J27_k2_J27=0.2;
	
// J28_k_J28   id: J28_k     reactionID: J28
	J28_k_J28=0.05;
	
// J29_k_J29   id: J29_k     reactionID: J29
	J29_k_J29=0.001;
	
// J30_k_J30   id: J30_k     reactionID: J30
	J30_k_J30=0.005;
	
// J31_Vmax_J31   id: J31_Vmax     reactionID: J31
	J31_Vmax_J31=0.2;
	
// J31_Km1_J31   id: J31_Km1     reactionID: J31
	J31_Km1_J31=0.1;
	
// J32_k_J32   id: J32_k     reactionID: J32
	J32_k_J32=0.005;
	
// J33_k_J33   id: J33_k     reactionID: J33
	J33_k_J33=0.005;
	
// J34_k1_J34   id: J34_k1     reactionID: J34
	J34_k1_J34=1;
	
// J34_k2_J34   id: J34_k2     reactionID: J34
	J34_k2_J34=0.002;
	
// J35_k1_J35   id: J35_k1     reactionID: J35
	J35_k1_J35=1;
	
// J35_k2_J35   id: J35_k2     reactionID: J35
	J35_k2_J35=0.2;
	
// J36_k1_J36   id: J36_k1     reactionID: J36
	J36_k1_J36=1;
	
// J36_k2_J36   id: J36_k2     reactionID: J36
	J36_k2_J36=0.2;
	
// J37_k_J37   id: J37_k     reactionID: J37
	J37_k_J37=1;
	
// J38_k1_J38   id: J38_k1     reactionID: J38
	J38_k1_J38=1;
	
// J38_k2_J38   id: J38_k2     reactionID: J38
	J38_k2_J38=0.2;
	
// J39_k1_J39   id: J39_k1     reactionID: J39
	J39_k1_J39=0.5;
	
// J39_k2_J39   id: J39_k2     reactionID: J39
	J39_k2_J39=0.2;
	
// J40_k1_J40   id: J40_k1     reactionID: J40
	J40_k1_J40=0.5;
	
// J40_k2_J40   id: J40_k2     reactionID: J40
	J40_k2_J40=0.2;
	
// J41_k_J41   id: J41_k     reactionID: J41
	J41_k_J41=0.05;
	
// J42_k_J42   id: J42_k     reactionID: J42
	J42_k_J42=0.05;
	
// J43_k_J43   id: J43_k     reactionID: J43
	J43_k_J43=1;
	
// J44_k1_J44   id: J44_k1     reactionID: J44
	J44_k1_J44=1;
	
// J44_k2_J44   id: J44_k2     reactionID: J44
	J44_k2_J44=0.2;
	
// J45_k_J45   id: J45_k     reactionID: J45
	J45_k_J45=0.05;
	
// J46_k_J46   id: J46_k     reactionID: J46
	J46_k_J46=0.001;
	
// J47_k_J47   id: J47_k     reactionID: J47
	J47_k_J47=0.001;
	
// J49_k1_J49   id: J49_k1     reactionID: J49
	J49_k1_J49=0.12;
	
// J49_k2_J49   id: J49_k2     reactionID: J49
	J49_k2_J49=0.01;
	
// J50_Vmax_J50   id: J50_Vmax     reactionID: J50
	J50_Vmax_J50=1;
	
// J50_Km1_J50   id: J50_Km1     reactionID: J50
	J50_Km1_J50=25.641;
	
// J51_Vmax_J51   id: J51_Vmax     reactionID: J51
	J51_Vmax_J51=1;
	
// J51_Km1_J51   id: J51_Km1     reactionID: J51
	J51_Km1_J51=25.641;
	
// J52_k1_J52   id: J52_k1     reactionID: J52
	J52_k1_J52=60;
	
// J52_k2_J52   id: J52_k2     reactionID: J52
	J52_k2_J52=0.5;
	
// J53_k1_J53   id: J53_k1     reactionID: J53
	J53_k1_J53=60;
	
// J53_k2_J53   id: J53_k2     reactionID: J53
	J53_k2_J53=0.5;
	
// J54_k1_J54   id: J54_k1     reactionID: J54
	J54_k1_J54=60;
	
// J54_k2_J54   id: J54_k2     reactionID: J54
	J54_k2_J54=0.5;
	
// J57_Vmax_J57   id: J57_Vmax     reactionID: J57
	J57_Vmax_J57=3;
	
// J57_Km1_J57   id: J57_Km1     reactionID: J57
	J57_Km1_J57=15.657;
	
// J58_Vmax_J58   id: J58_Vmax     reactionID: J58
	J58_Vmax_J58=3;
	
// J58_Km1_J58   id: J58_Km1     reactionID: J58
	J58_Km1_J58=15.657;
	
// J61_Vmax_J61   id: J61_Vmax     reactionID: J61
	J61_Vmax_J61=3;
	
// J61_Km1_J61   id: J61_Km1     reactionID: J61
	J61_Km1_J61=15.657;
	
// J62_Vmax_J62   id: J62_Vmax     reactionID: J62
	J62_Vmax_J62=3;
	
// J62_Km1_J62   id: J62_Km1     reactionID: J62
	J62_Km1_J62=15.657;
	
// J63_k1_J63   id: J63_k1     reactionID: J63
	J63_k1_J63=10;
	
// J63_k2_J63   id: J63_k2     reactionID: J63
	J63_k2_J63=0.075;
	
// J66_k_J66   id: J66_k     reactionID: J66
	J66_k_J66=0.0001667;
	
// J67_k_J67   id: J67_k     reactionID: J67
	J67_k_J67=0.0001166;
	
// J68_Vmax_J68   id: J68_Vmax     reactionID: J68
	J68_Vmax_J68=0.024;
	
// J68_Km1_J68   id: J68_Km1     reactionID: J68
	J68_Km1_J68=0.01;
	
// J69_Vmax_J69   id: J69_Vmax     reactionID: J69
	J69_Vmax_J69=2;
	
// J69_Km1_J69   id: J69_Km1     reactionID: J69
	J69_Km1_J69=0.02;
	
// J70_k1_J70   id: J70_k1     reactionID: J70
	J70_k1_J70=6.2;
	
// J70_k2_J70   id: J70_k2     reactionID: J70
	J70_k2_J70=6.4E-5;
	
// J71_k_J71   id: J71_k     reactionID: J71
	J71_k_J71=1;
	
// J72_k_J72   id: J72_k     reactionID: J72
	J72_k_J72=0.00063;
	
// J73_k_J73   id: J73_k     reactionID: J73
	J73_k_J73=0.00042;
	
// J74_k_J74   id: J74_k     reactionID: J74
	J74_k_J74=0.0022;
	
// J75_k1_J75   id: J75_k1     reactionID: J75
	J75_k1_J75=10;
	
// J75_k2_J75   id: J75_k2     reactionID: J75
	J75_k2_J75=0.2;
	
// J76_k1_J76   id: J76_k1     reactionID: J76
	J76_k1_J76=10;
	
// J76_k2_J76   id: J76_k2     reactionID: J76
	J76_k2_J76=0.2;
	
// J77_k1_J77   id: J77_k1     reactionID: J77
	J77_k1_J77=5;
	
// J77_k2_J77   id: J77_k2     reactionID: J77
	J77_k2_J77=0.1;
	
// J78_k1_J78   id: J78_k1     reactionID: J78
	J78_k1_J78=5;
	
// J78_k2_J78   id: J78_k2     reactionID: J78
	J78_k2_J78=0.1;
	
// J79_k1_J79   id: J79_k1     reactionID: J79
	J79_k1_J79=10;
	
// J79_k2_J79   id: J79_k2     reactionID: J79
	J79_k2_J79=0.2;
	
// J80_k1_J80   id: J80_k1     reactionID: J80
	J80_k1_J80=10;
	
// J80_k2_J80   id: J80_k2     reactionID: J80
	J80_k2_J80=0.2;
	
// J81_k_J81   id: J81_k     reactionID: J81
	J81_k_J81=0.1;
	
// J82_k_J82   id: J82_k     reactionID: J82
	J82_k_J82=0.1;
	
// J83_k_J83   id: J83_k     reactionID: J83
	J83_k_J83=2;
	
// J84_k1_J84   id: J84_k1     reactionID: J84
	J84_k1_J84=5;
	
// J84_k2_J84   id: J84_k2     reactionID: J84
	J84_k2_J84=0.1;
	
// J85_k1_J85   id: J85_k1     reactionID: J85
	J85_k1_J85=5;
	
// J85_k2_J85   id: J85_k2     reactionID: J85
	J85_k2_J85=0.1;
	
// J86_k_J86   id: J86_k     reactionID: J86
	J86_k_J86=2;
	
// J87_k_J87   id: J87_k     reactionID: J87
	J87_k_J87=0.0022;
	
// J88_k_J88   id: J88_k     reactionID: J88
	J88_k_J88=0.0022;
	
// J89_k_J89   id: J89_k     reactionID: J89
	J89_k_J89=0.0022;
	
// J90_k_J90   id: J90_k     reactionID: J90
	J90_k_J90=0.0022;
	
// J92_k_J92   id: J92_k     reactionID: J92
	J92_k_J92=0.00042;
	
// J93_k_J93   id: J93_k     reactionID: J93
	J93_k_J93=0.00042;
	
// J94_k_J94   id: J94_k     reactionID: J94
	J94_k_J94=0.00042;
	
// J95_k1_J95   id: J95_k1     reactionID: J95
	J95_k1_J95=10;
	
// J95_k2_J95   id: J95_k2     reactionID: J95
	J95_k2_J95=0.2;
	
// J96_k1_J96   id: J96_k1     reactionID: J96
	J96_k1_J96=10;
	
// J96_k2_J96   id: J96_k2     reactionID: J96
	J96_k2_J96=0.2;
	
// J97_k_J97   id: J97_k     reactionID: J97
	J97_k_J97=0.00063;
	
// J98_k_J98   id: J98_k     reactionID: J98
	J98_k_J98=0.00063;
	
// J99_k_J99   id: J99_k     reactionID: J99
	J99_k_J99=0.00063;
	
// J100_k_J100   id: J100_k     reactionID: J100
	J100_k_J100=0.00063;
	
// J101_k_J101   id: J101_k     reactionID: J101
	J101_k_J101=0.00063;
	
// J102_k_J102   id: J102_k     reactionID: J102
	J102_k_J102=0.00063;
	
// J103_k1_J103   id: J103_k1     reactionID: J103
	J103_k1_J103=1;
	
// J103_k2_J103   id: J103_k2     reactionID: J103
	J103_k2_J103=0.2;
	
// J104_k1_J104   id: J104_k1     reactionID: J104
	J104_k1_J104=1;
	
// J104_k2_J104   id: J104_k2     reactionID: J104
	J104_k2_J104=0.2;
	
// J105_k1_J105   id: J105_k1     reactionID: J105
	J105_k1_J105=10;
	
// J105_k2_J105   id: J105_k2     reactionID: J105
	J105_k2_J105=0.2;
	
// J106_k1_J106   id: J106_k1     reactionID: J106
	J106_k1_J106=10;
	
// J106_k2_J106   id: J106_k2     reactionID: J106
	J106_k2_J106=0.2;
	
// J107_k_J107   id: J107_k     reactionID: J107
	J107_k_J107=0.0022;
	
// J108_k_J108   id: J108_k     reactionID: J108
	J108_k_J108=0.00042;
	
// J109_k_J109   id: J109_k     reactionID: J109
	J109_k_J109=0.0022;
	
// J110_k_J110   id: J110_k     reactionID: J110
	J110_k_J110=0.00042;
	
// J112_k_J112   id: J112_k     reactionID: J112
	J112_k_J112=0.00042;
	
// J113_k1_J113   id: J113_k1     reactionID: J113
	J113_k1_J113=0.0008333;
	
// J113_k2_J113   id: J113_k2     reactionID: J113
	J113_k2_J113=0.00027778;
	
// J115_k1_J115   id: J115_k1     reactionID: J115
	J115_k1_J115=10;
	
// J115_k2_J115   id: J115_k2     reactionID: J115
	J115_k2_J115=0.2;
	
// J116_k1_J116   id: J116_k1     reactionID: J116
	J116_k1_J116=10;
	
// J116_k2_J116   id: J116_k2     reactionID: J116
	J116_k2_J116=0.2;
	
// J117_k1_J117   id: J117_k1     reactionID: J117
	J117_k1_J117=10;
	
// J117_k2_J117   id: J117_k2     reactionID: J117
	J117_k2_J117=0.2;
	
// J119_k1_J119   id: J119_k1     reactionID: J119
	J119_k1_J119=0.5;
	
// J119_k2_J119   id: J119_k2     reactionID: J119
	J119_k2_J119=0.2;
	
// J118_k1_J118   id: J118_k1     reactionID: J118
	J118_k1_J118=1;
	
// J118_k2_J118   id: J118_k2     reactionID: J118
	J118_k2_J118=0.2;
	
// J120_k1_J120   id: J120_k1     reactionID: J120
	J120_k1_J120=1;
	
// J120_k2_J120   id: J120_k2     reactionID: J120
	J120_k2_J120=0.2;
	
// J121_Vmax_J121   id: J121_Vmax     reactionID: J121
	J121_Vmax_J121=10;
	
// J121_Km1_J121   id: J121_Km1     reactionID: J121
	J121_Km1_J121=1;
	
// J122_Vmax_J122   id: J122_Vmax     reactionID: J122
	J122_Vmax_J122=2;
	
// J122_Km1_J122   id: J122_Km1     reactionID: J122
	J122_Km1_J122=1;
	
// J123_Vmax_J123   id: J123_Vmax     reactionID: J123
	J123_Vmax_J123=0.02;
	
// J123_Km1_J123   id: J123_Km1     reactionID: J123
	J123_Km1_J123=0.1;
	
// J124_Vmax_J124   id: J124_Vmax     reactionID: J124
	J124_Vmax_J124=1;
	
// J124_Km1_J124   id: J124_Km1     reactionID: J124
	J124_Km1_J124=25.641;
	
// J133_k1_J133   id: J133_k1     reactionID: J133
	J133_k1_J133=16.304;
	
// J133_k2_J133   id: J133_k2     reactionID: J133
	J133_k2_J133=0.6;
	
// J134_k1_J134   id: J134_k1     reactionID: J134
	J134_k1_J134=16.304;
	
// J134_k2_J134   id: J134_k2     reactionID: J134
	J134_k2_J134=0.6;
	
// J135_k1_J135   id: J135_k1     reactionID: J135
	J135_k1_J135=16.304;
	
// J135_k2_J135   id: J135_k2     reactionID: J135
	J135_k2_J135=0.6;
	
// J136_k_J136   id: J136_k     reactionID: J136
	J136_k_J136=0.15;
	
// J137_Vmax_J137   id: J137_Vmax     reactionID: J137
	J137_Vmax_J137=10;
	
// J137_Km1_J137   id: J137_Km1     reactionID: J137
	J137_Km1_J137=1;
	
// J138_Vmax_J138   id: J138_Vmax     reactionID: J138
	J138_Vmax_J138=10;
	
// J138_Km1_J138   id: J138_Km1     reactionID: J138
	J138_Km1_J138=1;
	
// J139_Vmax_J139   id: J139_Vmax     reactionID: J139
	J139_Vmax_J139=2;
	
// J139_Km1_J139   id: J139_Km1     reactionID: J139
	J139_Km1_J139=1;
	
// J140_k1_J140   id: J140_k1     reactionID: J140
	J140_k1_J140=15.625;
	
// J140_k2_J140   id: J140_k2     reactionID: J140
	J140_k2_J140=2;
	
// J141_k1_J141   id: J141_k1     reactionID: J141
	J141_k1_J141=15.625;
	
// J141_k2_J141   id: J141_k2     reactionID: J141
	J141_k2_J141=2;
	
// J142_k1_J142   id: J142_k1     reactionID: J142
	J142_k1_J142=15.625;
	
// J142_k2_J142   id: J142_k2     reactionID: J142
	J142_k2_J142=2;
	
// J143_k1_J143   id: J143_k1     reactionID: J143
	J143_k1_J143=15.625;
	
// J143_k2_J143   id: J143_k2     reactionID: J143
	J143_k2_J143=2;
	
// J144_k1_J144   id: J144_k1     reactionID: J144
	J144_k1_J144=6.25;
	
// J144_k2_J144   id: J144_k2     reactionID: J144
	J144_k2_J144=0.8;
	
// J145_k1_J145   id: J145_k1     reactionID: J145
	J145_k1_J145=6.25;
	
// J145_k2_J145   id: J145_k2     reactionID: J145
	J145_k2_J145=0.8;
	
// J146_k1_J146   id: J146_k1     reactionID: J146
	J146_k1_J146=6.25;
	
// J146_k2_J146   id: J146_k2     reactionID: J146
	J146_k2_J146=0.8;
	
// J147_k1_J147   id: J147_k1     reactionID: J147
	J147_k1_J147=6.25;
	
// J147_k2_J147   id: J147_k2     reactionID: J147
	J147_k2_J147=0.8;
	
// J148_k1_J148   id: J148_k1     reactionID: J148
	J148_k1_J148=9.375;
	
// J148_k2_J148   id: J148_k2     reactionID: J148
	J148_k2_J148=1.2;
	
// J149_k1_J149   id: J149_k1     reactionID: J149
	J149_k1_J149=9.375;
	
// J149_k2_J149   id: J149_k2     reactionID: J149
	J149_k2_J149=1.2;
	
// J150_k1_J150   id: J150_k1     reactionID: J150
	J150_k1_J150=9.375;
	
// J150_k2_J150   id: J150_k2     reactionID: J150
	J150_k2_J150=1.2;
	
// J151_k1_J151   id: J151_k1     reactionID: J151
	J151_k1_J151=9.375;
	
// J151_k2_J151   id: J151_k2     reactionID: J151
	J151_k2_J151=1.2;
	
// J152_k_J152   id: J152_k     reactionID: J152
	J152_k_J152=0.5;
	
// J153_k_J153   id: J153_k     reactionID: J153
	J153_k_J153=0.5;
	
// J154_k_J154   id: J154_k     reactionID: J154
	J154_k_J154=0.5;
	
// J155_k_J155   id: J155_k     reactionID: J155
	J155_k_J155=0.5;
	
// J156_k_J156   id: J156_k     reactionID: J156
	J156_k_J156=0.2;
	
// J157_k_J157   id: J157_k     reactionID: J157
	J157_k_J157=0.2;
	
// J158_k_J158   id: J158_k     reactionID: J158
	J158_k_J158=0.2;
	
// J159_k_J159   id: J159_k     reactionID: J159
	J159_k_J159=0.2;
	
// J160_k_J160   id: J160_k     reactionID: J160
	J160_k_J160=0.3;
	
// J161_k_J161   id: J161_k     reactionID: J161
	J161_k_J161=0.3;
	
// J162_k_J162   id: J162_k     reactionID: J162
	J162_k_J162=0.3;
	
// J163_k_J163   id: J163_k     reactionID: J163
	J163_k_J163=0.3;
	
// J164_k_J164   id: J164_k     reactionID: J164
	J164_k_J164=0.001;
	
// J165_k1_J165   id: J165_k1     reactionID: J165
	J165_k1_J165=15;
	
// J165_k2_J165   id: J165_k2     reactionID: J165
	J165_k2_J165=0.24;
	
// J166_k1_J166   id: J166_k1     reactionID: J166
	J166_k1_J166=15;
	
// J166_k2_J166   id: J166_k2     reactionID: J166
	J166_k2_J166=0.24;
	
// J167_k_J167   id: J167_k     reactionID: J167
	J167_k_J167=0.06;
	
// J168_k_J168   id: J168_k     reactionID: J168
	J168_k_J168=0.06;
	



xdot=[
//x(1)   ID: EGFR  initialValue: 0.3
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((re2_k1_re2* x(97) * x(1) )-(re2_k2_re2* x(2) ))) + (1)*(1)* (compartment_compartment*((re1_k1_re1* x(98) )-(re1_k2_re1* x(1) ))) );
	
//x(2)   ID: L_EGFR  initialValue: 0
	(1/compartment_compartment)*( (-1)*(2)* (compartment_compartment*((re8_k1_re8* x(2) * x(2) )-(re8_k2_re8* x(3) ))) + (1)*(1)* (compartment_compartment*((re2_k1_re2* x(97) * x(1) )-(re2_k2_re2* x(2) ))) );
	
//x(3)   ID: L_EGFR_dimer  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((J5_k1_J5* x(3) )-(J5_k2_J5* x(5) ))) + (1)*(1)* (compartment_compartment*((re8_k1_re8* x(2) * x(2) )-(re8_k2_re8* x(3) ))) );
	
//x(4)   ID: SOS  initialValue: 0.1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J3_k1_J3* x(4) * x(8) )-(J3_k2_J3* x(7) ))) + (-1)*(1)* (compartment_c1*((J51_Vmax_J51* x(4) * x(68) )/(J51_Km1_J51+ x(4) ))) + (1)*(1)* (compartment_c1*J10_k_J10* x(6) ) );
	
//x(5)   ID: L_dpEGFR  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_c1*((J6_k1_J6* x(5) * x(24) )-(J6_k2_J6* x(19) ))) + (-1)*(1)* (compartment_c1*((J7_k1_J7* x(5) * x(34) )-(J7_k2_J7* x(18) ))) + (-1)*(1)* (compartment_c1*((J12_k1_J12* x(5) * x(13) )-(J12_k2_J12* x(23) ))) + (-1)*(1)* (compartment_c1*((J23_k1_J23* x(5) * x(48) )-(J23_k2_J23* x(50) ))) + (-1)*(1)* (compartment_c1*((J35_k1_J35* x(5) * x(12) )-(J35_k2_J35* x(52) ))) + (-1)*(1)* (compartment_c1*((J36_k1_J36* x(5) * x(51) )-(J36_k2_J36* x(35) ))) + (1)*(1)* (compartment_compartment*((J5_k1_J5* x(3) )-(J5_k2_J5* x(5) ))) );
	
//x(6)   ID: pSOS  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J4_k1_J4* x(8) * x(6) )-(J4_k2_J4* x(14) ))) + (-1)*(1)* (compartment_c1*J10_k_J10* x(6) ) + (1)*(1)* (compartment_c1*((J51_Vmax_J51* x(4) * x(68) )/(J51_Km1_J51+ x(4) ))) );
	
//x(7)   ID: SOS_Grb2  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J22_k1_J22* x(34) * x(7) )-(J22_k2_J22* x(48) ))) + (-1)*(1)* (compartment_c1*((J24_k1_J24* x(18) * x(7) )-(J24_k2_J24* x(50) ))) + (-1)*(1)* (compartment_c1*((J50_Vmax_J50* x(7) * x(68) )/(J50_Km1_J50+ x(7) ))) + (-1)*(1)* (compartment_c1*((J95_k1_J95* x(7) * x(74) )-(J95_k2_J95* x(80) ))) + (-1)*(1)* (compartment_c1*((J96_k1_J96* x(7) * x(71) )-(J96_k2_J96* x(78) ))) + (-1)*(1)* (compartment_c1*((J117_k1_J117* x(21) * x(7) )-(J117_k2_J117* x(44) ))) + (1)*(1)* (compartment_c1*((J3_k1_J3* x(4) * x(8) )-(J3_k2_J3* x(7) ))) + (1)*(1)* (compartment_c1*J11_k_J11* x(14) ) + (1)*(1)* (J30_k_J30* x(48) ) );
	
//x(8)   ID: Grb2  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J3_k1_J3* x(4) * x(8) )-(J3_k2_J3* x(7) ))) + (-1)*(1)* (compartment_c1*((J4_k1_J4* x(8) * x(6) )-(J4_k2_J4* x(14) ))) );
	
//x(9)   ID: Dok  initialValue: 0.3
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J31_Vmax_J31* x(9) *( x(5) + x(23) + x(18) + x(50) + x(19) + x(49) + x(21) + x(44) + x(52) + x(35) + x(42) + x(55) + x(40) ))/(J31_Km1_J31+ x(9) ))) + (-1)*(1)* (compartment_c1*((J123_Vmax_J123* x(9) *( x(63) + x(69) + x(71) + x(78) + x(73) + x(72) + x(79) ))/(J123_Km1_J123+ x(9) ))) + (1)*(1)* (compartment_c1*((J8_k1_J8* x(10) )-(J8_k2_J8* x(9) ))) );
	
//x(10)   ID: pDok  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J8_k1_J8* x(10) )-(J8_k2_J8* x(9) ))) + (-1)*(1)* (compartment_c1*((J49_k1_J49* x(10) * x(25) )-(J49_k2_J49* x(53) ))) + (1)*(1)* (compartment_c1*((J31_Vmax_J31* x(9) *( x(5) + x(23) + x(18) + x(50) + x(19) + x(49) + x(21) + x(44) + x(52) + x(35) + x(42) + x(55) + x(40) ))/(J31_Km1_J31+ x(9) ))) + (1)*(1)* (compartment_c1*((J123_Vmax_J123* x(9) *( x(63) + x(69) + x(71) + x(78) + x(73) + x(72) + x(79) ))/(J123_Km1_J123+ x(9) ))) );
	
//x(11)   ID: Crk  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J34_k1_J34* x(11) * x(32) )-(J34_k2_J34* x(64) ))) );
	
//x(12)   ID: FRS2  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J35_k1_J35* x(5) * x(12) )-(J35_k2_J35* x(52) ))) + (-1)*(1)* (compartment_c1*((J77_k1_J77* x(12) * x(63) )-(J77_k2_J77* x(73) ))) + (-1)*(1)* (compartment_c1*((J84_k1_J84* x(36) * x(12) )-(J84_k2_J84* x(75) ))) + (-1)*(1)* (compartment_c1*((J118_k1_J118* x(19) * x(12) )-(J118_k2_J118* x(55) ))) + (1)*(1)* (compartment_c1*J33_k_J33* x(51) ) + (1)*(1)* (compartment_c1*J46_k_J46* x(39) ) + (1)*(1)* (compartment_c1*J87_k_J87* x(73) ) + (1)*(1)* (compartment_c1*J92_k_J92* x(75) ) );
	
//x(13)   ID: Shc  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J12_k1_J12* x(5) * x(13) )-(J12_k2_J12* x(23) ))) + (-1)*(1)* (compartment_c1*((J75_k1_J75* x(13) * x(63) )-(J75_k2_J75* x(69) ))) + (-1)*(1)* (compartment_c1*((J79_k1_J79* x(36) * x(13) )-(J79_k2_J79* x(70) ))) + (-1)*(1)* (compartment_c1*((J115_k1_J115* x(13) * x(19) )-(J115_k2_J115* x(49) ))) + (1)*(1)* (compartment_c1*J18_k_J18* x(45) ) + (1)*(1)* (J30_k_J30* x(48) ) + (1)*(1)* (compartment_c1*J32_k_J32* x(34) ) + (1)*(1)* (compartment_c1*J89_k_J89* x(69) ) + (1)*(1)* (compartment_c1*J93_k_J93* x(70) ) );
	
//x(14)   ID: pSOS_Grb2  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J11_k_J11* x(14) ) + (1)*(1)* (compartment_c1*((J4_k1_J4* x(8) * x(6) )-(J4_k2_J4* x(14) ))) + (1)*(1)* (compartment_c1*((J50_Vmax_J50* x(7) * x(68) )/(J50_Km1_J50+ x(7) ))) + (1)*(1)* (compartment_c1*((J124_Vmax_J124* x(48) * x(68) )/(J124_Km1_J124+ x(48) ))) );
	
//x(15)   ID: Rap1_GDP  initialValue: 0.2
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J68_Vmax_J68* x(15) *( x(42) + x(40) + x(77) ))/(J68_Km1_J68+ x(15) ))) + (1)*(1)* (compartment_c1*J67_k_J67* x(65) ) + (1)*(1)* (compartment_c1*((J122_Vmax_J122* x(65) * x(31) )/(J122_Km1_J122+ x(65) ))) + (1)*(1)* (compartment_c1*((J139_Vmax_J139* x(20) * x(31) )/(J139_Km1_J139+ x(20) ))) );
	
//x(16)   ID: MEK  initialValue: 0.68
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J133_k1_J133* x(28) * x(16) )-(J133_k2_J133* x(37) ))) + (-1)*(1)* (compartment_c1*((J140_k1_J140* x(59) * x(16) )-(J140_k2_J140* x(81) ))) + (-1)*(1)* (compartment_c1*((J144_k1_J144* x(60) * x(16) )-(J144_k2_J144* x(85) ))) + (-1)*(1)* (compartment_c1*((J148_k1_J148* x(20) * x(16) )-(J148_k2_J148* x(89) ))) + (1)*(1)* (compartment_c1*((J58_Vmax_J58* x(54) * x(29) )/(J58_Km1_J58+ x(54) ))) );
	
//x(17)   ID: MKP3  initialValue: 0.018
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J165_k1_J165* x(17) * x(68) )-(J165_k2_J165* x(94) ))) + (-1)*(1)* (compartment_c1*((J166_k1_J166* x(17) * x(62) )-(J166_k2_J166* x(93) ))) + (1)*(1)* (compartment_c1*J167_k_J167* x(93) ) + (1)*(1)* (compartment_c1*J168_k_J168* x(94) ) );
	
//x(18)   ID: pShc_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J9_k1_J9* x(24) * x(18) )-(J9_k2_J9* x(21) ))) + (-1)*(1)* (compartment_c1*((J24_k1_J24* x(18) * x(7) )-(J24_k2_J24* x(50) ))) + (1)*(1)* (compartment_c1*((J7_k1_J7* x(5) * x(34) )-(J7_k2_J7* x(18) ))) + (1)*(1)* (compartment_c1*J13_k_J13* x(23) ) );
	
//x(19)   ID: dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J14_k_J14* x(19) ) + (-1)*(1)* (compartment_c1*((J27_k1_J27* x(19) * x(48) )-(J27_k2_J27* x(44) ))) + (-1)*(1)* (compartment_c1*((J115_k1_J115* x(13) * x(19) )-(J115_k2_J115* x(49) ))) + (-1)*(1)* (compartment_c1*((J116_k1_J116* x(19) * x(34) )-(J116_k2_J116* x(21) ))) + (-1)*(1)* (compartment_c1*((J118_k1_J118* x(19) * x(12) )-(J118_k2_J118* x(55) ))) + (-1)*(1)* (compartment_c1*((J120_k1_J120* x(19) * x(51) )-(J120_k2_J120* x(22) ))) + (1)*(1)* (compartment_c1*((J6_k1_J6* x(5) * x(24) )-(J6_k2_J6* x(19) ))) );
	
//x(20)   ID: B_Raf_Rap1_GTP  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J139_Vmax_J139* x(20) * x(31) )/(J139_Km1_J139+ x(20) ))) + (-1)*(1)* (compartment_c1*((J148_k1_J148* x(20) * x(16) )-(J148_k2_J148* x(89) ))) + (-1)*(1)* (compartment_c1*((J149_k1_J149* x(20) * x(54) )-(J149_k2_J149* x(90) ))) + (-1)*(1)* (compartment_c1*((J150_k1_J150* x(20) * x(37) )-(J150_k2_J150* x(91) ))) + (-1)*(1)* (compartment_c1*((J151_k1_J151* x(20) * x(38) )-(J151_k2_J151* x(92) ))) + (1)*(1)* (compartment_c1*((J53_k1_J53* x(65) * x(27) )-(J53_k2_J53* x(20) ))) + (1)*(1)* (compartment_c1*J160_k_J160* x(89) ) + (1)*(1)* (compartment_c1*J161_k_J161* x(90) ) + (1)*(1)* (compartment_c1*J162_k_J162* x(91) ) + (1)*(1)* (compartment_c1*J163_k_J163* x(92) ) );
	
//x(21)   ID: pShc_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J19_k_J19* x(21) ) + (-1)*(1)* (compartment_c1*((J117_k1_J117* x(21) * x(7) )-(J117_k2_J117* x(44) ))) + (1)*(1)* (compartment_c1*((J9_k1_J9* x(24) * x(18) )-(J9_k2_J9* x(21) ))) + (1)*(1)* (compartment_c1*J21_k_J21* x(49) ) + (1)*(1)* (compartment_c1*((J116_k1_J116* x(19) * x(34) )-(J116_k2_J116* x(21) ))) );
	
//x(22)   ID: pFRS2_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J41_k_J41* x(22) ) + (-1)*(1)* (compartment_c1*((J44_k1_J44* x(22) * x(64) )-(J44_k2_J44* x(40) ))) + (1)*(1)* (compartment_c1*((J40_k1_J40* x(24) * x(35) )-(J40_k2_J40* x(22) ))) + (1)*(1)* (compartment_c1*J43_k_J43* x(55) ) + (1)*(1)* (compartment_c1*((J120_k1_J120* x(19) * x(51) )-(J120_k2_J120* x(22) ))) );
	
//x(23)   ID: Shc_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J13_k_J13* x(23) ) + (-1)*(1)* (compartment_c1*((J16_k1_J16* x(24) * x(23) )-(J16_k2_J16* x(49) ))) + (1)*(1)* (compartment_c1*((J12_k1_J12* x(5) * x(13) )-(J12_k2_J12* x(23) ))) );
	
//x(24)   ID: c_Cbl  initialValue: 0.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J6_k1_J6* x(5) * x(24) )-(J6_k2_J6* x(19) ))) + (-1)*(1)* (compartment_c1*((J9_k1_J9* x(24) * x(18) )-(J9_k2_J9* x(21) ))) + (-1)*(1)* (compartment_c1*((J16_k1_J16* x(24) * x(23) )-(J16_k2_J16* x(49) ))) + (-1)*(1)* (compartment_c1*((J25_k1_J25* x(24) * x(50) )-(J25_k2_J25* x(44) ))) + (-1)*(1)* (compartment_c1*((J39_k1_J39* x(52) * x(24) )-(J39_k2_J39* x(55) ))) + (-1)*(1)* (compartment_c1*((J40_k1_J40* x(24) * x(35) )-(J40_k2_J40* x(22) ))) + (-1)*(1)* (compartment_c1*((J119_k1_J119* x(24) * x(42) )-(J119_k2_J119* x(40) ))) + (1)*(1)* (compartment_c1*J15_k_J15* x(46) ) + (1)*(1)* (compartment_c1*J18_k_J18* x(45) ) + (1)*(1)* (compartment_c1*J20_k_J20* x(41) ) + (1)*(1)* (compartment_c1*J29_k_J29* x(43) ) + (1)*(1)* (compartment_c1*J46_k_J46* x(39) ) + (1)*(1)* (compartment_c1*J47_k_J47* x(56) ) + (1)*(1)* (compartment_c1*J164_k_J164* x(58) ) );
	
//x(25)   ID: RasGAP  initialValue: 0.1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J49_k1_J49* x(10) * x(25) )-(J49_k2_J49* x(53) ))) );
	
//x(26)   ID: c_Raf  initialValue: 0.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J52_k1_J52* x(26) * x(57) )-(J52_k2_J52* x(59) ))) + (1)*(1)* (compartment_c1*((J137_Vmax_J137* x(59) * x(53) )/(J137_Km1_J137+ x(59) ))) );
	
//x(27)   ID: B_Raf  initialValue: 0.2
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J53_k1_J53* x(65) * x(27) )-(J53_k2_J53* x(20) ))) + (-1)*(1)* (compartment_c1*((J54_k1_J54* x(57) * x(27) )-(J54_k2_J54* x(60) ))) + (1)*(1)* (compartment_c1*((J138_Vmax_J138* x(60) * x(53) )/(J138_Km1_J138+ x(60) ))) + (1)*(1)* (compartment_c1*((J139_Vmax_J139* x(20) * x(31) )/(J139_Km1_J139+ x(20) ))) );
	
//x(28)   ID: ERK  initialValue: 0.26
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J133_k1_J133* x(28) * x(16) )-(J133_k2_J133* x(37) ))) + (-1)*(1)* (compartment_c1*((J134_k1_J134* x(28) * x(54) )-(J134_k2_J134* x(38) ))) + (-1)*(1)* (compartment_c1*((J135_k1_J135* x(28) * x(61) )-(J135_k2_J135* x(67) ))) + (1)*(1)* (compartment_c1*J167_k_J167* x(93) ) + (1)*(1)* (compartment_c1*J168_k_J168* x(94) ) );
	
//x(29)   ID: PP2A  initialValue: 0.24
	0;
	
//x(30)   ID: Ras_GDP  initialValue: 0.1
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J69_Vmax_J69* x(30) *( x(50) + x(44) + x(78) ))/(J69_Km1_J69+ x(30) ))) + (1)*(1)* (compartment_c1*J66_k_J66* x(57) ) + (1)*(1)* (compartment_c1*((J121_Vmax_J121* x(57) * x(53) )/(J121_Km1_J121+ x(57) ))) + (1)*(1)* (compartment_c1*((J137_Vmax_J137* x(59) * x(53) )/(J137_Km1_J137+ x(59) ))) + (1)*(1)* (compartment_c1*((J138_Vmax_J138* x(60) * x(53) )/(J138_Km1_J138+ x(60) ))) );
	
//x(31)   ID: Rap1GAP  initialValue: 0.012
	0;
	
//x(32)   ID: C3G  initialValue: 0.5
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J34_k1_J34* x(11) * x(32) )-(J34_k2_J34* x(64) ))) );
	
//x(33)   ID: NGFR  initialValue: 0.061894
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((J70_k1_J70* x(96) * x(33) )-(J70_k2_J70* x(66) ))) + (1)*(1)* (compartment_compartment*((J113_k1_J113* x(95) )-(J113_k2_J113* x(33) ))) );
	
//x(34)   ID: pShc  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J7_k1_J7* x(5) * x(34) )-(J7_k2_J7* x(18) ))) + (-1)*(1)* (compartment_c1*((J22_k1_J22* x(34) * x(7) )-(J22_k2_J22* x(48) ))) + (-1)*(1)* (compartment_c1*J32_k_J32* x(34) ) + (-1)*(1)* (compartment_c1*((J76_k1_J76* x(34) * x(63) )-(J76_k2_J76* x(71) ))) + (-1)*(1)* (compartment_c1*((J80_k1_J80* x(36) * x(34) )-(J80_k2_J80* x(74) ))) + (-1)*(1)* (compartment_c1*((J116_k1_J116* x(19) * x(34) )-(J116_k2_J116* x(21) ))) + (1)*(1)* (compartment_c1*J20_k_J20* x(41) ) + (1)*(1)* (compartment_c1*J90_k_J90* x(71) ) + (1)*(1)* (compartment_c1*J94_k_J94* x(74) ) + (1)*(1)* (compartment_c1*((J124_Vmax_J124* x(48) * x(68) )/(J124_Km1_J124+ x(48) ))) );
	
//x(35)   ID: pFRS2_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J38_k1_J38* x(35) * x(64) )-(J38_k2_J38* x(42) ))) + (-1)*(1)* (compartment_c1*((J40_k1_J40* x(24) * x(35) )-(J40_k2_J40* x(22) ))) + (1)*(1)* (compartment_c1*((J36_k1_J36* x(5) * x(51) )-(J36_k2_J36* x(35) ))) + (1)*(1)* (compartment_c1*J37_k_J37* x(52) ) );
	
//x(36)   ID: pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J73_k_J73* x(36) ) + (-1)*(1)* (compartment_c1*((J79_k1_J79* x(36) * x(13) )-(J79_k2_J79* x(70) ))) + (-1)*(1)* (compartment_c1*((J80_k1_J80* x(36) * x(34) )-(J80_k2_J80* x(74) ))) + (-1)*(1)* (compartment_c1*((J84_k1_J84* x(36) * x(12) )-(J84_k2_J84* x(75) ))) + (-1)*(1)* (compartment_c1*((J85_k1_J85* x(36) * x(51) )-(J85_k2_J85* x(76) ))) + (-1)*(1)* (compartment_c1*((J106_k1_J106* x(48) * x(36) )-(J106_k2_J106* x(80) ))) + (1)*(1)* (compartment_c1*J72_k_J72* x(63) ) );
	
//x(37)   ID: MEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J142_k1_J142* x(59) * x(37) )-(J142_k2_J142* x(83) ))) + (-1)*(1)* (compartment_c1*((J146_k1_J146* x(60) * x(37) )-(J146_k2_J146* x(87) ))) + (-1)*(1)* (compartment_c1*((J150_k1_J150* x(20) * x(37) )-(J150_k2_J150* x(91) ))) + (1)*(1)* (compartment_c1*((J62_Vmax_J62* x(38) * x(29) )/(J62_Km1_J62+ x(38) ))) + (1)*(1)* (compartment_c1*((J133_k1_J133* x(28) * x(16) )-(J133_k2_J133* x(37) ))) );
	
//x(38)   ID: pMEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J62_Vmax_J62* x(38) * x(29) )/(J62_Km1_J62+ x(38) ))) + (-1)*(1)* (compartment_c1*((J143_k1_J143* x(59) * x(38) )-(J143_k2_J143* x(84) ))) + (-1)*(1)* (compartment_c1*((J147_k1_J147* x(60) * x(38) )-(J147_k2_J147* x(88) ))) + (-1)*(1)* (compartment_c1*((J151_k1_J151* x(20) * x(38) )-(J151_k2_J151* x(92) ))) + (1)*(1)* (compartment_c1*((J61_Vmax_J61* x(67) * x(29) )/(J61_Km1_J61+ x(67) ))) + (1)*(1)* (compartment_c1*((J134_k1_J134* x(28) * x(54) )-(J134_k2_J134* x(38) ))) + (1)*(1)* (compartment_c1*J154_k_J154* x(83) ) + (1)*(1)* (compartment_c1*J158_k_J158* x(87) ) + (1)*(1)* (compartment_c1*J162_k_J162* x(91) ) );
	
//x(39)   ID: FRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J46_k_J46* x(39) ) + (1)*(1)* (compartment_c1*J42_k_J42* x(55) ) );
	
//x(40)   ID: Crk_C3G_pFRS2_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J45_k_J45* x(40) ) + (1)*(1)* (compartment_c1*((J44_k1_J44* x(22) * x(64) )-(J44_k2_J44* x(40) ))) + (1)*(1)* (compartment_c1*((J119_k1_J119* x(24) * x(42) )-(J119_k2_J119* x(40) ))) );
	
//x(41)   ID: pShc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J20_k_J20* x(41) ) + (1)*(1)* (compartment_c1*J19_k_J19* x(21) ) );
	
//x(42)   ID: Crk_C3G_pFRS2_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J119_k1_J119* x(24) * x(42) )-(J119_k2_J119* x(40) ))) + (1)*(1)* (compartment_c1*((J38_k1_J38* x(35) * x(64) )-(J38_k2_J38* x(42) ))) );
	
//x(43)   ID: Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J29_k_J29* x(43) ) + (1)*(1)* (compartment_c1*J28_k_J28* x(44) ) );
	
//x(44)   ID: Grb2_SOS_pShc_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J28_k_J28* x(44) ) + (1)*(1)* (compartment_c1*((J25_k1_J25* x(24) * x(50) )-(J25_k2_J25* x(44) ))) + (1)*(1)* (compartment_c1*((J27_k1_J27* x(19) * x(48) )-(J27_k2_J27* x(44) ))) + (1)*(1)* (compartment_c1*((J117_k1_J117* x(21) * x(7) )-(J117_k2_J117* x(44) ))) );
	
//x(45)   ID: Shc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J18_k_J18* x(45) ) + (1)*(1)* (compartment_c1*J17_k_J17* x(49) ) );
	
//x(46)   ID: dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J15_k_J15* x(46) ) + (1)*(1)* (compartment_c1*J14_k_J14* x(19) ) );
	
//x(47)   ID: proteosome  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*J15_k_J15* x(46) ) + (1)*(1)* (compartment_c1*J18_k_J18* x(45) ) + (1)*(1)* (compartment_c1*J20_k_J20* x(41) ) + (1)*(1)* (compartment_c1*J29_k_J29* x(43) ) + (1)*(1)* (compartment_c1*J46_k_J46* x(39) ) + (1)*(1)* (compartment_c1*J47_k_J47* x(56) ) );
	
//x(48)   ID: Grb2_SOS_pShc  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J23_k1_J23* x(5) * x(48) )-(J23_k2_J23* x(50) ))) + (-1)*(1)* (compartment_c1*((J27_k1_J27* x(19) * x(48) )-(J27_k2_J27* x(44) ))) + (-1)*(1)* (J30_k_J30* x(48) ) + (-1)*(1)* (compartment_c1*((J105_k1_J105* x(48) * x(63) )-(J105_k2_J105* x(78) ))) + (-1)*(1)* (compartment_c1*((J106_k1_J106* x(48) * x(36) )-(J106_k2_J106* x(80) ))) + (-1)*(1)* (compartment_c1*((J124_Vmax_J124* x(48) * x(68) )/(J124_Km1_J124+ x(48) ))) + (1)*(1)* (compartment_c1*((J22_k1_J22* x(34) * x(7) )-(J22_k2_J22* x(48) ))) + (1)*(1)* (compartment_c1*J29_k_J29* x(43) ) + (1)*(1)* (compartment_c1*J109_k_J109* x(78) ) + (1)*(1)* (compartment_c1*J110_k_J110* x(80) ) );
	
//x(49)   ID: Shc_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J17_k_J17* x(49) ) + (-1)*(1)* (compartment_c1*J21_k_J21* x(49) ) + (1)*(1)* (compartment_c1*((J16_k1_J16* x(24) * x(23) )-(J16_k2_J16* x(49) ))) + (1)*(1)* (compartment_c1*((J115_k1_J115* x(13) * x(19) )-(J115_k2_J115* x(49) ))) );
	
//x(50)   ID: Grb2_SOS_pShc_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J25_k1_J25* x(24) * x(50) )-(J25_k2_J25* x(44) ))) + (1)*(1)* (compartment_c1*((J23_k1_J23* x(5) * x(48) )-(J23_k2_J23* x(50) ))) + (1)*(1)* (compartment_c1*((J24_k1_J24* x(18) * x(7) )-(J24_k2_J24* x(50) ))) );
	
//x(51)   ID: pFRS2  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J33_k_J33* x(51) ) + (-1)*(1)* (compartment_c1*((J36_k1_J36* x(5) * x(51) )-(J36_k2_J36* x(35) ))) + (-1)*(1)* (compartment_c1*((J78_k1_J78* x(51) * x(63) )-(J78_k2_J78* x(72) ))) + (-1)*(1)* (compartment_c1*((J85_k1_J85* x(36) * x(51) )-(J85_k2_J85* x(76) ))) + (-1)*(1)* (compartment_c1*((J120_k1_J120* x(19) * x(51) )-(J120_k2_J120* x(22) ))) + (1)*(1)* (compartment_c1*J47_k_J47* x(56) ) + (1)*(1)* (compartment_c1*J88_k_J88* x(72) ) + (1)*(1)* (compartment_c1*J107_k_J107* x(79) ) + (1)*(1)* (compartment_c1*J108_k_J108* x(77) ) + (1)*(1)* (J112_k_J112* x(76) ) + (1)*(1)* (compartment_c1*J164_k_J164* x(58) ) );
	
//x(52)   ID: FRS2_dpEGFR  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J37_k_J37* x(52) ) + (-1)*(1)* (compartment_c1*((J39_k1_J39* x(52) * x(24) )-(J39_k2_J39* x(55) ))) + (1)*(1)* (compartment_c1*((J35_k1_J35* x(5) * x(12) )-(J35_k2_J35* x(52) ))) );
	
//x(53)   ID: pDok_RasGAP  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* (compartment_c1*((J49_k1_J49* x(10) * x(25) )-(J49_k2_J49* x(53) ))) );
	
//x(54)   ID: pMEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J58_Vmax_J58* x(54) * x(29) )/(J58_Km1_J58+ x(54) ))) + (-1)*(1)* (compartment_c1*((J134_k1_J134* x(28) * x(54) )-(J134_k2_J134* x(38) ))) + (-1)*(1)* (compartment_c1*((J141_k1_J141* x(59) * x(54) )-(J141_k2_J141* x(82) ))) + (-1)*(1)* (compartment_c1*((J145_k1_J145* x(60) * x(54) )-(J145_k2_J145* x(86) ))) + (-1)*(1)* (compartment_c1*((J149_k1_J149* x(20) * x(54) )-(J149_k2_J149* x(90) ))) + (1)*(1)* ((J57_Vmax_J57* x(61) * x(29) )/(J57_Km1_J57+ x(61) )) + (1)*(1)* (compartment_c1*J152_k_J152* x(81) ) + (1)*(1)* (compartment_c1*J156_k_J156* x(85) ) + (1)*(1)* (compartment_c1*J160_k_J160* x(89) ) );
	
//x(55)   ID: FRS2_dpEGFR_c_Cbl  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J42_k_J42* x(55) ) + (-1)*(1)* (compartment_c1*J43_k_J43* x(55) ) + (1)*(1)* (compartment_c1*((J39_k1_J39* x(52) * x(24) )-(J39_k2_J39* x(55) ))) + (1)*(1)* (compartment_c1*((J118_k1_J118* x(19) * x(12) )-(J118_k2_J118* x(55) ))) );
	
//x(56)   ID: pFRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J47_k_J47* x(56) ) + (1)*(1)* (compartment_c1*J41_k_J41* x(22) ) );
	
//x(57)   ID: Ras_GTP  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J52_k1_J52* x(26) * x(57) )-(J52_k2_J52* x(59) ))) + (-1)*(1)* (compartment_c1*((J54_k1_J54* x(57) * x(27) )-(J54_k2_J54* x(60) ))) + (-1)*(1)* (compartment_c1*J66_k_J66* x(57) ) + (-1)*(1)* (compartment_c1*((J121_Vmax_J121* x(57) * x(53) )/(J121_Km1_J121+ x(57) ))) + (1)*(1)* (compartment_c1*((J69_Vmax_J69* x(30) *( x(50) + x(44) + x(78) ))/(J69_Km1_J69+ x(30) ))) );
	
//x(58)   ID: Crk_C3G_pFRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J164_k_J164* x(58) ) + (1)*(1)* (compartment_c1*J45_k_J45* x(40) ) );
	
//x(59)   ID: c_Raf_Ras_GTP  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J137_Vmax_J137* x(59) * x(53) )/(J137_Km1_J137+ x(59) ))) + (-1)*(1)* (compartment_c1*((J140_k1_J140* x(59) * x(16) )-(J140_k2_J140* x(81) ))) + (-1)*(1)* (compartment_c1*((J141_k1_J141* x(59) * x(54) )-(J141_k2_J141* x(82) ))) + (-1)*(1)* (compartment_c1*((J142_k1_J142* x(59) * x(37) )-(J142_k2_J142* x(83) ))) + (-1)*(1)* (compartment_c1*((J143_k1_J143* x(59) * x(38) )-(J143_k2_J143* x(84) ))) + (1)*(1)* (compartment_c1*((J52_k1_J52* x(26) * x(57) )-(J52_k2_J52* x(59) ))) + (1)*(1)* (compartment_c1*J152_k_J152* x(81) ) + (1)*(1)* (compartment_c1*J153_k_J153* x(82) ) + (1)*(1)* (compartment_c1*J154_k_J154* x(83) ) + (1)*(1)* (compartment_c1*J155_k_J155* x(84) ) );
	
//x(60)   ID: B_Raf_Ras_GTP  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J138_Vmax_J138* x(60) * x(53) )/(J138_Km1_J138+ x(60) ))) + (-1)*(1)* (compartment_c1*((J144_k1_J144* x(60) * x(16) )-(J144_k2_J144* x(85) ))) + (-1)*(1)* (compartment_c1*((J145_k1_J145* x(60) * x(54) )-(J145_k2_J145* x(86) ))) + (-1)*(1)* (compartment_c1*((J146_k1_J146* x(60) * x(37) )-(J146_k2_J146* x(87) ))) + (-1)*(1)* (compartment_c1*((J147_k1_J147* x(60) * x(38) )-(J147_k2_J147* x(88) ))) + (1)*(1)* (compartment_c1*((J54_k1_J54* x(57) * x(27) )-(J54_k2_J54* x(60) ))) + (1)*(1)* (compartment_c1*J156_k_J156* x(85) ) + (1)*(1)* (compartment_c1*J157_k_J157* x(86) ) + (1)*(1)* (compartment_c1*J158_k_J158* x(87) ) + (1)*(1)* (compartment_c1*J159_k_J159* x(88) ) );
	
//x(61)   ID: ppMEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((J57_Vmax_J57* x(61) * x(29) )/(J57_Km1_J57+ x(61) )) + (-1)*(1)* (compartment_c1*((J135_k1_J135* x(28) * x(61) )-(J135_k2_J135* x(67) ))) + (1)*(1)* (compartment_c1*J136_k_J136* x(67) ) + (1)*(1)* (compartment_c1*J153_k_J153* x(82) ) + (1)*(1)* (compartment_c1*J157_k_J157* x(86) ) + (1)*(1)* (compartment_c1*J161_k_J161* x(90) ) );
	
//x(62)   ID: ppERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(2)* (compartment_c1*((J63_k1_J63* x(62) * x(62) )-(J63_k2_J63* x(68) ))) + (-1)*(1)* (compartment_c1*((J166_k1_J166* x(17) * x(62) )-(J166_k2_J166* x(93) ))) + (1)*(1)* (compartment_c1*J136_k_J136* x(67) ) + (1)*(1)* (compartment_c1*J168_k_J168* x(94) ) );
	
//x(63)   ID: pTrkA  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_c1*J72_k_J72* x(63) ) + (-1)*(1)* (compartment_c1*J74_k_J74* x(63) ) + (-1)*(1)* (compartment_c1*((J75_k1_J75* x(13) * x(63) )-(J75_k2_J75* x(69) ))) + (-1)*(1)* (compartment_c1*((J76_k1_J76* x(34) * x(63) )-(J76_k2_J76* x(71) ))) + (-1)*(1)* (compartment_c1*((J77_k1_J77* x(12) * x(63) )-(J77_k2_J77* x(73) ))) + (-1)*(1)* (compartment_c1*((J78_k1_J78* x(51) * x(63) )-(J78_k2_J78* x(72) ))) + (-1)*(1)* (compartment_c1*((J105_k1_J105* x(48) * x(63) )-(J105_k2_J105* x(78) ))) + (1)*(1)* (compartment_compartment*J71_k_J71* x(66) ) );
	
//x(64)   ID: Crk_C3G  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J38_k1_J38* x(35) * x(64) )-(J38_k2_J38* x(42) ))) + (-1)*(1)* (compartment_c1*((J44_k1_J44* x(22) * x(64) )-(J44_k2_J44* x(40) ))) + (-1)*(1)* (compartment_c1*((J103_k1_J103* x(64) * x(72) )-(J103_k2_J103* x(79) ))) + (-1)*(1)* (compartment_c1*((J104_k1_J104* x(64) * x(76) )-(J104_k2_J104* x(77) ))) + (1)*(1)* (compartment_c1*((J34_k1_J34* x(11) * x(32) )-(J34_k2_J34* x(64) ))) + (1)*(1)* (compartment_c1*J107_k_J107* x(79) ) + (1)*(1)* (compartment_c1*J108_k_J108* x(77) ) + (1)*(1)* (compartment_c1*J164_k_J164* x(58) ) );
	
//x(65)   ID: Rap1_GTP  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J53_k1_J53* x(65) * x(27) )-(J53_k2_J53* x(20) ))) + (-1)*(1)* (compartment_c1*J67_k_J67* x(65) ) + (-1)*(1)* (compartment_c1*((J122_Vmax_J122* x(65) * x(31) )/(J122_Km1_J122+ x(65) ))) + (1)*(1)* (compartment_c1*((J68_Vmax_J68* x(15) *( x(42) + x(40) + x(77) ))/(J68_Km1_J68+ x(15) ))) );
	
//x(66)   ID: L_NGFR  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*J71_k_J71* x(66) ) + (1)*(1)* (compartment_compartment*((J70_k1_J70* x(96) * x(33) )-(J70_k2_J70* x(66) ))) );
	
//x(67)   ID: ppMEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J61_Vmax_J61* x(67) * x(29) )/(J61_Km1_J61+ x(67) ))) + (-1)*(1)* (compartment_c1*J136_k_J136* x(67) ) + (1)*(1)* (compartment_c1*((J135_k1_J135* x(28) * x(61) )-(J135_k2_J135* x(67) ))) + (1)*(1)* (compartment_c1*J155_k_J155* x(84) ) + (1)*(1)* (compartment_c1*J159_k_J159* x(88) ) + (1)*(1)* (compartment_c1*J163_k_J163* x(92) ) );
	
//x(68)   ID: dppERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J165_k1_J165* x(17) * x(68) )-(J165_k2_J165* x(94) ))) + (1)*(1)* (compartment_c1*((J63_k1_J63* x(62) * x(62) )-(J63_k2_J63* x(68) ))) );
	
//x(69)   ID: Shc_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J82_k_J82* x(69) ) + (-1)*(1)* (compartment_c1*J89_k_J89* x(69) ) + (-1)*(1)* (compartment_c1*J102_k_J102* x(69) ) + (1)*(1)* (compartment_c1*((J75_k1_J75* x(13) * x(63) )-(J75_k2_J75* x(69) ))) );
	
//x(70)   ID: Shc_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J81_k_J81* x(70) ) + (-1)*(1)* (compartment_c1*J93_k_J93* x(70) ) + (1)*(1)* (compartment_c1*((J79_k1_J79* x(36) * x(13) )-(J79_k2_J79* x(70) ))) + (1)*(1)* (compartment_c1*J102_k_J102* x(69) ) );
	
//x(71)   ID: pShc_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J90_k_J90* x(71) ) + (-1)*(1)* (compartment_c1*((J96_k1_J96* x(7) * x(71) )-(J96_k2_J96* x(78) ))) + (-1)*(1)* (compartment_c1*J101_k_J101* x(71) ) + (1)*(1)* (compartment_c1*((J76_k1_J76* x(34) * x(63) )-(J76_k2_J76* x(71) ))) + (1)*(1)* (compartment_c1*J82_k_J82* x(69) ) );
	
//x(72)   ID: pFRS2_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J88_k_J88* x(72) ) + (-1)*(1)* (compartment_c1*J99_k_J99* x(72) ) + (-1)*(1)* (compartment_c1*((J103_k1_J103* x(64) * x(72) )-(J103_k2_J103* x(79) ))) + (1)*(1)* (compartment_c1*((J78_k1_J78* x(51) * x(63) )-(J78_k2_J78* x(72) ))) + (1)*(1)* (compartment_c1*J83_k_J83* x(73) ) );
	
//x(73)   ID: FRS2_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J83_k_J83* x(73) ) + (-1)*(1)* (compartment_c1*J87_k_J87* x(73) ) + (-1)*(1)* (compartment_c1*J100_k_J100* x(73) ) + (1)*(1)* (compartment_c1*((J77_k1_J77* x(12) * x(63) )-(J77_k2_J77* x(73) ))) );
	
//x(74)   ID: pShc_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J94_k_J94* x(74) ) + (-1)*(1)* (compartment_c1*((J95_k1_J95* x(7) * x(74) )-(J95_k2_J95* x(80) ))) + (1)*(1)* (compartment_c1*((J80_k1_J80* x(36) * x(34) )-(J80_k2_J80* x(74) ))) + (1)*(1)* (compartment_c1*J81_k_J81* x(70) ) + (1)*(1)* (compartment_c1*J101_k_J101* x(71) ) );
	
//x(75)   ID: FRS2_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J86_k_J86* x(75) ) + (-1)*(1)* (compartment_c1*J92_k_J92* x(75) ) + (1)*(1)* (compartment_c1*((J84_k1_J84* x(36) * x(12) )-(J84_k2_J84* x(75) ))) + (1)*(1)* (compartment_c1*J100_k_J100* x(73) ) );
	
//x(76)   ID: pFRS2_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*((J104_k1_J104* x(64) * x(76) )-(J104_k2_J104* x(77) ))) + (-1)*(1)* (J112_k_J112* x(76) ) + (1)*(1)* (compartment_c1*((J85_k1_J85* x(36) * x(51) )-(J85_k2_J85* x(76) ))) + (1)*(1)* (compartment_c1*J86_k_J86* x(75) ) + (1)*(1)* (compartment_c1*J99_k_J99* x(72) ) );
	
//x(77)   ID: Crk_C3G_pFRS2_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J108_k_J108* x(77) ) + (1)*(1)* (compartment_c1*J98_k_J98* x(79) ) + (1)*(1)* (compartment_c1*((J104_k1_J104* x(64) * x(76) )-(J104_k2_J104* x(77) ))) );
	
//x(78)   ID: Grb2_SOS_pShc_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J97_k_J97* x(78) ) + (-1)*(1)* (compartment_c1*J109_k_J109* x(78) ) + (1)*(1)* (compartment_c1*((J96_k1_J96* x(7) * x(71) )-(J96_k2_J96* x(78) ))) + (1)*(1)* (compartment_c1*((J105_k1_J105* x(48) * x(63) )-(J105_k2_J105* x(78) ))) );
	
//x(79)   ID: Crk_C3G_pFRS2_pTrkA  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J98_k_J98* x(79) ) + (-1)*(1)* (compartment_c1*J107_k_J107* x(79) ) + (1)*(1)* (compartment_c1*((J103_k1_J103* x(64) * x(72) )-(J103_k2_J103* x(79) ))) );
	
//x(80)   ID: Grb2_SOS_pShc_pTrkA_endo  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J110_k_J110* x(80) ) + (1)*(1)* (compartment_c1*((J95_k1_J95* x(7) * x(74) )-(J95_k2_J95* x(80) ))) + (1)*(1)* (compartment_c1*J97_k_J97* x(78) ) + (1)*(1)* (compartment_c1*((J106_k1_J106* x(48) * x(36) )-(J106_k2_J106* x(80) ))) );
	
//x(81)   ID: c_Raf_Ras_GTP_MEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J152_k_J152* x(81) ) + (1)*(1)* (compartment_c1*((J140_k1_J140* x(59) * x(16) )-(J140_k2_J140* x(81) ))) );
	
//x(82)   ID: c_Raf_Ras_GTP_pMEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J153_k_J153* x(82) ) + (1)*(1)* (compartment_c1*((J141_k1_J141* x(59) * x(54) )-(J141_k2_J141* x(82) ))) );
	
//x(83)   ID: c_Raf_Ras_GTP_MEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J154_k_J154* x(83) ) + (1)*(1)* (compartment_c1*((J142_k1_J142* x(59) * x(37) )-(J142_k2_J142* x(83) ))) );
	
//x(84)   ID: c_Raf_Ras_GTP_pMEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J155_k_J155* x(84) ) + (1)*(1)* (compartment_c1*((J143_k1_J143* x(59) * x(38) )-(J143_k2_J143* x(84) ))) );
	
//x(85)   ID: B_Raf_Ras_GTP_MEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J156_k_J156* x(85) ) + (1)*(1)* (compartment_c1*((J144_k1_J144* x(60) * x(16) )-(J144_k2_J144* x(85) ))) );
	
//x(86)   ID: B_Raf_Ras_GTP_pMEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J157_k_J157* x(86) ) + (1)*(1)* (compartment_c1*((J145_k1_J145* x(60) * x(54) )-(J145_k2_J145* x(86) ))) );
	
//x(87)   ID: B_Raf_Ras_GTP_MEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J158_k_J158* x(87) ) + (1)*(1)* (compartment_c1*((J146_k1_J146* x(60) * x(37) )-(J146_k2_J146* x(87) ))) );
	
//x(88)   ID: B_Raf_Ras_GTP_pMEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J159_k_J159* x(88) ) + (1)*(1)* (compartment_c1*((J147_k1_J147* x(60) * x(38) )-(J147_k2_J147* x(88) ))) );
	
//x(89)   ID: B_Raf_Rap1_GTP_MEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J160_k_J160* x(89) ) + (1)*(1)* (compartment_c1*((J148_k1_J148* x(20) * x(16) )-(J148_k2_J148* x(89) ))) );
	
//x(90)   ID: B_Raf_Rap1_GTP_pMEK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J161_k_J161* x(90) ) + (1)*(1)* (compartment_c1*((J149_k1_J149* x(20) * x(54) )-(J149_k2_J149* x(90) ))) );
	
//x(91)   ID: B_Raf_Rap1_GTP_MEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J162_k_J162* x(91) ) + (1)*(1)* (compartment_c1*((J150_k1_J150* x(20) * x(37) )-(J150_k2_J150* x(91) ))) );
	
//x(92)   ID: B_Raf_Rap1_GTP_pMEK_ERK  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J163_k_J163* x(92) ) + (1)*(1)* (compartment_c1*((J151_k1_J151* x(20) * x(38) )-(J151_k2_J151* x(92) ))) );
	
//x(93)   ID: ppERK_MKP3  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J167_k_J167* x(93) ) + (1)*(1)* (compartment_c1*((J166_k1_J166* x(17) * x(62) )-(J166_k2_J166* x(93) ))) );
	
//x(94)   ID: dppERK_MKP3  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (compartment_c1*J168_k_J168* x(94) ) + (1)*(1)* (compartment_c1*((J165_k1_J165* x(17) * x(68) )-(J165_k2_J165* x(94) ))) );
	
//x(95)   ID: pro_TrkA  initialValue: 0.020631
	0;
	
//x(96)   ID: NGF  initialValue: 0
	0;
	
//x(97)   ID: EGF  initialValue: 0.001613
	0;
	
//x(98)   ID: pro_EGFR  initialValue: 0.3
	0;
	
//x(99)   ID: degradation  initialValue: 0
	0
	];


	
endfunction
        x0=[0.3;0;0;0.1;0;0;0;1;0.3;0;1;1;1;0;0.2;0.68;0.018;0;0;0;0;0;0;0.5;0.1;0.5;0.2;0.26;0.24;0.1;0.012;0.5;0.061894;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.020631;0;0.001613;0.3;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99])

//real_variable:
	
	
//x(1)   id: EGFR  initialValue: 0.3
	
//x(2)   id: L_EGFR  initialValue: 0
	
//x(3)   id: L_EGFR_dimer  initialValue: 0
	
//x(4)   id: SOS  initialValue: 0.1
	
//x(5)   id: L_dpEGFR  initialValue: 0
	
//x(6)   id: pSOS  initialValue: 0
	
//x(7)   id: SOS_Grb2  initialValue: 0
	
//x(8)   id: Grb2  initialValue: 1
	
//x(9)   id: Dok  initialValue: 0.3
	
//x(10)   id: pDok  initialValue: 0
	
//x(11)   id: Crk  initialValue: 1
	
//x(12)   id: FRS2  initialValue: 1
	
//x(13)   id: Shc  initialValue: 1
	
//x(14)   id: pSOS_Grb2  initialValue: 0
	
//x(15)   id: Rap1_GDP  initialValue: 0.2
	
//x(16)   id: MEK  initialValue: 0.68
	
//x(17)   id: MKP3  initialValue: 0.018
	
//x(18)   id: pShc_dpEGFR  initialValue: 0
	
//x(19)   id: dpEGFR_c_Cbl  initialValue: 0
	
//x(20)   id: B_Raf_Rap1_GTP  initialValue: 0
	
//x(21)   id: pShc_dpEGFR_c_Cbl  initialValue: 0
	
//x(22)   id: pFRS2_dpEGFR_c_Cbl  initialValue: 0
	
//x(23)   id: Shc_dpEGFR  initialValue: 0
	
//x(24)   id: c_Cbl  initialValue: 0.5
	
//x(25)   id: RasGAP  initialValue: 0.1
	
//x(26)   id: c_Raf  initialValue: 0.5
	
//x(27)   id: B_Raf  initialValue: 0.2
	
//x(28)   id: ERK  initialValue: 0.26
	
//x(29)   id: PP2A  initialValue: 0.24
	
//x(30)   id: Ras_GDP  initialValue: 0.1
	
//x(31)   id: Rap1GAP  initialValue: 0.012
	
//x(32)   id: C3G  initialValue: 0.5
	
//x(33)   id: NGFR  initialValue: 0.061894
	
//x(34)   id: pShc  initialValue: 0
	
//x(35)   id: pFRS2_dpEGFR  initialValue: 0
	
//x(36)   id: pTrkA_endo  initialValue: 0
	
//x(37)   id: MEK_ERK  initialValue: 0
	
//x(38)   id: pMEK_ERK  initialValue: 0
	
//x(39)   id: FRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(40)   id: Crk_C3G_pFRS2_dpEGFR_c_Cbl  initialValue: 0
	
//x(41)   id: pShc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(42)   id: Crk_C3G_pFRS2_dpEGFR  initialValue: 0
	
//x(43)   id: Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(44)   id: Grb2_SOS_pShc_dpEGFR_c_Cbl  initialValue: 0
	
//x(45)   id: Shc_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(46)   id: dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(47)   id: proteosome  initialValue: 0
	
//x(48)   id: Grb2_SOS_pShc  initialValue: 0
	
//x(49)   id: Shc_dpEGFR_c_Cbl  initialValue: 0
	
//x(50)   id: Grb2_SOS_pShc_dpEGFR  initialValue: 0
	
//x(51)   id: pFRS2  initialValue: 0
	
//x(52)   id: FRS2_dpEGFR  initialValue: 0
	
//x(53)   id: pDok_RasGAP  initialValue: 0
	
//x(54)   id: pMEK  initialValue: 0
	
//x(55)   id: FRS2_dpEGFR_c_Cbl  initialValue: 0
	
//x(56)   id: pFRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(57)   id: Ras_GTP  initialValue: 0
	
//x(58)   id: Crk_C3G_pFRS2_dpEGFR_c_Cbl_ubiq  initialValue: 0
	
//x(59)   id: c_Raf_Ras_GTP  initialValue: 0
	
//x(60)   id: B_Raf_Ras_GTP  initialValue: 0
	
//x(61)   id: ppMEK  initialValue: 0
	
//x(62)   id: ppERK  initialValue: 0
	
//x(63)   id: pTrkA  initialValue: 0
	
//x(64)   id: Crk_C3G  initialValue: 0
	
//x(65)   id: Rap1_GTP  initialValue: 0
	
//x(66)   id: L_NGFR  initialValue: 0
	
//x(67)   id: ppMEK_ERK  initialValue: 0
	
//x(68)   id: dppERK  initialValue: 0
	
//x(69)   id: Shc_pTrkA  initialValue: 0
	
//x(70)   id: Shc_pTrkA_endo  initialValue: 0
	
//x(71)   id: pShc_pTrkA  initialValue: 0
	
//x(72)   id: pFRS2_pTrkA  initialValue: 0
	
//x(73)   id: FRS2_pTrkA  initialValue: 0
	
//x(74)   id: pShc_pTrkA_endo  initialValue: 0
	
//x(75)   id: FRS2_pTrkA_endo  initialValue: 0
	
//x(76)   id: pFRS2_pTrkA_endo  initialValue: 0
	
//x(77)   id: Crk_C3G_pFRS2_pTrkA_endo  initialValue: 0
	
//x(78)   id: Grb2_SOS_pShc_pTrkA  initialValue: 0
	
//x(79)   id: Crk_C3G_pFRS2_pTrkA  initialValue: 0
	
//x(80)   id: Grb2_SOS_pShc_pTrkA_endo  initialValue: 0
	
//x(81)   id: c_Raf_Ras_GTP_MEK  initialValue: 0
	
//x(82)   id: c_Raf_Ras_GTP_pMEK  initialValue: 0
	
//x(83)   id: c_Raf_Ras_GTP_MEK_ERK  initialValue: 0
	
//x(84)   id: c_Raf_Ras_GTP_pMEK_ERK  initialValue: 0
	
//x(85)   id: B_Raf_Ras_GTP_MEK  initialValue: 0
	
//x(86)   id: B_Raf_Ras_GTP_pMEK  initialValue: 0
	
//x(87)   id: B_Raf_Ras_GTP_MEK_ERK  initialValue: 0
	
//x(88)   id: B_Raf_Ras_GTP_pMEK_ERK  initialValue: 0
	
//x(89)   id: B_Raf_Rap1_GTP_MEK  initialValue: 0
	
//x(90)   id: B_Raf_Rap1_GTP_pMEK  initialValue: 0
	
//x(91)   id: B_Raf_Rap1_GTP_MEK_ERK  initialValue: 0
	
//x(92)   id: B_Raf_Rap1_GTP_pMEK_ERK  initialValue: 0
	
//x(93)   id: ppERK_MKP3  initialValue: 0
	
//x(94)   id: dppERK_MKP3  initialValue: 0
	
//x(95)   id: pro_TrkA  initialValue: 0.020631
	
//x(96)   id: NGF  initialValue: 0
	
//x(97)   id: EGF  initialValue: 0.001613
	
//x(98)   id: pro_EGFR  initialValue: 0.3
	
//x(99)   id: degradation  initialValue: 0