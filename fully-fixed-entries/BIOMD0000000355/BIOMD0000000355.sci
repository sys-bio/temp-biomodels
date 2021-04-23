
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_outside   id: outside
	compartment_outside=1;
		
// compartment_mitochondria   id: mitochondria
	compartment_mitochondria=1;
		
// A_p   id: A
	A_p=3;
		
// B_p   id: B
	B_p=0.266;
		
// D_p   id: D
	D_p=2;
		
// E_p   id: E
	E_p=5;
		
// F_p   id: F
	F_p=0.018;
		
// k2_p   id: k2
	k2_p=0.175;
		
// L_p   id: L
	L_p=0.01;
		
// R_p   id: R
	R_p=1;
		
// mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p   id: mw92b257b7_00af_4fd6_a11b_8e4655a4ba65
	mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p=0.175;
		
// mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f_p   id: mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f
	mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f_p=0.0346;
		
// mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778_p   id: mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778
	mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778_p=1;
		
// mw004dcb62_da5f_41c7_a7bd_033574894f48_p   id: mw004dcb62_da5f_41c7_a7bd_033574894f48
	mw004dcb62_da5f_41c7_a7bd_033574894f48_p=0.02;
		
// mw78dd80b8_e003_4c62_81d1_547d001767af_p   id: mw78dd80b8_e003_4c62_81d1_547d001767af
	mw78dd80b8_e003_4c62_81d1_547d001767af_p=0.13;
		
// mw3a93c3a6_623a_44fe_84e9_a47823defd1f_p   id: mw3a93c3a6_623a_44fe_84e9_a47823defd1f
	mw3a93c3a6_623a_44fe_84e9_a47823defd1f_p=0.2;
		
// mwd21d3f76_d133_4053_8e44_02a538657e0a_p   id: mwd21d3f76_d133_4053_8e44_02a538657e0a
	mwd21d3f76_d133_4053_8e44_02a538657e0a_p=0.013;
		
// mwf998b218_be11_4aa4_81ae_41141861fb42_p   id: mwf998b218_be11_4aa4_81ae_41141861fb42
	mwf998b218_be11_4aa4_81ae_41141861fb42_p=1;
		
// mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p   id: mwfbff577a_4e9c_40fe_8777_eb0ceade28c9
	mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p=1e-06;
		
// mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p   id: mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c
	mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p=0.03;
		
// mwe3841c25_6042_49c2_9feb_90cbf6751167_p   id: mwe3841c25_6042_49c2_9feb_90cbf6751167
	mwe3841c25_6042_49c2_9feb_90cbf6751167_p=0.6;
		
// mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43_p   id: mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43
	mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43_p=0.005;
		
// mwa3072851_e3e4_4767_ac41_49fa7c0de7a7_p   id: mwa3072851_e3e4_4767_ac41_49fa7c0de7a7
	mwa3072851_e3e4_4767_ac41_49fa7c0de7a7_p=0.03;
		
// mwd3b36919_202a_4fed_a3c8_1a3a60594404_p   id: mwd3b36919_202a_4fed_a3c8_1a3a60594404
	mwd3b36919_202a_4fed_a3c8_1a3a60594404_p=8;
		



xdot=[
//x(1)   ID: cytosol  initialValue: 1
	0;
	
//x(2)   ID: ER_store  initialValue: 1
	0;
	
//x(3)   ID: CaI  initialValue: 0.05
	(1/compartment_cytosol)*( (-1)*(1)* (( x(7) *(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(k2_p,( 2 ))))) + (-1)*(1)* (( x(6) *(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw3a93c3a6_623a_44fe_84e9_a47823defd1f_p,( 2 ))))) + (-1)*(1)* ((mwa3072851_e3e4_4767_ac41_49fa7c0de7a7_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwe3841c25_6042_49c2_9feb_90cbf6751167_p,( 4 ))))) + (1)*(1)* ((( 1 )-mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p)*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(11) ) + (1)*(1)* ( x(8) *(mw0ad64e84_bb75_4be4_a9c3_2d4741b0f45f_p+((power(mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778_p,( 8 )))/((power( x(11) ,( 8 )))+(power(mwfe8e89cf_3c67_4dd5_939e_b4cfee2e0778_p,( 8 ))))))) + (1)*(1)* ((mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43_p* x(10) )/( x(10) +( 0.01 ))) );
	
//x(4)   ID: IP3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (D_p* x(4) ) + (1)*(1)* (R_p* x(3) ) );
	
