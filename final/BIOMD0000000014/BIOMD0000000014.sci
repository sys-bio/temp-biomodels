
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytoplasm   id: Cytoplasm
	compartment_Cytoplasm=1;
		
// a1_Reaction1   id: a1     reactionID: Reaction1
	a1_Reaction1=1;
	
// d1_Reaction2   id: d1     reactionID: Reaction2
	d1_Reaction2=0.4;
	
// k1_Reaction3   id: k1     reactionID: Reaction3
	k1_Reaction3=0.1;
	
// a2_Reaction4   id: a2     reactionID: Reaction4
	a2_Reaction4=0.5;
	
// d2_Reaction5   id: d2     reactionID: Reaction5
	d2_Reaction5=0.5;
	
// k2_Reaction6   id: k2     reactionID: Reaction6
	k2_Reaction6=0.1;
	
// a3_Reaction7   id: a3     reactionID: Reaction7
	a3_Reaction7=3.3;
	
// d3_Reaction8   id: d3     reactionID: Reaction8
	d3_Reaction8=0.42;
	
// k3_Reaction9   id: k3     reactionID: Reaction9
	k3_Reaction9=0.1;
	
// a4_Reaction10   id: a4     reactionID: Reaction10
	a4_Reaction10=10;
	
// d4_Reaction11   id: d4     reactionID: Reaction11
	d4_Reaction11=0.8;
	
// k4_Reaction12   id: k4     reactionID: Reaction12
	k4_Reaction12=0.1;
	
// a5_Reaction13   id: a5     reactionID: Reaction13
	a5_Reaction13=3.3;
	
// d5_Reaction14   id: d5     reactionID: Reaction14
	d5_Reaction14=0.4;
	
// k5_Reaction15   id: k5     reactionID: Reaction15
	k5_Reaction15=0.1;
	
// a6_Reaction16   id: a6     reactionID: Reaction16
	a6_Reaction16=10;
	
// d6_Reaction17   id: d6     reactionID: Reaction17
	d6_Reaction17=0.8;
	
// k6_Reaction18   id: k6     reactionID: Reaction18
	k6_Reaction18=0.1;
	
// a7_Reaction19   id: a7     reactionID: Reaction19
	a7_Reaction19=20;
	
// d7_Reaction20   id: d7     reactionID: Reaction20
	d7_Reaction20=0.6;
	
// k7_Reaction21   id: k7     reactionID: Reaction21
	k7_Reaction21=0.1;
	
// a8_Reaction22   id: a8     reactionID: Reaction22
	a8_Reaction22=5;
	
// d8_Reaction23   id: d8     reactionID: Reaction23
	d8_Reaction23=0.4;
	
// k8_Reaction24   id: k8     reactionID: Reaction24
	k8_Reaction24=0.1;
	
// a9_Reaction25   id: a9     reactionID: Reaction25
	a9_Reaction25=20;
	
// d9_Reaction26   id: d9     reactionID: Reaction26
	d9_Reaction26=0.6;
	
// k9_Reaction27   id: k9     reactionID: Reaction27
	k9_Reaction27=0.1;
	
// a10_Reaction28   id: a10     reactionID: Reaction28
	a10_Reaction28=5;
	
// d10_Reaction29   id: d10     reactionID: Reaction29
	d10_Reaction29=0.4;
	
// k10_Reaction30   id: k10     reactionID: Reaction30
	k10_Reaction30=0.1;
	
// kon_Reaction31   id: kon     reactionID: Reaction31
	kon_Reaction31=10;
	
// koff_Reaction32   id: koff     reactionID: Reaction32
	koff_Reaction32=0.5;
	
// kon_Reaction33   id: kon     reactionID: Reaction33
	kon_Reaction33=10;
	
// koff_Reaction34   id: koff     reactionID: Reaction34
	koff_Reaction34=0.5;
	
// kon_Reaction35   id: kon     reactionID: Reaction35
	kon_Reaction35=10;
	
// koff_Reaction36   id: koff     reactionID: Reaction36
	koff_Reaction36=0.5;
	
// kon_Reaction37   id: kon     reactionID: Reaction37
	kon_Reaction37=10;
	
// koff_Reaction38   id: koff     reactionID: Reaction38
	koff_Reaction38=0.5;
	
// kon_Reaction39   id: kon     reactionID: Reaction39
	kon_Reaction39=10;
	
// koff_Reaction40   id: koff     reactionID: Reaction40
	koff_Reaction40=0.5;
	
// kon_Reaction41   id: kon     reactionID: Reaction41
	kon_Reaction41=10;
	
// koff_Reaction42   id: koff     reactionID: Reaction42
	koff_Reaction42=0.5;
	
// kon_Reaction43   id: kon     reactionID: Reaction43
	kon_Reaction43=10;
	
// koff_Reaction44   id: koff     reactionID: Reaction44
	koff_Reaction44=0.5;
	
// kon_Reaction45   id: kon     reactionID: Reaction45
	kon_Reaction45=10;
	
// koff_Reaction46   id: koff     reactionID: Reaction46
	koff_Reaction46=0.5;
	
// kon_Reaction47   id: kon     reactionID: Reaction47
	kon_Reaction47=10;
	
// koff_Reaction48   id: koff     reactionID: Reaction48
	koff_Reaction48=0.5;
	
// kon_Reaction49   id: kon     reactionID: Reaction49
	kon_Reaction49=10;
	
// koff_Reaction50   id: koff     reactionID: Reaction50
	koff_Reaction50=0.5;
	
// kon_Reaction51   id: kon     reactionID: Reaction51
	kon_Reaction51=10;
	
// koff_Reaction52   id: koff     reactionID: Reaction52
	koff_Reaction52=0.5;
	
// kon_Reaction53   id: kon     reactionID: Reaction53
	kon_Reaction53=10;
	
// koff_Reaction54   id: koff     reactionID: Reaction54
	koff_Reaction54=0.5;
	
// kpon_Reaction55   id: kpon     reactionID: Reaction55
	kpon_Reaction55=0;
	
// kpoff_Reaction56   id: kpoff     reactionID: Reaction56
	kpoff_Reaction56=0.05;
	
// kpon_Reaction57   id: kpon     reactionID: Reaction57
	kpon_Reaction57=0;
	
// kpoff_Reaction58   id: kpoff     reactionID: Reaction58
	kpoff_Reaction58=0.05;
	
// kpon_Reaction59   id: kpon     reactionID: Reaction59
	kpon_Reaction59=0;
	
// kpoff_Reaction60   id: kpoff     reactionID: Reaction60
	kpoff_Reaction60=0.05;
	
// kpon_Reaction61   id: kpon     reactionID: Reaction61
	kpon_Reaction61=0;
	
// kpoff_Reaction62   id: kpoff     reactionID: Reaction62
	kpoff_Reaction62=0.05;
	
// kpon_Reaction63   id: kpon     reactionID: Reaction63
	kpon_Reaction63=0;
	
// kpoff_Reaction64   id: kpoff     reactionID: Reaction64
	kpoff_Reaction64=0.05;
	
// kpon_Reaction65   id: kpon     reactionID: Reaction65
	kpon_Reaction65=0;
	
// kpoff_Reaction66   id: kpoff     reactionID: Reaction66
	kpoff_Reaction66=0.05;
	
// kpon_Reaction67   id: kpon     reactionID: Reaction67
	kpon_Reaction67=0;
	
// kpoff_Reaction68   id: kpoff     reactionID: Reaction68
	kpoff_Reaction68=0.05;
	
// kpon_Reaction69   id: kpon     reactionID: Reaction69
	kpon_Reaction69=0;
	
// kpoff_Reaction70   id: kpoff     reactionID: Reaction70
	kpoff_Reaction70=0.05;
	
// kpon_Reaction71   id: kpon     reactionID: Reaction71
	kpon_Reaction71=0;
	
// kpoff_Reaction72   id: kpoff     reactionID: Reaction72
	kpoff_Reaction72=0.05;
	
// kpon_Reaction73   id: kpon     reactionID: Reaction73
	kpon_Reaction73=0;
	
// kpoff_Reaction74   id: kpoff     reactionID: Reaction74
	kpoff_Reaction74=0.05;
	
// kpon_Reaction75   id: kpon     reactionID: Reaction75
	kpon_Reaction75=0;
	
// kpoff_Reaction76   id: kpoff     reactionID: Reaction76
	kpoff_Reaction76=0.05;
	
// kpon_Reaction77   id: kpon     reactionID: Reaction77
	kpon_Reaction77=0;
	
// kpoff_Reaction78   id: kpoff     reactionID: Reaction78
	kpoff_Reaction78=0.05;
	
// kpon_Reaction79   id: kpon     reactionID: Reaction79
	kpon_Reaction79=0;
	
// kpoff_Reaction80   id: kpoff     reactionID: Reaction80
	kpoff_Reaction80=0.05;
	
// kpon_Reaction81   id: kpon     reactionID: Reaction81
	kpon_Reaction81=0;
	
// kpoff_Reaction82   id: kpoff     reactionID: Reaction82
	kpoff_Reaction82=0.05;
	
// kpon_Reaction83   id: kpon     reactionID: Reaction83
	kpon_Reaction83=0;
	
// kpoff_Reaction84   id: kpoff     reactionID: Reaction84
	kpoff_Reaction84=0.05;
	
// kpon_Reaction85   id: kpon     reactionID: Reaction85
	kpon_Reaction85=0;
	
// kpoff_Reaction86   id: kpoff     reactionID: Reaction86
	kpoff_Reaction86=0.05;
	
// kpon_Reaction87   id: kpon     reactionID: Reaction87
	kpon_Reaction87=0;
	
// kpoff_Reaction88   id: kpoff     reactionID: Reaction88
	kpoff_Reaction88=0.05;
	
// kpon_Reaction89   id: kpon     reactionID: Reaction89
	kpon_Reaction89=0;
	
// kpoff_Reaction90   id: kpoff     reactionID: Reaction90
	kpoff_Reaction90=0.05;
	
// kpon_Reaction91   id: kpon     reactionID: Reaction91
	kpon_Reaction91=0;
	
// kpoff_Reaction92   id: kpoff     reactionID: Reaction92
	kpoff_Reaction92=0.05;
	
// kpon_Reaction93   id: kpon     reactionID: Reaction93
	kpon_Reaction93=0;
	
// kpoff_Reaction94   id: kpoff     reactionID: Reaction94
	kpoff_Reaction94=0.05;
	
// kpon_Reaction95   id: kpon     reactionID: Reaction95
	kpon_Reaction95=0;
	
// kpoff_Reaction96   id: kpoff     reactionID: Reaction96
	kpoff_Reaction96=0.05;
	
// kpon_Reaction97   id: kpon     reactionID: Reaction97
	kpon_Reaction97=0;
	
// kpoff_Reaction98   id: kpoff     reactionID: Reaction98
	kpoff_Reaction98=0.05;
	
// kpon_Reaction99   id: kpon     reactionID: Reaction99
	kpon_Reaction99=0;
	
// kpoff_Reaction100   id: kpoff     reactionID: Reaction100
	kpoff_Reaction100=0.05;
	
// kpon_Reaction101   id: kpon     reactionID: Reaction101
	kpon_Reaction101=0;
	
// kpoff_Reaction102   id: kpoff     reactionID: Reaction102
	kpoff_Reaction102=0.05;
	
// kon_Reaction103   id: kon     reactionID: Reaction103
	kon_Reaction103=10;
	
// koff_Reaction104   id: koff     reactionID: Reaction104
	koff_Reaction104=0.5;
	
// kon_Reaction105   id: kon     reactionID: Reaction105
	kon_Reaction105=10;
	
// koff_Reaction106   id: koff     reactionID: Reaction106
	koff_Reaction106=0.5;
	
// kon_Reaction107   id: kon     reactionID: Reaction107
	kon_Reaction107=10;
	
// koff_Reaction108   id: koff     reactionID: Reaction108
	koff_Reaction108=0.5;
	
// kpon_Reaction109   id: kpon     reactionID: Reaction109
	kpon_Reaction109=0;
	
// kpoff_Reaction110   id: kpoff     reactionID: Reaction110
	kpoff_Reaction110=0.05;
	
// kpon_Reaction111   id: kpon     reactionID: Reaction111
	kpon_Reaction111=0;
	
// kpoff_Reaction112   id: kpoff     reactionID: Reaction112
	kpoff_Reaction112=0.05;
	
// kpon_Reaction113   id: kpon     reactionID: Reaction113
	kpon_Reaction113=0;
	
// kpoff_Reaction114   id: kpoff     reactionID: Reaction114
	kpoff_Reaction114=0.05;
	
// kpon_Reaction115   id: kpon     reactionID: Reaction115
	kpon_Reaction115=0;
	
// kpoff_Reaction116   id: kpoff     reactionID: Reaction116
	kpoff_Reaction116=0.05;
	
