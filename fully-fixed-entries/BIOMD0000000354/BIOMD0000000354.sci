
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
		
// kIP3R_p   id: kIP3R
	kIP3R_p=0.175;
		
// PMleak_p   id: PMleak
	PMleak_p=0.0346;
		
// kSTIM_p   id: kSTIM
	kSTIM_p=1;
		
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
		
// mwc714c217_c8fd_4024_912c_681cd6931f59_p   id: mwc714c217_c8fd_4024_912c_681cd6931f59
	mwc714c217_c8fd_4024_912c_681cd6931f59_p=0.03;
		
// mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33_p   id: mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33
	mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33_p=0.005;
		
// mw886be93a_22c7_4966_a1fa_113afd832ae3_p   id: mw886be93a_22c7_4966_a1fa_113afd832ae3
	mw886be93a_22c7_4966_a1fa_113afd832ae3_p=0.03;
		
// mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d_p   id: mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d
	mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d_p=0.6;
		



xdot=[
//x(1)   ID: cytosol  initialValue: 1
	0;
	
//x(2)   ID: ER_store  initialValue: 1
	0;
	
//x(3)   ID: CaI  initialValue: 0.05
	(1/compartment_cytosol)*( (-1)*(1)* ((B_p*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(k2_p,( 2 ))))) + (-1)*(1)* ((mwd21d3f76_d133_4053_8e44_02a538657e0a_p*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw3a93c3a6_623a_44fe_84e9_a47823defd1f_p,( 2 ))))) + (-1)*(1)* ((mw886be93a_22c7_4966_a1fa_113afd832ae3_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d_p,( 4 ))))) + (1)*(1)* ((( 1 )-mwc714c217_c8fd_4024_912c_681cd6931f59_p)*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(kIP3R_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(7) ) + (1)*(1)* (mw004dcb62_da5f_41c7_a7bd_033574894f48_p*(PMleak_p+((power(kSTIM_p,( 8 )))/((power( x(7) ,( 8 )))+(power(kSTIM_p,( 8 ))))))) + (1)*(1)* ((mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33_p* x(8) )/( x(8) +( 0.01 ))) );
	
//x(4)   ID: IP3  initialValue: 0
	(1/compartment_cytosol)*( (-1)*(1)* (D_p* x(4) ) + (1)*(1)* (R_p* x(3) ) );
	
//x(5)   ID: g  initialValue: 0.002
	(1/compartment_cytosol)*( (-1)*(1)* (F_p* x(5) ) + (1)*(1)* (((E_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwf998b218_be11_4aa4_81ae_41141861fb42_p,( 4 )))))*(( 1 )- x(5) )) );
	
//x(6)   ID: CaO  initialValue: 1000
	0;
	
//x(7)   ID: CaS  initialValue: 2
	(1/compartment_ER_store)*( (-1)*(1)* ((( 1 )-mwc714c217_c8fd_4024_912c_681cd6931f59_p)*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(kIP3R_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(7) ) + (-1)*(1)* (mwc714c217_c8fd_4024_912c_681cd6931f59_p*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(kIP3R_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(7) ) + (1)*(1)* ((B_p*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(k2_p,( 2 ))))) );
	
//x(8)   ID: CaM  initialValue: 0
	(1/compartment_mitochondria)*( (-1)*(1)* ((mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33_p* x(8) )/( x(8) +( 0.01 ))) + (1)*(1)* ((mw886be93a_22c7_4966_a1fa_113afd832ae3_p*(power( x(3) ,( 4 ))))/((power( x(3) ,( 4 )))+(power(mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d_p,( 4 ))))) + (1)*(1)* (mwc714c217_c8fd_4024_912c_681cd6931f59_p*(L_p+(((((( 1 )- x(5) )*A_p*(power( x(4) ,( 2 ))))/((power( x(4) ,( 2 )))+(power(kIP3R_p,( 2 )))))*(power( x(3) ,( 2 ))))/((power( x(3) ,( 2 )))+(power(mw78dd80b8_e003_4c62_81d1_547d001767af_p,( 2 ))))))* x(7) ) )
	];


	
endfunction
        x0=[1;1;0.05;0;0.002;1000;2;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: cytosol  initialValue: 1
	
//x(2)   id: ER_store  initialValue: 1
	
//x(3)   id: CaI  initialValue: 0.05
	
//x(4)   id: IP3  initialValue: 0
	
//x(5)   id: g  initialValue: 0.002
	
//x(6)   id: CaO  initialValue: 1000
	
//x(7)   id: CaS  initialValue: 2
	
//x(8)   id: CaM  initialValue: 0