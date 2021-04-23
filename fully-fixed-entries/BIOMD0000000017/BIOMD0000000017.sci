
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// PO4_s   id: PO4
	PO4_s=10;
		
// V_1_R1   id: V_1     reactionID: R1
	V_1_R1=2397;
	
// Kglc_1_R1   id: Kglc_1     reactionID: R1
	Kglc_1_R1=0.1;
	
// Knad_1_R1   id: Knad_1     reactionID: R1
	Knad_1_R1=0.1412;
	
// Kadp_1_R1   id: Kadp_1     reactionID: R1
	Kadp_1_R1=0.04699;
	
// Kpyr_1_R1   id: Kpyr_1     reactionID: R1
	Kpyr_1_R1=2.5;
	
// Knadh_1_R1   id: Knadh_1     reactionID: R1
	Knadh_1_R1=0.08999;
	
// Katp_1_R1   id: Katp_1     reactionID: R1
	Katp_1_R1=0.01867;
	
// V_2_R2   id: V_2     reactionID: R2
	V_2_R2=5118;
	
// Keq_2_R2   id: Keq_2     reactionID: R2
	Keq_2_R2=21120.69;
	
// Kpyr_2_R2   id: Kpyr_2     reactionID: R2
	Kpyr_2_R2=1.5;
	
// Knadh_2_R2   id: Knadh_2     reactionID: R2
	Knadh_2_R2=0.08;
	
// Klac_2_R2   id: Klac_2     reactionID: R2
	Klac_2_R2=100;
	
// Knad_2_R2   id: Knad_2     reactionID: R2
	Knad_2_R2=2.4;
	
// V_3_R3   id: V_3     reactionID: R3
	V_3_R3=259;
	
// Kpyr_3_R3   id: Kpyr_3     reactionID: R3
	Kpyr_3_R3=1;
	
// Knad_3_R3   id: Knad_3     reactionID: R3
	Knad_3_R3=0.4;
	
// Kcoa_3_R3   id: Kcoa_3     reactionID: R3
	Kcoa_3_R3=0.014;
	
// Ki_3_R3   id: Ki_3     reactionID: R3
	Ki_3_R3=46.4159;
	
// Knadh_3_R3   id: Knadh_3     reactionID: R3
	Knadh_3_R3=0.1;
	
// Kaccoa_3_R3   id: Kaccoa_3     reactionID: R3
	Kaccoa_3_R3=0.008;
	
// V_4_R4   id: V_4     reactionID: R4
	V_4_R4=42;
	
// Keq_4_R4   id: Keq_4     reactionID: R4
	Keq_4_R4=0.0065;
	
// Kiaccoa_4_R4   id: Kiaccoa_4     reactionID: R4
	Kiaccoa_4_R4=0.2;
	
// Kpi_4_R4   id: Kpi_4     reactionID: R4
	Kpi_4_R4=2.6;
	
// Kipi_4_R4   id: Kipi_4     reactionID: R4
	Kipi_4_R4=2.6;
	
// Kiacp_4_R4   id: Kiacp_4     reactionID: R4
	Kiacp_4_R4=0.2;
	
// Kicoa_4_R4   id: Kicoa_4     reactionID: R4
	Kicoa_4_R4=0.029;
	
// Kacp_4_R4   id: Kacp_4     reactionID: R4
	Kacp_4_R4=0.7;
	
// V_5_R5   id: V_5     reactionID: R5
	V_5_R5=2700;
	
// Keq_5_R5   id: Keq_5     reactionID: R5
	Keq_5_R5=174.217;
	
// Kadp_5_R5   id: Kadp_5     reactionID: R5
	Kadp_5_R5=0.5;
	
// Kacp_5_R5   id: Kacp_5     reactionID: R5
	Kacp_5_R5=0.16;
	
// Kac_5_R5   id: Kac_5     reactionID: R5
	Kac_5_R5=7;
	