// kpon_Reaction117   id: kpon     reactionID: Reaction117
	kpon_Reaction117=0;
	
// kpoff_Reaction118   id: kpoff     reactionID: Reaction118
	kpoff_Reaction118=0.05;
	
// kpon_Reaction119   id: kpon     reactionID: Reaction119
	kpon_Reaction119=0;
	
// kpoff_Reaction120   id: kpoff     reactionID: Reaction120
	kpoff_Reaction120=0.05;
	
// kon_Reaction121   id: kon     reactionID: Reaction121
	kon_Reaction121=10;
	
// koff_Reaction122   id: koff     reactionID: Reaction122
	koff_Reaction122=0.5;
	
// kon_Reaction123   id: kon     reactionID: Reaction123
	kon_Reaction123=10;
	
// koff_Reaction124   id: koff     reactionID: Reaction124
	koff_Reaction124=0.5;
	
// kon_Reaction125   id: kon     reactionID: Reaction125
	kon_Reaction125=10;
	
// koff_Reaction126   id: koff     reactionID: Reaction126
	koff_Reaction126=0.5;
	
// kpon_Reaction127   id: kpon     reactionID: Reaction127
	kpon_Reaction127=0;
	
// kpoff_Reaction128   id: kpoff     reactionID: Reaction128
	kpoff_Reaction128=0.05;
	
// kpon_Reaction129   id: kpon     reactionID: Reaction129
	kpon_Reaction129=0;
	
// kpoff_Reaction130   id: kpoff     reactionID: Reaction130
	kpoff_Reaction130=0.05;
	
// kpon_Reaction131   id: kpon     reactionID: Reaction131
	kpon_Reaction131=0;
	
// kpoff_Reaction132   id: kpoff     reactionID: Reaction132
	kpoff_Reaction132=0.05;
	
// kpon_Reaction133   id: kpon     reactionID: Reaction133
	kpon_Reaction133=0;
	
// kpoff_Reaction134   id: kpoff     reactionID: Reaction134
	kpoff_Reaction134=0.05;
	
// kpon_Reaction135   id: kpon     reactionID: Reaction135
	kpon_Reaction135=0;
	
// kpoff_Reaction136   id: kpoff     reactionID: Reaction136
	kpoff_Reaction136=0.05;
	
// kpon_Reaction137   id: kpon     reactionID: Reaction137
	kpon_Reaction137=0;
	
// kpoff_Reaction138   id: kpoff     reactionID: Reaction138
	kpoff_Reaction138=0.05;
	
// kon_Reaction139   id: kon     reactionID: Reaction139
	kon_Reaction139=10;
	
// koff_Reaction140   id: koff     reactionID: Reaction140
	koff_Reaction140=0.5;
	
// kon_Reaction141   id: kon     reactionID: Reaction141
	kon_Reaction141=10;
	
// koff_Reaction142   id: koff     reactionID: Reaction142
	koff_Reaction142=0.5;
	
// kon_Reaction143   id: kon     reactionID: Reaction143
	kon_Reaction143=10;
	
// koff_Reaction144   id: koff     reactionID: Reaction144
	koff_Reaction144=0.5;
	
// kpon_Reaction145   id: kpon     reactionID: Reaction145
	kpon_Reaction145=0;
	
// kpoff_Reaction146   id: kpoff     reactionID: Reaction146
	kpoff_Reaction146=0.05;
	
// kpon_Reaction147   id: kpon     reactionID: Reaction147
	kpon_Reaction147=0;
	
// kpoff_Reaction148   id: kpoff     reactionID: Reaction148
	kpoff_Reaction148=0.05;
	
// kpon_Reaction149   id: kpon     reactionID: Reaction149
	kpon_Reaction149=0;
	
// kpoff_Reaction150   id: kpoff     reactionID: Reaction150
	kpoff_Reaction150=0.05;
	
// kpon_Reaction151   id: kpon     reactionID: Reaction151
	kpon_Reaction151=0;
	
// kpoff_Reaction152   id: kpoff     reactionID: Reaction152
	kpoff_Reaction152=0.05;
	
// kpon_Reaction153   id: kpon     reactionID: Reaction153
	kpon_Reaction153=0;
	
// kpoff_Reaction154   id: kpoff     reactionID: Reaction154
	kpoff_Reaction154=0.05;
	
// kpon_Reaction155   id: kpon     reactionID: Reaction155
	kpon_Reaction155=0;
	
// kpoff_Reaction156   id: kpoff     reactionID: Reaction156
	kpoff_Reaction156=0.05;
	
// kon_Reaction157   id: kon     reactionID: Reaction157
	kon_Reaction157=10;
	
// koff_Reaction158   id: koff     reactionID: Reaction158
	koff_Reaction158=0.5;
	
// kon_Reaction159   id: kon     reactionID: Reaction159
	kon_Reaction159=10;
	
// koff_Reaction160   id: koff     reactionID: Reaction160
	koff_Reaction160=0.5;
	
// kon_Reaction161   id: kon     reactionID: Reaction161
	kon_Reaction161=10;
	
// koff_Reaction162   id: koff     reactionID: Reaction162
	koff_Reaction162=0.5;
	
// kpon_Reaction163   id: kpon     reactionID: Reaction163
	kpon_Reaction163=0;
	
// kpoff_Reaction164   id: kpoff     reactionID: Reaction164
	kpoff_Reaction164=0.05;
	
// kpon_Reaction165   id: kpon     reactionID: Reaction165
	kpon_Reaction165=0;
	
// kpoff_Reaction166   id: kpoff     reactionID: Reaction166
	kpoff_Reaction166=0.05;
	
// kpon_Reaction167   id: kpon     reactionID: Reaction167
	kpon_Reaction167=0;
	
// kpoff_Reaction168   id: kpoff     reactionID: Reaction168
	kpoff_Reaction168=0.05;
	
// kpon_Reaction169   id: kpon     reactionID: Reaction169
	kpon_Reaction169=0;
	
// kpoff_Reaction170   id: kpoff     reactionID: Reaction170
	kpoff_Reaction170=0.05;
	
// kpon_Reaction171   id: kpon     reactionID: Reaction171
	kpon_Reaction171=0;
	
// kpoff_Reaction172   id: kpoff     reactionID: Reaction172
	kpoff_Reaction172=0.05;
	
// kpon_Reaction173   id: kpon     reactionID: Reaction173
	kpon_Reaction173=0;
	
// kpoff_Reaction174   id: kpoff     reactionID: Reaction174
	kpoff_Reaction174=0.05;
	
// kon_Reaction175   id: kon     reactionID: Reaction175
	kon_Reaction175=10;
	
// koff_Reaction176   id: koff     reactionID: Reaction176
	koff_Reaction176=0.5;
	
// kpon_Reaction177   id: kpon     reactionID: Reaction177
	kpon_Reaction177=0;
	
// kpoff_Reaction178   id: kpoff     reactionID: Reaction178
	kpoff_Reaction178=0.05;
	
// kon_Reaction179   id: kon     reactionID: Reaction179
	kon_Reaction179=10;
	
// koff_Reaction180   id: koff     reactionID: Reaction180
	koff_Reaction180=0.5;
	
// kpon_Reaction181   id: kpon     reactionID: Reaction181
	kpon_Reaction181=0;
	
// kpoff_Reaction182   id: kpoff     reactionID: Reaction182
	kpoff_Reaction182=0.05;
	
// kon_Reaction183   id: kon     reactionID: Reaction183
	kon_Reaction183=10;
	
// koff_Reaction184   id: koff     reactionID: Reaction184
	koff_Reaction184=0.5;
	
// kpon_Reaction185   id: kpon     reactionID: Reaction185
	kpon_Reaction185=0;
	
// kpoff_Reaction186   id: kpoff     reactionID: Reaction186
	kpoff_Reaction186=0.05;
	
// kon_Reaction187   id: kon     reactionID: Reaction187
	kon_Reaction187=10;
	
// koff_Reaction188   id: koff     reactionID: Reaction188
	koff_Reaction188=0.5;
	
// kpon_Reaction189   id: kpon     reactionID: Reaction189
	kpon_Reaction189=0;
	
// kpoff_Reaction190   id: kpoff     reactionID: Reaction190
	kpoff_Reaction190=0.05;
	
// kon_Reaction191   id: kon     reactionID: Reaction191
	kon_Reaction191=10;
	
// koff_Reaction192   id: koff     reactionID: Reaction192
	koff_Reaction192=0.5;
	
// kpon_Reaction193   id: kpon     reactionID: Reaction193
	kpon_Reaction193=0;
	
// kpoff_Reaction194   id: kpoff     reactionID: Reaction194
	kpoff_Reaction194=0.05;
	
// kon_Reaction195   id: kon     reactionID: Reaction195
	kon_Reaction195=10;
	
// koff_Reaction196   id: koff     reactionID: Reaction196
	koff_Reaction196=0.5;
	
// kpon_Reaction197   id: kpon     reactionID: Reaction197
	kpon_Reaction197=0;
	
// kpoff_Reaction198   id: kpoff     reactionID: Reaction198
	kpoff_Reaction198=0.05;
	
// kon_Reaction199   id: kon     reactionID: Reaction199
	kon_Reaction199=10;
	
// koff_Reaction200   id: koff     reactionID: Reaction200
	koff_Reaction200=0.5;
	
// kpon_Reaction201   id: kpon     reactionID: Reaction201
	kpon_Reaction201=0;
	
// kpoff_Reaction202   id: kpoff     reactionID: Reaction202
	kpoff_Reaction202=0.05;
	
// kon_Reaction203   id: kon     reactionID: Reaction203
	kon_Reaction203=10;
	
// koff_Reaction204   id: koff     reactionID: Reaction204
	koff_Reaction204=0.5;
	
// kpon_Reaction205   id: kpon     reactionID: Reaction205
	kpon_Reaction205=0;
	
// kpoff_Reaction206   id: kpoff     reactionID: Reaction206
	kpoff_Reaction206=0.05;
	
// kon_Reaction207   id: kon     reactionID: Reaction207
	kon_Reaction207=10;
	
// koff_Reaction208   id: koff     reactionID: Reaction208
	koff_Reaction208=0.5;
	
// kpon_Reaction209   id: kpon     reactionID: Reaction209
	kpon_Reaction209=0;
	
// kpoff_Reaction210   id: kpoff     reactionID: Reaction210
	kpoff_Reaction210=0.05;
	
// kon_Reaction211   id: kon     reactionID: Reaction211
	kon_Reaction211=10;
	
// koff_Reaction212   id: koff     reactionID: Reaction212
	koff_Reaction212=0.5;
	
// kpon_Reaction213   id: kpon     reactionID: Reaction213
	kpon_Reaction213=0;
	
// kpoff_Reaction214   id: kpoff     reactionID: Reaction214
	kpoff_Reaction214=0.05;
	
// kon_Reaction215   id: kon     reactionID: Reaction215
	kon_Reaction215=10;
	
// koff_Reaction216   id: koff     reactionID: Reaction216
	koff_Reaction216=0.5;
	
// kpon_Reaction217   id: kpon     reactionID: Reaction217
	kpon_Reaction217=0;
	
// kpoff_Reaction218   id: kpoff     reactionID: Reaction218
	kpoff_Reaction218=0.05;
	
// kon_Reaction219   id: kon     reactionID: Reaction219
	kon_Reaction219=10;
	
// koff_Reaction220   id: koff     reactionID: Reaction220
	koff_Reaction220=0.5;
	
// kpon_Reaction221   id: kpon     reactionID: Reaction221
	kpon_Reaction221=0;
	
// kpoff_Reaction222   id: kpoff     reactionID: Reaction222
	kpoff_Reaction222=0.05;
	
// kon_Reaction223   id: kon     reactionID: Reaction223
	kon_Reaction223=10;
	
// koff_Reaction224   id: koff     reactionID: Reaction224
	koff_Reaction224=0.5;
	
// kpon_Reaction225   id: kpon     reactionID: Reaction225
	kpon_Reaction225=0;
	
// kpoff_Reaction226   id: kpoff     reactionID: Reaction226
	kpoff_Reaction226=0.05;
	
// kon_Reaction227   id: kon     reactionID: Reaction227
	kon_Reaction227=10;
	
// koff_Reaction228   id: koff     reactionID: Reaction228
	koff_Reaction228=0.5;
	
// kpon_Reaction229   id: kpon     reactionID: Reaction229
	kpon_Reaction229=0;
	
// kpoff_Reaction230   id: kpoff     reactionID: Reaction230
	kpoff_Reaction230=0.05;
	
// kon_Reaction231   id: kon     reactionID: Reaction231
	kon_Reaction231=10;
	
// koff_Reaction232   id: koff     reactionID: Reaction232
	koff_Reaction232=0.5;
	