//x(5)   ID: g  initialValue: 0.002
	(1/compartment_cytosol)*( (-1)*(1)* (F_p* x(5) ) + (1)*(1)* (((E_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwf998b218_be11_4aa4_81ae_41141861fb42_p,( 4 )))))*(( 1 )- x(5) )) );
	
//x(6)   ID: mwaf195932_a72c_4552_8cf2_b349b15d39c4  initialValue: 0.013
	(1/compartment_cytosol)*( (-1)*(1)* ( x(6) *mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p) + (1)*(1)* ((mwd3b36919_202a_4fed_a3c8_1a3a60594404_p*mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p*mwd21d3f76_d133_4053_8e44_02a538657e0a_p*(power( x(3) ,( 4 ))))/(((mwd3b36919_202a_4fed_a3c8_1a3a60594404_p-( 1 ))*(power(( 0.05 ),( 4 ))))+(power( x(3) ,( 4 ))))) );
	
//x(7)   ID: mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3  initialValue: 0.266
	(1/compartment_cytosol)*( (-1)*(1)* ( x(7) *mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p) + (1)*(1)* (((( 1 )/mwd3b36919_202a_4fed_a3c8_1a3a60594404_p)*B_p*mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p*(((mwd3b36919_202a_4fed_a3c8_1a3a60594404_p-( 1 ))*(power(( 2 ),( 4 ))))+(power( x(11) ,( 4 )))))/(power( x(11) ,( 4 )))) );
	
//x(8)   ID: mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb  initialValue: 0.02
	(1/compartment_cytosol)*( (-1)*(1)* ( x(8) *mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p) + (1)*(1)* (((((( 1 )/(mwd3b36919_202a_4fed_a3c8_1a3a60594404_p*mwd3b36919_202a_4fed_a3c8_1a3a60594404_p))*mw004dcb62_da5f_41c7_a7bd_033574894f48_p*mwfbff577a_4e9c_40fe_8777_eb0ceade28c9_p*(((mwd3b36919_202a_4fed_a3c8_1a3a60594404_p-( 1 ))*(power(( 2 ),( 2 ))))+(power( x(11) ,( 2 )))))/(power( x(11) ,( 2 ))))*(((mwd3b36919_202a_4fed_a3c8_1a3a60594404_p-( 1 ))*(power(( 0.05 ),( 2 ))))+(power( x(3) ,( 2 )))))/(power( x(3) ,( 2 )))) );
	
//x(9)   ID: mwd6b792d8_c983_42c1_b3bc_2494d6a3363e  initialValue: 1000
	0;
	
//x(10)   ID: mw013a7c64_a9ec_483c_b3b8_ed658337ee95  initialValue: 0
	(1/compartment_mitochondria)*( (-1)*(1)* ((mw219cf65d_18cc_4f7e_ab5a_5b87cda6fc43_p* x(10) )/( x(10) +( 0.01 ))) + (1)*(1)* ((mwa3072851_e3e4_4767_ac41_49fa7c0de7a7_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwe3841c25_6042_49c2_9feb_90cbf6751167_p,( 4 ))))) + (1)*(1)* (mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(11) ) );
	
//x(11)   ID: CaS  initialValue: 2
	(1/compartment_ER_store)*( (-1)*(1)* ((( 1 )-mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p)*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(11) ) + (-1)*(1)* (mwd8bf5d8f_ad00_4119_bde1_91015ef2cd7c_p*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(mw92b257b7_00af_4fd6_a11b_8e4655a4ba65_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(11) ) + (1)*(1)* (( x(7) *(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(k2_p,( 2 ))))) )
	];


	
endfunction
        x0=[1;1;0.05;0;0.002;0.013;0.266;0.02;1000;0;2];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: cytosol  initialValue: 1
	
//x(2)   id: ER_store  initialValue: 1
	
//x(3)   id: CaI  initialValue: 0.05
	
//x(4)   id: IP3  initialValue: 0
	
//x(5)   id: g  initialValue: 0.002
	
//x(6)   id: mwaf195932_a72c_4552_8cf2_b349b15d39c4  initialValue: 0.013
	
//x(7)   id: mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3  initialValue: 0.266
	
//x(8)   id: mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb  initialValue: 0.02
	
//x(9)   id: mwd6b792d8_c983_42c1_b3bc_2494d6a3363e  initialValue: 1000
	
//x(10)   id: mw013a7c64_a9ec_483c_b3b8_ed658337ee95  initialValue: 0
	
//x(11)   id: CaS  initialValue: 2