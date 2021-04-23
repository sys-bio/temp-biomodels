
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cellvolume   id: cellvolume
	compartment_cellvolume=1;
		
// diabetes_p   id: diabetes
	diabetes_p=1;
		
// k1a_p   id: k1a
	k1a_p=0.6331;
		
// k1basal_p   id: k1basal
	k1basal_p=0.03683;
		
// k1c_p   id: k1c
	k1c_p=0.8768;
		
// k1d_p   id: k1d
	k1d_p=31.01;
		
// k1f_p   id: k1f
	k1f_p=1840;
		
// k1g_p   id: k1g
	k1g_p=1944;
		
// k1r_p   id: k1r
	k1r_p=0.5471;
		
// k2a_p   id: k2a
	k2a_p=3.227;
		
// k2c_p   id: k2c
	k2c_p=5759;
		
// k2basal_p   id: k2basal
	k2basal_p=0.04228;
		
// k2b_p   id: k2b
	k2b_p=3424;
		
// k2d_p   id: k2d
	k2d_p=280.8;
		
// k2f_p   id: k2f
	k2f_p=2.913;
		
// k2g_p   id: k2g
	k2g_p=0.2671;
		
// k3a_p   id: k3a
	k3a_p=0.001377;
		
// k3b_p   id: k3b
	k3b_p=0.09876;
		
// k4a_p   id: k4a
	k4a_p=5790;
		
// k4b_p   id: k4b
	k4b_p=34.8;
		
// k4c_p   id: k4c
	k4c_p=4.456;
		
// k4e_p   id: k4e
	k4e_p=42.84;
		
// k4f_p   id: k4f
	k4f_p=143.6;
		
// k4h_p   id: k4h
	k4h_p=0.5361;
		
// k5a1_p   id: k5a1
	k5a1_p=1.842;
		
// k5a2_p   id: k5a2
	k5a2_p=0.05506;
		
// k5b_p   id: k5b
	k5b_p=24.83;
		
// k5d_p   id: k5d
	k5d_p=1.06;
		
// km5_p   id: km5
	km5_p=2.65;
		
// k5c_p   id: k5c
	k5c_p=0.08575;
		
// k6f1_p   id: k6f1
	k6f1_p=2.652;
		
// k6f2_p   id: k6f2
	k6f2_p=36.93;
		
// km6_p   id: km6
	km6_p=30.54;
		
// n6_p   id: n6
	n6_p=2.137;
		
// k6b_p   id: k6b
	k6b_p=65.18;
		
// k7f_p   id: k7f
	k7f_p=50.98;
		
// k7b_p   id: k7b
	k7b_p=2286;
		
// k8_p   id: k8
	k8_p=724.2;
		
// glut1_p   id: glut1
	glut1_p=7042;
		
// k9f1_p   id: k9f1
	k9f1_p=0.1298;
		
// k9b1_p   id: k9b1
	k9b1_p=0.04441;
		
// k9f2_p   id: k9f2
	k9f2_p=3.329;
		
// k9b2_p   id: k9b2
	k9b2_p=31;
		
// km9_p   id: km9
	km9_p=5873;
		
// n9_p   id: n9
	n9_p=0.9855;
		
// scaleIR_p   id: scaleIR
	scaleIR_p=5.2022;
		
// scaleIRS1_p   id: scaleIRS1
	scaleIRS1_p=0.37615;
		
// scaleIRS1ds_p   id: scaleIRS1ds
	scaleIRS1ds_p=14.892;
		
// scaleIRS1307_p   id: scaleIRS1307
	scaleIRS1307_p=0.058663;
		
// scalePKB308_p   id: scalePKB308
	scalePKB308_p=0.043564;
		
// scalePKB473_p   id: scalePKB473
	scalePKB473_p=0.012996;
		
// scaleAS160_p   id: scaleAS160
	scaleAS160_p=0.026656;
		
// scaleGLUCOSE_p   id: scaleGLUCOSE
	scaleGLUCOSE_p=0.040513;
		
// scaleS6K_p   id: scaleS6K
	scaleS6K_p=0.74654;
		
// scaleS6_p   id: scaleS6
	scaleS6_p=0.11494;
		
// gluc_p   id: gluc
	gluc_p=0.05;
		
// insulin_p   id: insulin
	insulin_p=10;
		
// measuredIRp_p   id: measuredIRp
	measuredIRp_p=0;
		
// measuredIRint_p   id: measuredIRint
	measuredIRint_p=0;
		
// measuredIRS1p_p   id: measuredIRS1p
	measuredIRS1p_p=0;
		
// measuredIRS1307_p   id: measuredIRS1307
	measuredIRS1307_p=0;
		
// measuredPKB308p_p   id: measuredPKB308p
	measuredPKB308p_p=0;
		
// measuredPKB473p_p   id: measuredPKB473p
	measuredPKB473p_p=0;
		