// kpon_Reaction233   id: kpon     reactionID: Reaction233
	kpon_Reaction233=0;
	
// kpoff_Reaction234   id: kpoff     reactionID: Reaction234
	kpoff_Reaction234=0.05;
	
// kon_Reaction235   id: kon     reactionID: Reaction235
	kon_Reaction235=10;
	
// koff_Reaction236   id: koff     reactionID: Reaction236
	koff_Reaction236=0.5;
	
// kpon_Reaction237   id: kpon     reactionID: Reaction237
	kpon_Reaction237=0;
	
// kpoff_Reaction238   id: kpoff     reactionID: Reaction238
	kpoff_Reaction238=0.05;
	
// k7_Reaction239   id: k7     reactionID: Reaction239
	k7_Reaction239=0.1;
	
// k7_Reaction240   id: k7     reactionID: Reaction240
	k7_Reaction240=0.1;
	
// k7_Reaction241   id: k7     reactionID: Reaction241
	k7_Reaction241=0.1;
	
// k9a_Reaction242   id: k9a     reactionID: Reaction242
	k9a_Reaction242=0.1;
	
// k9a_Reaction243   id: k9a     reactionID: Reaction243
	k9a_Reaction243=0.1;
	
// k9a_Reaction244   id: k9a     reactionID: Reaction244
	k9a_Reaction244=0.1;
	
// k3_Reaction245   id: k3     reactionID: Reaction245
	k3_Reaction245=0.1;
	
// k5a_Reaction246   id: k5a     reactionID: Reaction246
	k5a_Reaction246=0.1;
	
// k3_Reaction247   id: k3     reactionID: Reaction247
	k3_Reaction247=0.1;
	
// k5a_Reaction248   id: k5a     reactionID: Reaction248
	k5a_Reaction248=0.1;
	
// k3_Reaction249   id: k3     reactionID: Reaction249
	k3_Reaction249=0.1;
	
// k5a_Reaction250   id: k5a     reactionID: Reaction250
	k5a_Reaction250=0.1;
	
// k3_Reaction251   id: k3     reactionID: Reaction251
	k3_Reaction251=0.1;
	
// k5a_Reaction252   id: k5a     reactionID: Reaction252
	k5a_Reaction252=0.1;
	
// k1a_Reaction253   id: k1a     reactionID: Reaction253
	k1a_Reaction253=100;
	
// d1a_Reaction254   id: d1a     reactionID: Reaction254
	d1a_Reaction254=0;
	
// k1_Reaction255   id: k1     reactionID: Reaction255
	k1_Reaction255=0.1;
	
// k1a_Reaction256   id: k1a     reactionID: Reaction256
	k1a_Reaction256=100;
	
// d1a_Reaction257   id: d1a     reactionID: Reaction257
	d1a_Reaction257=0;
	
// k1_Reaction258   id: k1     reactionID: Reaction258
	k1_Reaction258=0.1;
	
// k1a_Reaction259   id: k1a     reactionID: Reaction259
	k1a_Reaction259=100;
	
// d1a_Reaction260   id: d1a     reactionID: Reaction260
	d1a_Reaction260=0;
	
// k1_Reaction261   id: k1     reactionID: Reaction261
	k1_Reaction261=0.1;
	
// k1a_Reaction262   id: k1a     reactionID: Reaction262
	k1a_Reaction262=100;
	
// d1a_Reaction263   id: d1a     reactionID: Reaction263
	d1a_Reaction263=0;
	
// k1_Reaction264   id: k1     reactionID: Reaction264
	k1_Reaction264=0.1;
	
// k1a_Reaction265   id: k1a     reactionID: Reaction265
	k1a_Reaction265=100;
	
// d1a_Reaction266   id: d1a     reactionID: Reaction266
	d1a_Reaction266=0;
	
// k1_Reaction267   id: k1     reactionID: Reaction267
	k1_Reaction267=0.1;
	
// k1a_Reaction268   id: k1a     reactionID: Reaction268
	k1a_Reaction268=100;
	
// d1a_Reaction269   id: d1a     reactionID: Reaction269
	d1a_Reaction269=0;
	
// k1_Reaction270   id: k1     reactionID: Reaction270
	k1_Reaction270=0.1;
	
// k1a_Reaction271   id: k1a     reactionID: Reaction271
	k1a_Reaction271=100;
	
// d1a_Reaction272   id: d1a     reactionID: Reaction272
	d1a_Reaction272=0;
	
// k1_Reaction273   id: k1     reactionID: Reaction273
	k1_Reaction273=0.1;
	
// k1a_Reaction274   id: k1a     reactionID: Reaction274
	k1a_Reaction274=100;
	
// d1a_Reaction275   id: d1a     reactionID: Reaction275
	d1a_Reaction275=0;
	
// k1_Reaction276   id: k1     reactionID: Reaction276
	k1_Reaction276=0.1;
	
// k1a_Reaction277   id: k1a     reactionID: Reaction277
	k1a_Reaction277=100;
	
// d1a_Reaction278   id: d1a     reactionID: Reaction278
	d1a_Reaction278=0;
	
// k1_Reaction279   id: k1     reactionID: Reaction279
	k1_Reaction279=0.1;
	
// k1a_Reaction280   id: k1a     reactionID: Reaction280
	k1a_Reaction280=100;
	
// d1a_Reaction281   id: d1a     reactionID: Reaction281
	d1a_Reaction281=0;
	
// k1_Reaction282   id: k1     reactionID: Reaction282
	k1_Reaction282=0.1;
	
// k1a_Reaction283   id: k1a     reactionID: Reaction283
	k1a_Reaction283=100;
	
// d1a_Reaction284   id: d1a     reactionID: Reaction284
	d1a_Reaction284=0;
	
// k1_Reaction285   id: k1     reactionID: Reaction285
	k1_Reaction285=0.1;
	
// k1a_Reaction286   id: k1a     reactionID: Reaction286
	k1a_Reaction286=100;
	
// d1a_Reaction287   id: d1a     reactionID: Reaction287
	d1a_Reaction287=0;
	
// k1_Reaction288   id: k1     reactionID: Reaction288
	k1_Reaction288=0.1;
	
// k1a_Reaction289   id: k1a     reactionID: Reaction289
	k1a_Reaction289=100;
	
// d1a_Reaction290   id: d1a     reactionID: Reaction290
	d1a_Reaction290=0;
	
// k1_Reaction291   id: k1     reactionID: Reaction291
	k1_Reaction291=0.1;
	
// k1a_Reaction292   id: k1a     reactionID: Reaction292
	k1a_Reaction292=100;
	
// d1a_Reaction293   id: d1a     reactionID: Reaction293
	d1a_Reaction293=0;
	
// k1_Reaction294   id: k1     reactionID: Reaction294
	k1_Reaction294=0.1;
	
// k1a_Reaction295   id: k1a     reactionID: Reaction295
	k1a_Reaction295=100;
	
// d1a_Reaction296   id: d1a     reactionID: Reaction296
	d1a_Reaction296=0;
	
// k1_Reaction297   id: k1     reactionID: Reaction297
	k1_Reaction297=0.1;
	
// k1a_Reaction298   id: k1a     reactionID: Reaction298
	k1a_Reaction298=100;
	
// d1a_Reaction299   id: d1a     reactionID: Reaction299
	d1a_Reaction299=0;
	
// k1_Reaction300   id: k1     reactionID: Reaction300
	k1_Reaction300=0.1;
	



xdot=[
//x(1)   ID: MAPKP  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a8_Reaction22* x(1) * x(6) ) + (-1)*(1)* (a10_Reaction28* x(1) * x(7) ) + (1)*(1)* (d8_Reaction23* x(17) ) + (1)*(1)* (k8_Reaction24* x(17) ) + (1)*(1)* (d10_Reaction29* x(18) ) + (1)*(1)* (k10_Reaction30* x(18) ) );
	
//x(2)   ID: MEKP  initialValue: 0.2
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a4_Reaction10* x(2) * x(9) ) + (-1)*(1)* (a6_Reaction16* x(2) * x(10) ) + (1)*(1)* (d4_Reaction11* x(19) ) + (1)*(1)* (k4_Reaction12* x(19) ) + (1)*(1)* (d6_Reaction17* x(20) ) + (1)*(1)* (k6_Reaction18* x(20) ) );
	
//x(3)   ID: RAFK  initialValue: 0.1
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a1_Reaction1* x(3) * x(11) ) + (-1)*(1)* (k1a_Reaction253* x(3) * x(24) ) + (-1)*(1)* (k1a_Reaction256* x(3) * x(27) ) + (-1)*(1)* (k1a_Reaction259* x(3) * x(30) ) + (-1)*(1)* (k1a_Reaction262* x(3) * x(33) ) + (-1)*(1)* (k1a_Reaction265* x(3) * x(36) ) + (-1)*(1)* (k1a_Reaction268* x(3) * x(39) ) + (-1)*(1)* (k1a_Reaction271* x(3) * x(42) ) + (-1)*(1)* (k1a_Reaction274* x(3) * x(45) ) + (-1)*(1)* (k1a_Reaction277* x(3) * x(48) ) + (-1)*(1)* (k1a_Reaction280* x(3) * x(51) ) + (-1)*(1)* (k1a_Reaction283* x(3) * x(54) ) + (-1)*(1)* (k1a_Reaction286* x(3) * x(57) ) + (-1)*(1)* (k1a_Reaction289* x(3) * x(60) ) + (-1)*(1)* (k1a_Reaction292* x(3) * x(63) ) + (-1)*(1)* (k1a_Reaction295* x(3) * x(66) ) + (-1)*(1)* (k1a_Reaction298* x(3) * x(69) ) + (1)*(1)* (d1_Reaction2* x(21) ) + (1)*(1)* (k1_Reaction3* x(21) ) + (1)*(1)* (d1a_Reaction254* x(71) ) + (1)*(1)* (k1_Reaction255* x(71) ) + (1)*(1)* (d1a_Reaction257* x(72) ) + (1)*(1)* (k1_Reaction258* x(72) ) + (1)*(1)* (d1a_Reaction260* x(73) ) + (1)*(1)* (k1_Reaction261* x(73) ) + (1)*(1)* (d1a_Reaction263* x(74) ) + (1)*(1)* (k1_Reaction264* x(74) ) + (1)*(1)* (d1a_Reaction266* x(75) ) + (1)*(1)* (k1_Reaction267* x(75) ) + (1)*(1)* (d1a_Reaction269* x(76) ) + (1)*(1)* (k1_Reaction270* x(76) ) + (1)*(1)* (d1a_Reaction272* x(77) ) + (1)*(1)* (k1_Reaction273* x(77) ) + (1)*(1)* (d1a_Reaction275* x(78) ) + (1)*(1)* (k1_Reaction276* x(78) ) + (1)*(1)* (d1a_Reaction278* x(79) ) + (1)*(1)* (k1_Reaction279* x(79) ) + (1)*(1)* (d1a_Reaction281* x(80) ) + (1)*(1)* (k1_Reaction282* x(80) ) + (1)*(1)* (d1a_Reaction284* x(81) ) + (1)*(1)* (k1_Reaction285* x(81) ) + (1)*(1)* (d1a_Reaction287* x(82) ) + (1)*(1)* (k1_Reaction288* x(82) ) + (1)*(1)* (d1a_Reaction290* x(83) ) + (1)*(1)* (k1_Reaction291* x(83) ) + (1)*(1)* (d1a_Reaction293* x(84) ) + (1)*(1)* (k1_Reaction294* x(84) ) + (1)*(1)* (d1a_Reaction296* x(85) ) + (1)*(1)* (k1_Reaction297* x(85) ) + (1)*(1)* (d1a_Reaction299* x(86) ) + (1)*(1)* (k1_Reaction300* x(86) ) );
	
//x(4)   ID: RAFP  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a2_Reaction4* x(4) * x(12) ) + (1)*(1)* (d2_Reaction5* x(22) ) + (1)*(1)* (k2_Reaction6* x(22) ) );
	