// Katp_5_R5   id: Katp_5     reactionID: R5
	Katp_5_R5=0.07;
	
// V_6_R6   id: V_6     reactionID: R6
	V_6_R6=97;
	
// Keq_6_R6   id: Keq_6     reactionID: R6
	Keq_6_R6=1;
	
// Kaccoa_6_R6   id: Kaccoa_6     reactionID: R6
	Kaccoa_6_R6=0.007;
	
// Knadh_6_R6   id: Knadh_6     reactionID: R6
	Knadh_6_R6=0.025;
	
// Knad_6_R6   id: Knad_6     reactionID: R6
	Knad_6_R6=0.08;
	
// Kcoa_6_R6   id: Kcoa_6     reactionID: R6
	Kcoa_6_R6=0.008;
	
// Kaco_6_R6   id: Kaco_6     reactionID: R6
	Kaco_6_R6=10;
	
// V_7_R7   id: V_7     reactionID: R7
	V_7_R7=162;
	
// Keq_7_R7   id: Keq_7     reactionID: R7
	Keq_7_R7=12354.9;
	
// Kaco_7_R7   id: Kaco_7     reactionID: R7
	Kaco_7_R7=0.03;
	
// Knadh_7_R7   id: Knadh_7     reactionID: R7
	Knadh_7_R7=0.05;
	
// Knad_7_R7   id: Knad_7     reactionID: R7
	Knad_7_R7=0.08;
	
// Ketoh_7_R7   id: Ketoh_7     reactionID: R7
	Ketoh_7_R7=1;
	
// V_8_R8   id: V_8     reactionID: R8
	V_8_R8=600;
	
// Kpyr_8_R8   id: Kpyr_8     reactionID: R8
	Kpyr_8_R8=50;
	
// Keq_8_R8   id: Keq_8     reactionID: R8
	Keq_8_R8=9000000000000;
	
// Kaclac_8_R8   id: Kaclac_8     reactionID: R8
	Kaclac_8_R8=100;
	
// n_8_R8   id: n_8     reactionID: R8
	n_8_R8=2.4;
	
// V_9_R9   id: V_9     reactionID: R9
	V_9_R9=106;
	
// Kaclac_9_R9   id: Kaclac_9     reactionID: R9
	Kaclac_9_R9=10;
	
// Kacet_9_R9   id: Kacet_9     reactionID: R9
	Kacet_9_R9=100;
	
// V_10_R10   id: V_10     reactionID: R10
	V_10_R10=200;
	
// Kacet_10_R10   id: Kacet_10     reactionID: R10
	Kacet_10_R10=5;
	
// V_11_R11   id: V_11     reactionID: R11
	V_11_R11=105;
	
// Keq_11_R11   id: Keq_11     reactionID: R11
	Keq_11_R11=1400;
	
// Kacet_11_R11   id: Kacet_11     reactionID: R11
	Kacet_11_R11=0.06;
	
// Knadh_11_R11   id: Knadh_11     reactionID: R11
	Knadh_11_R11=0.02;
	
// Kbut_11_R11   id: Kbut_11     reactionID: R11
	Kbut_11_R11=2.6;
	
// Knad_11_R11   id: Knad_11     reactionID: R11
	Knad_11_R11=0.16;
	
// V_12_R12   id: V_12     reactionID: R12
	V_12_R12=900;
	
// Katp_12_R12   id: Katp_12     reactionID: R12
	Katp_12_R12=6.196;
	
// n_12_R12   id: n_12     reactionID: R12
	n_12_R12=2.58;
	
// V_13_R13   id: V_13     reactionID: R13
	V_13_R13=118;
	
// Knadh_13_R13   id: Knadh_13     reactionID: R13
	Knadh_13_R13=0.041;
	
// Ko_13_R13   id: Ko_13     reactionID: R13
	Ko_13_R13=0.2;
	
// Knad_13_R13   id: Knad_13     reactionID: R13
	Knad_13_R13=1;
	
