
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cellvolume   id: cellvolume
	compartment_cellvolume=1;
		
// diabetes_p   id: diabetes
	diabetes_p=0.15;
		
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
	scaleIR_p=5.202;
		
// scaleIRS1_p   id: scaleIRS1
	scaleIRS1_p=0.3761;
		
// scaleIRS1ds_p   id: scaleIRS1ds
	scaleIRS1ds_p=14.89;
		
// scaleIRS1307_p   id: scaleIRS1307
	scaleIRS1307_p=0.05866;
		
// scalePKB308_p   id: scalePKB308
	scalePKB308_p=0.04356;
		
// scalePKB473_p   id: scalePKB473
	scalePKB473_p=0.013;
		
// scaleAS160_p   id: scaleAS160
	scaleAS160_p=0.026656;
		
// scaleGLUCOSE_p   id: scaleGLUCOSE
	scaleGLUCOSE_p=0.04051;
		
// scaleS6K_p   id: scaleS6K
	scaleS6K_p=0.7465;
		
// scaleS6_p   id: scaleS6
	scaleS6_p=0.1149;
		
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
//x(1)   ID: IR  initialValue: 49.9344643421136
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(1) *k1a_p*insulin_p) + (-1)*(1)* (k1basal_p* x(1) ) + (1)*(1)* ( x(2) *k1g_p) + (1)*(1)* ( x(5) *k1r_p) );
	
//x(2)   ID: IRp  initialValue: 0.000931221500588088
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(2) *k1d_p) + (-1)*(1)* ( x(2) *k1g_p) + (1)*(1)* (k1basal_p* x(1) ) + (1)*(1)* ( x(3) *k1c_p) );
	
//x(3)   ID: IRins  initialValue: 0
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(3) *k1c_p) + (1)*(1)* ( x(1) *k1a_p*insulin_p) );
	
//x(4)   ID: IRip  initialValue: 0.011815001204792
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(4) *k1f_p* x(11) ) + (1)*(1)* ( x(2) *k1d_p) );
	
//x(5)   ID: IRi  initialValue: 0.0527894351383809
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(5) *k1r_p) + (1)*(1)* ( x(4) *k1f_p* x(11) ) );
	
//x(6)   ID: IRS1  initialValue: 86.2418960059256
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(6) *k2a_p* x(4) ) + (-1)*(1)* ( x(6) *k2basal_p) + (1)*(1)* ( x(7) *k2b_p) + (1)*(1)* ( x(9) *k2g_p) );
	
//x(7)   ID: IRS1p  initialValue: 0.00095272377217019
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(7) *k2b_p) + (-1)*(1)* ( x(7) *k2c_p* x(17) *diabetes_p) + (1)*(1)* ( x(6) *k2a_p* x(4) ) + (1)*(1)* ( x(8) *k2d_p) );
	
//x(8)   ID: IRS1p307  initialValue: 0.00891531075576947
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(8) *k2d_p) + (-1)*(1)* ( x(8) *k2f_p) + (1)*(1)* ( x(7) *k2c_p* x(17) *diabetes_p) );
	
//x(9)   ID: IRS1307  initialValue: 13.7482359094757
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(9) *k2g_p) + (1)*(1)* ( x(8) *k2f_p) + (1)*(1)* ( x(6) *k2basal_p) );
	
//x(10)   ID: X  initialValue: 99.9986712896423
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(10) *k3a_p* x(7) ) + (1)*(1)* ( x(11) *k3b_p) );
	
//x(11)   ID: Xp  initialValue: 0.00132871035763352
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(11) *k3b_p) + (1)*(1)* ( x(10) *k3a_p* x(7) ) );
	
//x(12)   ID: PKB  initialValue: 78.0219322115859
	(1/compartment_cellvolume)*( (-1)*(1)* (k4a_p* x(12) * x(7) ) + (1)*(1)* (k4b_p* x(13) ) + (1)*(1)* (k4h_p* x(14) ) );
	
//x(13)   ID: PKB308p  initialValue: 12.2197372437326
	(1/compartment_cellvolume)*( (-1)*(1)* (k4b_p* x(13) ) + (-1)*(1)* (k4c_p* x(13) * x(19) ) + (1)*(1)* (k4a_p* x(12) * x(7) ) );
	
//x(14)   ID: PKB473p  initialValue: 9.6963389945784
	(1/compartment_cellvolume)*( (-1)*(1)* (k4e_p* x(14) * x(8) ) + (-1)*(1)* (k4h_p* x(14) ) + (1)*(1)* (k4f_p* x(15) ) );
	
//x(15)   ID: PKB308p473p  initialValue: 0.061992532897245
	(1/compartment_cellvolume)*( (-1)*(1)* (k4f_p* x(15) ) + (1)*(1)* (k4c_p* x(13) * x(19) ) + (1)*(1)* (k4e_p* x(14) * x(8) ) );
	
//x(16)   ID: mTORC1  initialValue: 96.927052256569
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(16) *((k5a1_p* x(15) )+(k5a2_p* x(13) ))) + (1)*(1)* ( x(17) *k5b_p) );
	