//x(5)   ID: K_1_0  initialValue: 0.4
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a7_Reaction19* x(5) * x(10) ) + (-1)*(1)* (kon_Reaction31* x(5) * x(23) ) + (-1)*(1)* (kon_Reaction33* x(5) * x(24) ) + (-1)*(1)* (kon_Reaction35* x(5) * x(25) ) + (-1)*(1)* (kon_Reaction37* x(5) * x(26) ) + (-1)*(1)* (kon_Reaction39* x(5) * x(27) ) + (-1)*(1)* (kon_Reaction41* x(5) * x(28) ) + (-1)*(1)* (kon_Reaction43* x(5) * x(29) ) + (-1)*(1)* (kon_Reaction45* x(5) * x(30) ) + (-1)*(1)* (kon_Reaction47* x(5) * x(31) ) + (-1)*(1)* (kon_Reaction49* x(5) * x(32) ) + (-1)*(1)* (kon_Reaction51* x(5) * x(33) ) + (-1)*(1)* (kon_Reaction53* x(5) * x(34) ) + (1)*(1)* (d7_Reaction20* x(13) ) + (1)*(1)* (k8_Reaction24* x(17) ) + (1)*(1)* (koff_Reaction32* x(35) ) + (1)*(1)* (koff_Reaction34* x(36) ) + (1)*(1)* (koff_Reaction36* x(37) ) + (1)*(1)* (koff_Reaction38* x(38) ) + (1)*(1)* (koff_Reaction40* x(39) ) + (1)*(1)* (koff_Reaction42* x(40) ) + (1)*(1)* (koff_Reaction44* x(41) ) + (1)*(1)* (koff_Reaction46* x(42) ) + (1)*(1)* (koff_Reaction48* x(43) ) + (1)*(1)* (koff_Reaction50* x(44) ) + (1)*(1)* (koff_Reaction52* x(45) ) + (1)*(1)* (koff_Reaction54* x(46) ) );
	
//x(6)   ID: K_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a8_Reaction22* x(1) * x(6) ) + (-1)*(1)* (a9_Reaction25* x(6) * x(10) ) + (-1)*(1)* (kpon_Reaction55* x(6) * x(23) ) + (-1)*(1)* (kpon_Reaction57* x(6) * x(24) ) + (-1)*(1)* (kpon_Reaction59* x(6) * x(25) ) + (-1)*(1)* (kpon_Reaction61* x(6) * x(26) ) + (-1)*(1)* (kpon_Reaction63* x(6) * x(27) ) + (-1)*(1)* (kpon_Reaction65* x(6) * x(28) ) + (-1)*(1)* (kpon_Reaction67* x(6) * x(29) ) + (-1)*(1)* (kpon_Reaction69* x(6) * x(30) ) + (-1)*(1)* (kpon_Reaction71* x(6) * x(31) ) + (-1)*(1)* (kpon_Reaction73* x(6) * x(32) ) + (-1)*(1)* (kpon_Reaction75* x(6) * x(33) ) + (-1)*(1)* (kpon_Reaction77* x(6) * x(34) ) + (1)*(1)* (k7_Reaction21* x(13) ) + (1)*(1)* (d8_Reaction23* x(17) ) + (1)*(1)* (d9_Reaction26* x(14) ) + (1)*(1)* (k10_Reaction30* x(18) ) + (1)*(1)* (kpoff_Reaction56* x(47) ) + (1)*(1)* (kpoff_Reaction58* x(48) ) + (1)*(1)* (kpoff_Reaction60* x(49) ) + (1)*(1)* (kpoff_Reaction62* x(50) ) + (1)*(1)* (kpoff_Reaction64* x(51) ) + (1)*(1)* (kpoff_Reaction66* x(52) ) + (1)*(1)* (kpoff_Reaction68* x(53) ) + (1)*(1)* (kpoff_Reaction70* x(54) ) + (1)*(1)* (kpoff_Reaction72* x(55) ) + (1)*(1)* (kpoff_Reaction74* x(56) ) + (1)*(1)* (kpoff_Reaction76* x(57) ) + (1)*(1)* (kpoff_Reaction78* x(58) ) );
	
//x(7)   ID: K_1_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a10_Reaction28* x(1) * x(7) ) + (-1)*(1)* (kpon_Reaction79* x(7) * x(23) ) + (-1)*(1)* (kpon_Reaction81* x(7) * x(24) ) + (-1)*(1)* (kpon_Reaction83* x(7) * x(25) ) + (-1)*(1)* (kpon_Reaction85* x(7) * x(26) ) + (-1)*(1)* (kpon_Reaction87* x(7) * x(27) ) + (-1)*(1)* (kpon_Reaction89* x(7) * x(28) ) + (-1)*(1)* (kpon_Reaction91* x(7) * x(29) ) + (-1)*(1)* (kpon_Reaction93* x(7) * x(30) ) + (-1)*(1)* (kpon_Reaction95* x(7) * x(31) ) + (-1)*(1)* (kpon_Reaction97* x(7) * x(32) ) + (-1)*(1)* (kpon_Reaction99* x(7) * x(33) ) + (-1)*(1)* (kpon_Reaction101* x(7) * x(34) ) + (1)*(1)* (k9_Reaction27* x(14) ) + (1)*(1)* (d10_Reaction29* x(18) ) + (1)*(1)* (kpoff_Reaction80* x(59) ) + (1)*(1)* (kpoff_Reaction82* x(60) ) + (1)*(1)* (kpoff_Reaction84* x(61) ) + (1)*(1)* (kpoff_Reaction86* x(62) ) + (1)*(1)* (kpoff_Reaction88* x(63) ) + (1)*(1)* (kpoff_Reaction90* x(64) ) + (1)*(1)* (kpoff_Reaction92* x(65) ) + (1)*(1)* (kpoff_Reaction94* x(66) ) + (1)*(1)* (kpoff_Reaction96* x(67) ) + (1)*(1)* (kpoff_Reaction98* x(68) ) + (1)*(1)* (kpoff_Reaction100* x(69) ) + (1)*(1)* (kpoff_Reaction102* x(70) ) );
	
//x(8)   ID: K_2_0  initialValue: 0.2
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a3_Reaction7* x(8) * x(12) ) + (-1)*(1)* (kon_Reaction103* x(8) * x(23) ) + (-1)*(1)* (kon_Reaction105* x(8) * x(24) ) + (-1)*(1)* (kon_Reaction107* x(8) * x(25) ) + (-1)*(1)* (kon_Reaction121* x(8) * x(35) ) + (-1)*(1)* (kon_Reaction123* x(8) * x(36) ) + (-1)*(1)* (kon_Reaction125* x(8) * x(37) ) + (-1)*(1)* (kon_Reaction139* x(8) * x(47) ) + (-1)*(1)* (kon_Reaction141* x(8) * x(48) ) + (-1)*(1)* (kon_Reaction143* x(8) * x(49) ) + (-1)*(1)* (kon_Reaction157* x(8) * x(59) ) + (-1)*(1)* (kon_Reaction159* x(8) * x(60) ) + (-1)*(1)* (kon_Reaction161* x(8) * x(61) ) + (1)*(1)* (d3_Reaction8* x(15) ) + (1)*(1)* (k4_Reaction12* x(19) ) + (1)*(1)* (koff_Reaction104* x(26) ) + (1)*(1)* (koff_Reaction106* x(27) ) + (1)*(1)* (koff_Reaction108* x(28) ) + (1)*(1)* (koff_Reaction122* x(38) ) + (1)*(1)* (koff_Reaction124* x(39) ) + (1)*(1)* (koff_Reaction126* x(40) ) + (1)*(1)* (koff_Reaction140* x(50) ) + (1)*(1)* (koff_Reaction142* x(51) ) + (1)*(1)* (koff_Reaction144* x(52) ) + (1)*(1)* (koff_Reaction158* x(62) ) + (1)*(1)* (koff_Reaction160* x(63) ) + (1)*(1)* (koff_Reaction162* x(64) ) );
	
//x(9)   ID: K_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a4_Reaction10* x(2) * x(9) ) + (-1)*(1)* (a5_Reaction13* x(9) * x(12) ) + (-1)*(1)* (kpon_Reaction109* x(9) * x(23) ) + (-1)*(1)* (kpon_Reaction111* x(9) * x(24) ) + (-1)*(1)* (kpon_Reaction113* x(9) * x(25) ) + (-1)*(1)* (kpon_Reaction127* x(9) * x(35) ) + (-1)*(1)* (kpon_Reaction129* x(9) * x(36) ) + (-1)*(1)* (kpon_Reaction131* x(9) * x(37) ) + (-1)*(1)* (kpon_Reaction145* x(9) * x(47) ) + (-1)*(1)* (kpon_Reaction147* x(9) * x(48) ) + (-1)*(1)* (kpon_Reaction149* x(9) * x(49) ) + (-1)*(1)* (kpon_Reaction163* x(9) * x(59) ) + (-1)*(1)* (kpon_Reaction165* x(9) * x(60) ) + (-1)*(1)* (kpon_Reaction167* x(9) * x(61) ) + (1)*(1)* (k3_Reaction9* x(15) ) + (1)*(1)* (d4_Reaction11* x(19) ) + (1)*(1)* (d5_Reaction14* x(16) ) + (1)*(1)* (k6_Reaction18* x(20) ) + (1)*(1)* (kpoff_Reaction110* x(29) ) + (1)*(1)* (kpoff_Reaction112* x(30) ) + (1)*(1)* (kpoff_Reaction114* x(31) ) + (1)*(1)* (kpoff_Reaction128* x(41) ) + (1)*(1)* (kpoff_Reaction130* x(42) ) + (1)*(1)* (kpoff_Reaction132* x(43) ) + (1)*(1)* (kpoff_Reaction146* x(53) ) + (1)*(1)* (kpoff_Reaction148* x(54) ) + (1)*(1)* (kpoff_Reaction150* x(55) ) + (1)*(1)* (kpoff_Reaction164* x(65) ) + (1)*(1)* (kpoff_Reaction166* x(66) ) + (1)*(1)* (kpoff_Reaction168* x(67) ) );
	
//x(10)   ID: K_2_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a6_Reaction16* x(2) * x(10) ) + (-1)*(1)* (a7_Reaction19* x(5) * x(10) ) + (-1)*(1)* (a9_Reaction25* x(6) * x(10) ) + (-1)*(1)* (kpon_Reaction115* x(10) * x(23) ) + (-1)*(1)* (kpon_Reaction117* x(10) * x(24) ) + (-1)*(1)* (kpon_Reaction119* x(10) * x(25) ) + (-1)*(1)* (kpon_Reaction133* x(10) * x(35) ) + (-1)*(1)* (kpon_Reaction135* x(10) * x(36) ) + (-1)*(1)* (kpon_Reaction137* x(10) * x(37) ) + (-1)*(1)* (kpon_Reaction151* x(10) * x(47) ) + (-1)*(1)* (kpon_Reaction153* x(10) * x(48) ) + (-1)*(1)* (kpon_Reaction155* x(10) * x(49) ) + (-1)*(1)* (kpon_Reaction169* x(10) * x(59) ) + (-1)*(1)* (kpon_Reaction171* x(10) * x(60) ) + (-1)*(1)* (kpon_Reaction173* x(10) * x(61) ) + (1)*(1)* (k5_Reaction15* x(16) ) + (1)*(1)* (d6_Reaction17* x(20) ) + (1)*(1)* (d7_Reaction20* x(13) ) + (1)*(1)* (k7_Reaction21* x(13) ) + (1)*(1)* (d9_Reaction26* x(14) ) + (1)*(1)* (k9_Reaction27* x(14) ) + (1)*(1)* (kpoff_Reaction116* x(32) ) + (1)*(1)* (kpoff_Reaction118* x(33) ) + (1)*(1)* (kpoff_Reaction120* x(34) ) + (1)*(1)* (kpoff_Reaction134* x(44) ) + (1)*(1)* (kpoff_Reaction136* x(45) ) + (1)*(1)* (kpoff_Reaction138* x(46) ) + (1)*(1)* (kpoff_Reaction152* x(56) ) + (1)*(1)* (kpoff_Reaction154* x(57) ) + (1)*(1)* (kpoff_Reaction156* x(58) ) + (1)*(1)* (kpoff_Reaction170* x(68) ) + (1)*(1)* (kpoff_Reaction172* x(69) ) + (1)*(1)* (kpoff_Reaction174* x(70) ) );
	
