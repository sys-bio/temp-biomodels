<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.10 (Build 55) (http://www.copasi.org) at 2013-08-19 12:20:34 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="10" versionDevel="55" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_114" name="Function for re1_1" type="UserDefined" reversible="false">
      <Expression>
        (-k6*(s3*c1)*(B_T-s4*c1)+k7*(s4*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_676" name="B_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_674" name="k6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_673" name="k7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="s3" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_671" name="s4" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for re4_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k_CCE*(fracK*Cao/(K3+Cao)-s2*c2)*(s1*default-s2*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="Cao" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="K3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="c2" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_310" name="default" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="fracK" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="k_CCE" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="s1" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="s2" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for re5_1" type="UserDefined" reversible="unspecified">
      <Expression>
        0.5*k1*(R_T-half*R_T*(exp(-(s12*c1)/tau_I)+exp(-(s12*c1)/tau_II)+(exp(-(s12*c1)/tau_I)-exp(-(s12*c1)/tau_II))*(tau_I+tau_II)/(tau_I-tau_II)))*(s3*c1)/(K1+s3*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_983" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_984" name="R_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_985" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_986" name="half" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_987" name="k1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_988" name="s12" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_989" name="s3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_990" name="tau_I" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_991" name="tau_II" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for re6_1" type="UserDefined" reversible="false">
      <Expression>
        0.5*k2*(s6*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_686" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_685" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_683" name="s6" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for re7_1" type="UserDefined" reversible="false">
      <Expression>
        0.5*k3*(k_CICR*(s3*c1)/(K_CICR+s3*c1))*(s6*c1/(K2+s6*c1))^3*(s2*c2)-0.5*k4*(s3*c1/(K3+s3*c1))^2+0.5*k5*(s2*c2)*(s2*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1010" name="K2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1011" name="K3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1012" name="K_CICR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1013" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1014" name="c2" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_1015" name="k3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1016" name="k4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1017" name="k5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1018" name="k_CICR" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1019" name="s2" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1020" name="s3" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1021" name="s6" order="11" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for re8_1" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vhi*(s3*c1)^4/(K_hi^4+(s3*c1)^4)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1009" name="K_hi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1007" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_684" name="dot_Vhi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1006" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for re9_1" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vex*(s3*c1)/(K5+s3*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1034" name="K5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1035" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1036" name="dot_Vex" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1037" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for re10_1" type="UserDefined" reversible="unspecified">
      <Expression>
        0.5*dot_q_inpass/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1005" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_687" name="dot_q_inpass" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Function for re11_1" type="UserDefined" reversible="unspecified">
      <Expression>
        unisec*0.5/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1044" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1045" name="unisec" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Function for re12_1" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vp*(s3*c1)^2/(K4^2+(s3*c1)^2)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1050" name="K4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1051" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1052" name="dot_Vp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1053" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Function for re37_1" type="UserDefined" reversible="false">
      <Expression>
        k15*(s47*c1)*(s51*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1058" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1059" name="k15" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1060" name="s47" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1061" name="s51" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Function for re38_1" type="UserDefined" reversible="true">
      <Expression>
        (k17*(s51*c1)*(s48*c1)-k18*(s50*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1068" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1069" name="k17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1070" name="k18" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1071" name="s48" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1072" name="s50" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1073" name="s51" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Function for re41_1" type="UserDefined" reversible="true">
      <Expression>
        (k11*(s3*c1)*(s52*c1)-k12*(s48*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1080" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1081" name="k11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1082" name="k12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1083" name="s3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1084" name="s48" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1085" name="s52" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Function for re42_1" type="UserDefined" reversible="false">
      <Expression>
        (k13*(s3*c1)*(s48*c1)-k14*(s47*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1092" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1093" name="k13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1094" name="k14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1095" name="s3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1096" name="s47" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1097" name="s48" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Function for re50_1" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s45*c1)-k13*(s3*c1)*(s50*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1105" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1106" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1107" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1108" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1109" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1110" name="s45" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1111" name="s50" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Function for re51_1" type="UserDefined" reversible="false">
      <Expression>
        k90*(s45*c1)*(s57*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1066" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1049" name="k90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1003" name="s45" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1119" name="s57" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Function for re52_1" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s58*c1)-k13*(s3*c1)*(s61*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1127" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1128" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1129" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1130" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1131" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1132" name="s58" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1133" name="s61" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Function for re53_1" type="UserDefined" reversible="false">
      <Expression>
        kr90*(s61*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_682" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1124" name="kr90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1048" name="s61" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Function for re54_1" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s60*c1)-k13*(s3*c1)*(s62*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1147" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1148" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1149" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1150" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1151" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1152" name="s60" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1153" name="s62" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Function for re55_1" type="UserDefined" reversible="true">
      <Expression>
        (kp*(s58*c1)*(s27*c1)/(s58*c1+Kmp)-Vdp*(s60*c1)/(s60*c1+Kmdp))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1162" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1163" name="Kmp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1164" name="Vdp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1165" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1166" name="kp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1167" name="s27" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1168" name="s58" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1169" name="s60" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Function for re56_1" type="UserDefined" reversible="true">
      <Expression>
        (kp*(s61*c1)*(s27*c1)/(s61*c1+Kmp)-Vdp*(s62*c1)/(s62*c1+Kmdp))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1178" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1179" name="Kmp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1180" name="Vdp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1181" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1182" name="kp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1183" name="s27" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1184" name="s61" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1185" name="s62" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for re57_1" type="UserDefined" reversible="unspecified">
      <Expression>
        exp(unity-(s23*c1/tf)^1.8)*normal*(s23*c1/unimol)^0.8*(unity-(s23*c1/tf)^1.8)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1145" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1161" name="normal" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1194" name="s23" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1195" name="tf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1196" name="unimol" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1197" name="unity" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for re58_1" type="UserDefined" reversible="false">
      <Expression>
        k58*(s19*c1)*(s20*c1)/(Km58+s19*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1146" name="Km58" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1204" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1205" name="k58" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1206" name="s19" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1207" name="s20" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for re59_1" type="UserDefined" reversible="false">
      <Expression>
        k59*(s17*c1)*(s18*c1)/(Km59+s17*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1213" name="Km59" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1214" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1215" name="k59" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1216" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1217" name="s18" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for re60_1" type="UserDefined" reversible="true">
      <Expression>
        (k60*(s17*c1)*(s16*c1)-kr60*(s28*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1224" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1225" name="k60" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1226" name="kr60" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1227" name="s16" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1228" name="s17" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1229" name="s28" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for re61_1" type="UserDefined" reversible="false">
      <Expression>
        k61*(s28*c1)*(s14*c1)/(Km61+s28*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1125" name="Km61" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1236" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1237" name="k61" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1238" name="s14" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1239" name="s28" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for re62_1" type="UserDefined" reversible="false">
      <Expression>
        k62*(s26*c1)*(s24*c1)/(Km62+s26*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1245" name="Km62" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1246" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1247" name="k62" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1248" name="s24" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1249" name="s26" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for re63_1" type="UserDefined" reversible="false">
      <Expression>
        k63*(s26*c1)*(s15*c1)/(Km63+s26*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1255" name="Km63" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1256" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1257" name="k63" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1258" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1259" name="s26" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for re64_1" type="UserDefined" reversible="false">
      <Expression>
        k64*(s27*c1)*(s15*c1)/(Km64+s27*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1265" name="Km64" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1266" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1267" name="k64" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1268" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1269" name="s27" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for re65_1" type="UserDefined" reversible="false">
      <Expression>
        k65*(s27*c1)*(s15*c1)/(Km65+s27*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1275" name="Km65" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1276" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1277" name="k65" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1278" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1279" name="s27" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for re66_1" type="UserDefined" reversible="false">
      <Expression>
        k66*(s17*c1)*(s25*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1143" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1285" name="k66" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1286" name="s17" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1287" name="s25" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for re67_1" type="UserDefined" reversible="false">
      <Expression>
        s14*c1*k67/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1223" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1292" name="k67" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1293" name="s14" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for re68_1" type="UserDefined" reversible="unspecified">
      <Expression>
        unitime/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1126" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1297" name="unitime" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for re69_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (K_cam_no*(s45*c1+s58*c1)+K_p_no*(s62*c1+s65*c1)+K_pcam_no*(s60*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1307" name="K_cam_no" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1308" name="K_p_no" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1309" name="K_pcam_no" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1310" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_1311" name="s45" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1312" name="s58" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1313" name="s60" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1314" name="s62" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1315" name="s65" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for re70_1" type="UserDefined" reversible="false">
      <Expression>
        Vdp*(s65*c1)/(s65*c1+Kmdp)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1104" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1300" name="Vdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1305" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1302" name="s65" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for re71_1" type="UserDefined" reversible="false">
      <Expression>
        kr90*(s66*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1301" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1328" name="kr90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1329" name="s66" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="Function for re72_1" type="UserDefined" reversible="true">
      <Expression>
        (k18*(s62*c1)-k17*(s65*c1)*(s48*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1336" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1337" name="k17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1338" name="k18" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1339" name="s48" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1340" name="s62" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1341" name="s65" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="Function for re102_1" type="UserDefined" reversible="unspecified">
      <Expression>
        exp(unity-(s39*c1/tf)^0.35)*normal*((s39*c1+tiny_num)/unimol)^(-0.65)*(unity-(s39*c1/tf)^0.35)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1349" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1350" name="normal" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1351" name="s39" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1352" name="tf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1353" name="tiny_num" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1354" name="unimol" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1355" name="unity" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_152" name="Function for re103_1" type="UserDefined" reversible="unspecified">
      <Expression>
        exp(unity-(s39*c1/tf)^1.3)*normal*(s39*c1/unimol)^0.3*(unity-(s39*c1/tf)^1.3)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1335" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1363" name="normal" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1364" name="s39" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1365" name="tf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1366" name="unimol" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1367" name="unity" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_153" name="Function for re104_1" type="UserDefined" reversible="true">
      <Expression>
        (k105*(s91*c1)*(s93*c1)-k_105*(s110*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1374" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1375" name="k105" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1376" name="k_105" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1377" name="s110" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1378" name="s91" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1379" name="s93" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_154" name="Function for re105_1" type="UserDefined" reversible="true">
      <Expression>
        (kcat_src*(s110*c1)*(s92*c1)-k_6*(s112*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1386" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1387" name="k_6" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1388" name="kcat_src" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1389" name="s110" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1390" name="s112" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1391" name="s92" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_155" name="Function for re106_1" type="UserDefined" reversible="true">
      <Expression>
        (k107*(s111*c1)*(s112*c1)-k_107*(s113*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1398" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1399" name="k107" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1400" name="k_107" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1401" name="s111" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1402" name="s112" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1403" name="s113" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_156" name="Function for re107_1" type="UserDefined" reversible="true">
      <Expression>
        (k108*(s113*c1)-k_108*(s93*c1)*(s114*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1410" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1411" name="k108" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1412" name="k_108" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1413" name="s113" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1414" name="s114" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1415" name="s93" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_157" name="Function for re108_1" type="UserDefined" reversible="false">
      <Expression>
        V10*(s98*c1)/(K10+s98*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1304" name="K10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1306" name="V10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1422" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1423" name="s98" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_158" name="Function for re109_1" type="UserDefined" reversible="false">
      <Expression>
        k9*(s114*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1334" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1428" name="k9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1429" name="s114" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_159" name="Function for re110_1" type="UserDefined" reversible="false">
      <Expression>
        s115*c3*kT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1433" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1434" name="kT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1435" name="s115" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_160" name="Function for re111_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (ktr1*(s107*c3)+ktr1k2*(s49*c1))/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1442" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1443" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1444" name="ktr1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1445" name="ktr1k2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1446" name="s107" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1447" name="s49" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_161" name="Function for re112_1" type="UserDefined" reversible="false">
      <Expression>
        k111*(s114*c1)*(s103*c1)/(s103*c1+K111)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1441" name="K111" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1454" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1455" name="k111" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1456" name="s103" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1457" name="s114" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_162" name="Function for re113_1" type="UserDefined" reversible="false">
      <Expression>
        V12*(s102*c1)/(K12+s102*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1333" name="K12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1463" name="V12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1464" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1465" name="s102" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_163" name="Function for re114_1" type="UserDefined" reversible="false">
      <Expression>
        k113*(s102*c1)*(s97*c1)/(K113+s97*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1471" name="K113" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1472" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1473" name="k113" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1474" name="s102" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1475" name="s97" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_164" name="Function for re115_1" type="UserDefined" reversible="false">
      <Expression>
        V18*(s101*c1)/(K18+s101*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1470" name="K18" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1481" name="V18" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1482" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1483" name="s101" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_165" name="Function for re116_1" type="UserDefined" reversible="false">
      <Expression>
        k19*(s101*c1)*(s96*c1)/(K19+s96*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1489" name="K19" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1490" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1491" name="k19" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1492" name="s101" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1493" name="s96" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_166" name="Function for re117_1" type="UserDefined" reversible="false">
      <Expression>
        V20*(s100*c1)/(s100*c1+K20)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1488" name="K20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1499" name="V20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1500" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1501" name="s100" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_167" name="Function for re118_1" type="UserDefined" reversible="false">
      <Expression>
        k21*(s99*c1)*(s43*c1)/(s99*c1+K21)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1507" name="K21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1508" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1509" name="k21" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1510" name="s43" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1511" name="s99" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_168" name="Function for re119_1" type="UserDefined" reversible="false">
      <Expression>
        V22*(s104*c1)/(s104*c1+K22)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1506" name="K22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1517" name="V22" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1518" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1519" name="s104" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_169" name="Function for re120_1" type="UserDefined" reversible="false">
      <Expression>
        kD*(s106*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1303" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1524" name="kD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1525" name="s106" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_170" name="Function for re121_1" type="UserDefined" reversible="unspecified">
      <Expression>
        kP*(s106*c1)/(s106*c1+K30)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1530" name="K30" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1531" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1532" name="kP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1533" name="s106" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_171" name="Function for re122_1" type="UserDefined" reversible="unspecified">
      <Expression>
        unitime/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1440" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1529" name="unitime" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_172" name="Function for re123_1" type="UserDefined" reversible="false">
      <Expression>
        V37*(s43*c1)/(s43*c1+K37)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1542" name="K37" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1543" name="V37" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1544" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1545" name="s43" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_173" name="Function for re124_1" type="UserDefined" reversible="false">
      <Expression>
        k38*(s100*c1)*(s101*c1)/(K38+s100*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1551" name="K38" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1552" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1553" name="k38" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1554" name="s100" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1555" name="s101" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_174" name="Function for re125_1" type="UserDefined" reversible="false">
      <Expression>
        V39*(s44*c1)/(K39+s44*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1550" name="K39" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1561" name="V39" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1562" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1563" name="s44" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_175" name="Function for re126_1" type="UserDefined" reversible="false">
      <Expression>
        k40*(s104*c1)*(s43*c1)/(K40+s104*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1569" name="K40" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1570" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1571" name="k40" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1572" name="s104" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1573" name="s43" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_176" name="Function for re127_1" type="UserDefined" reversible="false">
      <Expression>
        s44*c1*(s42*c3)*k43/(K43+s42*c3)/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1580" name="K43" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1581" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1582" name="c3" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1583" name="k43" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1584" name="s42" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1585" name="s44" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_177" name="Function for re128_1" type="UserDefined" reversible="false">
      <Expression>
        V44*(s107*c3)/(s107*c3+K44)/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1348" name="K44" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_1579" name="V44" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1592" name="c3" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_1593" name="s107" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_178" name="Function for re129_1" type="UserDefined" reversible="unspecified">
      <Expression>
        exp(tau*(delay-s39*c1/tc))/(1+2*exp(tau*(delay-s39*c1/tc))+exp(2*tau*(delay-s39*c1/tc)))/uc*29.256/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1600" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1601" name="delay" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1602" name="s39" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1603" name="tau" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1604" name="tc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1605" name="uc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_179" name="Function for re131_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s51*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1439" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1568" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1541" name="s51" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_180" name="Function for re132_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s45*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1615" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1616" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1617" name="s45" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_181" name="Function for re133_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s50*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1621" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1622" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1623" name="s50" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_182" name="Function for re134_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s66*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1627" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1628" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1629" name="s66" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_183" name="Function for re135_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s65*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1633" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1634" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1635" name="s65" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_184" name="Function for re136_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s61*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1639" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1640" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1641" name="s61" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_185" name="Function for re137_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s62*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1645" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1646" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1647" name="s62" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_186" name="Function for re138_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s58*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1651" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1652" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1653" name="s58" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_187" name="Function for re139_1" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s60*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1657" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1658" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1659" name="s60" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Koo2013 - Integrated shear stress induced NO production model" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-08-19T13:19:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="2000" sizeY="2000"/>
  <celldesigner:listOfCompartmentAliases>
    <celldesigner:compartmentAlias id="ca1" compartment="c1">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="292.0" y="216.0" w="1592.0" h="1760.0"/>
      <celldesigner:namePoint x="589.0" y="609.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca2" compartment="c2">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="317.0" y="437.0" w="247.0" h="124.0"/>
      <celldesigner:namePoint x="431.5" y="524.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca3" compartment="c3">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="1288.0" y="1552.0" w="425.0" h="308.0"/>
      <celldesigner:namePoint x="1475.0" y="1823.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
  </celldesigner:listOfCompartmentAliases>
  <celldesigner:listOfComplexSpeciesAliases>
    <celldesigner:complexSpeciesAlias id="csa1" species="s26" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1198.375" y="171.20785932873258" w="83.0" h="69.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="906.375" y="-44.79214067126742"/>
        <celldesigner:boxSize width="83.0" height="69.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa2" species="s28" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1329.375" y="171.20785932873258" w="85.0" h="68.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1037.375" y="-44.79214067126742"/>
        <celldesigner:boxSize width="85.0" height="68.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa3" species="s27" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1085.375" y="484.20785932873264" w="95.0" h="63.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="793.375" y="268.20785932873264"/>
        <celldesigner:boxSize width="95.0" height="63.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa9" species="s110" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="553.2595969770849" y="1258.4288796346377" w="108.0" h="32.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="261.2595969770849" y="1042.4288796346377"/>
        <celldesigner:boxSize width="108.0" height="32.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa10" species="s111" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="730.2595969770849" y="1340.4288796346377" w="98.0" h="36.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="438.2595969770849" y="1124.4288796346377"/>
        <celldesigner:boxSize width="98.0" height="36.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa11" species="s112" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="552.2595969770849" y="1343.4288796346377" w="108.0" h="33.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="260.2595969770849" y="1127.4288796346377"/>
        <celldesigner:boxSize width="108.0" height="33.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa12" species="s113" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="609.2595969770849" y="1444.4288796346377" w="172.0" h="35.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="317.2595969770849" y="1228.4288796346377"/>
        <celldesigner:boxSize width="172.0" height="35.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa13" species="s114" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="507.2595969770849" y="1532.4288796346377" w="140.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="215.25959697708493" y="1316.4288796346377"/>
        <celldesigner:boxSize width="140.0" height="37.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
  </celldesigner:listOfComplexSpeciesAliases>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="205.0" y="662.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s2" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="367.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="50.0" y="40.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s3" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="613.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="321.0" y="261.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s4" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="748.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="456.0" y="261.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="207.0" y="482.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s6" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="749.0" y="339.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="457.0" y="123.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="940.0" y="343.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="648.0" y="127.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s8" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="939.0" y="270.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="647.0" y="54.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s9" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="638.0" y="676.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="346.0" y="460.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s10" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="689.0" y="676.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="397.0" y="460.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s11" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="945.0" y="421.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="653.0" y="205.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s12" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="382.5" y="337.5" w="54.0" h="43.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="90.5" y="121.5"/>
        <celldesigner:boxSize width="54.0" height="43.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff9999ff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s13" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="308.0" y="344.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="16.0" y="128.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa43" species="s45" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1009.25" y="768.710552944251" w="107.0" h="44.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="717.25" y="552.710552944251"/>
        <celldesigner:boxSize width="107.0" height="44.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa45" species="s47" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="888.25" y="773.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="596.25" y="557.710552944251"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa46" species="s48" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="892.25" y="681.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="600.25" y="465.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa48" species="s50" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1179.25" y="589.710552944251" w="100.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="887.25" y="373.71055294425105"/>
        <celldesigner:boxSize width="100.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa49" species="s51" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1022.25" y="589.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="730.25" y="373.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa50" species="s52" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="889.25" y="587.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="597.25" y="371.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa53" species="s3" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="798.75" y="591.210552944251" w="37.0" h="34.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="506.75" y="375.21055294425105"/>
        <celldesigner:boxSize width="37.0" height="34.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff9999ff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa56" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1242.0" y="771.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="950.0" y="555.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa57" species="s58" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1258.0" y="691.0" w="155.0" h="38.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="966.0" y="475.0"/>
        <celldesigner:boxSize width="155.0" height="38.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa59" species="s60" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1496.0" y="692.0" w="170.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1204.0" y="476.0"/>
        <celldesigner:boxSize width="170.0" height="37.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa60" species="s61" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1325.0" y="579.0" w="153.0" h="39.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1033.0" y="363.0"/>
        <celldesigner:boxSize width="153.0" height="39.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa61" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1534.0" y="578.0" w="168.0" h="41.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1242.0" y="362.0"/>
        <celldesigner:boxSize width="168.0" height="41.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa62" species="s16" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1431.375" y="286.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1139.375" y="70.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa63" species="s15" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1188.375" y="328.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="896.375" y="112.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa64" species="s17" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1505.375" y="194.70785932873258" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1213.375" y="-21.29214067126742"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa65" species="s14" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1322.375" y="328.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1030.375" y="112.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa66" species="s18" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1554.375" y="286.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1262.375" y="70.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa67" species="s19" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1612.375" y="194.70785932873258" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1320.375" y="-21.29214067126742"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa68" species="s20" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1699.375" y="284.70785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1407.375" y="68.70785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa69" species="s21" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1698.125" y="368.45785932873264" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1406.125" y="152.45785932873264"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa70" species="s22" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1848.375" y="284.70785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1556.375" y="68.70785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa71" species="s23" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1859.125" y="363.45785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1567.125" y="147.45785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa72" species="s24" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1189.375" y="409.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="897.375" y="193.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa73" species="s25" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1322.375" y="409.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1030.375" y="193.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa74" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1380.0" y="839.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1088.0" y="623.5"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa75" species="s64" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1592.0" y="839.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1300.0" y="623.5"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa76" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1544.0" y="481.0" w="112.0" h="44.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1252.0" y="265.0"/>
        <celldesigner:boxSize width="112.0" height="44.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa77" species="s66" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1362.0" y="480.0" w="93.0" h="45.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1070.0" y="264.0"/>
        <celldesigner:boxSize width="93.0" height="45.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa107" species="s91" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="420.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="128.25959697708493" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa108" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.0095969770849" y="1017.6788796346376" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.0095969770849" y="801.6788796346376"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa109" species="s92" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.2595969770849" y="1192.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.2595969770849" y="976.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa110" species="s93" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="659.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="367.2595969770849" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa111" species="s39" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="822.0095969770849" y="1010.6788796346376" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="530.0095969770849" y="794.6788796346376"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa112" species="s94" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="813.2595969770849" y="1192.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="521.2595969770849" y="976.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa113" species="s95" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="811.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="519.2595969770849" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa114" species="s96" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="979.2595969770849" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="687.2595969770849" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa115" species="s97" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="900.2595969770849" y="1364.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="608.2595969770849" y="1148.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa116" species="s98" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="420.2595969770849" y="1407.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="128.25959697708493" y="1191.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa117" species="s99" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1104.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="812.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa118" species="s100" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1139.259596977085" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="847.259596977085" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa119" species="s101" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1144.259596977085" y="1364.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="852.259596977085" y="1148.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa120" species="s102" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1146.259596977085" y="1505.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="854.259596977085" y="1289.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa121" species="s103" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="904.2595969770849" y="1505.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="612.2595969770849" y="1289.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa122" species="s104" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1269.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="977.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa123" species="s43" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1293.259596977085" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1001.259596977085" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa124" species="s105" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1335.259596977085" y="1355.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1043.259596977085" y="1139.9288796346377"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa125" species="s42" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1323.759596977085" y="1622.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="35.75959697708504" y="70.42887963463772"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa126" species="s37" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.2595969770849" y="752.4288796346377" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.2595969770849" y="536.4288796346377"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa128" species="s106" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="949.2595969770849" y="1774.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="657.2595969770849" y="1558.9288796346377"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa129" species="s115" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1323.259596977085" y="1772.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="35.25959697708504" y="220.92887963463772"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa130" species="s44" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1434.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1142.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa131" species="s107" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1478.259596977085" y="1622.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="190.25959697708504" y="70.42887963463772"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa132" species="s108" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1515.259596977085" y="1772.9288796346377" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="227.25959697708504" y="220.92887963463772"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa133" species="s49" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1525.259596977085" y="1348.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1233.259596977085" y="1132.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa134" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="966.2595969770849" y="1864.4288796346377" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="674.2595969770849" y="1648.4288796346377"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa136" species="s116" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1027.25" y="451.71055294425105" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="735.25" y="235.71055294425105"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa137" species="s117" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1099.0" y="679.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="807.0" y="463.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa138" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1486.0" y="394.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1194.0" y="178.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa139" species="s118" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1601.0" y="413.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1309.0" y="197.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa140" species="s48" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1728.0" y="524.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1436.0" y="308.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa141" species="s47" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1729.0" y="644.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1437.0" y="428.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa142" species="s119">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="52.0" y="807.5" w="134.0" h="33.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="134.0" height="33.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr4" name="Ca_B" type="GENERIC"/>
    <celldesigner:protein id="pr5" name="IP3" type="GENERIC"/>
    <celldesigner:protein id="pr28" name="eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr29" name="CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr30" name="CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr12" name="eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr31" name="eNOS-Cav-1" type="GENERIC"/>
    <celldesigner:protein id="pr1" name="Calmodulin" type="GENERIC"/>
    <celldesigner:protein id="pr36" name="Hsp90" type="GENERIC"/>
    <celldesigner:protein id="pr37" name="Hsp90-eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr39" name="Hsp90-p-eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr40" name="Hsp90-eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr41" name="Hsp90-p-eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr6" name="AKT" type="GENERIC"/>
    <celldesigner:protein id="pr9" name="PP2A" type="GENERIC"/>
    <celldesigner:protein id="pr7" name="PDK1" type="GENERIC"/>
    <celldesigner:protein id="pr8" name="PTEN" type="GENERIC"/>
    <celldesigner:protein id="pr3" name="p-PI3K" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr2" name="PI3K" type="GENERIC"/>
    <celldesigner:protein id="pr15" name="Time" type="GENERIC"/>
    <celldesigner:protein id="pr10" name="PDK2" type="GENERIC"/>
    <celldesigner:protein id="pr11" name="PDK1_cyto" type="GENERIC"/>
    <celldesigner:protein id="pr42" name="Hsp90-p-eNOS" type="GENERIC"/>
    <celldesigner:protein id="pr43" name="Hsp90-eNOS" type="GENERIC"/>
    <celldesigner:protein id="pr57" name="Shc" type="GENERIC"/>
    <celldesigner:protein id="pr58" name="p-Src" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr59" name="p-FAK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr60" name="Src" type="GENERIC"/>
    <celldesigner:protein id="pr61" name="FAK" type="GENERIC"/>
    <celldesigner:protein id="pr14" name="JNKK" type="GENERIC"/>
    <celldesigner:protein id="pr62" name="MEKK1" type="GENERIC"/>
    <celldesigner:protein id="pr63" name="p-Shc" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.44" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr16" name="JNK" type="GENERIC"/>
    <celldesigner:protein id="pr64" name="p-JNKK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr13" name="p-MEKK1" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.44" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr65" name="Ras:GTP" type="GENERIC"/>
    <celldesigner:protein id="pr66" name="Ras:GDP" type="GENERIC"/>
    <celldesigner:protein id="pr17" name="p-JNK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.4" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr67" name="pp-JNKK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.29" id="rs1" name="p" side="none"/>
        <celldesigner:modificationResidue angle="2.52" id="rs2" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr18" name="AP-1" type="GENERIC"/>
    <celldesigner:protein id="pr68" name="pp-JNK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.29" id="rs1" name="p" side="none"/>
        <celldesigner:modificationResidue angle="2.52" id="rs2" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr69" name="aAP-1" type="GENERIC"/>
    <celldesigner:protein id="pr32" name="KLF2" type="GENERIC"/>
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes>
    <celldesigner:gene id="gn1" name="eNOS" type="GENE"/>
  </celldesigner:listOfGenes>
  <celldesigner:listOfRNAs>
    <celldesigner:RNA id="rn2" name="KLF2" type="RNA"/>
    <celldesigner:RNA id="rn1" name="eNOS" type="RNA"/>
  </celldesigner:listOfRNAs>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_4" name="default" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="Cell" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Cell</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_6" name="ER" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>ER</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_7" name="nucleus" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>nucleus</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_78" name="Ca_ex" simulationType="reactions" compartment="Compartment_4">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_ex</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="s5" simulationType="reactions" compartment="Compartment_4">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s5</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_156" name="Shear Stress" simulationType="reactions" compartment="Compartment_4">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Shear Stress</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5"/>
    <celldesigner:catalyzed reaction="re57"/>
    <celldesigner:catalyzed reaction="re102"/>
    <celldesigner:catalyzed reaction="re103"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="Ca_c" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_c</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5"/>
    <celldesigner:catalyzed reaction="re41"/>
    <celldesigner:catalyzed reaction="re42"/>
    <celldesigner:catalyzed reaction="re50"/>
    <celldesigner:catalyzed reaction="re52"/>
    <celldesigner:catalyzed reaction="re54"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="Ca_B" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="IP3" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re7"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="s7" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s7</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="s8" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s8</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="s9" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s9</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="s10" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s10</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="s11" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s11</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="TimeT" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>TimeT</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="s13" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s13</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="PDK1" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re61"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="PP2A" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re63"/>
    <celldesigner:catalyzed reaction="re64"/>
    <celldesigner:catalyzed reaction="re65"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="AKT" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="PI3P" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>outerSurface</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re66"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="PTEN" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re59"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_96" name="PIP2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>outerSurface</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>PIP2</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="p-PI3K" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re58"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_98" name="s3" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s3</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="PI3K" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_100" name="Time" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re57"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="PDK2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re62"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_102" name="PDK1_cyto" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="p-AKT:PI3P" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_104" name="pp-AKT:PI3P" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>pp-AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re55"/>
    <celldesigner:catalyzed reaction="re56"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="AKT:PI3P" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="s35" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s35</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="s37" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s37</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="pre_time" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>pre_time</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="Time_2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re102"/>
    <celldesigner:catalyzed reaction="re103"/>
    <celldesigner:catalyzed reaction="re129"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="pp-JNKK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr67</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re118"/>
    <celldesigner:catalyzed reaction="re126"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_112" name="pp-JNK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr68</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re127"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr28</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_114" name="CaM-Ca4" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr29</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="CaM-Ca2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr30</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="KLF2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr32</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re111"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="eNOS-Cav-1" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr31</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="Calmodulin" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="Hsp90" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr36</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="Hsp90-eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr37</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="Hsp90-p-eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr39</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="Hsp90-eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr40</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="Hsp90-p-eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr41</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="L-Arg" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>L-Arg</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="NO" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>NO</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="Hsp90-p-eNOS" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr42</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="Hsp90-eNOS" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr43</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="Shc" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr57</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_130" name="p-Src" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr58</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re105"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="p-FAK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr59</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_132" name="Src" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr60</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="FAK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr61</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_134" name="JNKK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="MEKK1" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr62</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_136" name="p-Shc" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr63</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="JNK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr16</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_138" name="p-JNKK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr64</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="p-MEKK1" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re116"/>
    <celldesigner:catalyzed reaction="re124"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_140" name="Ras:GTP" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr65</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re114"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="Ras:GDP" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr66</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_142" name="p-JNK" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="KLF2_2" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn2</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_144" name="eNOS" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn1</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re121"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="p-FAK:Shc" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:Shc</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_148" name="Grb2:Sos" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="p-FAK:p-Shc" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:p-Shc</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_150" name="p-FAK:p-Shc:Grb2:Sos" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:p-Shc:Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="p-Shc:Grb2:Sos" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-Shc:Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re112"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="sa49_degraded" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>sa49_degraded</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_154" name="s117" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s117</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="s118" simulationType="reactions" compartment="Compartment_5">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s118</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="Ca_s" simulationType="reactions" compartment="Compartment_6">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_s</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_110" name="AP-1" simulationType="reactions" compartment="Compartment_7">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr18</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="aAP-1" simulationType="reactions" compartment="Compartment_7">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr69</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re111"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_146" name="eNOS" simulationType="reactions" compartment="Compartment_7">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>GENE</celldesigner:class>
    <celldesigner:geneReference>gn1</celldesigner:geneReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_152" name="eNOS_2" simulationType="reactions" compartment="Compartment_7">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn1</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_47" name="R_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="k5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="k7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="K1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="K2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="K3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="K4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="K5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="K_hi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k_CICR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="K_CICR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k_CCE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="B_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="Vc_Vs" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="dot_Vp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="dot_Vex" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="dot_Vhi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="dot_q_inpass" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="dot_q_instim" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="Cao" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="tau_I" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="tau_II" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="half" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="fracK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="alp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="gam" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="k8" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="k11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="k12" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="k13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="k14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="k15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="k16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="k17" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="k18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="Kmp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="Kmdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="Vdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="k90" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="kr90" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kDD" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_38" name="re1" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>re1</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa4">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_659" name="B_T" value="1"/>
          <Constant key="Parameter_660" name="k6" value="1"/>
          <Constant key="Parameter_661" name="k7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_114">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="re4" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa5">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s2" alias="sa2">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s1" aliases="sa1" targetLineIndex="-1,3" editPoints="0.5870844032352514,-0.24174976941010584 0.7301324392157968,0.10571653442838036">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
          <celldesigner:lineDirection index="2" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s1" alias="sa1">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_662" name="Cao" value="1"/>
          <Constant key="Parameter_663" name="K3" value="1"/>
          <Constant key="Parameter_664" name="fracK" value="1"/>
          <Constant key="Parameter_665" name="k_CCE" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_115">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="re5" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s7" alias="sa7">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s6" alias="sa6">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa3" targetLineIndex="-1,2" editPoints="0.12092038307728559,-0.2461409594340318 0.935779512304322,0.1475904760437836">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
          <celldesigner:lineDirection index="2" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa3">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s12,s119" aliases="sa12,sa142" modificationType="CATALYSIS" targetLineIndex="-1,3" editPoints="0.008483696257246987,0.06457456950253848 0.9915163037427539,-0.06457456950253648 648.0003759511713,322.0964991735758">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s12" aliases="sa12" targetLineIndex="-1,0" editPoints="0.004153870721999686,-0.06431653037924567">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s12" alias="sa12">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s119" aliases="sa142" targetLineIndex="-1,0" editPoints="0.4586734123381041,0.4982891862686003">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s119" alias="sa142">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_666" name="K1" value="1"/>
          <Constant key="Parameter_667" name="R_T" value="1"/>
          <Constant key="Parameter_695" name="half" value="1"/>
          <Constant key="Parameter_696" name="k1" value="1"/>
          <Constant key="Parameter_697" name="tau_I" value="1"/>
          <Constant key="Parameter_698" name="tau_II" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_983">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_984">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_985">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_986">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_987">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_988">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_989">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_990">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_991">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="re6" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa6">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s8" alias="sa8">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.108236516833081,-0.30314390705616034</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_741" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_117">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="re7" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s2" alias="sa2">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s6" aliases="sa6" targetLineIndex="-1,2" editPoints="0.7313012214488868,0.44565948834230174">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s6" alias="sa6">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_742" name="K2" value="1"/>
          <Constant key="Parameter_743" name="K3" value="1"/>
          <Constant key="Parameter_744" name="K_CICR" value="1"/>
          <Constant key="Parameter_745" name="k3" value="1"/>
          <Constant key="Parameter_746" name="k4" value="1"/>
          <Constant key="Parameter_801" name="k5" value="1"/>
          <Constant key="Parameter_802" name="k_CICR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_118">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1010">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1011">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1012">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1013">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1014">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1015">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1016">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1017">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1018">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1019">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1020">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1021">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="re8" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s9" alias="sa9">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_803" name="K_hi" value="1"/>
          <Constant key="Parameter_804" name="dot_Vhi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_119">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1009">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1007">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1006">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="re9" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s10" alias="sa10">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.22165017357843997,-0.16496430061432266</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_805" name="K5" value="1"/>
          <Constant key="Parameter_806" name="dot_Vex" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_120">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1034">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1035">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1036">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1037">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="re10" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s11" alias="sa11">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.7667134752900213,0.1295424925726123</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_807" name="dot_q_inpass" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_121">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1005">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="re11" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s13" alias="sa13">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s12" alias="sa12">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_808" name="unisec" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_122">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1044">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1045">
              <SourceParameter reference="Parameter_808"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="re12" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s9" alias="sa9">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_809" name="K4" value="1"/>
          <Constant key="Parameter_810" name="dot_Vp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_123">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1050">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1051">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1052">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1053">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="re37" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s47" alias="sa45">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s45" alias="sa43">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="1" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="2" value="unknown"/>
      <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="2" num2="0" tShapeIndex="0">0.5453666187072295,0.3578155033912864 0.8484633221065794,-0.09642323355609506 -0.001232235274787108,0.6697609463567016</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_811" name="k15" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_124">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1058">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1059">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1060">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1061">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="re38" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s48" alias="sa46">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="1" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="2" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="3" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="3" num1="0" num2="0" tShapeIndex="0">-0.12441832828528421,0.19344291051328533 0.46852029703696196,0.5656478145251889 0.8768987676458146,-0.07007199661977648 0.6840015620932078,0.3268680031241864</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_812" name="k17" value="1"/>
          <Constant key="Parameter_817" name="k18" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_125">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1068">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1069">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1070">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1071">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1072">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1073">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="re41" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s52" alias="sa50">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.31731374606505547,0.2526757607555048 0.7053515215110178,-0.2346274921301177</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,3" editPoints="0.10070703764728339,0.30094040974185043">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_816" name="k11" value="1"/>
          <Constant key="Parameter_815" name="k12" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_126">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1080">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1081">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1082">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1083">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1084">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1085">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="re42" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s48" alias="sa46">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s47" alias="sa45">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.3249999999999922,0.2249999999999952 0.6489999999999903,-0.24300000000000566</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,3" editPoints="0.5141287842118762,0.4998003375916171">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_813" name="k13" value="1"/>
          <Constant key="Parameter_814" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_127">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1092">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1093">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1094">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1095">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1096">
              <SourceParameter reference="Metabolite_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1097">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="re50" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>-0.05082399068798449,0.04624149972431457 0.4020706977883969,0.5440176438154749</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="0.061849690420585635,0.24088234932319885">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_818" name="gam" value="1"/>
          <Constant key="Parameter_819" name="k13" value="1"/>
          <Constant key="Parameter_822" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_128">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1105">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1106">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1107">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1108">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1109">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1110">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1111">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="re51" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s57" alias="sa56">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s58" alias="sa57">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.4868511066528125,0.0033024676586554946 0.48689711798846247,-0.003480541895148903 0.4038461538461533,-0.019230769230766498 0.4061085972850691,0.02828054298642968 0.8237868451538124,-0.38100141588364167 0.7076697004171066,0.011341588207329778</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_821" name="k90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_129">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1066">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1049">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1003">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1119">
              <SourceParameter reference="Metabolite_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="re52" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s61" alias="sa60">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.2751161590087756,-0.2487351574599881 0.7248838409912217,0.24873515745999164</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="0.0334789140302616,-0.0016696254934467358 0.035959856034841975,0.04807760489528978">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_820" name="gam" value="1"/>
          <Constant key="Parameter_823" name="k13" value="1"/>
          <Constant key="Parameter_824" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_130">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1127">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1128">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1129">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1130">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1131">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1132">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1133">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="re53" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa56">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.8807959958372176,-0.32402840856063975 -0.0017517136329097127,0.002132520944405414 0.5953541507997144,0.4926123381568708 0.15480991455010873,-0.05638837001290753 0.2719423329037931,0.2651896375129539 0.39211788957793736,0.2172191926376601</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_825" name="kr90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_131">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1124">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1048">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="re54" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s60" alias="sa59">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s62" alias="sa61">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.4250522544042332,-0.21543744401310505 0.6294416243654211,0.18781725888327827</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="-0.0011986944586066528,-0.021296291675683254 0.5050642675940327,-0.04979207941432351 0.5094211304049809,0.027612984525593354">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
          <celldesigner:lineDirection index="3" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_826" name="gam" value="1"/>
          <Constant key="Parameter_827" name="k13" value="1"/>
          <Constant key="Parameter_828" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_132">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1147">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1148">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1149">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1150">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1151">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1152">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1153">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="re55" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s60" alias="sa59">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s27" aliases="csa3" targetLineIndex="-1,2" editPoints="0.20435999115897863,0.38521549523605036 0.984732691422848,-0.028778645962525773">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s27" alias="csa3">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_829" name="Kmdp" value="1"/>
          <Constant key="Parameter_830" name="Kmp" value="1"/>
          <Constant key="Parameter_831" name="Vdp" value="1"/>
          <Constant key="Parameter_832" name="kp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_133">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1162">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1163">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1164">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1165">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1166">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1167">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1168">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1169">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="re56" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s62" alias="sa61">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s27" aliases="csa3" targetLineIndex="-1,3" editPoints="0.07969945861237404,0.2952167197776825 1.0117671613630876,0.043587031068816784">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s27" alias="csa3">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_833" name="Kmdp" value="1"/>
          <Constant key="Parameter_834" name="Kmp" value="1"/>
          <Constant key="Parameter_835" name="Vdp" value="1"/>
          <Constant key="Parameter_836" name="kp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_134">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1178">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1179">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1180">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1181">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1182">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1183">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1184">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1185">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="re57" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s22" alias="sa70">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s20" alias="sa68">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s23,s119" aliases="sa71,sa142" modificationType="CATALYSIS" targetLineIndex="-1,2" editPoints="0.730805636725087,-0.4435411571161456 1856.5,335.58785932872956">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s23" aliases="sa71" targetLineIndex="-1,0" editPoints="0.15901402786845154,0.24319960308187305 0.8595350577722556,-0.21483021752625753">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s23" alias="sa71">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s119" aliases="sa142" targetLineIndex="-1,0" editPoints="0.10175379772358789,-0.3746401253700513 1.0330529815448093,-0.12169543964776097">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s119" alias="sa142">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_100" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_837" name="normal" value="0.907"/>
          <Constant key="Parameter_838" name="unity" value="1"/>
          <Constant key="Parameter_839" name="unimol" value="1"/>
          <Constant key="Parameter_840" name="tf" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_135">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1145">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1161">
              <SourceParameter reference="Parameter_837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1194">
              <SourceParameter reference="Metabolite_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1195">
              <SourceParameter reference="Parameter_840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1196">
              <SourceParameter reference="Parameter_839"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1197">
              <SourceParameter reference="Parameter_838"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="re58" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s19" alias="sa67">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa64">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s20" aliases="sa68" targetLineIndex="-1,3" editPoints="0.3254875461890627,0.542519370788793 1.0608104562837468,0.1013582573794527">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s20" alias="sa68">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_841" name="k58" value="0.2"/>
          <Constant key="Parameter_842" name="Km58" value="6170"/>
        </ListOfConstants>
        <KineticLaw function="Function_136">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1146">
              <SourceParameter reference="Parameter_842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1204">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1205">
              <SourceParameter reference="Parameter_841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1206">
              <SourceParameter reference="Metabolite_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1207">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="re59" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s17" alias="sa64">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s19" alias="sa67">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s18" aliases="sa66" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s18" alias="sa66">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_96" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_843" name="k59" value="7.5"/>
          <Constant key="Parameter_844" name="Km59" value="80.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_137">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1213">
              <SourceParameter reference="Parameter_844"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1214">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1215">
              <SourceParameter reference="Parameter_843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1216">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1217">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="re60" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s17" alias="sa64">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s16" alias="sa62">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="csa2">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.16292541636495628,-0.36929761042723186 0.5,0.0 0.5,3.552713678800501E-15 0.35082934358552365,-0.001270991753500983 0.3509657143667759,0.002351334743991629 0.15847676803710042,0.3446000178364379</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_845" name="k60" value="0.045"/>
          <Constant key="Parameter_846" name="kr60" value="0.089"/>
        </ListOfConstants>
        <KineticLaw function="Function_138">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1224">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1225">
              <SourceParameter reference="Parameter_845"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1226">
              <SourceParameter reference="Parameter_846"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1227">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1228">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1229">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="re61" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s28" alias="csa2">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s26" alias="csa1">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s14" aliases="sa65" targetLineIndex="-1,3" editPoints="1.1701225395112274,0.4629197118451893 1.3054538779800096,0.12084257537297383">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s14" alias="sa65">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_847" name="k61" value="20"/>
          <Constant key="Parameter_848" name="Km61" value="80000"/>
        </ListOfConstants>
        <KineticLaw function="Function_139">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1125">
              <SourceParameter reference="Parameter_848"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1236">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1237">
              <SourceParameter reference="Parameter_847"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1238">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1239">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="re62" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s26" alias="csa1">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s27" alias="csa3">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.0834670431936333,0.2765868686220396</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s24" aliases="sa72" targetLineIndex="-1,2" editPoints="0.022749856491216303,-0.14910499830939639">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s24" alias="sa72">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_849" name="k62" value="20"/>
          <Constant key="Parameter_850" name="Km62" value="80000"/>
        </ListOfConstants>
        <KineticLaw function="Function_140">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1245">
              <SourceParameter reference="Parameter_850"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1246">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1247">
              <SourceParameter reference="Parameter_849"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1248">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1249">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="re63" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s26" alias="csa1">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="csa2">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="-1,3" editPoints="0.32380017932634253,-0.24633681954897035 0.6903948799260009,0.23553767250462165">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_863" name="k63" value="0.037"/>
          <Constant key="Parameter_864" name="Km63" value="8800"/>
        </ListOfConstants>
        <KineticLaw function="Function_141">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1255">
              <SourceParameter reference="Parameter_864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1256">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1257">
              <SourceParameter reference="Parameter_863"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1258">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1259">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="re64" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s27" alias="csa3">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s26" alias="csa1">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.9750971949631848,-0.1558289297213893</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="-1,3" editPoints="0.46451894165016494,0.14451494560039535 0.5527651862258152,-0.13913773796516615">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="NNW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_755" name="k64" value="0.04"/>
          <Constant key="Parameter_756" name="Km64" value="48000"/>
        </ListOfConstants>
        <KineticLaw function="Function_142">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1265">
              <SourceParameter reference="Parameter_756"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1266">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1267">
              <SourceParameter reference="Parameter_755"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1268">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1269">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="re65" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s27" alias="csa3">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa64">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s16" alias="sa62">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.31134239628529414,0.27204469681914434 0.744284068716333,-0.22343941534433354 0.127957993946902,-0.21425524567853937 0.8650545388068505,0.22595519083504456 0.30455707625274897,0.4602195818923036 0.82649165617131,-0.1633540617128304</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="0,3" editPoints="0.03851070414214952,-0.13863070052721405 0.966869949772736,0.11926144104129754">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="NNE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_104" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_94" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_757" name="k65" value="0.163"/>
          <Constant key="Parameter_758" name="Km65" value="48000"/>
        </ListOfConstants>
        <KineticLaw function="Function_143">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1275">
              <SourceParameter reference="Parameter_758"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1276">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1277">
              <SourceParameter reference="Parameter_757"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1278">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1279">
              <SourceParameter reference="Metabolite_104"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="re66" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s25" alias="sa73">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s14" alias="sa65">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s17" aliases="sa64" targetLineIndex="-1,3" editPoints="0.5106060321925066,-0.4998874994247524">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s17" alias="sa64">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_759" name="k66" value="0.0007"/>
        </ListOfConstants>
        <KineticLaw function="Function_144">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1143">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1285">
              <SourceParameter reference="Parameter_759"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1286">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1287">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="re67" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s14" alias="sa65">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s25" alias="sa73">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_760" name="k67" value="0.98"/>
        </ListOfConstants>
        <KineticLaw function="Function_145">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1223">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1292">
              <SourceParameter reference="Parameter_760"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1293">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="re68" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s21" alias="sa69">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s23" alias="sa71">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_100" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_761" name="unitime" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_146">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1126">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1297">
              <SourceParameter reference="Parameter_761"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="re69" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s63" alias="sa74">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s64" alias="sa75">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s45,s65" aliases="sa43,sa76" modificationType="CATALYSIS" targetLineIndex="-1,3" editPoints="1521.0,849.4351382360627">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s50" aliases="sa48" targetLineIndex="-1,2" editPoints="0.23246732641423629,0.2853958814847629 0.8336163913780754,-0.20426611076799606">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s50" alias="sa48">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s61" aliases="sa60" targetLineIndex="-1,2" editPoints="0.0314211105911002,-0.17445292889579722">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s61" alias="sa60">
        <celldesigner:linkAnchor position="ESE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s62" aliases="sa61" targetLineIndex="-1,2" editPoints="0.6880390016005284,-0.16598160045628862 0.7430345618589447,0.06198999560400864">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s62" alias="sa61">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s58" aliases="sa57" targetLineIndex="-1,2" editPoints="0.06834266243603881,0.10744608765052227 0.7803001283825237,-0.34540491723910455">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s58" alias="sa57">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s60" aliases="sa59" targetLineIndex="-1,2" editPoints="0.3770680148828701,-0.19174574873270522 0.5825282331874334,0.2122917705632208">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s60" alias="sa59">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s45" aliases="sa43" targetLineIndex="-1,0" editPoints="0.004135501478698345,0.04859057968604108 0.9954711322264256,-0.05321248500886577">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s45" alias="sa43">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s65" aliases="sa76" targetLineIndex="-1,0" editPoints="-0.021484016776921633,-0.05513198757021254 0.7458970384229011,-0.35416759631202854 0.8992147945127511,0.039274314984490744">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
          <celldesigner:lineDirection index="3" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s65" alias="sa76">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_124" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_122" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_762" name="K_cam_no" value="17"/>
          <Constant key="Parameter_763" name="K_p_no" value="5"/>
          <Constant key="Parameter_764" name="K_pcam_no" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_147">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1307">
              <SourceParameter reference="Parameter_762"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1308">
              <SourceParameter reference="Parameter_763"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1309">
              <SourceParameter reference="Parameter_764"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1310">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1311">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1312">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1313">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1314">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1315">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="re70" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s65" alias="sa76">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s66" alias="sa77">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_865" name="Kmdp" value="1"/>
          <Constant key="Parameter_866" name="Vdp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_148">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1104">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1300">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1305">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1302">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="re71" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s66" alias="sa77">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s51" alias="sa49">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa56">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="2" tShapeIndex="0">0.3244270862118137,-0.4681603912591541 0.9822532889313855,0.1320294107949498 0.5259641260045163,0.010004574806173672 0.5263258088570621,-0.009009946961673343 0.35080815167434665,0.07140456508108617</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_499" name="kr90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_149">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1301">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1328">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1329">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="re72" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s62" alias="sa61">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s65" alias="sa76">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9978295033580737,-0.04653800152835985 0.005042920444222165,-0.0485381092756354 0.9943637947976351,0.05424847507276964 0.2213445262553897,-0.44245339062588007 1.021174077082086,-0.04232561047176242 0.9404420617096321,0.5068494974687949</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_498" name="k17" value="1"/>
          <Constant key="Parameter_497" name="k18" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_150">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1336">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1337">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1338">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1339">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1340">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1341">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="re102" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s95" alias="sa113">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s93" alias="sa110">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s39,s119" aliases="sa111,sa142" modificationType="CATALYSIS" targetLineIndex="-1,3" editPoints="0.8573417553268641,0.3497239910270906 847.259596977085,1070.0488796346372">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s39" aliases="sa111" targetLineIndex="-1,0" editPoints="-0.14839694242474377,-0.10671027622396778 0.10481405350283413,-0.4588388519678084 0.9123695107124596,0.12186358365488914">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
          <celldesigner:lineDirection index="3" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s39" alias="sa111">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s119" aliases="sa142" targetLineIndex="-1,0" editPoints="0.04558044320855875,0.14460708871215489 0.9552069575904516,-0.1421090055611538">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s119" alias="sa142">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_496" name="normal" value="4"/>
          <Constant key="Parameter_495" name="tf" value="60"/>
          <Constant key="Parameter_494" name="unity" value="1"/>
          <Constant key="Parameter_493" name="unimol" value="1"/>
          <Constant key="Parameter_492" name="tiny_num" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_151">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1349">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1350">
              <SourceParameter reference="Parameter_496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1351">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1352">
              <SourceParameter reference="Parameter_495"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1353">
              <SourceParameter reference="Parameter_492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1354">
              <SourceParameter reference="Parameter_493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1355">
              <SourceParameter reference="Parameter_494"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="re103" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s94" alias="sa112">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s92" alias="sa109">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s39,s119" aliases="sa111,sa142" modificationType="CATALYSIS" targetLineIndex="-1,3" editPoints="0.12161558098232317,-0.21451676147446364 0.8783844190176773,0.21451676147446896 853.7595969770848,1154.0488796346376">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s39" aliases="sa111" targetLineIndex="-1,0" editPoints="-0.08858723950035241,-0.22650793237633948 0.8173533073787933,-0.5808212288578094 1.0386071409610498,-0.015099250639302397">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
          <celldesigner:lineDirection index="3" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s39" alias="sa111">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s119" aliases="sa142" targetLineIndex="-1,0" editPoints="0.1482659447695187,0.3474412855540109 0.9942150553085163,-0.013556239253675773">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s119" alias="sa142">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_132" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_156" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_491" name="normal" value="0.026"/>
          <Constant key="Parameter_490" name="tf" value="540"/>
          <Constant key="Parameter_489" name="unity" value="1"/>
          <Constant key="Parameter_488" name="unimol" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_152">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1335">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1363">
              <SourceParameter reference="Parameter_491"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1364">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1365">
              <SourceParameter reference="Parameter_490"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1366">
              <SourceParameter reference="Parameter_488"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1367">
              <SourceParameter reference="Parameter_489"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="re104" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s91" alias="sa107">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s93" alias="sa110">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s110" alias="csa9">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="2" tShapeIndex="0">0.3888888888888897,4.440892098500626E-16 0.3888888888888893,4.440892098500626E-16 0.470588235294116,8.881784197001252E-16 0.47058823529411953,8.881784197001252E-16 0.51039205285239,-0.003544389255920599 0.5104402758354638,0.0033997203066991055 0.6192468619246871,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_487" name="k105" value="0.1"/>
          <Constant key="Parameter_486" name="k_105" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_153">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1374">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1375">
              <SourceParameter reference="Parameter_487"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1376">
              <SourceParameter reference="Parameter_486"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1377">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1378">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1379">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="re105" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s110" alias="csa9">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s112" alias="csa11">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s92" aliases="sa109" targetLineIndex="-1,2" editPoints="0.46792072254721795,-0.4989698587671487">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s92" alias="sa109">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_130" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_485" name="kcat_src" value="8.33"/>
          <Constant key="Parameter_484" name="k_6" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_154">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1386">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1387">
              <SourceParameter reference="Parameter_484"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1388">
              <SourceParameter reference="Parameter_485"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1389">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1390">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1391">
              <SourceParameter reference="Metabolite_130"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="re106" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s112" alias="csa11">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s111" alias="csa10">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s113" alias="csa12">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="2" tShapeIndex="0">0.9564114948080178,-0.20417773484665513 0.9513280302008891,0.2151813401644862 0.49999999999999467,0.0 0.49999999999999467,1.7763568394002505E-15 0.33288337692286174,0.35293455946455143</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_483" name="k107" value="60"/>
          <Constant key="Parameter_482" name="k_107" value="546"/>
        </ListOfConstants>
        <KineticLaw function="Function_155">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1398">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1399">
              <SourceParameter reference="Parameter_483"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1400">
              <SourceParameter reference="Parameter_482"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1401">
              <SourceParameter reference="Metabolite_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1402">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1403">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="re107" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s113" alias="csa12">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s114" alias="csa13">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s93" alias="sa110">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="1" tShapeIndex="0">0.9880818752063387,0.10851766259491624 0.12198038746711326,0.19732121502033007 0.8454915092083244,-0.24994020569241737 0.8816918276655428,-0.32297267484005165 1.4753499471081701,0.2728234396910132</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_150" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_481" name="k108" value="2040"/>
          <Constant key="Parameter_480" name="k_108" value="15700"/>
        </ListOfConstants>
        <KineticLaw function="Function_156">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1410">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1411">
              <SourceParameter reference="Parameter_481"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1412">
              <SourceParameter reference="Parameter_480"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1413">
              <SourceParameter reference="Metabolite_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1414">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1415">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="re108" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s98" alias="sa116">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s91" alias="sa107">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_136" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_479" name="V10" value="154"/>
          <Constant key="Parameter_478" name="K10" value="340"/>
        </ListOfConstants>
        <KineticLaw function="Function_157">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1304">
              <SourceParameter reference="Parameter_478"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1306">
              <SourceParameter reference="Parameter_479"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1422">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1423">
              <SourceParameter reference="Metabolite_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="re109" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s114" alias="csa13">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s98" alias="sa116">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s111" alias="csa10">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="3" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="3" tShapeIndex="0">0.22218312552589392,0.5047655473112513 1.0598791402126517,0.13603610494913054 0.4999999999999982,0.0 0.4999999999999982,8.881784197001252E-16 -0.09741676599990393,0.2247609397364556 0.8359416402339238,0.6293007924383449 1.0915057261013559,0.03966076987273448 0.6148895606652705,-0.22305901684239304</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_136" stoichiometry="1"/>
          <Product metabolite="Metabolite_148" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_477" name="k9" value="40.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_158">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1334">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1428">
              <SourceParameter reference="Parameter_477"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1429">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="re110" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSPORT</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s115" alias="sa129">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s106" alias="sa128">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_152" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_476" name="kT" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_159">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1433">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1434">
              <SourceParameter reference="Parameter_476"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1435">
              <SourceParameter reference="Metabolite_152"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="re111" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSCRIPTION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s108" alias="sa132">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s115" alias="sa129">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s107" aliases="sa131" targetLineIndex="-1,3" editPoints="0.40212232367541834,-0.2064548748155275 0.6107282759927637,0.19985720841006227">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s107" alias="sa131">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s49" aliases="sa133" targetLineIndex="-1,3" editPoints="0.8215211149178097,-0.26719031385620884 0.9171821753956975,0.026935546934939048">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s49" alias="sa133">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_146" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_152" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_475" name="ktr1" value="0.00012"/>
          <Constant key="Parameter_474" name="ktr1k2" value="9e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_160">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1442">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1443">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1444">
              <SourceParameter reference="Parameter_475"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1445">
              <SourceParameter reference="Parameter_474"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1446">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1447">
              <SourceParameter reference="Metabolite_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="re112" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s103" alias="sa121">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s102" alias="sa120">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s114" aliases="csa13" targetLineIndex="-1,3" editPoints="-0.0026937366737682655,0.04274909329521348 0.9933513636989437,0.10551260495785231">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s114" alias="csa13">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_473" name="k111" value="0.222"/>
          <Constant key="Parameter_472" name="K111" value="0.181"/>
        </ListOfConstants>
        <KineticLaw function="Function_161">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1441">
              <SourceParameter reference="Parameter_472"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1454">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1455">
              <SourceParameter reference="Parameter_473"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1456">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1457">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="re113" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s102" alias="sa120">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s103" alias="sa121">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_471" name="V12" value="0.289"/>
          <Constant key="Parameter_470" name="K12" value="0.0571"/>
        </ListOfConstants>
        <KineticLaw function="Function_162">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1333">
              <SourceParameter reference="Parameter_470"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1463">
              <SourceParameter reference="Parameter_471"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1464">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1465">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="re114" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s97" alias="sa115">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s101" alias="sa119">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s102" aliases="sa120" targetLineIndex="-1,3" editPoints="0.21506786308292902,0.2516125579987105 0.7928983509399572,-0.24229271142037279">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s102" alias="sa120">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_140" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_469" name="k113" value="0.035"/>
          <Constant key="Parameter_468" name="K113" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_163">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1471">
              <SourceParameter reference="Parameter_468"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1472">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1473">
              <SourceParameter reference="Parameter_469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1474">
              <SourceParameter reference="Metabolite_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1475">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="re115" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s101" alias="sa119">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s97" alias="sa115">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_467" name="K18" value="8"/>
          <Constant key="Parameter_466" name="V18" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_164">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1470">
              <SourceParameter reference="Parameter_467"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1481">
              <SourceParameter reference="Parameter_466"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1482">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1483">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="re116" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s96" alias="sa114">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s100" alias="sa118">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s101" aliases="sa119" targetLineIndex="-1,3" editPoints="0.14192464766772517,0.2513772671755907 0.9002128081048326,-0.1767433071700193">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s101" alias="sa119">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_465" name="k19" value="0.005"/>
          <Constant key="Parameter_464" name="K19" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_165">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1489">
              <SourceParameter reference="Parameter_464"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1490">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1491">
              <SourceParameter reference="Parameter_465"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1492">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1493">
              <SourceParameter reference="Metabolite_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="re117" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s100" alias="sa118">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s96" alias="sa114">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_134" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_463" name="K20" value="15"/>
          <Constant key="Parameter_462" name="V20" value="0.375"/>
        </ListOfConstants>
        <KineticLaw function="Function_166">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1488">
              <SourceParameter reference="Parameter_463"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1499">
              <SourceParameter reference="Parameter_462"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1500">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1501">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="re118" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s99" alias="sa117">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s104" alias="sa122">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s43" aliases="sa123" targetLineIndex="-1,3" editPoints="0.22094521283066726,0.25304511416782294 0.7883587228606697,-0.24238946139734097">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s43" alias="sa123">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_461" name="k21" value="0.002"/>
          <Constant key="Parameter_460" name="K21" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_167">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1507">
              <SourceParameter reference="Parameter_460"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1508">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1509">
              <SourceParameter reference="Parameter_461"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1510">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1511">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="re119" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s104" alias="sa122">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s99" alias="sa117">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_459" name="K22" value="15"/>
          <Constant key="Parameter_458" name="V22" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_168">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1506">
              <SourceParameter reference="Parameter_459"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1517">
              <SourceParameter reference="Parameter_458"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1518">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1519">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="re120" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s106" alias="sa128">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s35" alias="sa134">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_457" name="kD" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_169">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1303">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1524">
              <SourceParameter reference="Parameter_457"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1525">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="re121" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s37" alias="sa126">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s51" alias="sa49">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.8698220815743513,0.3364990757491224</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s106" aliases="sa128" targetLineIndex="-1,2" editPoints="0.008936533931400703,-0.09410989476507514">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s106" alias="sa128">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_144" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_456" name="kP" value="0.02824"/>
          <Constant key="Parameter_455" name="K30" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_170">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1530">
              <SourceParameter reference="Parameter_455"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1531">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1532">
              <SourceParameter reference="Parameter_456"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1533">
              <SourceParameter reference="Metabolite_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="re122" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s38" alias="sa108">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s39" alias="sa111">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_454" name="unitime" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_171">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1440">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1529">
              <SourceParameter reference="Parameter_454"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="re123" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s43" alias="sa123">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s100" alias="sa118">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_453" name="V37" value="0.375"/>
          <Constant key="Parameter_452" name="K37" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_172">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1542">
              <SourceParameter reference="Parameter_452"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1543">
              <SourceParameter reference="Parameter_453"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1544">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1545">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="re124" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s100" alias="sa118">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s43" alias="sa123">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s101" aliases="sa119" targetLineIndex="-1,3" editPoints="0.1790110040488626,-0.2685724586688494 0.8714074558856835,0.19292900971516502">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s101" alias="sa119">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_138" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_451" name="k38" value="0.005"/>
          <Constant key="Parameter_450" name="K38" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_173">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1551">
              <SourceParameter reference="Parameter_450"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1552">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1553">
              <SourceParameter reference="Parameter_451"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1554">
              <SourceParameter reference="Metabolite_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1555">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="re125" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s44" alias="sa130">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s104" alias="sa122">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_449" name="V39" value="0.05"/>
          <Constant key="Parameter_448" name="K39" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_174">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1550">
              <SourceParameter reference="Parameter_448"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1561">
              <SourceParameter reference="Parameter_449"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1562">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1563">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="re126" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s104" alias="sa122">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s44" alias="sa130">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s43" aliases="sa123" targetLineIndex="-1,3" editPoints="0.365930673663454,-0.23020695138522385 0.6494785556728364,0.2205130067011396">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s43" alias="sa123">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_142" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_447" name="k40" value="0.002"/>
          <Constant key="Parameter_446" name="K40" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_175">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1569">
              <SourceParameter reference="Parameter_446"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1570">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1571">
              <SourceParameter reference="Parameter_447"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1572">
              <SourceParameter reference="Metabolite_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1573">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="re127" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s42" alias="sa125">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s107" alias="sa131">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5,0.0 0.5,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s44" aliases="sa130" targetLineIndex="-1,2" editPoints="0.49960912278917746,-0.036694487865860825 0.5049745522748275,0.03635783346676158">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s44" alias="sa130">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_110" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_112" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_445" name="K43" value="25"/>
          <Constant key="Parameter_444" name="k43" value="4e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_176">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1580">
              <SourceParameter reference="Parameter_445"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1581">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1582">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1583">
              <SourceParameter reference="Parameter_444"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1584">
              <SourceParameter reference="Metabolite_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1585">
              <SourceParameter reference="Metabolite_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="re128" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s107" alias="sa131">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s42" alias="sa125">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_110" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_443" name="K44" value="5"/>
          <Constant key="Parameter_442" name="V44" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_177">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1348">
              <SourceParameter reference="Parameter_443"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1579">
              <SourceParameter reference="Parameter_442"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1592">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1593">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="re129" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s105" alias="sa124">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s49" alias="sa133">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
      <celldesigner:lineDirection index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5555272235279656,-0.004576266129490136 0.5555782211776013,0.0036610129036045436</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s39" aliases="sa111" targetLineIndex="-1,2" editPoints="0.7272491157078269,-0.445373819852504">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s39" alias="sa111">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_116" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_441" name="tau" value="0.55"/>
          <Constant key="Parameter_440" name="tc" value="3600"/>
          <Constant key="Parameter_439" name="uc" value="3600"/>
          <Constant key="Parameter_862" name="delay" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_178">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1600">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1601">
              <SourceParameter reference="Parameter_862"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1602">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1603">
              <SourceParameter reference="Parameter_441"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1604">
              <SourceParameter reference="Parameter_440"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1605">
              <SourceParameter reference="Parameter_439"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="re131" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s116" alias="sa136">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_118" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_861" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_179">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1439">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1568">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1541">
              <SourceParameter reference="Metabolite_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="re132" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s117" alias="sa137">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa45">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.7349999999999994,-0.10499999999998977 0.7549999999999955,0.0350000000000108 0.12118685531478146,-0.053769956868354285 0.28567068323380074,0.3169440815387823 0.9747443855585232,0.1569005047176697 0.36998730593095,-0.0727743536880201</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_860" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_180">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1615">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1616">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1617">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="re133" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s50" alias="sa48">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s117" alias="sa137">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.020782147550029606,-0.06828495985154959 0.9360087898508986,0.2102591758317338 0.7236939480872664,0.0 0.7236939480872664,7.105427357601002E-15 0.968999264164009,0.17331961866337586 0.24216843044470693,0.29407437168769945</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_154" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_859" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_181">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1621">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1622">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1623">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_138" name="re134" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s66" alias="sa77">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s118" alias="sa139">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="1" tShapeIndex="0">0.9721844773958299,0.16444397011269896 0.25119617224880386,0.0 0.25119617224880386,-1.4210854715202004E-14 0.9430101013408407,0.2318233165796233 0.004064776274717019,0.5639633194588995</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_858" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_182">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1627">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1628">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1629">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_139" name="re135" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s65" alias="sa76">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s118" alias="sa139">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="1" tShapeIndex="0">0.4475138121546962,-0.49723756906076844 0.49115113547376055,-0.4999216914643654 0.6721422523285341,-0.4694326841659606 0.21157155147691498,0.3497992543733872</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_857" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_183">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1633">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1634">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1635">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_140" name="re136" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa140">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.8753505765035854,0.33032097226550405 0.5,0.0 0.5,0.0 0.4999999999999991,0.0 0.4999999999999991,0.0 0.1744748002761609,0.22586053851464616</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_856" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_184">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1639">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1640">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1641">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_141" name="re137" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s62" alias="sa61">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SW"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa140">
      <celldesigner:linkAnchor position="SW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9852626211116764,0.12049974502804783 9.361104610343673E-4,0.0016674467587176611 0.7612918324362274,-0.42519892347296984 0.20000000000000284,1.4000000000000021 1.1800000000000068,1.2600000000000016 0.010355165346140893,0.6530178347456328</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_855" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_185">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1645">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1646">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1647">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_142" name="re138" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa141">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9693143880898596,0.17246450397644875 0.5,0.0 0.5,0.0 0.5,0.0 0.5,0.0 0.0934982810970868,0.39835888685353016</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_854" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_186">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1651">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1652">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1653">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_143" name="re139" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s60" alias="sa59">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa141">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="2" tShapeIndex="0">0.5,1.4210854715202004E-14 0.5,1.4210854715202004E-14 0.08310788875662878,0.004328535872740957 0.08581322367709188,-0.04761389460015142 0.5,0.0 0.5,0.0 0.1516007855985042,-0.18171253612809757</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_122" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_120" stoichiometry="1"/>
          <Product metabolite="Metabolite_114" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_853" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_187">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1657">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1658">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1659">
              <SourceParameter reference="Metabolite_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_114"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_138"/>
      <StateTemplateVariable objectReference="Metabolite_142"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_136"/>
      <StateTemplateVariable objectReference="Metabolite_140"/>
      <StateTemplateVariable objectReference="Metabolite_144"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_110"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_104"/>
      <StateTemplateVariable objectReference="Metabolite_152"/>
      <StateTemplateVariable objectReference="Metabolite_154"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_150"/>
      <StateTemplateVariable objectReference="Metabolite_112"/>
      <StateTemplateVariable objectReference="Metabolite_134"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_130"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_96"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_146"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_148"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_132"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_100"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_156"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.20435007015673e+20 2.092814714860801e+17 7.05795017788e+16 2.106545198142001e+16 1702459484033000 207763891755000 877426058803000 173437683552000.1 1806642537000 6612311685420000 364339578295000 624496103623000.1 1276694059480000 387223717097000 63834702974000.01 6.02066034311966e+17 0 5.932652763000602e+16 9.4645184799998e+16 370963934264000 1935516371306000 9612542725198000 3.011070895e+16 1.70426612657e+21 1037615030417000 54199276110000.01 0 0 4.933639661457501e+17 0 3358548476283000 0 1.80487202731374e+17 0 0 3.011070895e+20 1.0839855222e+16 6022141790000000 6.020335147463e+16 0 4.19578938513551e+18 24991888428500 2.33056887273e+18 6.02214179e+18 0 0 0 49983776857000 718441515547000 0 0 4.59812205376944e+18 0 0 3.4326208203e+16 5359706193100 1.7586460669337e+16 0 516097551403000 894890269994000 0 7.1894737545736e+16 1945151798170000 18066425370000 148144688034000 1.00940731827264e+17 0 4.3359420888e+16 0 0 0 3613285074000 1.80662447057463e+17 0 9.033212685e+20 0 9.033212685e+16 60221417900000 1806642537000000 1 1 1 1 44000 0.0012 2 6.64 5000 1e-10 0.1 300 0 200 150 80 321 380 1 0 0 120000 3.5 1630 18330 4760 6000 2500 100 33 0.005 0.5 7071067.81 10 0.1 7.499999999999999e-05 0.004 10.3 0.08 1152 0.015 0 0.00015 1.5 0.1 5 20 4 0.002 1.5 9.450000000000001e-05 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="12000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="12000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="plot_1" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NO]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Koo2013 - Integrated shear stress induced NO production model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Koo2013 - Integrated shear stress induced NO production model,Vector=Compartments[Cell],Vector=Metabolites[NO],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_448" name="Layout">
      <Dimensions width="2000" height="2000"/>
      <ListOfCompartmentGlyphs>
        <CompartmentGlyph key="Layout_449" name="CompartmentGlyph" compartment="Compartment_5">
          <BoundingBox>
            <Position x="292" y="216"/>
            <Dimensions width="1592" height="1760"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_450" name="CompartmentGlyph_1" compartment="Compartment_6">
          <BoundingBox>
            <Position x="317" y="437"/>
            <Dimensions width="247" height="124"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_451" name="CompartmentGlyph_2" compartment="Compartment_7">
          <BoundingBox>
            <Position x="1288" y="1552"/>
            <Dimensions width="425" height="308"/>
          </BoundingBox>
        </CompartmentGlyph>
      </ListOfCompartmentGlyphs>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_452" name="SpeciesGlyph" metabolite="Metabolite_78">
          <BoundingBox>
            <Position x="205" y="662"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_453" name="SpeciesGlyph_1" metabolite="Metabolite_79">
          <BoundingBox>
            <Position x="367" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_454" name="SpeciesGlyph_2" metabolite="Metabolite_80">
          <BoundingBox>
            <Position x="613" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_455" name="SpeciesGlyph_3" metabolite="Metabolite_81">
          <BoundingBox>
            <Position x="748" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_456" name="SpeciesGlyph_4" metabolite="Metabolite_82">
          <BoundingBox>
            <Position x="207" y="482"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_457" name="SpeciesGlyph_5" metabolite="Metabolite_83">
          <BoundingBox>
            <Position x="749" y="339"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_458" name="SpeciesGlyph_6" metabolite="Metabolite_84">
          <BoundingBox>
            <Position x="940" y="343"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_459" name="SpeciesGlyph_7" metabolite="Metabolite_85">
          <BoundingBox>
            <Position x="939" y="270"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_460" name="SpeciesGlyph_8" metabolite="Metabolite_86">
          <BoundingBox>
            <Position x="638" y="676"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_461" name="SpeciesGlyph_9" metabolite="Metabolite_87">
          <BoundingBox>
            <Position x="689" y="676"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_462" name="SpeciesGlyph_10" metabolite="Metabolite_88">
          <BoundingBox>
            <Position x="945" y="421"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_463" name="SpeciesGlyph_11" metabolite="Metabolite_89">
          <BoundingBox>
            <Position x="382.5" y="337.5"/>
            <Dimensions width="54" height="43"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_464" name="SpeciesGlyph_12" metabolite="Metabolite_90">
          <BoundingBox>
            <Position x="308" y="344"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_465" name="SpeciesGlyph_13" metabolite="Metabolite_113">
          <BoundingBox>
            <Position x="1009.25" y="768.710552944251"/>
            <Dimensions width="107" height="44"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_466" name="SpeciesGlyph_14" metabolite="Metabolite_114">
          <BoundingBox>
            <Position x="888.25" y="773.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_467" name="SpeciesGlyph_15" metabolite="Metabolite_115">
          <BoundingBox>
            <Position x="892.25" y="681.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_468" name="SpeciesGlyph_16" metabolite="Metabolite_117">
          <BoundingBox>
            <Position x="1179.25" y="589.710552944251"/>
            <Dimensions width="100" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_469" name="SpeciesGlyph_17" metabolite="Metabolite_118">
          <BoundingBox>
            <Position x="1022.25" y="589.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_470" name="SpeciesGlyph_18" metabolite="Metabolite_119">
          <BoundingBox>
            <Position x="889.25" y="587.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_471" name="SpeciesGlyph_19" metabolite="Metabolite_80">
          <BoundingBox>
            <Position x="798.75" y="591.210552944251"/>
            <Dimensions width="37" height="34"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_472" name="SpeciesGlyph_20" metabolite="Metabolite_120">
          <BoundingBox>
            <Position x="1242" y="771"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_473" name="SpeciesGlyph_21" metabolite="Metabolite_121">
          <BoundingBox>
            <Position x="1258" y="691"/>
            <Dimensions width="155" height="38"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_474" name="SpeciesGlyph_22" metabolite="Metabolite_122">
          <BoundingBox>
            <Position x="1496" y="692"/>
            <Dimensions width="170" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_475" name="SpeciesGlyph_23" metabolite="Metabolite_123">
          <BoundingBox>
            <Position x="1325" y="579"/>
            <Dimensions width="153" height="39"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_476" name="SpeciesGlyph_24" metabolite="Metabolite_124">
          <BoundingBox>
            <Position x="1534" y="578"/>
            <Dimensions width="168" height="41"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_477" name="SpeciesGlyph_25" metabolite="Metabolite_93">
          <BoundingBox>
            <Position x="1431.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_478" name="SpeciesGlyph_26" metabolite="Metabolite_92">
          <BoundingBox>
            <Position x="1188.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_479" name="SpeciesGlyph_27" metabolite="Metabolite_94">
          <BoundingBox>
            <Position x="1505.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_480" name="SpeciesGlyph_28" metabolite="Metabolite_91">
          <BoundingBox>
            <Position x="1322.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_481" name="SpeciesGlyph_29" metabolite="Metabolite_95">
          <BoundingBox>
            <Position x="1554.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_482" name="SpeciesGlyph_30" metabolite="Metabolite_96">
          <BoundingBox>
            <Position x="1612.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_483" name="SpeciesGlyph_31" metabolite="Metabolite_97">
          <BoundingBox>
            <Position x="1699.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_484" name="SpeciesGlyph_32" metabolite="Metabolite_98">
          <BoundingBox>
            <Position x="1698.125" y="368.4578593287326"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_485" name="SpeciesGlyph_33" metabolite="Metabolite_99">
          <BoundingBox>
            <Position x="1848.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_486" name="SpeciesGlyph_34" metabolite="Metabolite_100">
          <BoundingBox>
            <Position x="1859.125" y="363.4578593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_487" name="SpeciesGlyph_35" metabolite="Metabolite_101">
          <BoundingBox>
            <Position x="1189.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_488" name="SpeciesGlyph_36" metabolite="Metabolite_102">
          <BoundingBox>
            <Position x="1322.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_489" name="SpeciesGlyph_37" metabolite="Metabolite_125">
          <BoundingBox>
            <Position x="1380" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_490" name="SpeciesGlyph_38" metabolite="Metabolite_126">
          <BoundingBox>
            <Position x="1592" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_491" name="SpeciesGlyph_39" metabolite="Metabolite_127">
          <BoundingBox>
            <Position x="1544" y="481"/>
            <Dimensions width="112" height="44"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_492" name="SpeciesGlyph_40" metabolite="Metabolite_128">
          <BoundingBox>
            <Position x="1362" y="480"/>
            <Dimensions width="93" height="45"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_493" name="SpeciesGlyph_41" metabolite="Metabolite_129">
          <BoundingBox>
            <Position x="420.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_494" name="SpeciesGlyph_42" metabolite="Metabolite_108">
          <BoundingBox>
            <Position x="661.0095969770849" y="1017.678879634638"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_495" name="SpeciesGlyph_43" metabolite="Metabolite_130">
          <BoundingBox>
            <Position x="661.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_496" name="SpeciesGlyph_44" metabolite="Metabolite_131">
          <BoundingBox>
            <Position x="659.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_497" name="SpeciesGlyph_45" metabolite="Metabolite_109">
          <BoundingBox>
            <Position x="822.0095969770849" y="1010.678879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_498" name="SpeciesGlyph_46" metabolite="Metabolite_132">
          <BoundingBox>
            <Position x="813.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_499" name="SpeciesGlyph_47" metabolite="Metabolite_133">
          <BoundingBox>
            <Position x="811.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_500" name="SpeciesGlyph_48" metabolite="Metabolite_134">
          <BoundingBox>
            <Position x="979.2595969770849" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_501" name="SpeciesGlyph_49" metabolite="Metabolite_135">
          <BoundingBox>
            <Position x="900.2595969770849" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_502" name="SpeciesGlyph_50" metabolite="Metabolite_136">
          <BoundingBox>
            <Position x="420.2595969770849" y="1407.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_503" name="SpeciesGlyph_51" metabolite="Metabolite_137">
          <BoundingBox>
            <Position x="1104.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_504" name="SpeciesGlyph_52" metabolite="Metabolite_138">
          <BoundingBox>
            <Position x="1139.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_505" name="SpeciesGlyph_53" metabolite="Metabolite_139">
          <BoundingBox>
            <Position x="1144.259596977085" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_506" name="SpeciesGlyph_54" metabolite="Metabolite_140">
          <BoundingBox>
            <Position x="1146.259596977085" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_507" name="SpeciesGlyph_55" metabolite="Metabolite_141">
          <BoundingBox>
            <Position x="904.2595969770849" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_508" name="SpeciesGlyph_56" metabolite="Metabolite_142">
          <BoundingBox>
            <Position x="1269.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_509" name="SpeciesGlyph_57" metabolite="Metabolite_111">
          <BoundingBox>
            <Position x="1293.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_510" name="SpeciesGlyph_58" metabolite="Metabolite_143">
          <BoundingBox>
            <Position x="1335.259596977085" y="1355.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_511" name="SpeciesGlyph_59" metabolite="Metabolite_110">
          <BoundingBox>
            <Position x="1323.759596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_512" name="SpeciesGlyph_60" metabolite="Metabolite_107">
          <BoundingBox>
            <Position x="661.2595969770849" y="752.4288796346377"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_513" name="SpeciesGlyph_61" metabolite="Metabolite_144">
          <BoundingBox>
            <Position x="949.2595969770849" y="1774.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_514" name="SpeciesGlyph_62" metabolite="Metabolite_152">
          <BoundingBox>
            <Position x="1323.259596977085" y="1772.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_515" name="SpeciesGlyph_63" metabolite="Metabolite_112">
          <BoundingBox>
            <Position x="1434.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_516" name="SpeciesGlyph_64" metabolite="Metabolite_145">
          <BoundingBox>
            <Position x="1478.259596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_517" name="SpeciesGlyph_65" metabolite="Metabolite_146">
          <BoundingBox>
            <Position x="1515.259596977085" y="1772.928879634638"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_518" name="SpeciesGlyph_66" metabolite="Metabolite_116">
          <BoundingBox>
            <Position x="1525.259596977085" y="1348.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_519" name="SpeciesGlyph_67" metabolite="Metabolite_106">
          <BoundingBox>
            <Position x="966.2595969770849" y="1864.428879634638"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_520" name="SpeciesGlyph_68" metabolite="Metabolite_153">
          <BoundingBox>
            <Position x="1027.25" y="451.710552944251"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_521" name="SpeciesGlyph_69" metabolite="Metabolite_154">
          <BoundingBox>
            <Position x="1099" y="679"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_522" name="SpeciesGlyph_70" metabolite="Metabolite_120">
          <BoundingBox>
            <Position x="1486" y="394"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_523" name="SpeciesGlyph_71" metabolite="Metabolite_155">
          <BoundingBox>
            <Position x="1601" y="413"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_524" name="SpeciesGlyph_72" metabolite="Metabolite_115">
          <BoundingBox>
            <Position x="1728" y="524"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_525" name="SpeciesGlyph_73" metabolite="Metabolite_114">
          <BoundingBox>
            <Position x="1729" y="644"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_526" name="SpeciesGlyph_74" metabolite="Metabolite_156">
          <BoundingBox>
            <Position x="52" y="807.5"/>
            <Dimensions width="134" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_527" name="SpeciesGlyph_75" metabolite="Metabolite_103">
          <BoundingBox>
            <Position x="1198.375" y="171.2078593287326"/>
            <Dimensions width="83" height="69"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_528" name="SpeciesGlyph_76" metabolite="Metabolite_105">
          <BoundingBox>
            <Position x="1329.375" y="171.2078593287326"/>
            <Dimensions width="85" height="68"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_529" name="SpeciesGlyph_77" metabolite="Metabolite_104">
          <BoundingBox>
            <Position x="1085.375" y="484.2078593287326"/>
            <Dimensions width="95" height="63"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_530" name="SpeciesGlyph_78" metabolite="Metabolite_147">
          <BoundingBox>
            <Position x="553.2595969770849" y="1258.428879634638"/>
            <Dimensions width="108" height="32"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_531" name="SpeciesGlyph_79" metabolite="Metabolite_148">
          <BoundingBox>
            <Position x="730.2595969770849" y="1340.428879634638"/>
            <Dimensions width="98" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_532" name="SpeciesGlyph_80" metabolite="Metabolite_149">
          <BoundingBox>
            <Position x="552.2595969770849" y="1343.428879634638"/>
            <Dimensions width="108" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_533" name="SpeciesGlyph_81" metabolite="Metabolite_150">
          <BoundingBox>
            <Position x="609.2595969770849" y="1444.428879634638"/>
            <Dimensions width="172" height="35"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_534" name="SpeciesGlyph_82" metabolite="Metabolite_151">
          <BoundingBox>
            <Position x="507.2595969770849" y="1532.428879634638"/>
            <Dimensions width="140" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_535" name="ReactionGlyph" reaction="Reaction_38">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="728" y="497"/>
                <End x="713" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_536" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_455" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="728" y="497"/>
                    <End x="748" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_537" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_454" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713" y="497"/>
                    <End x="693" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_538" name="ReactionGlyph_1" reaction="Reaction_37">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="294.5" y="497"/>
                <End x="309.5" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_539" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_456" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="294.5" y="497"/>
                    <End x="237" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_540" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_453" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="309.5" y="497"/>
                    <End x="367" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_541" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_452" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="245" y="662"/>
                    <End x="239.7838478787924" y="554.2867586259837"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="239.7838478787924" y="554.2867586259837"/>
                    <End x="303.5321945438413" y="551.2046521878902"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="303.5321945438413" y="551.2046521878902"/>
                    <End x="302" y="502"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_542" name="ReactionGlyph_2" reaction="Reaction_21">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="891.999695660113" y="358.4324351742332"/>
                <End x="877.000304339887" y="358.5675648257668"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_543" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_458" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="891.999695660113" y="358.4324351742332"/>
                    <End x="940" y="358"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_544" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_457" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="877.000304339887" y="358.5675648257668"/>
                    <End x="829" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_545" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_454" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="477"/>
                    <End x="653.9766661975149" y="404.4408581389349"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.9766661975149" y="404.4408581389349"/>
                    <End x="893.4398745767033" y="406.1011976454537"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="893.4398745767033" y="406.1011976454537"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_546" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_463" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="409.5" y="337.5"/>
                    <End x="413.1788186030261" y="306.5725269793662"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="413.1788186030261" y="306.5725269793662"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_547" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_526" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="186" y="824"/>
                    <End x="739.2894574057009" y="964.6108298801832"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="739.2894574057009" y="964.6108298801832"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_548" name="ReactionGlyph_3" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="856.4340511609528" y="286.4758616813282"/>
                <End x="871.4316553829767" y="286.2077803512613"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_549" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_457" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="856.4340511609528" y="286.4758616813282"/>
                    <End x="788.8657065439295" y="287.6836420325895"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="788.8657065439295" y="287.6836420325895"/>
                    <End x="789" y="339"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_550" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_459" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="871.4316553829767" y="286.2077803512613"/>
                    <End x="939" y="285"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_551" name="ReactionGlyph_4" reaction="Reaction_74">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="522.5" y="497"/>
                <End x="537.5" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_552" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_453" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="522.5" y="497"/>
                    <End x="447" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_553" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_454" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="537.5" y="497"/>
                    <End x="613" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_554" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_457" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="749" y="359"/>
                    <End x="529.5723205531676" y="358.6636345057378"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="529.5723205531676" y="358.6636345057378"/>
                    <End x="530" y="492"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_555" name="ReactionGlyph_5" reaction="Reaction_75">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="653" y="589"/>
                <End x="653" y="604"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_556" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_454" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="589"/>
                    <End x="653" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_557" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_460" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="604"/>
                    <End x="653" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_558" name="ReactionGlyph_6" reaction="Reaction_76">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="713.8786641536186" y="605.7870332539956"/>
                <End x="711.7888115534216" y="620.640737038219"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_559" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_454" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713.8786641536186" y="605.7870332539956"/>
                    <End x="721.6674757070402" y="550.4277702922144"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="721.6674757070402" y="550.4277702922144"/>
                    <End x="693" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_560" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_461" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="711.7888115534216" y="620.640737038219"/>
                    <End x="704" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_561" name="ReactionGlyph_7" reaction="Reaction_77">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="725.6255942220286" y="451.2485638716777"/>
                <End x="713.8513678094088" y="460.5419804869148"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_562" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_462" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="725.6255942220286" y="451.2485638716777"/>
                    <End x="746.4769620314374" y="434.7905443585926"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="746.4769620314374" y="434.7905443585926"/>
                    <End x="945" y="436"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_563" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_454" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713.8513678094088" y="460.5419804869148"/>
                    <End x="693" y="477"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_564" name="ReactionGlyph_8" reaction="Reaction_78">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="352.8333333333333" y="359"/>
                <End x="367.6666666666667" y="359"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_565" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_464" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="352.8333333333333" y="359"/>
                    <End x="338" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_566" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_463" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="367.6666666666667" y="359"/>
                    <End x="382.5" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_567" name="ReactionGlyph_9" reaction="Reaction_79">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="670.7357325292314" y="589.0037055704394"/>
                <End x="670.2642674707686" y="603.9962944295606"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_568" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_454" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="670.7357325292314" y="589.0037055704394"/>
                    <End x="673" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_569" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_460" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="670.2642674707686" y="603.9962944295606"/>
                    <End x="668" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_570" name="ReactionGlyph_10" reaction="Reaction_80">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.3497808449268" y="774.8226169002041"/>
                <End x="1004.29804507193" y="773.5778692953925"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_571" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_465" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="1062.75" y="768.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_572" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_469" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="1062.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_573" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_466" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="968.25" y="793.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_574" name="ReactionGlyph_11" reaction="Reaction_81">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="973.5281617453588" y="695.3602913792749"/>
                <End x="987.3759328116356" y="689.5949434716473"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_575" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_468" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="1179.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_576" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_467" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="972.25" y="701.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_577" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_469" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="1102.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_578" name="ReactionGlyph_12" reaction="Reaction_82">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="952.25" y="664.3772196109177"/>
                <End x="952.25" y="673.0438862775844"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_579" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_470" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.25" y="664.3772196109177"/>
                    <End x="952.2500000000001" y="655.7105529442509"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.2500000000001" y="655.7105529442509"/>
                    <End x="909.2500000000001" y="655.7105529442508"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="909.2500000000001" y="655.7105529442508"/>
                    <End x="909.25" y="627.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_580" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_467" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.25" y="673.0438862775844"/>
                    <End x="952.25" y="681.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_581" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_471" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="625.210552944251"/>
                    <End x="816.8171680975048" y="669.5837984843582"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="816.8171680975048" y="669.5837984843582"/>
                    <End x="949.4166666666667" y="670.8772196109178"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_582" name="ReactionGlyph_13" reaction="Reaction_83">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="948.25" y="755.7105529442506"/>
                <End x="948.25" y="764.7105529442508"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_583" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_467" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="755.7105529442506"/>
                    <End x="948.25" y="746.7105529442504"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="746.7105529442504"/>
                    <End x="912.25" y="746.7105529442505"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="912.25" y="746.7105529442505"/>
                    <End x="912.25" y="721.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_584" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_466" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="764.7105529442508"/>
                    <End x="948.25" y="773.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_585" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_471" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="808" y="625.210552944251"/>
                    <End x="810.0951114946837" y="764.4972749961784"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="810.0951114946837" y="764.4972749961784"/>
                    <End x="945.5000000000001" y="762.4605529442508"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_586" name="ReactionGlyph_14" reaction="Reaction_84">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1229.25" y="737.210552944251"/>
                <End x="1229.25" y="722.210552944251"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_587" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_465" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="737.210552944251"/>
                    <End x="1229.25" y="829.7105529442509"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="829.7105529442509"/>
                    <End x="1062.75" y="829.7105529442506"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1062.75" y="829.7105529442506"/>
                    <End x="1062.75" y="812.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_588" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_468" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="722.210552944251"/>
                    <End x="1229.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_589" name="SpeciesReferenceGlyph_39" metaboliteGlyph="Layout_471" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="625.210552944251"/>
                    <End x="815.9607491218134" y="728.4393834235514"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="815.9607491218134" y="728.4393834235514"/>
                    <End x="1218" y="733.460552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_590" name="ReactionGlyph_15" reaction="Reaction_85">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1170.392853187527" y="790.5849265728492"/>
                <End x="1181.432675301973" y="780.4300101437792"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_591" name="SpeciesReferenceGlyph_40" metaboliteGlyph="Layout_473" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1258" y="710"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_592" name="SpeciesReferenceGlyph_41" metaboliteGlyph="Layout_465" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1116.25" y="790.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_593" name="SpeciesReferenceGlyph_42" metaboliteGlyph="Layout_472" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1242" y="791"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_594" name="ReactionGlyph_16" reaction="Reaction_86">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1401.5" y="642.3333333333335"/>
                <End x="1401.5" y="630.1666666666667"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_595" name="SpeciesReferenceGlyph_43" metaboliteGlyph="Layout_473" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="642.3333333333335"/>
                    <End x="1401.5" y="654.5000000000002"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="654.5000000000002"/>
                    <End x="1335.5" y="654.5000000000002"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.5" y="654.5000000000002"/>
                    <End x="1335.5" y="691"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_596" name="SpeciesReferenceGlyph_44" metaboliteGlyph="Layout_475" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="630.1666666666667"/>
                    <End x="1401.5" y="618"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_597" name="SpeciesReferenceGlyph_45" metaboliteGlyph="Layout_471" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="835.75" y="608.210552944251"/>
                    <End x="854.43709434193" y="608.3217595882388"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="854.43709434193" y="608.3217595882388"/>
                    <End x="854.271849360142" y="636.0894221439523"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="854.271849360142" y="636.0894221439523"/>
                    <End x="1392.375" y="639.2916666666667"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_598" name="ReactionGlyph_17" reaction="Reaction_87">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1297.065998860822" y="558.3152770438485"/>
                <End x="1288.504284540036" y="545.9987414964943"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_599" name="SpeciesReferenceGlyph_46" metaboliteGlyph="Layout_475" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.065998860822" y="558.3152770438485"/>
                    <End x="1325" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_600" name="SpeciesReferenceGlyph_47" metaboliteGlyph="Layout_468" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1288.504284540036" y="545.9987414964943"/>
                    <End x="1279.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_601" name="SpeciesReferenceGlyph_48" metaboliteGlyph="Layout_472" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1288.504284540036" y="545.9987414964943"/>
                    <End x="1262" y="771"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_602" name="ReactionGlyph_18" reaction="Reaction_88">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1618" y="641.6666666666704"/>
                <End x="1618" y="630.3333333333351"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_603" name="SpeciesReferenceGlyph_49" metaboliteGlyph="Layout_474" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="641.6666666666704"/>
                    <End x="1618" y="653.0000000000056"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="653.0000000000056"/>
                    <End x="1581" y="653.0000000000061"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581" y="653.0000000000061"/>
                    <End x="1581" y="692"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_604" name="SpeciesReferenceGlyph_50" metaboliteGlyph="Layout_476" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="630.3333333333351"/>
                    <End x="1618" y="619"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_605" name="SpeciesReferenceGlyph_51" metaboliteGlyph="Layout_471" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="591.210552944251"/>
                    <End x="817.3145229367419" y="574.2814807012352"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.3145229367419" y="574.2814807012352"/>
                    <End x="1219.758403264436" y="575.8153427262583"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.758403264436" y="575.8153427262583"/>
                    <End x="1219.523883465396" y="637.3469905534885"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.523883465396" y="637.3469905534885"/>
                    <End x="1609.499999999999" y="638.8333333333366"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_606" name="ReactionGlyph_19" reaction="Reaction_89">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1447.000136082811" y="710.2048200968844"/>
                <End x="1461.999863917189" y="710.2951799031156"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_607" name="SpeciesReferenceGlyph_52" metaboliteGlyph="Layout_473" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1447.000136082811" y="710.2048200968844"/>
                    <End x="1413" y="710"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_608" name="SpeciesReferenceGlyph_53" metaboliteGlyph="Layout_474" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1461.999863917189" y="710.2951799031156"/>
                    <End x="1496" y="710.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_609" name="SpeciesReferenceGlyph_54" metaboliteGlyph="Layout_529" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.625" y="547.2078593287326"/>
                    <End x="1156.633314639806" y="694.2584989643401"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.633314639806" y="694.2584989643401"/>
                    <End x="1454.529702887765" y="694.2416550990297"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.529702887765" y="694.2416550990297"/>
                    <End x="1454.530324057158" y="705.2275015900772"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_610" name="ReactionGlyph_20" reaction="Reaction_90">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1498.5" y="598.5"/>
                <End x="1513.5" y="598.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_611" name="SpeciesReferenceGlyph_55" metaboliteGlyph="Layout_475" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1498.5" y="598.5"/>
                    <End x="1478" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_612" name="SpeciesReferenceGlyph_56" metaboliteGlyph="Layout_476" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1513.5" y="598.5"/>
                    <End x="1534" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_613" name="SpeciesReferenceGlyph_57" metaboliteGlyph="Layout_529" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1180.375" y="515.7078593287326"/>
                    <End x="1180.409428419422" y="618.8347897882619"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1180.409428419422" y="618.8347897882619"/>
                    <End x="1506.005083155819" y="618.7260912774731"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1506.005083155819" y="618.7260912774731"/>
                    <End x="1506" y="603.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_614" name="ReactionGlyph_21" reaction="Reaction_91">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1821.375" y="304.7078593287326"/>
                <End x="1806.375" y="304.7078593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_615" name="SpeciesReferenceGlyph_58" metaboliteGlyph="Layout_485" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1821.375" y="304.7078593287326"/>
                    <End x="1848.375" y="304.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_616" name="SpeciesReferenceGlyph_59" metaboliteGlyph="Layout_483" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1806.375" y="304.7078593287326"/>
                    <End x="1779.375" y="304.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_617" name="SpeciesReferenceGlyph_60" metaboliteGlyph="Layout_486" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1899.125" y="363.4578593287326"/>
                    <End x="1899.833637998879" y="336.0020861911877"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1899.833637998879" y="336.0020861911877"/>
                    <End x="1820.749025066171" y="333.9608993861405"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1820.749025066171" y="333.9608993861405"/>
                    <End x="1821.375" y="309.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_618" name="SpeciesReferenceGlyph_61" metaboliteGlyph="Layout_526" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="807.5"/>
                    <End x="105.7302114103831" y="119.0697757829029"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="105.7302114103831" y="119.0697757829029"/>
                    <End x="1817.064536045155" y="86.08307081961709"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1817.064536045155" y="86.08307081961709"/>
                    <End x="1821.375" y="309.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_619" name="ReactionGlyph_22" reaction="Reaction_92">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1600.041666666667" y="200.9578593287326"/>
                <End x="1587.708333333333" y="200.9578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_620" name="SpeciesReferenceGlyph_62" metaboliteGlyph="Layout_482" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.041666666667" y="200.9578593287326"/>
                    <End x="1612.375" y="200.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_621" name="SpeciesReferenceGlyph_63" metaboliteGlyph="Layout_479" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1587.708333333333" y="200.9578593287326"/>
                    <End x="1575.375" y="200.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_622" name="SpeciesReferenceGlyph_64" metaboliteGlyph="Layout_483" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1739.375" y="284.7078593287326"/>
                    <End x="1742.172329388496" y="180.2298072745483"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1742.172329388496" y="180.2298072745483"/>
                    <End x="1600.564288433558" y="176.438347472013"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.564288433558" y="176.438347472013"/>
                    <End x="1600.041666666667" y="195.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_623" name="ReactionGlyph_23" reaction="Reaction_93">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1587.708333333333" y="213.4578593287326"/>
                <End x="1600.041666666667" y="213.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_624" name="SpeciesReferenceGlyph_65" metaboliteGlyph="Layout_479" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1587.708333333333" y="213.4578593287326"/>
                    <End x="1575.375" y="213.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_625" name="SpeciesReferenceGlyph_66" metaboliteGlyph="Layout_482" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.041666666667" y="213.4578593287326"/>
                    <End x="1612.375" y="213.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_626" name="SpeciesReferenceGlyph_67" metaboliteGlyph="Layout_481" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.375" y="286.2078593287326"/>
                    <End x="1593.875" y="218.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_627" name="ReactionGlyph_24" reaction="Reaction_94">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1591.359793627807" y="224.0760707697177"/>
                <End x="1576.360629240674" y="223.9177429838166"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_628" name="SpeciesReferenceGlyph_68" metaboliteGlyph="Layout_528" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1414.375" y="222.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_629" name="SpeciesReferenceGlyph_69" metaboliteGlyph="Layout_479" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1505.375" y="207.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_630" name="SpeciesReferenceGlyph_70" metaboliteGlyph="Layout_477" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1471.375" y="286.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_631" name="ReactionGlyph_25" reaction="Reaction_95">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1312.874898276809" y="188.2937973585409"/>
                <End x="1297.875101723191" y="188.3719212989243"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_632" name="SpeciesReferenceGlyph_71" metaboliteGlyph="Layout_528" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1312.874898276809" y="188.2937973585409"/>
                    <End x="1329.375" y="188.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_633" name="SpeciesReferenceGlyph_72" metaboliteGlyph="Layout_527" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.875101723191" y="188.3719212989243"/>
                    <End x="1281.375" y="188.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_634" name="SpeciesReferenceGlyph_73" metaboliteGlyph="Layout_480" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1362.375" y="328.2078593287326"/>
                    <End x="1371.479823834522" y="135.7826850968266"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1371.479823834522" y="135.7826850968266"/>
                    <End x="1315.225670646503" y="133.1209535599758"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1315.225670646503" y="133.1209535599758"/>
                    <End x="1312.848907824944" y="183.352458129289"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_635" name="ReactionGlyph_26" reaction="Reaction_96">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1161.25" y="188.4578593287326"/>
                <End x="1146.25" y="188.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_636" name="SpeciesReferenceGlyph_74" metaboliteGlyph="Layout_527" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1161.25" y="188.4578593287326"/>
                    <End x="1198.375" y="188.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_637" name="SpeciesReferenceGlyph_75" metaboliteGlyph="Layout_529" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1146.25" y="188.4578593287326"/>
                    <End x="1109.125" y="188.4578593287326"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1109.125" y="188.4578593287326"/>
                    <End x="1109.125" y="484.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_638" name="SpeciesReferenceGlyph_76" metaboliteGlyph="Layout_487" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1189.375" y="429.2078593287326"/>
                    <End x="1153.583656934744" y="428.0381587383802"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1153.583656934744" y="428.0381587383802"/>
                    <End x="1161.25" y="193.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_639" name="ReactionGlyph_27" reaction="Reaction_97">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1297.87591535974" y="222.7000325262366"/>
                <End x="1312.87408464026" y="222.4656861312285"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_640" name="SpeciesReferenceGlyph_77" metaboliteGlyph="Layout_527" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.87591535974" y="222.7000325262366"/>
                    <End x="1281.375" y="222.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_641" name="SpeciesReferenceGlyph_78" metaboliteGlyph="Layout_528" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1312.87408464026" y="222.4656861312285"/>
                    <End x="1329.375" y="222.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_642" name="SpeciesReferenceGlyph_79" metaboliteGlyph="Layout_478" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1228.375" y="328.2078593287326"/>
                    <End x="1228.559398657632" y="276.6571739623627"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1228.559398657632" y="276.6571739623627"/>
                    <End x="1305.27634297068" y="276.9315932343556"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1305.27634297068" y="276.9315932343556"/>
                    <End x="1305.452657785133" y="227.6408356876581"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_643" name="ReactionGlyph_28" reaction="Reaction_98">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1170.541666666667" y="222.9578593287326"/>
                <End x="1184.458333333333" y="222.9578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_644" name="SpeciesReferenceGlyph_80" metaboliteGlyph="Layout_529" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.541666666667" y="222.9578593287326"/>
                    <End x="1156.625" y="222.9578593287326"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.625" y="222.9578593287326"/>
                    <End x="1156.625" y="484.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_645" name="SpeciesReferenceGlyph_81" metaboliteGlyph="Layout_527" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.458333333333" y="222.9578593287326"/>
                    <End x="1198.375" y="222.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_646" name="SpeciesReferenceGlyph_82" metaboliteGlyph="Layout_478" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1208.375" y="328.2078593287326"/>
                    <End x="1208.520600972991" y="277.1779364828914"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1208.520600972991" y="277.1779364828914"/>
                    <End x="1177.35981664427" y="277.0890270692692"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1177.35981664427" y="277.0890270692692"/>
                    <End x="1177.5" y="227.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_647" name="ReactionGlyph_29" reaction="Reaction_99">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1340.125294973273" y="372.0410028714688"/>
                <End x="1351.834156359538" y="362.6653660911086"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_648" name="SpeciesReferenceGlyph_83" metaboliteGlyph="Layout_529" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1340.125294973273" y="372.0410028714688"/>
                    <End x="1180.375" y="499.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_649" name="SpeciesReferenceGlyph_84" metaboliteGlyph="Layout_479" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1351.834156359538" y="362.6653660911086"/>
                    <End x="1540.375" y="219.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_650" name="SpeciesReferenceGlyph_85" metaboliteGlyph="Layout_477" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1351.834156359538" y="362.6653660911086"/>
                    <End x="1431.375" y="306.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_651" name="SpeciesReferenceGlyph_86" metaboliteGlyph="Layout_478" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.375" y="328.2078593287326"/>
                    <End x="1258.515245662121" y="316.1057458107467"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1258.515245662121" y="316.1057458107467"/>
                    <End x="1339.558686497131" y="384.0112730683778"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1339.558686497131" y="384.0112730683778"/>
                    <End x="1348.282153273092" y="373.6000474718003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_652" name="ReactionGlyph_30" reaction="Reaction_100">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1382.375" y="395.541192662066"/>
                <End x="1382.375" y="381.8745259953993"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_653" name="SpeciesReferenceGlyph_87" metaboliteGlyph="Layout_488" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1382.375" y="395.541192662066"/>
                    <End x="1382.375" y="409.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_654" name="SpeciesReferenceGlyph_88" metaboliteGlyph="Layout_480" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1382.375" y="381.8745259953993"/>
                    <End x="1382.375" y="368.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_655" name="SpeciesReferenceGlyph_89" metaboliteGlyph="Layout_479" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1557.875" y="219.7078593287326"/>
                    <End x="1556.197148319357" y="393.7671565719334"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.197148319357" y="393.7671565719334"/>
                    <End x="1385.791666666667" y="392.1245259953993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_656" name="ReactionGlyph_31" reaction="Reaction_101">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1342.375" y="381.8745259953993"/>
                <End x="1342.375" y="395.541192662066"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_657" name="SpeciesReferenceGlyph_90" metaboliteGlyph="Layout_480" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1342.375" y="381.8745259953993"/>
                    <End x="1342.375" y="368.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_658" name="SpeciesReferenceGlyph_91" metaboliteGlyph="Layout_488" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1342.375" y="395.541192662066"/>
                    <End x="1342.375" y="409.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_659" name="ReactionGlyph_32" reaction="Reaction_102">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1786.125" y="383.4578593287326"/>
                <End x="1801.125" y="383.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_660" name="SpeciesReferenceGlyph_92" metaboliteGlyph="Layout_484" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1786.125" y="383.4578593287326"/>
                    <End x="1728.125" y="383.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_661" name="SpeciesReferenceGlyph_93" metaboliteGlyph="Layout_486" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1801.125" y="383.4578593287326"/>
                    <End x="1859.125" y="383.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_662" name="ReactionGlyph_33" reaction="Reaction_103">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1513.5" y="852"/>
                <End x="1528.5" y="852"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_663" name="SpeciesReferenceGlyph_94" metaboliteGlyph="Layout_489" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1513.5" y="852"/>
                    <End x="1450" y="852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_664" name="SpeciesReferenceGlyph_95" metaboliteGlyph="Layout_490" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1528.5" y="852"/>
                    <End x="1592" y="852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_665" name="SpeciesReferenceGlyph_96" metaboliteGlyph="Layout_468" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1254.25" y="629.710552944251"/>
                    <End x="1254.247146041185" y="756.3526011453893"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1254.247146041185" y="756.3526011453893"/>
                    <End x="1521.002042661108" y="756.3586126360389"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.002042661108" y="756.3586126360389"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_666" name="SpeciesReferenceGlyph_97" metaboliteGlyph="Layout_475" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1478" y="608.25"/>
                    <End x="1521.001744529289" y="608.2503142111059"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.001744529289" y="608.2503142111059"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_667" name="SpeciesReferenceGlyph_98" metaboliteGlyph="Layout_476" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1576" y="619"/>
                    <End x="1576.001659816005" y="785.0018803900164"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1576.001659816005" y="785.0018803900164"/>
                    <End x="1520.999380100044" y="785.0024303456189"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.999380100044" y="785.0024303456189"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_668" name="SpeciesReferenceGlyph_99" metaboliteGlyph="Layout_473" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.5" y="729"/>
                    <End x="1335.498925539124" y="756.9956834266244"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.498925539124" y="756.9956834266244"/>
                    <End x="1521.003454049172" y="757.002803001284"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.003454049172" y="757.002803001284"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_669" name="SpeciesReferenceGlyph_100" metaboliteGlyph="Layout_474" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581" y="729"/>
                    <End x="1581.001917457487" y="784.998770680141"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581.001917457487" y="784.998770680141"/>
                    <End x="1520.997877082294" y="785.0008252823238"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.997877082294" y="785.0008252823238"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_670" name="SpeciesReferenceGlyph_101" metaboliteGlyph="Layout_465" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1089.5" y="812.710552944251"/>
                    <End x="1089.618324778506" y="833.8191921377805"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1089.618324778506" y="833.8191921377805"/>
                    <End x="1520.870420243119" y="823.8835203469299"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.870420243119" y="823.8835203469299"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_671" name="SpeciesReferenceGlyph_102" metaboliteGlyph="Layout_491" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1656" y="503"/>
                    <End x="1677.865745989037" y="503.0523165507176"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1677.865745989037" y="503.0523165507176"/>
                    <End x="1677.137552944246" y="807.4012067196019"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1677.137552944246" y="807.4012067196019"/>
                    <End x="1521.095638386114" y="807.0278567894801"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.095638386114" y="807.0278567894801"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_672" name="ReactionGlyph_34" reaction="Reaction_104">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1506.999881646533" y="502.7921341665536"/>
                <End x="1492.000118353467" y="502.7078658334464"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_673" name="SpeciesReferenceGlyph_103" metaboliteGlyph="Layout_491" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1506.999881646533" y="502.7921341665536"/>
                    <End x="1544" y="503"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_674" name="SpeciesReferenceGlyph_104" metaboliteGlyph="Layout_492" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1492.000118353467" y="502.7078658334464"/>
                    <End x="1455" y="502.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_675" name="ReactionGlyph_35" reaction="Reaction_105">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1356.37606683007" y="417.1852495845242"/>
                <End x="1355.389410893442" y="402.2177344245948"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_676" name="SpeciesReferenceGlyph_105" metaboliteGlyph="Layout_492" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1356.37606683007" y="417.1852495845242"/>
                    <End x="1362" y="502.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_677" name="SpeciesReferenceGlyph_106" metaboliteGlyph="Layout_469" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1355.389410893442" y="402.2177344245948"/>
                    <End x="1062.25" y="589.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_678" name="SpeciesReferenceGlyph_107" metaboliteGlyph="Layout_472" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1355.389410893442" y="402.2177344245948"/>
                    <End x="1282" y="771"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_679" name="ReactionGlyph_36" reaction="Reaction_106">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1629.362617338236" y="513.1787942509392"/>
                <End x="1631.952503487627" y="498.4040695586415"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_680" name="SpeciesReferenceGlyph_108" metaboliteGlyph="Layout_476" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1629.362617338236" y="513.1787942509392"/>
                    <End x="1618" y="578"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_681" name="SpeciesReferenceGlyph_109" metaboliteGlyph="Layout_491" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.952503487627" y="498.4040695586415"/>
                    <End x="1600" y="525"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_682" name="SpeciesReferenceGlyph_110" metaboliteGlyph="Layout_467" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.952503487627" y="498.4040695586415"/>
                    <End x="932.25" y="721.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_683" name="ReactionGlyph_37" reaction="Reaction_107">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="782.7595969770849" y="1104.428879634638"/>
                <End x="767.7595969770849" y="1104.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_684" name="SpeciesReferenceGlyph_111" metaboliteGlyph="Layout_499" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="782.7595969770849" y="1104.428879634638"/>
                    <End x="811.2595969770849" y="1104.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_685" name="SpeciesReferenceGlyph_112" metaboliteGlyph="Layout_496" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="767.7595969770849" y="1104.428879634638"/>
                    <End x="739.2595969770849" y="1104.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_686" name="SpeciesReferenceGlyph_113" metaboliteGlyph="Layout_497" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="928.109366613873" y="1031.717820858397"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="928.109366613873" y="1031.717820858397"/>
                    <End x="925.6440806893369" y="1093.649519445147"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="925.6440806893369" y="1093.649519445147"/>
                    <End x="783.6127756118017" y="1087.995746252398"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="783.6127756118017" y="1087.995746252398"/>
                    <End x="782.7595969770849" y="1109.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_687" name="SpeciesReferenceGlyph_114" metaboliteGlyph="Layout_526" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="840.5"/>
                    <End x="110.3654342595634" y="948.7422404489374"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="110.3654342595634" y="948.7422404489374"/>
                    <End x="791.2450008514992" y="1003.056520665925"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="791.2450008514992" y="1003.056520665925"/>
                    <End x="782.7595969770849" y="1109.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_688" name="ReactionGlyph_38" reaction="Reaction_108">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="784.7595969770849" y="1202.428879634638"/>
                <End x="769.7595969770849" y="1202.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_689" name="SpeciesReferenceGlyph_115" metaboliteGlyph="Layout_498" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="784.7595969770849" y="1202.428879634638"/>
                    <End x="813.2595969770849" y="1202.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_690" name="SpeciesReferenceGlyph_116" metaboliteGlyph="Layout_495" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="769.7595969770849" y="1202.428879634638"/>
                    <End x="741.2595969770849" y="1202.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_691" name="SpeciesReferenceGlyph_117" metaboliteGlyph="Layout_497" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="952.4317278560193" y="1041.579140124076"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.4317278560193" y="1041.579140124076"/>
                    <End x="908.8350738875392" y="1243.247365797418"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="908.8350738875392" y="1243.247365797418"/>
                    <End x="782.9017022498986" y="1216.023078936961"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="782.9017022498986" y="1216.023078936961"/>
                    <End x="784.7595969770849" y="1207.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_692" name="SpeciesReferenceGlyph_118" metaboliteGlyph="Layout_526" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="840.5"/>
                    <End x="90.22323398803003" y="1126.215427245889"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="90.22323398803003" y="1126.215427245889"/>
                    <End x="785.8823902121583" y="1196.281019978191"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="785.8823902121583" y="1196.281019978191"/>
                    <End x="784.7595969770849" y="1207.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_693" name="ReactionGlyph_39" reaction="Reaction_109">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="553.2040414215297" y="1114.428879634638"/>
                <End x="558.475642669959" y="1128.472035272797"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_694" name="SpeciesReferenceGlyph_119" metaboliteGlyph="Layout_530" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="607.2595969770849" y="1258.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_695" name="SpeciesReferenceGlyph_120" metaboliteGlyph="Layout_493" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="500.2595969770849" y="1114.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_696" name="SpeciesReferenceGlyph_121" metaboliteGlyph="Layout_496" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="659.2595969770849" y="1114.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_697" name="ReactionGlyph_40" reaction="Reaction_110">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="606.9010812291921" y="1309.430214272961"/>
                <End x="606.6181127249778" y="1324.427544996314"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_698" name="SpeciesReferenceGlyph_122" metaboliteGlyph="Layout_530" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="606.9010812291921" y="1309.430214272961"/>
                    <End x="607.2595969770849" y="1290.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_699" name="SpeciesReferenceGlyph_123" metaboliteGlyph="Layout_532" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="606.6181127249778" y="1324.427544996314"/>
                    <End x="606.2595969770849" y="1343.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_700" name="SpeciesReferenceGlyph_124" metaboliteGlyph="Layout_495" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="701.2595969770849" y="1232.428879634638"/>
                    <End x="706.4413905116346" y="1315.29403710323"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="706.4413905116346" y="1315.29403710323"/>
                    <End x="618.0776700639924" y="1320.819671390209"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_701" name="ReactionGlyph_41" reaction="Reaction_111">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="753.5469671775197" y="1337.668133438067"/>
                <End x="746.3590310793384" y="1350.833754374751"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_702" name="SpeciesReferenceGlyph_125" metaboliteGlyph="Layout_533" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="695.2595969770849" y="1444.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_703" name="SpeciesReferenceGlyph_126" metaboliteGlyph="Layout_532" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="606.2595969770849" y="1376.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_704" name="SpeciesReferenceGlyph_127" metaboliteGlyph="Layout_531" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="779.2595969770849" y="1376.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_705" name="ReactionGlyph_42" reaction="Reaction_112">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="593.537840866738" y="1508.09024060569"/>
                <End x="579.1000063531167" y="1512.158278776268"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_706" name="SpeciesReferenceGlyph_128" metaboliteGlyph="Layout_533" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="593.537840866738" y="1508.09024060569"/>
                    <End x="695.2595969770849" y="1479.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_707" name="SpeciesReferenceGlyph_129" metaboliteGlyph="Layout_534" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="579.1000063531167" y="1512.158278776268"/>
                    <End x="577.2595969770849" y="1532.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_708" name="SpeciesReferenceGlyph_130" metaboliteGlyph="Layout_496" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="579.1000063531167" y="1512.158278776268"/>
                    <End x="659.2595969770849" y="1124.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_709" name="ReactionGlyph_43" reaction="Reaction_113">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="460.2595969770849" y="1278.428879634638"/>
                <End x="460.2595969770849" y="1263.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_710" name="SpeciesReferenceGlyph_131" metaboliteGlyph="Layout_502" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="460.2595969770849" y="1278.428879634638"/>
                    <End x="460.2595969770849" y="1407.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_711" name="SpeciesReferenceGlyph_132" metaboliteGlyph="Layout_493" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="460.2595969770849" y="1263.428879634638"/>
                    <End x="460.2595969770849" y="1134.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_712" name="ReactionGlyph_44" reaction="Reaction_114">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="646.193698339002" y="1439.570869862514"/>
                <End x="653.2268118474281" y="1426.321895774774"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_713" name="SpeciesReferenceGlyph_133" metaboliteGlyph="Layout_534" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="646.193698339002" y="1439.570869862514"/>
                    <End x="577.2595969770849" y="1569.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_714" name="SpeciesReferenceGlyph_134" metaboliteGlyph="Layout_502" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.2268118474281" y="1426.321895774774"/>
                    <End x="460.2595969770849" y="1447.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_715" name="SpeciesReferenceGlyph_135" metaboliteGlyph="Layout_531" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.2268118474281" y="1426.321895774774"/>
                    <End x="828.2595969770849" y="1358.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_716" name="ReactionGlyph_45" reaction="Reaction_115">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1188.759411008997" y="1786.376064042864"/>
                <End x="1173.759782945173" y="1786.481695226412"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_717" name="SpeciesReferenceGlyph_136" metaboliteGlyph="Layout_514" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1188.759411008997" y="1786.376064042864"/>
                    <End x="1323.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_718" name="SpeciesReferenceGlyph_137" metaboliteGlyph="Layout_513" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1173.759782945173" y="1786.481695226412"/>
                    <End x="1039.259596977085" y="1787.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_719" name="ReactionGlyph_46" reaction="Reaction_116">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1471.759596977085" y="1785.428879634638"/>
                <End x="1456.759596977085" y="1785.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_720" name="SpeciesReferenceGlyph_138" metaboliteGlyph="Layout_517" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1471.759596977085" y="1785.428879634638"/>
                    <End x="1515.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_721" name="SpeciesReferenceGlyph_139" metaboliteGlyph="Layout_514" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1456.759596977085" y="1785.428879634638"/>
                    <End x="1413.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_722" name="SpeciesReferenceGlyph_140" metaboliteGlyph="Layout_516" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1518.259596977085" y="1662.428879634638"/>
                    <End x="1523.922584154411" y="1719.479465507259"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1523.922584154411" y="1719.479465507259"/>
                    <End x="1466.277581551034" y="1725.201456010716"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1466.277581551034" y="1725.201456010716"/>
                    <End x="1471.759596977085" y="1780.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_723" name="SpeciesReferenceGlyph_141" metaboliteGlyph="Layout_518" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1585.259596977085" y="1388.428879634638"/>
                    <End x="1596.755553465548" y="1740.791257305099"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1596.755553465548" y="1740.791257305099"/>
                    <End x="1470.600685671177" y="1744.907107812636"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1470.600685671177" y="1744.907107812636"/>
                    <End x="1471.759596977085" y="1780.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_724" name="ReactionGlyph_47" reaction="Reaction_117">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1057.759596977085" y="1535.428879634638"/>
                <End x="1072.759596977085" y="1535.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_725" name="SpeciesReferenceGlyph_142" metaboliteGlyph="Layout_507" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1057.759596977085" y="1535.428879634638"/>
                    <End x="984.2595969770849" y="1535.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_726" name="SpeciesReferenceGlyph_143" metaboliteGlyph="Layout_506" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1072.759596977085" y="1535.428879634638"/>
                    <End x="1146.259596977085" y="1535.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_727" name="SpeciesReferenceGlyph_144" metaboliteGlyph="Layout_534" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="612.2595969770849" y="1569.428879634638"/>
                    <End x="612.2790579694291" y="1588.872337260909"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="612.2790579694291" y="1588.872337260909"/>
                    <End x="1065.307630276484" y="1588.418900133275"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1065.307630276484" y="1588.418900133275"/>
                    <End x="1065.259596977085" y="1540.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_728" name="ReactionGlyph_48" reaction="Reaction_118">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1072.759596977085" y="1515.428879634638"/>
                <End x="1057.759596977085" y="1515.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_729" name="SpeciesReferenceGlyph_145" metaboliteGlyph="Layout_506" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1072.759596977085" y="1515.428879634638"/>
                    <End x="1146.259596977085" y="1515.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_730" name="SpeciesReferenceGlyph_146" metaboliteGlyph="Layout_507" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1057.759596977085" y="1515.428879634638"/>
                    <End x="984.2595969770849" y="1515.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_731" name="ReactionGlyph_49" reaction="Reaction_119">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1054.759596977085" y="1394.428879634638"/>
                <End x="1069.759596977085" y="1394.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_732" name="SpeciesReferenceGlyph_147" metaboliteGlyph="Layout_501" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1054.759596977085" y="1394.428879634638"/>
                    <End x="980.2595969770849" y="1394.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_733" name="SpeciesReferenceGlyph_148" metaboliteGlyph="Layout_505" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1069.759596977085" y="1394.428879634638"/>
                    <End x="1144.259596977085" y="1394.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_734" name="SpeciesReferenceGlyph_149" metaboliteGlyph="Layout_506" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1186.259596977085" y="1505.428879634638"/>
                    <End x="1186.262113102665" y="1451.431728956007"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1186.262113102665" y="1451.431728956007"/>
                    <End x="1062.257174049971" y="1451.425950651128"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1062.257174049971" y="1451.425950651128"/>
                    <End x="1062.259596977085" y="1399.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_735" name="ReactionGlyph_50" reaction="Reaction_120">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1069.759596977085" y="1374.428879634638"/>
                <End x="1054.759596977085" y="1374.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_736" name="SpeciesReferenceGlyph_150" metaboliteGlyph="Layout_505" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1069.759596977085" y="1374.428879634638"/>
                    <End x="1144.259596977085" y="1374.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_737" name="SpeciesReferenceGlyph_151" metaboliteGlyph="Layout_501" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1054.759596977085" y="1374.428879634638"/>
                    <End x="980.2595969770849" y="1374.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_738" name="ReactionGlyph_51" reaction="Reaction_121">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1091.759596977085" y="1311.428879634638"/>
                <End x="1106.759596977085" y="1311.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_739" name="SpeciesReferenceGlyph_152" metaboliteGlyph="Layout_500" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1091.759596977085" y="1311.428879634638"/>
                    <End x="1059.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_740" name="SpeciesReferenceGlyph_153" metaboliteGlyph="Layout_504" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1106.759596977085" y="1311.428879634638"/>
                    <End x="1139.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_741" name="SpeciesReferenceGlyph_154" metaboliteGlyph="Layout_505" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.259596977085" y="1364.428879634638"/>
                    <End x="1184.262110749757" y="1336.249428836662"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.262110749757" y="1336.249428836662"/>
                    <End x="1099.257829544013" y="1336.241845955057"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1099.257829544013" y="1336.241845955057"/>
                    <End x="1099.259596977085" y="1316.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_742" name="ReactionGlyph_52" reaction="Reaction_122">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1106.759596977085" y="1291.428879634638"/>
                <End x="1091.759596977085" y="1291.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_743" name="SpeciesReferenceGlyph_155" metaboliteGlyph="Layout_504" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1106.759596977085" y="1291.428879634638"/>
                    <End x="1139.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_744" name="SpeciesReferenceGlyph_156" metaboliteGlyph="Layout_500" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1091.759596977085" y="1291.428879634638"/>
                    <End x="1059.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_745" name="ReactionGlyph_53" reaction="Reaction_123">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1219.259596977085" y="1183.428879634638"/>
                <End x="1234.259596977085" y="1183.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_746" name="SpeciesReferenceGlyph_157" metaboliteGlyph="Layout_503" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.259596977085" y="1183.428879634638"/>
                    <End x="1184.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_747" name="SpeciesReferenceGlyph_158" metaboliteGlyph="Layout_508" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.259596977085" y="1183.428879634638"/>
                    <End x="1269.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_748" name="SpeciesReferenceGlyph_159" metaboliteGlyph="Layout_509" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.259596977085" y="1281.428879634638"/>
                    <End x="1333.262127428227" y="1233.931670182513"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.262127428227" y="1233.931670182513"/>
                    <End x="1226.757173082471" y="1233.925996047412"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1226.757173082471" y="1233.925996047412"/>
                    <End x="1226.759596977085" y="1188.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_749" name="ReactionGlyph_54" reaction="Reaction_124">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1234.259596977085" y="1163.428879634638"/>
                <End x="1219.259596977085" y="1163.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_750" name="SpeciesReferenceGlyph_160" metaboliteGlyph="Layout_508" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.259596977085" y="1163.428879634638"/>
                    <End x="1269.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_751" name="SpeciesReferenceGlyph_161" metaboliteGlyph="Layout_503" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.259596977085" y="1163.428879634638"/>
                    <End x="1184.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_752" name="ReactionGlyph_55" reaction="Reaction_125">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.241426635738" y="1824.826724789782"/>
                <End x="986.2777673184319" y="1839.531034479493"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_753" name="SpeciesReferenceGlyph_162" metaboliteGlyph="Layout_513" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.241426635738" y="1824.826724789782"/>
                    <End x="994.2595969770849" y="1799.928879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_754" name="SpeciesReferenceGlyph_163" metaboliteGlyph="Layout_519" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="986.2777673184319" y="1839.531034479493"/>
                    <End x="981.2595969770849" y="1864.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_755" name="ReactionGlyph_56" reaction="Reaction_126">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="859.5803291329336" y="766.6235167266207"/>
                <End x="874.5801574362798" y="766.5517471639089"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_756" name="SpeciesReferenceGlyph_164" metaboliteGlyph="Layout_512" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="859.5803291329336" y="766.6235167266207"/>
                    <End x="691.2595969770849" y="767.4288796346377"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_757" name="SpeciesReferenceGlyph_165" metaboliteGlyph="Layout_469" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="874.5801574362798" y="766.5517471639089"/>
                    <End x="1042.900889592128" y="765.7463842558918"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.900889592128" y="765.7463842558918"/>
                    <End x="1042.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_758" name="SpeciesReferenceGlyph_166" metaboliteGlyph="Layout_513" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="949.2595969770849" y="1787.428879634638"/>
                    <End x="851.9848662972771" y="1785.997721146786"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="851.9848662972771" y="1785.997721146786"/>
                    <End x="867.0562771728727" y="761.6056315681607"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_759" name="ReactionGlyph_57" reaction="Reaction_127">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="749.0104708992505" y="1031.793370109109"/>
                <End x="764.0087230549193" y="1031.564389160167"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_760" name="SpeciesReferenceGlyph_167" metaboliteGlyph="Layout_494" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="749.0104708992505" y="1031.793370109109"/>
                    <End x="691.0095969770849" y="1032.678879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_761" name="SpeciesReferenceGlyph_168" metaboliteGlyph="Layout_497" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="764.0087230549193" y="1031.564389160167"/>
                    <End x="822.0095969770849" y="1030.678879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_762" name="ReactionGlyph_58" reaction="Reaction_128">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1263.759596977085" y="1291.428879634638"/>
                <End x="1248.759596977085" y="1291.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_763" name="SpeciesReferenceGlyph_169" metaboliteGlyph="Layout_509" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1263.759596977085" y="1291.428879634638"/>
                    <End x="1293.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_764" name="SpeciesReferenceGlyph_170" metaboliteGlyph="Layout_504" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.759596977085" y="1291.428879634638"/>
                    <End x="1219.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_765" name="ReactionGlyph_59" reaction="Reaction_129">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1248.759596977085" y="1311.428879634638"/>
                <End x="1263.759596977085" y="1311.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_766" name="SpeciesReferenceGlyph_171" metaboliteGlyph="Layout_504" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.759596977085" y="1311.428879634638"/>
                    <End x="1219.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_767" name="SpeciesReferenceGlyph_172" metaboliteGlyph="Layout_509" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1263.759596977085" y="1311.428879634638"/>
                    <End x="1293.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_768" name="SpeciesReferenceGlyph_173" metaboliteGlyph="Layout_505" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.259596977085" y="1364.428879634638"/>
                    <End x="1184.256911252498" y="1336.499134416135"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.256911252498" y="1336.499134416135"/>
                    <End x="1256.261526267182" y="1336.492210451617"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1256.261526267182" y="1336.492210451617"/>
                    <End x="1256.259596977085" y="1316.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_769" name="ReactionGlyph_60" reaction="Reaction_130">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1399.259596977085" y="1163.428879634638"/>
                <End x="1384.259596977085" y="1163.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_770" name="SpeciesReferenceGlyph_174" metaboliteGlyph="Layout_515" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1399.259596977085" y="1163.428879634638"/>
                    <End x="1434.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_771" name="SpeciesReferenceGlyph_175" metaboliteGlyph="Layout_508" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1384.259596977085" y="1163.428879634638"/>
                    <End x="1349.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_772" name="ReactionGlyph_61" reaction="Reaction_131">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1384.259596977085" y="1183.428879634638"/>
                <End x="1399.259596977085" y="1183.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_773" name="SpeciesReferenceGlyph_176" metaboliteGlyph="Layout_508" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1384.259596977085" y="1183.428879634638"/>
                    <End x="1349.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_774" name="SpeciesReferenceGlyph_177" metaboliteGlyph="Layout_515" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1399.259596977085" y="1183.428879634638"/>
                    <End x="1434.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_775" name="SpeciesReferenceGlyph_178" metaboliteGlyph="Layout_509" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.259596977085" y="1281.428879634638"/>
                    <End x="1333.257294907571" y="1233.930220327901"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.257294907571" y="1233.930220327901"/>
                    <End x="1391.761802107152" y="1233.927384849081"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1391.761802107152" y="1233.927384849081"/>
                    <End x="1391.759596977085" y="1188.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_776" name="ReactionGlyph_62" reaction="Reaction_132">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1416.176263643752" y="1632.428879634638"/>
                <End x="1428.592930310418" y="1632.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_777" name="SpeciesReferenceGlyph_179" metaboliteGlyph="Layout_511" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1416.176263643752" y="1632.428879634638"/>
                    <End x="1403.759596977085" y="1632.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_778" name="SpeciesReferenceGlyph_180" metaboliteGlyph="Layout_516" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1428.592930310418" y="1632.428879634638"/>
                    <End x="1441.009596977085" y="1632.428879634638"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1441.009596977085" y="1632.428879634638"/>
                    <End x="1441.009596977085" y="1632.428879634638"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1441.009596977085" y="1632.428879634638"/>
                    <End x="1478.259596977085" y="1632.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_779" name="SpeciesReferenceGlyph_181" metaboliteGlyph="Layout_515" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.259596977085" y="1193.428879634638"/>
                    <End x="1454.259963921964" y="1411.428875725865"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.259963921964" y="1411.428875725865"/>
                    <End x="1422.38423339875" y="1411.42892938016"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1422.38423339875" y="1411.42892938016"/>
                    <End x="1422.384596977085" y="1627.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_780" name="ReactionGlyph_63" reaction="Reaction_133">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1448.509596977085" y="1652.428879634638"/>
                <End x="1433.509596977085" y="1652.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_781" name="SpeciesReferenceGlyph_182" metaboliteGlyph="Layout_516" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1448.509596977085" y="1652.428879634638"/>
                    <End x="1478.259596977085" y="1652.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_782" name="SpeciesReferenceGlyph_183" metaboliteGlyph="Layout_511" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1433.509596977085" y="1652.428879634638"/>
                    <End x="1403.759596977085" y="1652.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_783" name="ReactionGlyph_64" reaction="Reaction_134">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1445.536212614359" y="1368.261846975514"/>
                <End x="1460.535703692608" y="1368.138285680813"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_784" name="SpeciesReferenceGlyph_184" metaboliteGlyph="Layout_510" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1445.536212614359" y="1368.261846975514"/>
                    <End x="1425.259596977085" y="1368.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_785" name="SpeciesReferenceGlyph_185" metaboliteGlyph="Layout_518" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1460.535703692608" y="1368.138285680813"/>
                    <End x="1480.812319329882" y="1367.971253021689"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1480.812319329882" y="1367.971253021689"/>
                    <End x="1480.817419094845" y="1368.794980924998"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1480.817419094845" y="1368.794980924998"/>
                    <End x="1525.259596977085" y="1368.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_786" name="SpeciesReferenceGlyph_186" metaboliteGlyph="Layout_497" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="1450.823049459839" y="1027.13289194698"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1450.823049459839" y="1027.13289194698"/>
                    <End x="1452.994643824812" y="1363.231126292422"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_787" name="ReactionGlyph_65" reaction="Reaction_135">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1042.25" y="543.210552944251"/>
                <End x="1042.25" y="528.210552944251"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_788" name="SpeciesReferenceGlyph_187" metaboliteGlyph="Layout_469" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.25" y="543.210552944251"/>
                    <End x="1042.25" y="589.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_789" name="SpeciesReferenceGlyph_188" metaboliteGlyph="Layout_520" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.25" y="528.210552944251"/>
                    <End x="1042.25" y="481.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_790" name="ReactionGlyph_66" reaction="Reaction_136">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1107.758910383807" y="732.6923798071418"/>
                <End x="1114.541249999999" y="719.3132965302267"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_791" name="SpeciesReferenceGlyph_189" metaboliteGlyph="Layout_465" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1107.758910383807" y="732.6923798071418"/>
                    <End x="1089.5" y="768.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_792" name="SpeciesReferenceGlyph_190" metaboliteGlyph="Layout_521" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1114.541249999999" y="719.3132965302267"/>
                    <End x="1114" y="709"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_793" name="SpeciesReferenceGlyph_191" metaboliteGlyph="Layout_466" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1114.541249999999" y="719.3132965302267"/>
                    <End x="968.25" y="773.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_794" name="ReactionGlyph_67" reaction="Reaction_137">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1234.115049674889" y="612.6277445481539"/>
                <End x="1247.135490570769" y="605.1800523635314"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_795" name="SpeciesReferenceGlyph_192" metaboliteGlyph="Layout_468" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.115049674889" y="612.6277445481539"/>
                    <End x="1204.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_796" name="SpeciesReferenceGlyph_193" metaboliteGlyph="Layout_521" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1247.135490570769" y="605.1800523635314"/>
                    <End x="1114" y="679"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_797" name="SpeciesReferenceGlyph_194" metaboliteGlyph="Layout_467" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1247.135490570769" y="605.1800523635314"/>
                    <End x="972.25" y="681.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_798" name="ReactionGlyph_68" reaction="Reaction_138">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1543.495970933637" y="411.0347027175185"/>
                <End x="1556.853799892395" y="404.210597977073"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_799" name="SpeciesReferenceGlyph_195" metaboliteGlyph="Layout_492" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1543.495970933637" y="411.0347027175185"/>
                    <End x="1408.5" y="480"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_800" name="SpeciesReferenceGlyph_196" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.853799892395" y="404.210597977073"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_801" name="SpeciesReferenceGlyph_197" metaboliteGlyph="Layout_523" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.853799892395" y="404.210597977073"/>
                    <End x="1616" y="443"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_802" name="ReactionGlyph_69" reaction="Reaction_139">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1631.919590428995" y="504.7390920774716"/>
                <End x="1643.955801104972" y="513.6906077348061"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_803" name="SpeciesReferenceGlyph_198" metaboliteGlyph="Layout_491" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.919590428995" y="504.7390920774716"/>
                    <End x="1600" y="481"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_804" name="SpeciesReferenceGlyph_199" metaboliteGlyph="Layout_523" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1643.955801104972" y="513.6906077348061"/>
                    <End x="1601" y="428"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_805" name="SpeciesReferenceGlyph_200" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1643.955801104972" y="513.6906077348061"/>
                    <End x="1546" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_806" name="ReactionGlyph_70" reaction="Reaction_140">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1620.025679195564" y="428.6043465236992"/>
                <End x="1631.543783110003" y="418.9953256466185"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_807" name="SpeciesReferenceGlyph_201" metaboliteGlyph="Layout_475" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1620.025679195564" y="428.6043465236992"/>
                    <End x="1439.75" y="579"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_808" name="SpeciesReferenceGlyph_202" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.543783110003" y="418.9953256466185"/>
                    <End x="1506" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_809" name="SpeciesReferenceGlyph_203" metaboliteGlyph="Layout_524" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.543783110003" y="418.9953256466185"/>
                    <End x="1728" y="554"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_810" name="ReactionGlyph_71" reaction="Reaction_141">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1548.118452021653" y="424.9090637682244"/>
                <End x="1545.430800611933" y="410.1518103008671"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_811" name="SpeciesReferenceGlyph_204" metaboliteGlyph="Layout_476" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1548.118452021653" y="424.9090637682244"/>
                    <End x="1576" y="578"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_812" name="SpeciesReferenceGlyph_205" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1545.430800611933" y="410.1518103008671"/>
                    <End x="1486" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_813" name="SpeciesReferenceGlyph_206" metaboliteGlyph="Layout_524" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1545.430800611933" y="410.1518103008671"/>
                    <End x="1728" y="564"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_814" name="ReactionGlyph_72" reaction="Reaction_142">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1585.547653606165" y="426.8628668083527"/>
                <End x="1594.917753404909" y="415.1495739424849"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_815" name="SpeciesReferenceGlyph_207" metaboliteGlyph="Layout_473" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1585.547653606165" y="426.8628668083527"/>
                    <End x="1374.25" y="691"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_816" name="SpeciesReferenceGlyph_208" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.917753404909" y="415.1495739424849"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_817" name="SpeciesReferenceGlyph_209" metaboliteGlyph="Layout_525" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.917753404909" y="415.1495739424849"/>
                    <End x="1729" y="664"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_818" name="ReactionGlyph_73" reaction="Reaction_143">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1551.77736919526" y="577.1507564610167"/>
                <End x="1553.500000000003" y="562.2499999999993"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_819" name="SpeciesReferenceGlyph_210" metaboliteGlyph="Layout_474" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1551.77736919526" y="577.1507564610167"/>
                    <End x="1538.5" y="692"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_820" name="SpeciesReferenceGlyph_211" metaboliteGlyph="Layout_522" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1553.500000000003" y="562.2499999999993"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_821" name="SpeciesReferenceGlyph_212" metaboliteGlyph="Layout_525" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1553.500000000003" y="562.2499999999993"/>
                    <End x="1729" y="674"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_822" name="TextGlyph" graphicalObject="Layout_449" text="Cell">
          <BoundingBox>
            <Position x="881" y="825.5"/>
            <Dimensions width="1003" height="1150.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_823" name="TextGlyph_1" graphicalObject="Layout_450" text="ER">
          <BoundingBox>
            <Position x="748.5" y="961.5"/>
            <Dimensions width="-184.5" height="-400.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_824" name="TextGlyph_2" graphicalObject="Layout_451" text="nucleus">
          <BoundingBox>
            <Position x="2763" y="3375.5"/>
            <Dimensions width="-1050" height="-1515.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_825" name="TextGlyph_3" graphicalObject="Layout_452" text="Ca_ex">
          <BoundingBox>
            <Position x="205" y="662"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_826" name="TextGlyph_4" graphicalObject="Layout_453" text="Ca_s">
          <BoundingBox>
            <Position x="367" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_827" name="TextGlyph_5" graphicalObject="Layout_454" text="Ca_c">
          <BoundingBox>
            <Position x="613" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_828" name="TextGlyph_6" graphicalObject="Layout_471" text="Ca_c">
          <BoundingBox>
            <Position x="798.75" y="591.210552944251"/>
            <Dimensions width="37" height="34"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_829" name="TextGlyph_7" graphicalObject="Layout_455" text="Ca_B">
          <BoundingBox>
            <Position x="748" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_830" name="TextGlyph_8" graphicalObject="Layout_457" text="IP3">
          <BoundingBox>
            <Position x="749" y="339"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_831" name="TextGlyph_9" graphicalObject="Layout_463" text="TimeT">
          <BoundingBox>
            <Position x="382.5" y="337.5"/>
            <Dimensions width="54" height="43"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_832" name="TextGlyph_10" graphicalObject="Layout_480" text="PDK1">
          <BoundingBox>
            <Position x="1322.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_833" name="TextGlyph_11" graphicalObject="Layout_478" text="PP2A">
          <BoundingBox>
            <Position x="1188.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_834" name="TextGlyph_12" graphicalObject="Layout_477" text="AKT">
          <BoundingBox>
            <Position x="1431.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_835" name="TextGlyph_13" graphicalObject="Layout_479" text="PI3P">
          <BoundingBox>
            <Position x="1505.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_836" name="TextGlyph_14" graphicalObject="Layout_481" text="PTEN">
          <BoundingBox>
            <Position x="1554.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_837" name="TextGlyph_15" graphicalObject="Layout_482" text="PIP2">
          <BoundingBox>
            <Position x="1612.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_838" name="TextGlyph_16" graphicalObject="Layout_483" text="p-PI3K">
          <BoundingBox>
            <Position x="1699.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_839" name="TextGlyph_17" graphicalObject="Layout_485" text="PI3K">
          <BoundingBox>
            <Position x="1848.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_840" name="TextGlyph_18" graphicalObject="Layout_486" text="Time">
          <BoundingBox>
            <Position x="1859.125" y="363.4578593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_841" name="TextGlyph_19" graphicalObject="Layout_487" text="PDK2">
          <BoundingBox>
            <Position x="1189.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_842" name="TextGlyph_20" graphicalObject="Layout_488" text="PDK1_cyto">
          <BoundingBox>
            <Position x="1322.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_843" name="TextGlyph_21" graphicalObject="Layout_527" text="p-AKT:PI3P">
          <BoundingBox>
            <Position x="1198.375" y="171.2078593287326"/>
            <Dimensions width="83" height="69"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_844" name="TextGlyph_22" graphicalObject="Layout_529" text="pp-AKT:PI3P">
          <BoundingBox>
            <Position x="1085.375" y="484.2078593287326"/>
            <Dimensions width="95" height="63"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_845" name="TextGlyph_23" graphicalObject="Layout_528" text="AKT:PI3P">
          <BoundingBox>
            <Position x="1329.375" y="171.2078593287326"/>
            <Dimensions width="85" height="68"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_846" name="TextGlyph_24" graphicalObject="Layout_497" text="Time">
          <BoundingBox>
            <Position x="822.0095969770849" y="1010.678879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_847" name="TextGlyph_25" graphicalObject="Layout_511" text="AP-1">
          <BoundingBox>
            <Position x="1323.759596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_848" name="TextGlyph_26" graphicalObject="Layout_509" text="pp-JNKK">
          <BoundingBox>
            <Position x="1293.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_849" name="TextGlyph_27" graphicalObject="Layout_515" text="pp-JNK">
          <BoundingBox>
            <Position x="1434.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_850" name="TextGlyph_28" graphicalObject="Layout_465" text="eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1009.25" y="768.710552944251"/>
            <Dimensions width="107" height="44"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_851" name="TextGlyph_29" graphicalObject="Layout_466" text="CaM-Ca4">
          <BoundingBox>
            <Position x="888.25" y="773.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_852" name="TextGlyph_30" graphicalObject="Layout_525" text="CaM-Ca4">
          <BoundingBox>
            <Position x="1729" y="644"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_853" name="TextGlyph_31" graphicalObject="Layout_467" text="CaM-Ca2">
          <BoundingBox>
            <Position x="892.25" y="681.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_854" name="TextGlyph_32" graphicalObject="Layout_524" text="CaM-Ca2">
          <BoundingBox>
            <Position x="1728" y="524"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_855" name="TextGlyph_33" graphicalObject="Layout_518" text="KLF2">
          <BoundingBox>
            <Position x="1525.259596977085" y="1348.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_856" name="TextGlyph_34" graphicalObject="Layout_468" text="eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1179.25" y="589.710552944251"/>
            <Dimensions width="100" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_857" name="TextGlyph_35" graphicalObject="Layout_469" text="eNOS-Cav-1">
          <BoundingBox>
            <Position x="1022.25" y="589.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_858" name="TextGlyph_36" graphicalObject="Layout_470" text="Calmodulin">
          <BoundingBox>
            <Position x="889.25" y="587.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_859" name="TextGlyph_37" graphicalObject="Layout_472" text="Hsp90">
          <BoundingBox>
            <Position x="1242" y="771"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_860" name="TextGlyph_38" graphicalObject="Layout_522" text="Hsp90">
          <BoundingBox>
            <Position x="1486" y="394"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_861" name="TextGlyph_39" graphicalObject="Layout_473" text="Hsp90-eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1258" y="691"/>
            <Dimensions width="155" height="38"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_862" name="TextGlyph_40" graphicalObject="Layout_474" text="Hsp90-p-eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1496" y="692"/>
            <Dimensions width="170" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_863" name="TextGlyph_41" graphicalObject="Layout_475" text="Hsp90-eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1325" y="579"/>
            <Dimensions width="153" height="39"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_864" name="TextGlyph_42" graphicalObject="Layout_476" text="Hsp90-p-eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1534" y="578"/>
            <Dimensions width="168" height="41"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_865" name="TextGlyph_43" graphicalObject="Layout_489" text="L-Arg">
          <BoundingBox>
            <Position x="1380" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_866" name="TextGlyph_44" graphicalObject="Layout_490" text="NO">
          <BoundingBox>
            <Position x="1592" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_867" name="TextGlyph_45" graphicalObject="Layout_491" text="Hsp90-p-eNOS">
          <BoundingBox>
            <Position x="1544" y="481"/>
            <Dimensions width="112" height="44"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_868" name="TextGlyph_46" graphicalObject="Layout_492" text="Hsp90-eNOS">
          <BoundingBox>
            <Position x="1362" y="480"/>
            <Dimensions width="93" height="45"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_869" name="TextGlyph_47" graphicalObject="Layout_493" text="Shc">
          <BoundingBox>
            <Position x="420.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_870" name="TextGlyph_48" graphicalObject="Layout_495" text="p-Src">
          <BoundingBox>
            <Position x="661.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_871" name="TextGlyph_49" graphicalObject="Layout_496" text="p-FAK">
          <BoundingBox>
            <Position x="659.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_872" name="TextGlyph_50" graphicalObject="Layout_498" text="Src">
          <BoundingBox>
            <Position x="813.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_873" name="TextGlyph_51" graphicalObject="Layout_499" text="FAK">
          <BoundingBox>
            <Position x="811.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_874" name="TextGlyph_52" graphicalObject="Layout_500" text="JNKK">
          <BoundingBox>
            <Position x="979.2595969770849" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_875" name="TextGlyph_53" graphicalObject="Layout_501" text="MEKK1">
          <BoundingBox>
            <Position x="900.2595969770849" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_876" name="TextGlyph_54" graphicalObject="Layout_502" text="p-Shc">
          <BoundingBox>
            <Position x="420.2595969770849" y="1407.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_877" name="TextGlyph_55" graphicalObject="Layout_503" text="JNK">
          <BoundingBox>
            <Position x="1104.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_878" name="TextGlyph_56" graphicalObject="Layout_504" text="p-JNKK">
          <BoundingBox>
            <Position x="1139.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_879" name="TextGlyph_57" graphicalObject="Layout_505" text="p-MEKK1">
          <BoundingBox>
            <Position x="1144.259596977085" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_880" name="TextGlyph_58" graphicalObject="Layout_506" text="Ras:GTP">
          <BoundingBox>
            <Position x="1146.259596977085" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_881" name="TextGlyph_59" graphicalObject="Layout_507" text="Ras:GDP">
          <BoundingBox>
            <Position x="904.2595969770849" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_882" name="TextGlyph_60" graphicalObject="Layout_508" text="p-JNK">
          <BoundingBox>
            <Position x="1269.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_883" name="TextGlyph_61" graphicalObject="Layout_510" text="KLF2">
          <BoundingBox>
            <Position x="1335.259596977085" y="1355.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_884" name="TextGlyph_62" graphicalObject="Layout_513" text="eNOS">
          <BoundingBox>
            <Position x="949.2595969770849" y="1774.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_885" name="TextGlyph_63" graphicalObject="Layout_516" text="aAP-1">
          <BoundingBox>
            <Position x="1478.259596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_886" name="TextGlyph_64" graphicalObject="Layout_517" text="eNOS">
          <BoundingBox>
            <Position x="1515.259596977085" y="1772.928879634638"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_887" name="TextGlyph_65" graphicalObject="Layout_530" text="p-FAK:Shc">
          <BoundingBox>
            <Position x="553.2595969770849" y="1258.428879634638"/>
            <Dimensions width="108" height="32"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_888" name="TextGlyph_66" graphicalObject="Layout_531" text="Grb2:Sos">
          <BoundingBox>
            <Position x="730.2595969770849" y="1340.428879634638"/>
            <Dimensions width="98" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_889" name="TextGlyph_67" graphicalObject="Layout_532" text="p-FAK:p-Shc">
          <BoundingBox>
            <Position x="552.2595969770849" y="1343.428879634638"/>
            <Dimensions width="108" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_890" name="TextGlyph_68" graphicalObject="Layout_533" text="p-FAK:p-Shc:Grb2:Sos">
          <BoundingBox>
            <Position x="609.2595969770849" y="1444.428879634638"/>
            <Dimensions width="172" height="35"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_891" name="TextGlyph_69" graphicalObject="Layout_534" text="p-Shc:Grb2:Sos">
          <BoundingBox>
            <Position x="507.2595969770849" y="1532.428879634638"/>
            <Dimensions width="140" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_892" name="TextGlyph_70" graphicalObject="Layout_514" text="eNOS">
          <BoundingBox>
            <Position x="1323.259596977085" y="1772.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_893" name="TextGlyph_71" graphicalObject="Layout_526" text="Shear Stress">
          <BoundingBox>
            <Position x="52" y="807.5"/>
            <Dimensions width="134" height="33"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_1" name="render info from celldesigner" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#cccc00"/>
            <ColorDefinition id="ColorDefinition_1" value="#cccc0023"/>
            <ColorDefinition id="ColorDefinition_2" value="#ccffcc"/>
            <ColorDefinition id="ColorDefinition_3" value="#ffcccc"/>
            <ColorDefinition id="ColorDefinition_4" value="#9999ff"/>
            <ColorDefinition id="ColorDefinition_5" value="#ccff66"/>
            <ColorDefinition id="ColorDefinition_6" value="#66ff66"/>
            <ColorDefinition id="ColorDefinition_7" value="#ffff66"/>
            <ColorDefinition id="ColorDefinition_8" value="#cccccc7f"/>
            <ColorDefinition id="ColorDefinition_9" value="#f7f7f7"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group>
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="none" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_166" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_167" roleList="modifier">
              <Group stroke="black" stroke-width="1" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_168" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_169" roleList="activator">
              <Group stroke="black" stroke-width="1" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_170" keyList="Layout_541 Layout_545 Layout_546 Layout_547 Layout_554 Layout_581 Layout_585 Layout_589 Layout_597 Layout_605 Layout_609 Layout_613 Layout_617 Layout_618 Layout_622 Layout_626 Layout_634 Layout_638 Layout_642 Layout_646 Layout_651 Layout_655 Layout_665 Layout_666 Layout_667 Layout_668 Layout_669 Layout_670 Layout_671 Layout_686 Layout_687 Layout_691 Layout_692 Layout_700 Layout_722 Layout_723 Layout_727 Layout_734 Layout_741 Layout_748 Layout_758 Layout_768 Layout_775 Layout_779 Layout_786">
              <Group stroke="black" stroke-width="1" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_171">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_172" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_173" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_174" keyList="Layout_449">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="1592" height="1760" rx="159.2" ry="159.2"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="1604" height="1772" rx="160.4" ry="160.4"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="1580" height="1748" rx="158" ry="158"/>
              </Group>
            </Style>
            <Style key="LocalStyle_175" keyList="Layout_450">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="247" height="124" rx="12.4" ry="12.4"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="259" height="136" rx="13.6" ry="13.6"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="235" height="112" rx="11.2" ry="11.2"/>
              </Group>
            </Style>
            <Style key="LocalStyle_176" keyList="Layout_451">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="425" height="308" rx="30.8" ry="30.8"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="437" height="320" rx="32" ry="32"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="413" height="296" rx="29.6" ry="29.6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_177" keyList="Layout_822">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_178" keyList="Layout_823">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_179" keyList="Layout_824">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_180" keyList="Layout_825">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_181" keyList="Layout_826">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_182" keyList="Layout_827">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_183" keyList="Layout_828">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_184" keyList="Layout_829">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_185" keyList="Layout_830">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_186" keyList="Layout_831">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_187" keyList="Layout_832">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_188" keyList="Layout_833">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_189" keyList="Layout_834">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_190" keyList="Layout_835">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_191" keyList="Layout_836">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_192" keyList="Layout_837">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_193" keyList="Layout_838">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_194" keyList="Layout_839">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_195" keyList="Layout_840">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_196" keyList="Layout_841">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_197" keyList="Layout_842">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_198" keyList="Layout_843">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_199" keyList="Layout_844">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_200" keyList="Layout_845">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_201" keyList="Layout_846">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_202" keyList="Layout_847">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_203" keyList="Layout_848">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_204" keyList="Layout_849">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_205" keyList="Layout_850">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_206" keyList="Layout_851">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_207" keyList="Layout_852">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_208" keyList="Layout_853">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_209" keyList="Layout_854">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_210" keyList="Layout_855">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_211" keyList="Layout_856">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_212" keyList="Layout_857">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_213" keyList="Layout_858">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_214" keyList="Layout_859">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_215" keyList="Layout_860">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_216" keyList="Layout_861">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_217" keyList="Layout_862">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_218" keyList="Layout_863">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_219" keyList="Layout_864">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_220" keyList="Layout_865">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_221" keyList="Layout_866">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_222" keyList="Layout_867">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_223" keyList="Layout_868">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_224" keyList="Layout_869">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_225" keyList="Layout_870">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_226" keyList="Layout_871">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_227" keyList="Layout_872">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_228" keyList="Layout_873">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_229" keyList="Layout_874">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_230" keyList="Layout_875">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_231" keyList="Layout_876">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_232" keyList="Layout_877">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_233" keyList="Layout_878">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_234" keyList="Layout_879">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_235" keyList="Layout_880">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_236" keyList="Layout_881">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_237" keyList="Layout_882">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_238" keyList="Layout_883">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_239" keyList="Layout_884">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_240" keyList="Layout_885">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_241" keyList="Layout_886">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_242" keyList="Layout_887">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_243" keyList="Layout_888">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_244" keyList="Layout_889">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_245" keyList="Layout_890">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_246" keyList="Layout_891">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_247" keyList="Layout_892">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_248" keyList="Layout_893">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_249" keyList="Layout_452">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_250" keyList="Layout_453">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_251" keyList="Layout_454">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_252" keyList="Layout_455">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_253" keyList="Layout_456">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_254" keyList="Layout_457">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_255" keyList="Layout_458">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_256" keyList="Layout_459">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_257" keyList="Layout_460">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_258" keyList="Layout_461">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_259" keyList="Layout_462">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_260" keyList="Layout_463">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="27" cy="21.5" rx="21.5" ry="21.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_261" keyList="Layout_464">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_262" keyList="Layout_465">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="107" height="44" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_263" keyList="Layout_466">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_264" keyList="Layout_467">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_265" keyList="Layout_468">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="100" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_266" keyList="Layout_469">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_267" keyList="Layout_470">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_268" keyList="Layout_471">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="18.5" cy="17" rx="17" ry="17"/>
              </Group>
            </Style>
            <Style key="LocalStyle_269" keyList="Layout_472">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_270" keyList="Layout_473">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="155" height="38" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_271" keyList="Layout_474">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="170" height="37" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_272" keyList="Layout_475">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="153" height="39" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_273" keyList="Layout_476">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="168" height="41" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_274" keyList="Layout_477">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_275" keyList="Layout_478">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_276" keyList="Layout_479">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_277" keyList="Layout_480">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_278" keyList="Layout_481">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_279" keyList="Layout_482">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_280" keyList="Layout_483">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_281" keyList="Layout_484">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_282" keyList="Layout_485">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_283" keyList="Layout_486">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_284" keyList="Layout_487">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_285" keyList="Layout_488">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_286" keyList="Layout_489">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_287" keyList="Layout_490">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_288" keyList="Layout_491">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="112" height="44" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_289" keyList="Layout_492">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="93" height="45" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_290" keyList="Layout_493">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_291" keyList="Layout_494">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_292" keyList="Layout_495">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_293" keyList="Layout_496">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_294" keyList="Layout_497">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_295" keyList="Layout_498">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_296" keyList="Layout_499">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_297" keyList="Layout_500">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_298" keyList="Layout_501">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_299" keyList="Layout_502">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_300" keyList="Layout_503">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_301" keyList="Layout_504">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_302" keyList="Layout_505">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_303" keyList="Layout_506">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_304" keyList="Layout_507">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_305" keyList="Layout_508">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_306" keyList="Layout_509">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_307" keyList="Layout_510">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_308" keyList="Layout_511">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_309" keyList="Layout_512">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_310" keyList="Layout_513">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_311" keyList="Layout_514">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_312" keyList="Layout_515">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_313" keyList="Layout_516">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_314" keyList="Layout_517">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_7" x="0" y="0" width="70" height="25"/>
              </Group>
            </Style>
            <Style key="LocalStyle_315" keyList="Layout_518">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_316" keyList="Layout_519">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_317" keyList="Layout_520">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_318" keyList="Layout_521">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_319" keyList="Layout_522">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_320" keyList="Layout_523">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_321" keyList="Layout_524">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_322" keyList="Layout_525">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_323" keyList="Layout_526">
              <Group>
                <Ellipse fill="ColorDefinition_8" cx="67" cy="16.5" rx="67" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_324" keyList="Layout_527">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="8.31325%" y="0"/>
                    <Element x="91.6867%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="91.6867%" y="100%"/>
                    <Element x="8.31325%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_325" keyList="Layout_528">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="8%" y="0"/>
                    <Element x="92%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="92%" y="100%"/>
                    <Element x="8%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_326" keyList="Layout_529">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="6.63158%" y="0"/>
                    <Element x="93.3684%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="93.3684%" y="100%"/>
                    <Element x="6.63158%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_327" keyList="Layout_530">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.96296%" y="0"/>
                    <Element x="97.037%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.037%" y="100%"/>
                    <Element x="2.96296%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_328" keyList="Layout_531">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="3.67347%" y="0"/>
                    <Element x="96.3265%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="96.3265%" y="100%"/>
                    <Element x="3.67347%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_329" keyList="Layout_532">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="3.05556%" y="0"/>
                    <Element x="96.9444%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="96.9444%" y="100%"/>
                    <Element x="3.05556%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_330" keyList="Layout_533">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.03488%" y="0"/>
                    <Element x="97.9651%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.9651%" y="100%"/>
                    <Element x="2.03488%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_331" keyList="Layout_534">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.64286%" y="0"/>
                    <Element x="97.3571%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.3571%" y="100%"/>
                    <Element x="2.64286%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Integratedmodel_validSBML.xml">
    <SBMLMap SBMLid="B_T" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="Cao" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="K1" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="K2" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="K3" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="K4" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="K5" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="K_CICR" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="K_hi" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Kmdp" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="Kmp" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="R_T" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Vc_Vs" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="Vdp" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="alp" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="dot_Vex" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="dot_Vhi" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="dot_Vp" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="dot_q_inpass" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="dot_q_instim" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="fracK" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="gam" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="half" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="k90" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="kDD" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="k_CCE" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="k_CICR" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kp" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kr90" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="re102" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="re103" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="re104" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="re105" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="re106" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="re107" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="re108" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="re109" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="re110" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="re111" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="re112" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="re113" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="re114" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="re115" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="re116" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="re117" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="re118" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="re119" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="re120" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="re121" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="re122" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="re123" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="re124" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="re125" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="re126" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="re127" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="re128" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="re129" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="re131" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="re132" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="re133" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="re134" COPASIkey="Reaction_138"/>
    <SBMLMap SBMLid="re135" COPASIkey="Reaction_139"/>
    <SBMLMap SBMLid="re136" COPASIkey="Reaction_140"/>
    <SBMLMap SBMLid="re137" COPASIkey="Reaction_141"/>
    <SBMLMap SBMLid="re138" COPASIkey="Reaction_142"/>
    <SBMLMap SBMLid="re139" COPASIkey="Reaction_143"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re50" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="re51" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="re52" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="re53" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="re54" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="re55" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="re56" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="re57" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="re58" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="re59" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re60" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="re61" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="re62" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="re63" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="re64" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="re65" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="re66" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="re67" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="re68" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="re69" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="re70" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="re71" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="re72" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="s10" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="s100" COPASIkey="Metabolite_138"/>
    <SBMLMap SBMLid="s101" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="s102" COPASIkey="Metabolite_140"/>
    <SBMLMap SBMLid="s103" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="s104" COPASIkey="Metabolite_142"/>
    <SBMLMap SBMLid="s105" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="s106" COPASIkey="Metabolite_144"/>
    <SBMLMap SBMLid="s107" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="s108" COPASIkey="Metabolite_146"/>
    <SBMLMap SBMLid="s11" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="s110" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="s111" COPASIkey="Metabolite_148"/>
    <SBMLMap SBMLid="s112" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="s113" COPASIkey="Metabolite_150"/>
    <SBMLMap SBMLid="s114" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="s115" COPASIkey="Metabolite_152"/>
    <SBMLMap SBMLid="s116" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="s117" COPASIkey="Metabolite_154"/>
    <SBMLMap SBMLid="s118" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="s119" COPASIkey="Metabolite_156"/>
    <SBMLMap SBMLid="s12" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="s14" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="s15" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="s16" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="s17" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="s18" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="s19" COPASIkey="Metabolite_96"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="s20" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="s21" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="s22" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="s23" COPASIkey="Metabolite_100"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="s26" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="s27" COPASIkey="Metabolite_104"/>
    <SBMLMap SBMLid="s28" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="s35" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="s37" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="s38" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="s39" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="s4" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="s42" COPASIkey="Metabolite_110"/>
    <SBMLMap SBMLid="s43" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="s44" COPASIkey="Metabolite_112"/>
    <SBMLMap SBMLid="s45" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="s47" COPASIkey="Metabolite_114"/>
    <SBMLMap SBMLid="s48" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="s49" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="s5" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="s50" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="s51" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="s52" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="s57" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="s58" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="s6" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="s60" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="s61" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="s62" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="s63" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="s64" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="s65" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="s66" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="s8" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="s9" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="s91" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="s92" COPASIkey="Metabolite_130"/>
    <SBMLMap SBMLid="s93" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="s94" COPASIkey="Metabolite_132"/>
    <SBMLMap SBMLid="s95" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="s96" COPASIkey="Metabolite_134"/>
    <SBMLMap SBMLid="s97" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="s98" COPASIkey="Metabolite_136"/>
    <SBMLMap SBMLid="s99" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="tau_I" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="tau_II" COPASIkey="ModelValue_73"/>
  </SBMLReference>
</COPASI>