//x(17)   ID: mTORC1a  initialValue: 3.07294774343092
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(17) *k5b_p) + (1)*(1)* ( x(16) *((k5a1_p* x(15) )+(k5a2_p* x(13) ))) );
	
//x(18)   ID: mTORC2  initialValue: 99.9045223943705
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(18) *k5c_p* x(4) ) + (1)*(1)* (k5d_p* x(19) ) );
	
//x(19)   ID: mTORC2a  initialValue: 0.0954776056294795
	(1/compartment_cellvolume)*( (-1)*(1)* (k5d_p* x(19) ) + (1)*(1)* ( x(18) *k5c_p* x(4) ) );
	
//x(20)   ID: AS160  initialValue: 95.4699007486273
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(20) *((k6f1_p* x(15) )+((k6f2_p*(power( x(14) ,n6_p)))/((power(km6_p,n6_p))+(power( x(14) ,n6_p)))))) + (1)*(1)* ( x(21) *k6b_p) );
	
//x(21)   ID: AS160p  initialValue: 4.53009925137289
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(21) *k6b_p) + (1)*(1)* ( x(20) *((k6f1_p* x(15) )+((k6f2_p*(power( x(14) ,n6_p)))/((power(km6_p,n6_p))+(power( x(14) ,n6_p)))))) );
	
//x(22)   ID: GLUT4m  initialValue: 4.5880858350243
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(22) *k7b_p) + (1)*(1)* ( x(23) *k7f_p* x(21) ) );
	
//x(23)   ID: GLUT4  initialValue: 45.4119141649757
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(23) *k7f_p* x(21) ) + (1)*(1)* ( x(22) *k7b_p) );
	
//x(24)   ID: S6K  initialValue: 99.8296860066098
	(1/compartment_cellvolume)*( (-1)*(1)* (( x(24) *k9f1_p*(power( x(17) ,n9_p)))/((power(km9_p,n9_p))+(power( x(17) ,n9_p)))) + (1)*(1)* ( x(25) *k9b1_p) );
	
//x(25)   ID: S6Kp  initialValue: 0.170313993390069
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(25) *k9b1_p) + (1)*(1)* (( x(24) *k9f1_p*(power( x(17) ,n9_p)))/((power(km9_p,n9_p))+(power( x(17) ,n9_p)))) );
	
//x(26)   ID: S6  initialValue: 98.2037625421647
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(26) *k9f2_p* x(25) ) + (1)*(1)* ( x(27) *k9b2_p) );
	
//x(27)   ID: S6p  initialValue: 1.79623745783512
	(1/compartment_cellvolume)*( (-1)*(1)* ( x(27) *k9b2_p) + (1)*(1)* ( x(26) *k9f2_p* x(25) ) )
	];


	
endfunction
        x0=[49.9344643421136;0.000931221500588088;0;0.011815001204792;0.0527894351383809;86.2418960059256;0.00095272377217019;0.00891531075576947;13.7482359094757;99.9986712896423;0.00132871035763352;78.0219322115859;12.2197372437326;9.6963389945784;0.061992532897245;96.927052256569;3.07294774343092;99.9045223943705;0.0954776056294795;95.4699007486273;4.53009925137289;4.5880858350243;45.4119141649757;99.8296860066098;0.170313993390069;98.2037625421647;1.79623745783512];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27])

//real_variable:
	
	
//x(1)   id: IR  initialValue: 49.9344643421136
	
//x(2)   id: IRp  initialValue: 0.000931221500588088
	
//x(3)   id: IRins  initialValue: 0
	
//x(4)   id: IRip  initialValue: 0.011815001204792
	
//x(5)   id: IRi  initialValue: 0.0527894351383809
	
//x(6)   id: IRS1  initialValue: 86.2418960059256
	
//x(7)   id: IRS1p  initialValue: 0.00095272377217019
	
//x(8)   id: IRS1p307  initialValue: 0.00891531075576947
	
//x(9)   id: IRS1307  initialValue: 13.7482359094757
	
//x(10)   id: X  initialValue: 99.9986712896423
	
//x(11)   id: Xp  initialValue: 0.00132871035763352
	
//x(12)   id: PKB  initialValue: 78.0219322115859
	
//x(13)   id: PKB308p  initialValue: 12.2197372437326
	
//x(14)   id: PKB473p  initialValue: 9.6963389945784
	
//x(15)   id: PKB308p473p  initialValue: 0.061992532897245
	
//x(16)   id: mTORC1  initialValue: 96.927052256569
	
//x(17)   id: mTORC1a  initialValue: 3.07294774343092
	
//x(18)   id: mTORC2  initialValue: 99.9045223943705
	
//x(19)   id: mTORC2a  initialValue: 0.0954776056294795
	
//x(20)   id: AS160  initialValue: 95.4699007486273
	
//x(21)   id: AS160p  initialValue: 4.53009925137289
	
//x(22)   id: GLUT4m  initialValue: 4.5880858350243
	
//x(23)   id: GLUT4  initialValue: 45.4119141649757
	
//x(24)   id: S6K  initialValue: 99.8296860066098
	
//x(25)   id: S6Kp  initialValue: 0.170313993390069
	
//x(26)   id: S6  initialValue: 98.2037625421647
	
//x(27)   id: S6p  initialValue: 1.79623745783512