//x(11)   ID: K_3_0  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a1_Reaction1* x(3) * x(11) ) + (-1)*(1)* (kon_Reaction175* x(11) * x(23) ) + (-1)*(1)* (kon_Reaction179* x(11) * x(26) ) + (-1)*(1)* (kon_Reaction183* x(11) * x(29) ) + (-1)*(1)* (kon_Reaction187* x(11) * x(32) ) + (-1)*(1)* (kon_Reaction191* x(11) * x(35) ) + (-1)*(1)* (kon_Reaction195* x(11) * x(38) ) + (-1)*(1)* (kon_Reaction199* x(11) * x(41) ) + (-1)*(1)* (kon_Reaction203* x(11) * x(44) ) + (-1)*(1)* (kon_Reaction207* x(11) * x(47) ) + (-1)*(1)* (kon_Reaction211* x(11) * x(50) ) + (-1)*(1)* (kon_Reaction215* x(11) * x(53) ) + (-1)*(1)* (kon_Reaction219* x(11) * x(56) ) + (-1)*(1)* (kon_Reaction223* x(11) * x(59) ) + (-1)*(1)* (kon_Reaction227* x(11) * x(62) ) + (-1)*(1)* (kon_Reaction231* x(11) * x(65) ) + (-1)*(1)* (kon_Reaction235* x(11) * x(68) ) + (1)*(1)* (d1_Reaction2* x(21) ) + (1)*(1)* (k2_Reaction6* x(22) ) + (1)*(1)* (koff_Reaction176* x(24) ) + (1)*(1)* (koff_Reaction180* x(27) ) + (1)*(1)* (koff_Reaction184* x(30) ) + (1)*(1)* (koff_Reaction188* x(33) ) + (1)*(1)* (koff_Reaction192* x(36) ) + (1)*(1)* (koff_Reaction196* x(39) ) + (1)*(1)* (koff_Reaction200* x(42) ) + (1)*(1)* (koff_Reaction204* x(45) ) + (1)*(1)* (koff_Reaction208* x(48) ) + (1)*(1)* (koff_Reaction212* x(51) ) + (1)*(1)* (koff_Reaction216* x(54) ) + (1)*(1)* (koff_Reaction220* x(57) ) + (1)*(1)* (koff_Reaction224* x(60) ) + (1)*(1)* (koff_Reaction228* x(63) ) + (1)*(1)* (koff_Reaction232* x(66) ) + (1)*(1)* (koff_Reaction236* x(69) ) );
	
//x(12)   ID: K_3_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a2_Reaction4* x(4) * x(12) ) + (-1)*(1)* (a3_Reaction7* x(8) * x(12) ) + (-1)*(1)* (a5_Reaction13* x(9) * x(12) ) + (-1)*(1)* (kpon_Reaction177* x(12) * x(23) ) + (-1)*(1)* (kpon_Reaction181* x(12) * x(26) ) + (-1)*(1)* (kpon_Reaction185* x(12) * x(29) ) + (-1)*(1)* (kpon_Reaction189* x(12) * x(32) ) + (-1)*(1)* (kpon_Reaction193* x(12) * x(35) ) + (-1)*(1)* (kpon_Reaction197* x(12) * x(38) ) + (-1)*(1)* (kpon_Reaction201* x(12) * x(41) ) + (-1)*(1)* (kpon_Reaction205* x(12) * x(44) ) + (-1)*(1)* (kpon_Reaction209* x(12) * x(47) ) + (-1)*(1)* (kpon_Reaction213* x(12) * x(50) ) + (-1)*(1)* (kpon_Reaction217* x(12) * x(53) ) + (-1)*(1)* (kpon_Reaction221* x(12) * x(56) ) + (-1)*(1)* (kpon_Reaction225* x(12) * x(59) ) + (-1)*(1)* (kpon_Reaction229* x(12) * x(62) ) + (-1)*(1)* (kpon_Reaction233* x(12) * x(65) ) + (-1)*(1)* (kpon_Reaction237* x(12) * x(68) ) + (1)*(1)* (k1_Reaction3* x(21) ) + (1)*(1)* (d2_Reaction5* x(22) ) + (1)*(1)* (d3_Reaction8* x(15) ) + (1)*(1)* (k3_Reaction9* x(15) ) + (1)*(1)* (d5_Reaction14* x(16) ) + (1)*(1)* (k5_Reaction15* x(16) ) + (1)*(1)* (kpoff_Reaction178* x(25) ) + (1)*(1)* (kpoff_Reaction182* x(28) ) + (1)*(1)* (kpoff_Reaction186* x(31) ) + (1)*(1)* (kpoff_Reaction190* x(34) ) + (1)*(1)* (kpoff_Reaction194* x(37) ) + (1)*(1)* (kpoff_Reaction198* x(40) ) + (1)*(1)* (kpoff_Reaction202* x(43) ) + (1)*(1)* (kpoff_Reaction206* x(46) ) + (1)*(1)* (kpoff_Reaction210* x(49) ) + (1)*(1)* (kpoff_Reaction214* x(52) ) + (1)*(1)* (kpoff_Reaction218* x(55) ) + (1)*(1)* (kpoff_Reaction222* x(58) ) + (1)*(1)* (kpoff_Reaction226* x(61) ) + (1)*(1)* (kpoff_Reaction230* x(64) ) + (1)*(1)* (kpoff_Reaction234* x(67) ) + (1)*(1)* (kpoff_Reaction238* x(70) ) );
	
//x(13)   ID: K_K_1_0_2_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d7_Reaction20* x(13) ) + (-1)*(1)* (k7_Reaction21* x(13) ) + (1)*(1)* (a7_Reaction19* x(5) * x(10) ) );
	
//x(14)   ID: K_K_1_1_2_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d9_Reaction26* x(14) ) + (-1)*(1)* (k9_Reaction27* x(14) ) + (1)*(1)* (a9_Reaction25* x(6) * x(10) ) );
	
//x(15)   ID: K_K_2_0_3_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d3_Reaction8* x(15) ) + (-1)*(1)* (k3_Reaction9* x(15) ) + (1)*(1)* (a3_Reaction7* x(8) * x(12) ) );
	
//x(16)   ID: K_K_2_1_3_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d5_Reaction14* x(16) ) + (-1)*(1)* (k5_Reaction15* x(16) ) + (1)*(1)* (a5_Reaction13* x(9) * x(12) ) );
	
//x(17)   ID: K_MAPKP_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d8_Reaction23* x(17) ) + (-1)*(1)* (k8_Reaction24* x(17) ) + (1)*(1)* (a8_Reaction22* x(1) * x(6) ) );
	
//x(18)   ID: K_MAPKP_1_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d10_Reaction29* x(18) ) + (-1)*(1)* (k10_Reaction30* x(18) ) + (1)*(1)* (a10_Reaction28* x(1) * x(7) ) );
	
//x(19)   ID: K_MEKP_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d4_Reaction11* x(19) ) + (-1)*(1)* (k4_Reaction12* x(19) ) + (1)*(1)* (a4_Reaction10* x(2) * x(9) ) );
	
//x(20)   ID: K_MEKP_2_2  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d6_Reaction17* x(20) ) + (-1)*(1)* (k6_Reaction18* x(20) ) + (1)*(1)* (a6_Reaction16* x(2) * x(10) ) );
	
//x(21)   ID: K_RAFK_3_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1_Reaction2* x(21) ) + (-1)*(1)* (k1_Reaction3* x(21) ) + (1)*(1)* (a1_Reaction1* x(3) * x(11) ) );
	
//x(22)   ID: K_RAFP_3_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d2_Reaction5* x(22) ) + (-1)*(1)* (k2_Reaction6* x(22) ) + (1)*(1)* (a2_Reaction4* x(4) * x(12) ) );
	
//x(23)   ID: S_m1_m1_m1  initialValue: 0.1
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction31* x(5) * x(23) ) + (-1)*(1)* (kpon_Reaction55* x(6) * x(23) ) + (-1)*(1)* (kpon_Reaction79* x(7) * x(23) ) + (-1)*(1)* (kon_Reaction103* x(8) * x(23) ) + (-1)*(1)* (kpon_Reaction109* x(9) * x(23) ) + (-1)*(1)* (kpon_Reaction115* x(10) * x(23) ) + (-1)*(1)* (kon_Reaction175* x(11) * x(23) ) + (-1)*(1)* (kpon_Reaction177* x(12) * x(23) ) + (1)*(1)* (koff_Reaction32* x(35) ) + (1)*(1)* (kpoff_Reaction56* x(47) ) + (1)*(1)* (kpoff_Reaction80* x(59) ) + (1)*(1)* (koff_Reaction104* x(26) ) + (1)*(1)* (kpoff_Reaction110* x(29) ) + (1)*(1)* (kpoff_Reaction116* x(32) ) + (1)*(1)* (koff_Reaction176* x(24) ) + (1)*(1)* (kpoff_Reaction178* x(25) ) );
	
//x(24)   ID: S_m1_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction33* x(5) * x(24) ) + (-1)*(1)* (kpon_Reaction57* x(6) * x(24) ) + (-1)*(1)* (kpon_Reaction81* x(7) * x(24) ) + (-1)*(1)* (kon_Reaction105* x(8) * x(24) ) + (-1)*(1)* (kpon_Reaction111* x(9) * x(24) ) + (-1)*(1)* (kpon_Reaction117* x(10) * x(24) ) + (-1)*(1)* (koff_Reaction176* x(24) ) + (-1)*(1)* (k1a_Reaction253* x(3) * x(24) ) + (1)*(1)* (koff_Reaction34* x(36) ) + (1)*(1)* (kpoff_Reaction58* x(48) ) + (1)*(1)* (kpoff_Reaction82* x(60) ) + (1)*(1)* (koff_Reaction106* x(27) ) + (1)*(1)* (kpoff_Reaction112* x(30) ) + (1)*(1)* (kpoff_Reaction118* x(33) ) + (1)*(1)* (kon_Reaction175* x(11) * x(23) ) + (1)*(1)* (d1a_Reaction254* x(71) ) );
	
//x(25)   ID: S_m1_m1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction35* x(5) * x(25) ) + (-1)*(1)* (kpon_Reaction59* x(6) * x(25) ) + (-1)*(1)* (kpon_Reaction83* x(7) * x(25) ) + (-1)*(1)* (kon_Reaction107* x(8) * x(25) ) + (-1)*(1)* (kpon_Reaction113* x(9) * x(25) ) + (-1)*(1)* (kpon_Reaction119* x(10) * x(25) ) + (-1)*(1)* (kpoff_Reaction178* x(25) ) + (1)*(1)* (koff_Reaction36* x(37) ) + (1)*(1)* (kpoff_Reaction60* x(49) ) + (1)*(1)* (kpoff_Reaction84* x(61) ) + (1)*(1)* (koff_Reaction108* x(28) ) + (1)*(1)* (kpoff_Reaction114* x(31) ) + (1)*(1)* (kpoff_Reaction120* x(34) ) + (1)*(1)* (kpon_Reaction177* x(12) * x(23) ) + (1)*(1)* (k1_Reaction255* x(71) ) );
	
//x(26)   ID: S_m1_0_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction37* x(5) * x(26) ) + (-1)*(1)* (kpon_Reaction61* x(6) * x(26) ) + (-1)*(1)* (kpon_Reaction85* x(7) * x(26) ) + (-1)*(1)* (koff_Reaction104* x(26) ) + (-1)*(1)* (kon_Reaction179* x(11) * x(26) ) + (-1)*(1)* (kpon_Reaction181* x(12) * x(26) ) + (1)*(1)* (koff_Reaction38* x(38) ) + (1)*(1)* (kpoff_Reaction62* x(50) ) + (1)*(1)* (kpoff_Reaction86* x(62) ) + (1)*(1)* (kon_Reaction103* x(8) * x(23) ) + (1)*(1)* (koff_Reaction180* x(27) ) + (1)*(1)* (kpoff_Reaction182* x(28) ) );
	
//x(27)   ID: S_m1_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction39* x(5) * x(27) ) + (-1)*(1)* (kpon_Reaction63* x(6) * x(27) ) + (-1)*(1)* (kpon_Reaction87* x(7) * x(27) ) + (-1)*(1)* (koff_Reaction106* x(27) ) + (-1)*(1)* (koff_Reaction180* x(27) ) + (-1)*(1)* (k1a_Reaction256* x(3) * x(27) ) + (1)*(1)* (koff_Reaction40* x(39) ) + (1)*(1)* (kpoff_Reaction64* x(51) ) + (1)*(1)* (kpoff_Reaction88* x(63) ) + (1)*(1)* (kon_Reaction105* x(8) * x(24) ) + (1)*(1)* (kon_Reaction179* x(11) * x(26) ) + (1)*(1)* (d1a_Reaction257* x(72) ) );
	
//x(28)   ID: S_m1_0_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction41* x(5) * x(28) ) + (-1)*(1)* (kpon_Reaction65* x(6) * x(28) ) + (-1)*(1)* (kpon_Reaction89* x(7) * x(28) ) + (-1)*(1)* (koff_Reaction108* x(28) ) + (-1)*(1)* (kpoff_Reaction182* x(28) ) + (-1)*(1)* (k3_Reaction245* x(28) ) + (1)*(1)* (koff_Reaction42* x(40) ) + (1)*(1)* (kpoff_Reaction66* x(52) ) + (1)*(1)* (kpoff_Reaction90* x(64) ) + (1)*(1)* (kon_Reaction107* x(8) * x(25) ) + (1)*(1)* (kpon_Reaction181* x(12) * x(26) ) + (1)*(1)* (k1_Reaction258* x(72) ) );
	