// measuredAS160p_p   id: measuredAS160p
	measuredAS160p_p=0;
		
// measuredmTORC1a_p   id: measuredmTORC1a
	measuredmTORC1a_p=0;
		
// measuredS6Kp_p   id: measuredS6Kp
	measuredS6Kp_p=0;
		
// measuredS6p_p   id: measuredS6p
	measuredS6p_p=0;
		
// measuredmTORC2a_p   id: measuredmTORC2a
	measuredmTORC2a_p=0;
		
// glucoseuptake_p   id: glucoseuptake
	glucoseuptake_p=0;
		



xdot=[
//x(1)   ID: IR  initialValue: 99.8737104842408
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(1) *k1a_p*insulin_p) + (-1)*(1)* (k1basal_p* x(1) ) + (1)*(1)* ( x(2) *k1g_p) + (1)*(1)* ( x(5) *k1r_p) );
	
//x(2)   ID: IRp  initialValue: 0.00186253217635894
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(2) *k1d_p) + (-1)*(1)* ( x(2) *k1g_p) + (1)*(1)* (k1basal_p* x(1) ) + (1)*(1)* ( x(3) *k1c_p) );
	
//x(3)   ID: IRins  initialValue: 0
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(3) *k1c_p) + (1)*(1)* ( x(1) *k1a_p*insulin_p) );
	
//x(4)   ID: IRip  initialValue: 0.0188430465801578
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(4) *k1f_p* x(11) ) + (1)*(1)* ( x(2) *k1d_p) );
	
//x(5)   ID: IRi  initialValue: 0.105583925473107
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(5) *k1r_p) + (1)*(1)* ( x(4) *k1f_p* x(11) ) );
	
//x(6)   ID: IRS1  initialValue: 82.9671997523599
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(6) *k2a_p* x(4) ) + (-1)*(1)* ( x(6) *k2basal_p) + (1)*(1)* ( x(7) *k2b_p) + (1)*(1)* ( x(9) *k2g_p) );
	
//x(7)   ID: IRS1p  initialValue: 0.00119481841136737
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(7) *k2b_p) + (-1)*(1)* ( x(7) *k2c_p* x(17) *diabetes_p) + (1)*(1)* ( x(6) *k2a_p* x(4) ) + (1)*(1)* ( x(8) *k2d_p) );
	
//x(8)   ID: IRS1p307  initialValue: 0.327454355438396
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(8) *k2d_p) + (-1)*(1)* ( x(8) *k2f_p) + (1)*(1)* ( x(7) *k2c_p* x(17) *diabetes_p) );
	
//x(9)   ID: IRS1307  initialValue: 16.7041510257561
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(9) *k2g_p) + (1)*(1)* ( x(8) *k2f_p) + (1)*(1)* ( x(6) *k2basal_p) );
	
//x(10)   ID: X  initialValue: 99.9983336594667
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(10) *k3a_p* x(7) ) + (1)*(1)* ( x(11) *k3b_p) );
	
//x(11)   ID: Xp  initialValue: 0.00166634053318549
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(11) *k3b_p) + (1)*(1)* ( x(10) *k3a_p* x(7) ) );
	
//x(12)   ID: PKB  initialValue: 68.1806649661901
	(1/compartment_cellvolume)*( (-1)*(1)* (k4a_p* x(12) * x(7) ) + (1)*(1)* (k4b_p* x(13) ) + (1)*(1)* (k4h_p* x(14) ) );
	
//x(13)   ID: PKB308p  initialValue: 13.2964849666951
	(1/compartment_cellvolume)*( (-1)*(1)* (k4b_p* x(13) ) + (-1)*(1)* (k4c_p* x(13) * x(19) ) + (1)*(1)* (k4a_p* x(12) * x(7) ) );
	
//x(14)   ID: PKB473p  initialValue: 16.8171941560617
	(1/compartment_cellvolume)*( (-1)*(1)* (k4e_p* x(14) * x(8) ) + (-1)*(1)* (k4h_p* x(14) ) + (1)*(1)* (k4f_p* x(15) ) );
	
//x(15)   ID: PKB308p473p  initialValue: 1.70566051030056
	(1/compartment_cellvolume)*( (-1)*(1)* (k4f_p* x(15) ) + (1)*(1)* (k4c_p* x(13) * x(19) ) + (1)*(1)* (k4e_p* x(14) * x(8) ) );
	
//x(16)   ID: mTORC1  initialValue: 86.5002472240273
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(16) *((k5a1_p* x(15) )+(k5a2_p* x(13) ))) + (1)*(1)* ( x(17) *k5b_p) );
	
//x(17)   ID: mTORC1a  initialValue: 13.4997527759726
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(17) *k5b_p) + (1)*(1)* ( x(16) *((k5a1_p* x(15) )+(k5a2_p* x(13) ))) );
	
//x(18)   ID: mTORC2  initialValue: 99.8478148461591
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(18) *k5c_p* x(4) ) + (1)*(1)* (k5d_p* x(19) ) );
	