// k_14_R14   id: k_14     reactionID: R14
	k_14_R14=0.0003;
	



xdot=[
//x(1)   ID: ADP  initialValue: 4.9
	(1/compartment_compartment)*( (-1)*(1)* ((( 2 )*V_1_R1*( x(8) /(( 2 )*Kglc_1_R1))*( x(2) /Knad_1_R1)*( x(1) /Kadp_1_R1))/((( 1 )+( x(8) /(( 2 )*Kglc_1_R1))+( x(5) /Kpyr_1_R1))*(( 1 )+( x(2) /Knad_1_R1)+( x(4) /Knadh_1_R1))*(( 1 )+( x(1) /Kadp_1_R1)+( x(3) /Katp_1_R1)))) + (-1)*(1)* ((V_5_R5*((( x(10) * x(1) )-(( x(11) * x(3) )/Keq_5_R5))/(Kadp_5_R5*Kacp_5_R5)))/((( 1 )+( x(10) /Kacp_5_R5)+( x(11) /Kac_5_R5))*(( 1 )+( x(1) /Kadp_5_R5)+( x(3) /Katp_5_R5)))) + (1)*(1)* ((V_12_R12*(power(( x(3) /( x(1) *Katp_12_R12)),n_12_R12)))/(( 1 )+(power(( x(3) /( x(1) *Katp_12_R12)),n_12_R12)))) );
	
//x(2)   ID: NAD  initialValue: 6.33
	(1/compartment_compartment)*( (-1)*(1)* ((( 2 )*V_1_R1*( x(8) /(( 2 )*Kglc_1_R1))*( x(2) /Knad_1_R1)*( x(1) /Kadp_1_R1))/((( 1 )+( x(8) /(( 2 )*Kglc_1_R1))+( x(5) /Kpyr_1_R1))*(( 1 )+( x(2) /Knad_1_R1)+( x(4) /Knadh_1_R1))*(( 1 )+( x(1) /Kadp_1_R1)+( x(3) /Katp_1_R1)))) + (-1)*(1)* ((V_3_R3*( x(5) /Kpyr_3_R3)*( x(2) /Knad_3_R3)*( x(7) /Kcoa_3_R3)*( x(2) /( x(2) +(Ki_3_R3* x(4) ))))/((( 1 )+( x(5) /Kpyr_3_R3))*(( 1 )+( x(2) /Knad_3_R3)+( x(4) /Knadh_3_R3))*(( 1 )+( x(7) /Kcoa_3_R3)+( x(9) /Kaccoa_3_R3)))) + (1)*(1)* ((V_2_R2*((( x(5) * x(4) )-(( x(6) * x(2) )/Keq_2_R2))/(Kpyr_2_R2*Knadh_2_R2)))/((( 1 )+( x(5) /Kpyr_2_R2)+( x(6) /Klac_2_R2))*(( 1 )+( x(4) /Knadh_2_R2)+( x(2) /Knad_2_R2)))) + (1)*(1)* ((V_6_R6*((( x(9) * x(4) )-(( x(7) * x(2) * x(12) )/Keq_6_R6))/(Kaccoa_6_R6*Knadh_6_R6)))/((( 1 )+( x(2) /Knad_6_R6)+( x(4) /Knadh_6_R6))*(( 1 )+( x(9) /Kaccoa_6_R6)+( x(7) /Kcoa_6_R6))*(( 1 )+( x(12) /Kaco_6_R6)))) + (1)*(1)* ((V_7_R7*((( x(12) * x(4) )-(( x(13) * x(2) )/Keq_7_R7))/(Kaco_7_R7*Knadh_7_R7)))/((( 1 )+( x(2) /Knad_7_R7)+( x(4) /Knadh_7_R7))*(( 1 )+( x(12) /Kaco_7_R7)+( x(13) /Ketoh_7_R7)))) + (1)*(1)* ((V_11_R11*((( x(15) * x(4) )-(( x(17) * x(2) )/Keq_11_R11))/(Kacet_11_R11*Knadh_11_R11)))/((( 1 )+( x(15) /Kacet_11_R11)+( x(17) /Kbut_11_R11))*(( 1 )+( x(4) /Knadh_11_R11)+( x(2) /Knad_11_R11)))) + (1)*(1)* ((V_13_R13*(( x(4) * x(18) )/(Knadh_13_R13*Ko_13_R13)))/((( 1 )+( x(4) /Knadh_13_R13)+( x(2) /Knad_13_R13))*(( 1 )+( x(18) /Ko_13_R13)))) );
	
//x(3)   ID: ATP  initialValue: 0.1
	(1/compartment_compartment)*( (-1)*(1)* ((V_12_R12*(power(( x(3) /( x(1) *Katp_12_R12)),n_12_R12)))/(( 1 )+(power(( x(3) /( x(1) *Katp_12_R12)),n_12_R12)))) + (1)*(1)* ((( 2 )*V_1_R1*( x(8) /(( 2 )*Kglc_1_R1))*( x(2) /Knad_1_R1)*( x(1) /Kadp_1_R1))/((( 1 )+( x(8) /(( 2 )*Kglc_1_R1))+( x(5) /Kpyr_1_R1))*(( 1 )+( x(2) /Knad_1_R1)+( x(4) /Knadh_1_R1))*(( 1 )+( x(1) /Kadp_1_R1)+( x(3) /Katp_1_R1)))) + (1)*(1)* ((V_5_R5*((( x(10) * x(1) )-(( x(11) * x(3) )/Keq_5_R5))/(Kadp_5_R5*Kacp_5_R5)))/((( 1 )+( x(10) /Kacp_5_R5)+( x(11) /Kac_5_R5))*(( 1 )+( x(1) /Kadp_5_R5)+( x(3) /Katp_5_R5)))) );
	
//x(4)   ID: NADH  initialValue: 3.67
	(1/compartment_compartment)*( (-1)*(1)* ((V_2_R2*((( x(5) * x(4) )-(( x(6) * x(2) )/Keq_2_R2))/(Kpyr_2_R2*Knadh_2_R2)))/((( 1 )+( x(5) /Kpyr_2_R2)+( x(6) /Klac_2_R2))*(( 1 )+( x(4) /Knadh_2_R2)+( x(2) /Knad_2_R2)))) + (-1)*(1)* ((V_6_R6*((( x(9) * x(4) )-(( x(7) * x(2) * x(12) )/Keq_6_R6))/(Kaccoa_6_R6*Knadh_6_R6)))/((( 1 )+( x(2) /Knad_6_R6)+( x(4) /Knadh_6_R6))*(( 1 )+( x(9) /Kaccoa_6_R6)+( x(7) /Kcoa_6_R6))*(( 1 )+( x(12) /Kaco_6_R6)))) + (-1)*(1)* ((V_7_R7*((( x(12) * x(4) )-(( x(13) * x(2) )/Keq_7_R7))/(Kaco_7_R7*Knadh_7_R7)))/((( 1 )+( x(2) /Knad_7_R7)+( x(4) /Knadh_7_R7))*(( 1 )+( x(12) /Kaco_7_R7)+( x(13) /Ketoh_7_R7)))) + (-1)*(1)* ((V_11_R11*((( x(15) * x(4) )-(( x(17) * x(2) )/Keq_11_R11))/(Kacet_11_R11*Knadh_11_R11)))/((( 1 )+( x(15) /Kacet_11_R11)+( x(17) /Kbut_11_R11))*(( 1 )+( x(4) /Knadh_11_R11)+( x(2) /Knad_11_R11)))) + (-1)*(1)* ((V_13_R13*(( x(4) * x(18) )/(Knadh_13_R13*Ko_13_R13)))/((( 1 )+( x(4) /Knadh_13_R13)+( x(2) /Knad_13_R13))*(( 1 )+( x(18) /Ko_13_R13)))) + (1)*(1)* ((( 2 )*V_1_R1*( x(8) /(( 2 )*Kglc_1_R1))*( x(2) /Knad_1_R1)*( x(1) /Kadp_1_R1))/((( 1 )+( x(8) /(( 2 )*Kglc_1_R1))+( x(5) /Kpyr_1_R1))*(( 1 )+( x(2) /Knad_1_R1)+( x(4) /Knadh_1_R1))*(( 1 )+( x(1) /Kadp_1_R1)+( x(3) /Katp_1_R1)))) + (1)*(1)* ((V_3_R3*( x(5) /Kpyr_3_R3)*( x(2) /Knad_3_R3)*( x(7) /Kcoa_3_R3)*( x(2) /( x(2) +(Ki_3_R3* x(4) ))))/((( 1 )+( x(5) /Kpyr_3_R3))*(( 1 )+( x(2) /Knad_3_R3)+( x(4) /Knadh_3_R3))*(( 1 )+( x(7) /Kcoa_3_R3)+( x(9) /Kaccoa_3_R3)))) );
	
//x(5)   ID: pyruvate  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* ((V_2_R2*((( x(5) * x(4) )-(( x(6) * x(2) )/Keq_2_R2))/(Kpyr_2_R2*Knadh_2_R2)))/((( 1 )+( x(5) /Kpyr_2_R2)+( x(6) /Klac_2_R2))*(( 1 )+( x(4) /Knadh_2_R2)+( x(2) /Knad_2_R2)))) + (-1)*(1)* ((V_3_R3*( x(5) /Kpyr_3_R3)*( x(2) /Knad_3_R3)*( x(7) /Kcoa_3_R3)*( x(2) /( x(2) +(Ki_3_R3* x(4) ))))/((( 1 )+( x(5) /Kpyr_3_R3))*(( 1 )+( x(2) /Knad_3_R3)+( x(4) /Knadh_3_R3))*(( 1 )+( x(7) /Kcoa_3_R3)+( x(9) /Kaccoa_3_R3)))) + (-1)*(2)* ((V_8_R8*( x(5) /Kpyr_8_R8)*(( 1 )-( x(14) /( x(5) *Keq_8_R8)))*(power((( x(5) /Kpyr_8_R8)+( x(14) /Kaclac_8_R8)),(n_8_R8-( 1 )))))/(( 1 )+(power((( x(5) /Kpyr_8_R8)+( x(14) /Kaclac_8_R8)),n_8_R8)))) + (1)*(1)* ((( 2 )*V_1_R1*( x(8) /(( 2 )*Kglc_1_R1))*( x(2) /Knad_1_R1)*( x(1) /Kadp_1_R1))/((( 1 )+( x(8) /(( 2 )*Kglc_1_R1))+( x(5) /Kpyr_1_R1))*(( 1 )+( x(2) /Knad_1_R1)+( x(4) /Knadh_1_R1))*(( 1 )+( x(1) /Kadp_1_R1)+( x(3) /Katp_1_R1)))) );
	
//x(6)   ID: lactate  initialValue: 0.1
	0;
	
//x(7)   ID: CoA  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* ((V_3_R3*( x(5) /Kpyr_3_R3)*( x(2) /Knad_3_R3)*( x(7) /Kcoa_3_R3)*( x(2) /( x(2) +(Ki_3_R3* x(4) ))))/((( 1 )+( x(5) /Kpyr_3_R3))*(( 1 )+( x(2) /Knad_3_R3)+( x(4) /Knadh_3_R3))*(( 1 )+( x(7) /Kcoa_3_R3)+( x(9) /Kaccoa_3_R3)))) + (1)*(1)* ((V_4_R4*((( x(9) *PO4_s)-(( x(10) * x(7) )/Keq_4_R4))/(Kiaccoa_4_R4*Kpi_4_R4)))/(( 1 )+( x(9) /Kiaccoa_4_R4)+(PO4_s/Kipi_4_R4)+( x(10) /Kiacp_4_R4)+( x(7) /Kicoa_4_R4)+(( x(9) *PO4_s)/(Kiaccoa_4_R4*Kpi_4_R4))+(( x(10) * x(7) )/(Kacp_4_R4*Kicoa_4_R4)))) + (1)*(1)* ((V_6_R6*((( x(9) * x(4) )-(( x(7) * x(2) * x(12) )/Keq_6_R6))/(Kaccoa_6_R6*Knadh_6_R6)))/((( 1 )+( x(2) /Knad_6_R6)+( x(4) /Knadh_6_R6))*(( 1 )+( x(9) /Kaccoa_6_R6)+( x(7) /Kcoa_6_R6))*(( 1 )+( x(12) /Kaco_6_R6)))) );
	
//x(8)   ID: halfglucose  initialValue: 30
	0;
	
//x(9)   ID: AcCoA  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((V_4_R4*((( x(9) *PO4_s)-(( x(10) * x(7) )/Keq_4_R4))/(Kiaccoa_4_R4*Kpi_4_R4)))/(( 1 )+( x(9) /Kiaccoa_4_R4)+(PO4_s/Kipi_4_R4)+( x(10) /Kiacp_4_R4)+( x(7) /Kicoa_4_R4)+(( x(9) *PO4_s)/(Kiaccoa_4_R4*Kpi_4_R4))+(( x(10) * x(7) )/(Kacp_4_R4*Kicoa_4_R4)))) + (-1)*(1)* ((V_6_R6*((( x(9) * x(4) )-(( x(7) * x(2) * x(12) )/Keq_6_R6))/(Kaccoa_6_R6*Knadh_6_R6)))/((( 1 )+( x(2) /Knad_6_R6)+( x(4) /Knadh_6_R6))*(( 1 )+( x(9) /Kaccoa_6_R6)+( x(7) /Kcoa_6_R6))*(( 1 )+( x(12) /Kaco_6_R6)))) + (1)*(1)* ((V_3_R3*( x(5) /Kpyr_3_R3)*( x(2) /Knad_3_R3)*( x(7) /Kcoa_3_R3)*( x(2) /( x(2) +(Ki_3_R3* x(4) ))))/((( 1 )+( x(5) /Kpyr_3_R3))*(( 1 )+( x(2) /Knad_3_R3)+( x(4) /Knadh_3_R3))*(( 1 )+( x(7) /Kcoa_3_R3)+( x(9) /Kaccoa_3_R3)))) );
	
//x(10)   ID: AcP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((V_5_R5*((( x(10) * x(1) )-(( x(11) * x(3) )/Keq_5_R5))/(Kadp_5_R5*Kacp_5_R5)))/((( 1 )+( x(10) /Kacp_5_R5)+( x(11) /Kac_5_R5))*(( 1 )+( x(1) /Kadp_5_R5)+( x(3) /Katp_5_R5)))) + (1)*(1)* ((V_4_R4*((( x(9) *PO4_s)-(( x(10) * x(7) )/Keq_4_R4))/(Kiaccoa_4_R4*Kpi_4_R4)))/(( 1 )+( x(9) /Kiaccoa_4_R4)+(PO4_s/Kipi_4_R4)+( x(10) /Kiacp_4_R4)+( x(7) /Kicoa_4_R4)+(( x(9) *PO4_s)/(Kiaccoa_4_R4*Kpi_4_R4))+(( x(10) * x(7) )/(Kacp_4_R4*Kicoa_4_R4)))) );
	
//x(11)   ID: Ac  initialValue: 1
	0;
	
//x(12)   ID: AcO  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((V_7_R7*((( x(12) * x(4) )-(( x(13) * x(2) )/Keq_7_R7))/(Kaco_7_R7*Knadh_7_R7)))/((( 1 )+( x(2) /Knad_7_R7)+( x(4) /Knadh_7_R7))*(( 1 )+( x(12) /Kaco_7_R7)+( x(13) /Ketoh_7_R7)))) + (1)*(1)* ((V_6_R6*((( x(9) * x(4) )-(( x(7) * x(2) * x(12) )/Keq_6_R6))/(Kaccoa_6_R6*Knadh_6_R6)))/((( 1 )+( x(2) /Knad_6_R6)+( x(4) /Knadh_6_R6))*(( 1 )+( x(9) /Kaccoa_6_R6)+( x(7) /Kcoa_6_R6))*(( 1 )+( x(12) /Kaco_6_R6)))) );
	
//x(13)   ID: EtOH  initialValue: 1
	0;
	
//x(14)   ID: AcLac  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((V_9_R9*( x(14) /Kaclac_9_R9))/(( 1 )+( x(14) /Kaclac_9_R9)+( x(15) /Kacet_9_R9))) + (-1)*(1)* (k_14_R14* x(14) ) + (1)*(1)* ((V_8_R8*( x(5) /Kpyr_8_R8)*(( 1 )-( x(14) /( x(5) *Keq_8_R8)))*(power((( x(5) /Kpyr_8_R8)+( x(14) /Kaclac_8_R8)),(n_8_R8-( 1 )))))/(( 1 )+(power((( x(5) /Kpyr_8_R8)+( x(14) /Kaclac_8_R8)),n_8_R8)))) );
	
//x(15)   ID: AcetoinIn  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((V_10_R10*( x(15) /Kacet_10_R10))/(( 1 )+( x(15) /Kacet_10_R10))) + (-1)*(1)* ((V_11_R11*((( x(15) * x(4) )-(( x(17) * x(2) )/Keq_11_R11))/(Kacet_11_R11*Knadh_11_R11)))/((( 1 )+( x(15) /Kacet_11_R11)+( x(17) /Kbut_11_R11))*(( 1 )+( x(4) /Knadh_11_R11)+( x(2) /Knad_11_R11)))) + (1)*(1)* ((V_9_R9*( x(14) /Kaclac_9_R9))/(( 1 )+( x(14) /Kaclac_9_R9)+( x(15) /Kacet_9_R9))) + (1)*(1)* (k_14_R14* x(14) ) );
	
//x(16)   ID: AcetoinOut  initialValue: 0
	0;
	
//x(17)   ID: Butanediol  initialValue: 0.01
	0;
	
//x(18)   ID: O2  initialValue: 0.2
	0
	];


	
endfunction
        x0=[4.9;6.33;0.1;3.67;1;0.1;1;30;0;0;1;0;1;0;0;0;0.01;0.2];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18])

//real_variable:
	
	
//x(1)   id: ADP  initialValue: 4.9
	
//x(2)   id: NAD  initialValue: 6.33
	
//x(3)   id: ATP  initialValue: 0.1
	
//x(4)   id: NADH  initialValue: 3.67
	
//x(5)   id: pyruvate  initialValue: 1
	
//x(6)   id: lactate  initialValue: 0.1
	
//x(7)   id: CoA  initialValue: 1
	
//x(8)   id: halfglucose  initialValue: 30
	
//x(9)   id: AcCoA  initialValue: 0
	
//x(10)   id: AcP  initialValue: 0
	
//x(11)   id: Ac  initialValue: 1
	
//x(12)   id: AcO  initialValue: 0
	
//x(13)   id: EtOH  initialValue: 1
	
//x(14)   id: AcLac  initialValue: 0
	
//x(15)   id: AcetoinIn  initialValue: 0
	
//x(16)   id: AcetoinOut  initialValue: 0
	
//x(17)   id: Butanediol  initialValue: 0.01
	
//x(18)   id: O2  initialValue: 0.2