//x(29)   ID: S_m1_1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction43* x(5) * x(29) ) + (-1)*(1)* (kpon_Reaction67* x(6) * x(29) ) + (-1)*(1)* (kpon_Reaction91* x(7) * x(29) ) + (-1)*(1)* (kpoff_Reaction110* x(29) ) + (-1)*(1)* (kon_Reaction183* x(11) * x(29) ) + (-1)*(1)* (kpon_Reaction185* x(12) * x(29) ) + (1)*(1)* (koff_Reaction44* x(41) ) + (1)*(1)* (kpoff_Reaction68* x(53) ) + (1)*(1)* (kpoff_Reaction92* x(65) ) + (1)*(1)* (kpon_Reaction109* x(9) * x(23) ) + (1)*(1)* (koff_Reaction184* x(30) ) + (1)*(1)* (kpoff_Reaction186* x(31) ) );
	
//x(30)   ID: S_m1_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction45* x(5) * x(30) ) + (-1)*(1)* (kpon_Reaction69* x(6) * x(30) ) + (-1)*(1)* (kpon_Reaction93* x(7) * x(30) ) + (-1)*(1)* (kpoff_Reaction112* x(30) ) + (-1)*(1)* (koff_Reaction184* x(30) ) + (-1)*(1)* (k1a_Reaction259* x(3) * x(30) ) + (1)*(1)* (koff_Reaction46* x(42) ) + (1)*(1)* (kpoff_Reaction70* x(54) ) + (1)*(1)* (kpoff_Reaction94* x(66) ) + (1)*(1)* (kpon_Reaction111* x(9) * x(24) ) + (1)*(1)* (kon_Reaction183* x(11) * x(29) ) + (1)*(1)* (d1a_Reaction260* x(73) ) );
	
//x(31)   ID: S_m1_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction47* x(5) * x(31) ) + (-1)*(1)* (kpon_Reaction71* x(6) * x(31) ) + (-1)*(1)* (kpon_Reaction95* x(7) * x(31) ) + (-1)*(1)* (kpoff_Reaction114* x(31) ) + (-1)*(1)* (kpoff_Reaction186* x(31) ) + (-1)*(1)* (k5a_Reaction246* x(31) ) + (1)*(1)* (koff_Reaction48* x(43) ) + (1)*(1)* (kpoff_Reaction72* x(55) ) + (1)*(1)* (kpoff_Reaction96* x(67) ) + (1)*(1)* (kpon_Reaction113* x(9) * x(25) ) + (1)*(1)* (kpon_Reaction185* x(12) * x(29) ) + (1)*(1)* (k3_Reaction245* x(28) ) + (1)*(1)* (k1_Reaction261* x(73) ) );
	
//x(32)   ID: S_m1_2_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction49* x(5) * x(32) ) + (-1)*(1)* (kpon_Reaction73* x(6) * x(32) ) + (-1)*(1)* (kpon_Reaction97* x(7) * x(32) ) + (-1)*(1)* (kpoff_Reaction116* x(32) ) + (-1)*(1)* (kon_Reaction187* x(11) * x(32) ) + (-1)*(1)* (kpon_Reaction189* x(12) * x(32) ) + (1)*(1)* (koff_Reaction50* x(44) ) + (1)*(1)* (kpoff_Reaction74* x(56) ) + (1)*(1)* (kpoff_Reaction98* x(68) ) + (1)*(1)* (kpon_Reaction115* x(10) * x(23) ) + (1)*(1)* (koff_Reaction188* x(33) ) + (1)*(1)* (kpoff_Reaction190* x(34) ) );
	
//x(33)   ID: S_m1_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction51* x(5) * x(33) ) + (-1)*(1)* (kpon_Reaction75* x(6) * x(33) ) + (-1)*(1)* (kpon_Reaction99* x(7) * x(33) ) + (-1)*(1)* (kpoff_Reaction118* x(33) ) + (-1)*(1)* (koff_Reaction188* x(33) ) + (-1)*(1)* (k1a_Reaction262* x(3) * x(33) ) + (1)*(1)* (koff_Reaction52* x(45) ) + (1)*(1)* (kpoff_Reaction76* x(57) ) + (1)*(1)* (kpoff_Reaction100* x(69) ) + (1)*(1)* (kpon_Reaction117* x(10) * x(24) ) + (1)*(1)* (kon_Reaction187* x(11) * x(32) ) + (1)*(1)* (d1a_Reaction263* x(74) ) );
	
//x(34)   ID: S_m1_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kon_Reaction53* x(5) * x(34) ) + (-1)*(1)* (kpon_Reaction77* x(6) * x(34) ) + (-1)*(1)* (kpon_Reaction101* x(7) * x(34) ) + (-1)*(1)* (kpoff_Reaction120* x(34) ) + (-1)*(1)* (kpoff_Reaction190* x(34) ) + (1)*(1)* (koff_Reaction54* x(46) ) + (1)*(1)* (kpoff_Reaction78* x(58) ) + (1)*(1)* (kpoff_Reaction102* x(70) ) + (1)*(1)* (kpon_Reaction119* x(10) * x(25) ) + (1)*(1)* (kpon_Reaction189* x(12) * x(32) ) + (1)*(1)* (k5a_Reaction246* x(31) ) + (1)*(1)* (k1_Reaction264* x(74) ) );
	
//x(35)   ID: S_0_m1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction32* x(35) ) + (-1)*(1)* (kon_Reaction121* x(8) * x(35) ) + (-1)*(1)* (kpon_Reaction127* x(9) * x(35) ) + (-1)*(1)* (kpon_Reaction133* x(10) * x(35) ) + (-1)*(1)* (kon_Reaction191* x(11) * x(35) ) + (-1)*(1)* (kpon_Reaction193* x(12) * x(35) ) + (1)*(1)* (kon_Reaction31* x(5) * x(23) ) + (1)*(1)* (koff_Reaction122* x(38) ) + (1)*(1)* (kpoff_Reaction128* x(41) ) + (1)*(1)* (kpoff_Reaction134* x(44) ) + (1)*(1)* (koff_Reaction192* x(36) ) + (1)*(1)* (kpoff_Reaction194* x(37) ) );
	
//x(36)   ID: S_0_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction34* x(36) ) + (-1)*(1)* (kon_Reaction123* x(8) * x(36) ) + (-1)*(1)* (kpon_Reaction129* x(9) * x(36) ) + (-1)*(1)* (kpon_Reaction135* x(10) * x(36) ) + (-1)*(1)* (koff_Reaction192* x(36) ) + (-1)*(1)* (k1a_Reaction265* x(3) * x(36) ) + (1)*(1)* (kon_Reaction33* x(5) * x(24) ) + (1)*(1)* (koff_Reaction124* x(39) ) + (1)*(1)* (kpoff_Reaction130* x(42) ) + (1)*(1)* (kpoff_Reaction136* x(45) ) + (1)*(1)* (kon_Reaction191* x(11) * x(35) ) + (1)*(1)* (d1a_Reaction266* x(75) ) );
	
//x(37)   ID: S_0_m1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction36* x(37) ) + (-1)*(1)* (kon_Reaction125* x(8) * x(37) ) + (-1)*(1)* (kpon_Reaction131* x(9) * x(37) ) + (-1)*(1)* (kpon_Reaction137* x(10) * x(37) ) + (-1)*(1)* (kpoff_Reaction194* x(37) ) + (1)*(1)* (kon_Reaction35* x(5) * x(25) ) + (1)*(1)* (koff_Reaction126* x(40) ) + (1)*(1)* (kpoff_Reaction132* x(43) ) + (1)*(1)* (kpoff_Reaction138* x(46) ) + (1)*(1)* (kpon_Reaction193* x(12) * x(35) ) + (1)*(1)* (k1_Reaction267* x(75) ) );
	
//x(38)   ID: S_0_0_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction38* x(38) ) + (-1)*(1)* (koff_Reaction122* x(38) ) + (-1)*(1)* (kon_Reaction195* x(11) * x(38) ) + (-1)*(1)* (kpon_Reaction197* x(12) * x(38) ) + (1)*(1)* (kon_Reaction37* x(5) * x(26) ) + (1)*(1)* (kon_Reaction121* x(8) * x(35) ) + (1)*(1)* (koff_Reaction196* x(39) ) + (1)*(1)* (kpoff_Reaction198* x(40) ) );
	
//x(39)   ID: S_0_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction40* x(39) ) + (-1)*(1)* (koff_Reaction124* x(39) ) + (-1)*(1)* (koff_Reaction196* x(39) ) + (-1)*(1)* (k1a_Reaction268* x(3) * x(39) ) + (1)*(1)* (kon_Reaction39* x(5) * x(27) ) + (1)*(1)* (kon_Reaction123* x(8) * x(36) ) + (1)*(1)* (kon_Reaction195* x(11) * x(38) ) + (1)*(1)* (d1a_Reaction269* x(76) ) );
	
//x(40)   ID: S_0_0_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction42* x(40) ) + (-1)*(1)* (koff_Reaction126* x(40) ) + (-1)*(1)* (kpoff_Reaction198* x(40) ) + (-1)*(1)* (k3_Reaction247* x(40) ) + (1)*(1)* (kon_Reaction41* x(5) * x(28) ) + (1)*(1)* (kon_Reaction125* x(8) * x(37) ) + (1)*(1)* (kpon_Reaction197* x(12) * x(38) ) + (1)*(1)* (k1_Reaction270* x(76) ) );
	
//x(41)   ID: S_0_1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction44* x(41) ) + (-1)*(1)* (kpoff_Reaction128* x(41) ) + (-1)*(1)* (kon_Reaction199* x(11) * x(41) ) + (-1)*(1)* (kpon_Reaction201* x(12) * x(41) ) + (1)*(1)* (kon_Reaction43* x(5) * x(29) ) + (1)*(1)* (kpon_Reaction127* x(9) * x(35) ) + (1)*(1)* (koff_Reaction200* x(42) ) + (1)*(1)* (kpoff_Reaction202* x(43) ) );
	
//x(42)   ID: S_0_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction46* x(42) ) + (-1)*(1)* (kpoff_Reaction130* x(42) ) + (-1)*(1)* (koff_Reaction200* x(42) ) + (-1)*(1)* (k1a_Reaction271* x(3) * x(42) ) + (1)*(1)* (kon_Reaction45* x(5) * x(30) ) + (1)*(1)* (kpon_Reaction129* x(9) * x(36) ) + (1)*(1)* (kon_Reaction199* x(11) * x(41) ) + (1)*(1)* (d1a_Reaction272* x(77) ) );
	
//x(43)   ID: S_0_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction48* x(43) ) + (-1)*(1)* (kpoff_Reaction132* x(43) ) + (-1)*(1)* (kpoff_Reaction202* x(43) ) + (-1)*(1)* (k5a_Reaction248* x(43) ) + (1)*(1)* (kon_Reaction47* x(5) * x(31) ) + (1)*(1)* (kpon_Reaction131* x(9) * x(37) ) + (1)*(1)* (kpon_Reaction201* x(12) * x(41) ) + (1)*(1)* (k3_Reaction247* x(40) ) + (1)*(1)* (k1_Reaction273* x(77) ) );
	
//x(44)   ID: S_0_2_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction50* x(44) ) + (-1)*(1)* (kpoff_Reaction134* x(44) ) + (-1)*(1)* (kon_Reaction203* x(11) * x(44) ) + (-1)*(1)* (kpon_Reaction205* x(12) * x(44) ) + (-1)*(1)* (k7_Reaction239* x(44) ) + (1)*(1)* (kon_Reaction49* x(5) * x(32) ) + (1)*(1)* (kpon_Reaction133* x(10) * x(35) ) + (1)*(1)* (koff_Reaction204* x(45) ) + (1)*(1)* (kpoff_Reaction206* x(46) ) );
	
//x(45)   ID: S_0_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction52* x(45) ) + (-1)*(1)* (kpoff_Reaction136* x(45) ) + (-1)*(1)* (koff_Reaction204* x(45) ) + (-1)*(1)* (k7_Reaction240* x(45) ) + (-1)*(1)* (k1a_Reaction274* x(3) * x(45) ) + (1)*(1)* (kon_Reaction51* x(5) * x(33) ) + (1)*(1)* (kpon_Reaction135* x(10) * x(36) ) + (1)*(1)* (kon_Reaction203* x(11) * x(44) ) + (1)*(1)* (d1a_Reaction275* x(78) ) );
	
//x(46)   ID: S_0_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (koff_Reaction54* x(46) ) + (-1)*(1)* (kpoff_Reaction138* x(46) ) + (-1)*(1)* (kpoff_Reaction206* x(46) ) + (-1)*(1)* (k7_Reaction241* x(46) ) + (1)*(1)* (kon_Reaction53* x(5) * x(34) ) + (1)*(1)* (kpon_Reaction137* x(10) * x(37) ) + (1)*(1)* (kpon_Reaction205* x(12) * x(44) ) + (1)*(1)* (k5a_Reaction248* x(43) ) + (1)*(1)* (k1_Reaction276* x(78) ) );
	