//x(19)   ID: mTORC2a  initialValue: 0.152185153840861
	(1/compartment_cellvolume)*( (-1)*(1)* (k5d_p* x(19) ) + (1)*(1)* ( x(18) *k5c_p* x(4) ) );
	
//x(20)   ID: AS160  initialValue: 83.8141018591099
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(20) *((k6f1_p* x(15) )+((k6f2_p*(power( x(14) ,n6_p)))/((power(km6_p,n6_p))+(power( x(14) ,n6_p)))))) + (1)*(1)* ( x(21) *k6b_p) );
	
//x(21)   ID: AS160p  initialValue: 16.1858981408903
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(21) *k6b_p) + (1)*(1)* ( x(20) *((k6f1_p* x(15) )+((k6f2_p*(power( x(14) ,n6_p)))/((power(km6_p,n6_p))+(power( x(14) ,n6_p)))))) );
	
//x(22)   ID: GLUT4m  initialValue: 26.523878746229
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(22) *k7b_p) + (1)*(1)* ( x(23) *k7f_p* x(21) ) );
	
//x(23)   ID: GLUT4  initialValue: 73.476121253771
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(23) *k7f_p* x(21) ) + (1)*(1)* ( x(22) *k7b_p) );
	
//x(24)   ID: S6K  initialValue: 99.2731987219547
	(1/compartment_cellvolume)*( (-1)*(1)* (( x(24) *k9f1_p*(power( x(17) ,n9_p)))/((power(km9_p,n9_p))+(power( x(17) ,n9_p)))) + (1)*(1)* ( x(25) *k9b1_p) );
	
//x(25)   ID: S6Kp  initialValue: 0.72680127804522
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(25) *k9b1_p) + (1)*(1)* (( x(24) *k9f1_p*(power( x(17) ,n9_p)))/((power(km9_p,n9_p))+(power( x(17) ,n9_p)))) );
	
//x(26)   ID: S6  initialValue: 92.7596420796038
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(26) *k9f2_p* x(25) ) + (1)*(1)* ( x(27) *k9b2_p) );
	
//x(27)   ID: S6p  initialValue: 7.24035792039603
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(27) *k9b2_p) + (1)*(1)* ( x(26) *k9f2_p* x(25) ) )
	];


	
endfunction
        x0=[99.8737104842408;0.00186253217635894;0;0.0188430465801578;0.105583925473107;82.9671997523599;0.00119481841136737;0.327454355438396;16.7041510257561;99.9983336594667;0.00166634053318549;68.1806649661901;13.2964849666951;16.8171941560617;1.70566051030056;86.5002472240273;13.4997527759726;99.8478148461591;0.152185153840861;83.8141018591099;16.1858981408903;26.523878746229;73.476121253771;99.2731987219547;0.72680127804522;92.7596420796038;7.24035792039603];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27])

//real_variable:
	
	
//x(1)   id: IR  initialValue: 99.8737104842408
	
//x(2)   id: IRp  initialValue: 0.00186253217635894
	
//x(3)   id: IRins  initialValue: 0
	
//x(4)   id: IRip  initialValue: 0.0188430465801578
	
//x(5)   id: IRi  initialValue: 0.105583925473107
	
//x(6)   id: IRS1  initialValue: 82.9671997523599
	
//x(7)   id: IRS1p  initialValue: 0.00119481841136737
	
//x(8)   id: IRS1p307  initialValue: 0.327454355438396
	
//x(9)   id: IRS1307  initialValue: 16.7041510257561
	
//x(10)   id: X  initialValue: 99.9983336594667
	
//x(11)   id: Xp  initialValue: 0.00166634053318549
	
//x(12)   id: PKB  initialValue: 68.1806649661901
	
//x(13)   id: PKB308p  initialValue: 13.2964849666951
	
//x(14)   id: PKB473p  initialValue: 16.8171941560617
	
//x(15)   id: PKB308p473p  initialValue: 1.70566051030056
	
//x(16)   id: mTORC1  initialValue: 86.5002472240273
	
//x(17)   id: mTORC1a  initialValue: 13.4997527759726
	
//x(18)   id: mTORC2  initialValue: 99.8478148461591
	
//x(19)   id: mTORC2a  initialValue: 0.152185153840861
	
//x(20)   id: AS160  initialValue: 83.8141018591099
	
//x(21)   id: AS160p  initialValue: 16.1858981408903
	
//x(22)   id: GLUT4m  initialValue: 26.523878746229
	
//x(23)   id: GLUT4  initialValue: 73.476121253771
	
//x(24)   id: S6K  initialValue: 99.2731987219547
	
//x(25)   id: S6Kp  initialValue: 0.72680127804522
	
//x(26)   id: S6  initialValue: 92.7596420796038
	
//x(27)   id: S6p  initialValue: 7.24035792039603