//x(47)   ID: S_1_m1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction56* x(47) ) + (-1)*(1)* (kon_Reaction139* x(8) * x(47) ) + (-1)*(1)* (kpon_Reaction145* x(9) * x(47) ) + (-1)*(1)* (kpon_Reaction151* x(10) * x(47) ) + (-1)*(1)* (kon_Reaction207* x(11) * x(47) ) + (-1)*(1)* (kpon_Reaction209* x(12) * x(47) ) + (1)*(1)* (kpon_Reaction55* x(6) * x(23) ) + (1)*(1)* (koff_Reaction140* x(50) ) + (1)*(1)* (kpoff_Reaction146* x(53) ) + (1)*(1)* (kpoff_Reaction152* x(56) ) + (1)*(1)* (koff_Reaction208* x(48) ) + (1)*(1)* (kpoff_Reaction210* x(49) ) );
	
//x(48)   ID: S_1_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction58* x(48) ) + (-1)*(1)* (kon_Reaction141* x(8) * x(48) ) + (-1)*(1)* (kpon_Reaction147* x(9) * x(48) ) + (-1)*(1)* (kpon_Reaction153* x(10) * x(48) ) + (-1)*(1)* (koff_Reaction208* x(48) ) + (-1)*(1)* (k1a_Reaction277* x(3) * x(48) ) + (1)*(1)* (kpon_Reaction57* x(6) * x(24) ) + (1)*(1)* (koff_Reaction142* x(51) ) + (1)*(1)* (kpoff_Reaction148* x(54) ) + (1)*(1)* (kpoff_Reaction154* x(57) ) + (1)*(1)* (kon_Reaction207* x(11) * x(47) ) + (1)*(1)* (d1a_Reaction278* x(79) ) );
	
//x(49)   ID: S_1_m1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction60* x(49) ) + (-1)*(1)* (kon_Reaction143* x(8) * x(49) ) + (-1)*(1)* (kpon_Reaction149* x(9) * x(49) ) + (-1)*(1)* (kpon_Reaction155* x(10) * x(49) ) + (-1)*(1)* (kpoff_Reaction210* x(49) ) + (1)*(1)* (kpon_Reaction59* x(6) * x(25) ) + (1)*(1)* (koff_Reaction144* x(52) ) + (1)*(1)* (kpoff_Reaction150* x(55) ) + (1)*(1)* (kpoff_Reaction156* x(58) ) + (1)*(1)* (kpon_Reaction209* x(12) * x(47) ) + (1)*(1)* (k1_Reaction279* x(79) ) );
	
//x(50)   ID: S_1_0_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction62* x(50) ) + (-1)*(1)* (koff_Reaction140* x(50) ) + (-1)*(1)* (kon_Reaction211* x(11) * x(50) ) + (-1)*(1)* (kpon_Reaction213* x(12) * x(50) ) + (1)*(1)* (kpon_Reaction61* x(6) * x(26) ) + (1)*(1)* (kon_Reaction139* x(8) * x(47) ) + (1)*(1)* (koff_Reaction212* x(51) ) + (1)*(1)* (kpoff_Reaction214* x(52) ) );
	
//x(51)   ID: S_1_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction64* x(51) ) + (-1)*(1)* (koff_Reaction142* x(51) ) + (-1)*(1)* (koff_Reaction212* x(51) ) + (-1)*(1)* (k1a_Reaction280* x(3) * x(51) ) + (1)*(1)* (kpon_Reaction63* x(6) * x(27) ) + (1)*(1)* (kon_Reaction141* x(8) * x(48) ) + (1)*(1)* (kon_Reaction211* x(11) * x(50) ) + (1)*(1)* (d1a_Reaction281* x(80) ) );
	
//x(52)   ID: S_1_0_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction66* x(52) ) + (-1)*(1)* (koff_Reaction144* x(52) ) + (-1)*(1)* (kpoff_Reaction214* x(52) ) + (-1)*(1)* (k3_Reaction249* x(52) ) + (1)*(1)* (kpon_Reaction65* x(6) * x(28) ) + (1)*(1)* (kon_Reaction143* x(8) * x(49) ) + (1)*(1)* (kpon_Reaction213* x(12) * x(50) ) + (1)*(1)* (k1_Reaction282* x(80) ) );
	
//x(53)   ID: S_1_1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction68* x(53) ) + (-1)*(1)* (kpoff_Reaction146* x(53) ) + (-1)*(1)* (kon_Reaction215* x(11) * x(53) ) + (-1)*(1)* (kpon_Reaction217* x(12) * x(53) ) + (1)*(1)* (kpon_Reaction67* x(6) * x(29) ) + (1)*(1)* (kpon_Reaction145* x(9) * x(47) ) + (1)*(1)* (koff_Reaction216* x(54) ) + (1)*(1)* (kpoff_Reaction218* x(55) ) );
	
//x(54)   ID: S_1_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction70* x(54) ) + (-1)*(1)* (kpoff_Reaction148* x(54) ) + (-1)*(1)* (koff_Reaction216* x(54) ) + (-1)*(1)* (k1a_Reaction283* x(3) * x(54) ) + (1)*(1)* (kpon_Reaction69* x(6) * x(30) ) + (1)*(1)* (kpon_Reaction147* x(9) * x(48) ) + (1)*(1)* (kon_Reaction215* x(11) * x(53) ) + (1)*(1)* (d1a_Reaction284* x(81) ) );
	
//x(55)   ID: S_1_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction72* x(55) ) + (-1)*(1)* (kpoff_Reaction150* x(55) ) + (-1)*(1)* (kpoff_Reaction218* x(55) ) + (-1)*(1)* (k5a_Reaction250* x(55) ) + (1)*(1)* (kpon_Reaction71* x(6) * x(31) ) + (1)*(1)* (kpon_Reaction149* x(9) * x(49) ) + (1)*(1)* (kpon_Reaction217* x(12) * x(53) ) + (1)*(1)* (k3_Reaction249* x(52) ) + (1)*(1)* (k1_Reaction285* x(81) ) );
	
//x(56)   ID: S_1_2_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction74* x(56) ) + (-1)*(1)* (kpoff_Reaction152* x(56) ) + (-1)*(1)* (kon_Reaction219* x(11) * x(56) ) + (-1)*(1)* (kpon_Reaction221* x(12) * x(56) ) + (-1)*(1)* (k9a_Reaction242* x(56) ) + (1)*(1)* (kpon_Reaction73* x(6) * x(32) ) + (1)*(1)* (kpon_Reaction151* x(10) * x(47) ) + (1)*(1)* (koff_Reaction220* x(57) ) + (1)*(1)* (kpoff_Reaction222* x(58) ) + (1)*(1)* (k7_Reaction239* x(44) ) );
	
//x(57)   ID: S_1_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction76* x(57) ) + (-1)*(1)* (kpoff_Reaction154* x(57) ) + (-1)*(1)* (koff_Reaction220* x(57) ) + (-1)*(1)* (k9a_Reaction243* x(57) ) + (-1)*(1)* (k1a_Reaction286* x(3) * x(57) ) + (1)*(1)* (kpon_Reaction75* x(6) * x(33) ) + (1)*(1)* (kpon_Reaction153* x(10) * x(48) ) + (1)*(1)* (kon_Reaction219* x(11) * x(56) ) + (1)*(1)* (k7_Reaction240* x(45) ) + (1)*(1)* (d1a_Reaction287* x(82) ) );
	
//x(58)   ID: S_1_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction78* x(58) ) + (-1)*(1)* (kpoff_Reaction156* x(58) ) + (-1)*(1)* (kpoff_Reaction222* x(58) ) + (-1)*(1)* (k9a_Reaction244* x(58) ) + (1)*(1)* (kpon_Reaction77* x(6) * x(34) ) + (1)*(1)* (kpon_Reaction155* x(10) * x(49) ) + (1)*(1)* (kpon_Reaction221* x(12) * x(56) ) + (1)*(1)* (k7_Reaction241* x(46) ) + (1)*(1)* (k5a_Reaction250* x(55) ) + (1)*(1)* (k1_Reaction288* x(82) ) );
	
//x(59)   ID: S_2_m1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction80* x(59) ) + (-1)*(1)* (kon_Reaction157* x(8) * x(59) ) + (-1)*(1)* (kpon_Reaction163* x(9) * x(59) ) + (-1)*(1)* (kpon_Reaction169* x(10) * x(59) ) + (-1)*(1)* (kon_Reaction223* x(11) * x(59) ) + (-1)*(1)* (kpon_Reaction225* x(12) * x(59) ) + (1)*(1)* (kpon_Reaction79* x(7) * x(23) ) + (1)*(1)* (koff_Reaction158* x(62) ) + (1)*(1)* (kpoff_Reaction164* x(65) ) + (1)*(1)* (kpoff_Reaction170* x(68) ) + (1)*(1)* (koff_Reaction224* x(60) ) + (1)*(1)* (kpoff_Reaction226* x(61) ) );
	
//x(60)   ID: S_2_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction82* x(60) ) + (-1)*(1)* (kon_Reaction159* x(8) * x(60) ) + (-1)*(1)* (kpon_Reaction165* x(9) * x(60) ) + (-1)*(1)* (kpon_Reaction171* x(10) * x(60) ) + (-1)*(1)* (koff_Reaction224* x(60) ) + (-1)*(1)* (k1a_Reaction289* x(3) * x(60) ) + (1)*(1)* (kpon_Reaction81* x(7) * x(24) ) + (1)*(1)* (koff_Reaction160* x(63) ) + (1)*(1)* (kpoff_Reaction166* x(66) ) + (1)*(1)* (kpoff_Reaction172* x(69) ) + (1)*(1)* (kon_Reaction223* x(11) * x(59) ) + (1)*(1)* (d1a_Reaction290* x(83) ) );
	
//x(61)   ID: S_2_m1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction84* x(61) ) + (-1)*(1)* (kon_Reaction161* x(8) * x(61) ) + (-1)*(1)* (kpon_Reaction167* x(9) * x(61) ) + (-1)*(1)* (kpon_Reaction173* x(10) * x(61) ) + (-1)*(1)* (kpoff_Reaction226* x(61) ) + (1)*(1)* (kpon_Reaction83* x(7) * x(25) ) + (1)*(1)* (koff_Reaction162* x(64) ) + (1)*(1)* (kpoff_Reaction168* x(67) ) + (1)*(1)* (kpoff_Reaction174* x(70) ) + (1)*(1)* (kpon_Reaction225* x(12) * x(59) ) + (1)*(1)* (k1_Reaction291* x(83) ) );
	
//x(62)   ID: S_2_0_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction86* x(62) ) + (-1)*(1)* (koff_Reaction158* x(62) ) + (-1)*(1)* (kon_Reaction227* x(11) * x(62) ) + (-1)*(1)* (kpon_Reaction229* x(12) * x(62) ) + (1)*(1)* (kpon_Reaction85* x(7) * x(26) ) + (1)*(1)* (kon_Reaction157* x(8) * x(59) ) + (1)*(1)* (koff_Reaction228* x(63) ) + (1)*(1)* (kpoff_Reaction230* x(64) ) );
	
//x(63)   ID: S_2_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction88* x(63) ) + (-1)*(1)* (koff_Reaction160* x(63) ) + (-1)*(1)* (koff_Reaction228* x(63) ) + (-1)*(1)* (k1a_Reaction292* x(3) * x(63) ) + (1)*(1)* (kpon_Reaction87* x(7) * x(27) ) + (1)*(1)* (kon_Reaction159* x(8) * x(60) ) + (1)*(1)* (kon_Reaction227* x(11) * x(62) ) + (1)*(1)* (d1a_Reaction293* x(84) ) );
	
//x(64)   ID: S_2_0_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction90* x(64) ) + (-1)*(1)* (koff_Reaction162* x(64) ) + (-1)*(1)* (kpoff_Reaction230* x(64) ) + (-1)*(1)* (k3_Reaction251* x(64) ) + (1)*(1)* (kpon_Reaction89* x(7) * x(28) ) + (1)*(1)* (kon_Reaction161* x(8) * x(61) ) + (1)*(1)* (kpon_Reaction229* x(12) * x(62) ) + (1)*(1)* (k1_Reaction294* x(84) ) );
	
//x(65)   ID: S_2_1_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction92* x(65) ) + (-1)*(1)* (kpoff_Reaction164* x(65) ) + (-1)*(1)* (kon_Reaction231* x(11) * x(65) ) + (-1)*(1)* (kpon_Reaction233* x(12) * x(65) ) + (1)*(1)* (kpon_Reaction91* x(7) * x(29) ) + (1)*(1)* (kpon_Reaction163* x(9) * x(59) ) + (1)*(1)* (koff_Reaction232* x(66) ) + (1)*(1)* (kpoff_Reaction234* x(67) ) );
	
//x(66)   ID: S_2_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction94* x(66) ) + (-1)*(1)* (kpoff_Reaction166* x(66) ) + (-1)*(1)* (koff_Reaction232* x(66) ) + (-1)*(1)* (k1a_Reaction295* x(3) * x(66) ) + (1)*(1)* (kpon_Reaction93* x(7) * x(30) ) + (1)*(1)* (kpon_Reaction165* x(9) * x(60) ) + (1)*(1)* (kon_Reaction231* x(11) * x(65) ) + (1)*(1)* (d1a_Reaction296* x(85) ) );
	
//x(67)   ID: S_2_1_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction96* x(67) ) + (-1)*(1)* (kpoff_Reaction168* x(67) ) + (-1)*(1)* (kpoff_Reaction234* x(67) ) + (-1)*(1)* (k5a_Reaction252* x(67) ) + (1)*(1)* (kpon_Reaction95* x(7) * x(31) ) + (1)*(1)* (kpon_Reaction167* x(9) * x(61) ) + (1)*(1)* (kpon_Reaction233* x(12) * x(65) ) + (1)*(1)* (k3_Reaction251* x(64) ) + (1)*(1)* (k1_Reaction297* x(85) ) );
	
//x(68)   ID: S_2_2_m1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction98* x(68) ) + (-1)*(1)* (kpoff_Reaction170* x(68) ) + (-1)*(1)* (kon_Reaction235* x(11) * x(68) ) + (-1)*(1)* (kpon_Reaction237* x(12) * x(68) ) + (1)*(1)* (kpon_Reaction97* x(7) * x(32) ) + (1)*(1)* (kpon_Reaction169* x(10) * x(59) ) + (1)*(1)* (koff_Reaction236* x(69) ) + (1)*(1)* (kpoff_Reaction238* x(70) ) + (1)*(1)* (k9a_Reaction242* x(56) ) );
	
//x(69)   ID: S_2_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction100* x(69) ) + (-1)*(1)* (kpoff_Reaction172* x(69) ) + (-1)*(1)* (koff_Reaction236* x(69) ) + (-1)*(1)* (k1a_Reaction298* x(3) * x(69) ) + (1)*(1)* (kpon_Reaction99* x(7) * x(33) ) + (1)*(1)* (kpon_Reaction171* x(10) * x(60) ) + (1)*(1)* (kon_Reaction235* x(11) * x(68) ) + (1)*(1)* (k9a_Reaction243* x(57) ) + (1)*(1)* (d1a_Reaction299* x(86) ) );
	
//x(70)   ID: S_2_2_1  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (kpoff_Reaction102* x(70) ) + (-1)*(1)* (kpoff_Reaction174* x(70) ) + (-1)*(1)* (kpoff_Reaction238* x(70) ) + (1)*(1)* (kpon_Reaction101* x(7) * x(34) ) + (1)*(1)* (kpon_Reaction173* x(10) * x(61) ) + (1)*(1)* (kpon_Reaction237* x(12) * x(68) ) + (1)*(1)* (k9a_Reaction244* x(58) ) + (1)*(1)* (k5a_Reaction252* x(67) ) + (1)*(1)* (k1_Reaction300* x(86) ) );
	
//x(71)   ID: S_RAFK_m1_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction254* x(71) ) + (-1)*(1)* (k1_Reaction255* x(71) ) + (1)*(1)* (k1a_Reaction253* x(3) * x(24) ) );
	
//x(72)   ID: S_RAFK_m1_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction257* x(72) ) + (-1)*(1)* (k1_Reaction258* x(72) ) + (1)*(1)* (k1a_Reaction256* x(3) * x(27) ) );
	
//x(73)   ID: S_RAFK_m1_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction260* x(73) ) + (-1)*(1)* (k1_Reaction261* x(73) ) + (1)*(1)* (k1a_Reaction259* x(3) * x(30) ) );
	
//x(74)   ID: S_RAFK_m1_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction263* x(74) ) + (-1)*(1)* (k1_Reaction264* x(74) ) + (1)*(1)* (k1a_Reaction262* x(3) * x(33) ) );
	
//x(75)   ID: S_RAFK_0_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction266* x(75) ) + (-1)*(1)* (k1_Reaction267* x(75) ) + (1)*(1)* (k1a_Reaction265* x(3) * x(36) ) );
	
//x(76)   ID: S_RAFK_0_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction269* x(76) ) + (-1)*(1)* (k1_Reaction270* x(76) ) + (1)*(1)* (k1a_Reaction268* x(3) * x(39) ) );
	
//x(77)   ID: S_RAFK_0_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction272* x(77) ) + (-1)*(1)* (k1_Reaction273* x(77) ) + (1)*(1)* (k1a_Reaction271* x(3) * x(42) ) );
	
//x(78)   ID: S_RAFK_0_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction275* x(78) ) + (-1)*(1)* (k1_Reaction276* x(78) ) + (1)*(1)* (k1a_Reaction274* x(3) * x(45) ) );
	
//x(79)   ID: S_RAFK_1_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction278* x(79) ) + (-1)*(1)* (k1_Reaction279* x(79) ) + (1)*(1)* (k1a_Reaction277* x(3) * x(48) ) );
	
//x(80)   ID: S_RAFK_1_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction281* x(80) ) + (-1)*(1)* (k1_Reaction282* x(80) ) + (1)*(1)* (k1a_Reaction280* x(3) * x(51) ) );
	
//x(81)   ID: S_RAFK_1_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction284* x(81) ) + (-1)*(1)* (k1_Reaction285* x(81) ) + (1)*(1)* (k1a_Reaction283* x(3) * x(54) ) );
	
//x(82)   ID: S_RAFK_1_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction287* x(82) ) + (-1)*(1)* (k1_Reaction288* x(82) ) + (1)*(1)* (k1a_Reaction286* x(3) * x(57) ) );
	
//x(83)   ID: S_RAFK_2_m1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction290* x(83) ) + (-1)*(1)* (k1_Reaction291* x(83) ) + (1)*(1)* (k1a_Reaction289* x(3) * x(60) ) );
	
//x(84)   ID: S_RAFK_2_0_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction293* x(84) ) + (-1)*(1)* (k1_Reaction294* x(84) ) + (1)*(1)* (k1a_Reaction292* x(3) * x(63) ) );
	
//x(85)   ID: S_RAFK_2_1_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction296* x(85) ) + (-1)*(1)* (k1_Reaction297* x(85) ) + (1)*(1)* (k1a_Reaction295* x(3) * x(66) ) );
	
//x(86)   ID: S_RAFK_2_2_0  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1a_Reaction299* x(86) ) + (-1)*(1)* (k1_Reaction300* x(86) ) + (1)*(1)* (k1a_Reaction298* x(3) * x(69) ) )
	];


	
endfunction
        x0=[0.3;0.2;0.1;0.3;0.4;0;0;0.2;0;0;0.3;0;0;0;0;0;0;0;0;0;0;0;0.1;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86])

//real_variable:
	
	
//x(1)   id: MAPKP  initialValue: 0.3
	
//x(2)   id: MEKP  initialValue: 0.2
	
//x(3)   id: RAFK  initialValue: 0.1
	
//x(4)   id: RAFP  initialValue: 0.3
	
//x(5)   id: K_1_0  initialValue: 0.4
	
//x(6)   id: K_1_1  initialValue: 0
	
//x(7)   id: K_1_2  initialValue: 0
	
//x(8)   id: K_2_0  initialValue: 0.2
	
//x(9)   id: K_2_1  initialValue: 0
	
//x(10)   id: K_2_2  initialValue: 0
	
//x(11)   id: K_3_0  initialValue: 0.3
	
//x(12)   id: K_3_1  initialValue: 0
	
//x(13)   id: K_K_1_0_2_2  initialValue: 0
	
//x(14)   id: K_K_1_1_2_2  initialValue: 0
	
//x(15)   id: K_K_2_0_3_1  initialValue: 0
	
//x(16)   id: K_K_2_1_3_1  initialValue: 0
	
//x(17)   id: K_MAPKP_1_1  initialValue: 0
	
//x(18)   id: K_MAPKP_1_2  initialValue: 0
	
//x(19)   id: K_MEKP_2_1  initialValue: 0
	
//x(20)   id: K_MEKP_2_2  initialValue: 0
	
//x(21)   id: K_RAFK_3_0  initialValue: 0
	
//x(22)   id: K_RAFP_3_1  initialValue: 0
	
//x(23)   id: S_m1_m1_m1  initialValue: 0.1
	
//x(24)   id: S_m1_m1_0  initialValue: 0
	
//x(25)   id: S_m1_m1_1  initialValue: 0
	
//x(26)   id: S_m1_0_m1  initialValue: 0
	
//x(27)   id: S_m1_0_0  initialValue: 0
	
//x(28)   id: S_m1_0_1  initialValue: 0
	
//x(29)   id: S_m1_1_m1  initialValue: 0
	
//x(30)   id: S_m1_1_0  initialValue: 0
	
//x(31)   id: S_m1_1_1  initialValue: 0
	
//x(32)   id: S_m1_2_m1  initialValue: 0
	
//x(33)   id: S_m1_2_0  initialValue: 0
	
//x(34)   id: S_m1_2_1  initialValue: 0
	
//x(35)   id: S_0_m1_m1  initialValue: 0
	
//x(36)   id: S_0_m1_0  initialValue: 0
	
//x(37)   id: S_0_m1_1  initialValue: 0
	
//x(38)   id: S_0_0_m1  initialValue: 0
	
//x(39)   id: S_0_0_0  initialValue: 0
	
//x(40)   id: S_0_0_1  initialValue: 0
	
//x(41)   id: S_0_1_m1  initialValue: 0
	
//x(42)   id: S_0_1_0  initialValue: 0
	
//x(43)   id: S_0_1_1  initialValue: 0
	
//x(44)   id: S_0_2_m1  initialValue: 0
	
//x(45)   id: S_0_2_0  initialValue: 0
	
//x(46)   id: S_0_2_1  initialValue: 0
	
//x(47)   id: S_1_m1_m1  initialValue: 0
	
//x(48)   id: S_1_m1_0  initialValue: 0
	
//x(49)   id: S_1_m1_1  initialValue: 0
	
//x(50)   id: S_1_0_m1  initialValue: 0
	
//x(51)   id: S_1_0_0  initialValue: 0
	
//x(52)   id: S_1_0_1  initialValue: 0
	
//x(53)   id: S_1_1_m1  initialValue: 0
	
//x(54)   id: S_1_1_0  initialValue: 0
	
//x(55)   id: S_1_1_1  initialValue: 0
	
//x(56)   id: S_1_2_m1  initialValue: 0
	
//x(57)   id: S_1_2_0  initialValue: 0
	
//x(58)   id: S_1_2_1  initialValue: 0
	
//x(59)   id: S_2_m1_m1  initialValue: 0
	
//x(60)   id: S_2_m1_0  initialValue: 0
	
//x(61)   id: S_2_m1_1  initialValue: 0
	
//x(62)   id: S_2_0_m1  initialValue: 0
	
//x(63)   id: S_2_0_0  initialValue: 0
	
//x(64)   id: S_2_0_1  initialValue: 0
	
//x(65)   id: S_2_1_m1  initialValue: 0
	
//x(66)   id: S_2_1_0  initialValue: 0
	
//x(67)   id: S_2_1_1  initialValue: 0
	
//x(68)   id: S_2_2_m1  initialValue: 0
	
//x(69)   id: S_2_2_0  initialValue: 0
	
//x(70)   id: S_2_2_1  initialValue: 0
	
//x(71)   id: S_RAFK_m1_m1_0  initialValue: 0
	
//x(72)   id: S_RAFK_m1_0_0  initialValue: 0
	
//x(73)   id: S_RAFK_m1_1_0  initialValue: 0
	
//x(74)   id: S_RAFK_m1_2_0  initialValue: 0
	
//x(75)   id: S_RAFK_0_m1_0  initialValue: 0
	
//x(76)   id: S_RAFK_0_0_0  initialValue: 0
	
//x(77)   id: S_RAFK_0_1_0  initialValue: 0
	
//x(78)   id: S_RAFK_0_2_0  initialValue: 0
	
//x(79)   id: S_RAFK_1_m1_0  initialValue: 0
	
//x(80)   id: S_RAFK_1_0_0  initialValue: 0
	
//x(81)   id: S_RAFK_1_1_0  initialValue: 0
	
//x(82)   id: S_RAFK_1_2_0  initialValue: 0
	
//x(83)   id: S_RAFK_2_m1_0  initialValue: 0
	
//x(84)   id: S_RAFK_2_0_0  initialValue: 0
	
//x(85)   id: S_RAFK_2_1_0  initialValue: 0
	
//x(86)   id: S_RAFK_2_2_0  initialValue: 0