
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_V_medium   id: V_medium
	compartment_V_medium=1;
		
// compartment_V_nuc   id: V_nuc
	compartment_V_nuc=0.00035;
		
// compartment_V_cyt   id: V_cyt
	compartment_V_cyt=0.00105;
		
// v_T1R_p   id: v_T1R
	v_T1R_p=0.0103;
		
// v_T2R_p   id: v_T2R
	v_T2R_p=0.02869;
		
// ki_EE_p   id: ki_EE
	ki_EE_p=0.33;
		
// kr_EE_p   id: kr_EE
	kr_EE_p=0.033;
		
// ki_Cave_p   id: ki_Cave
	ki_Cave_p=0.33;
		
// kr_Cave_p   id: kr_Cave
	kr_Cave_p=0.03742;
		
// Kcd_p   id: Kcd
	Kcd_p=0.005;
		
// Klid_p   id: Klid
	Klid_p=0.02609;
		
// Kdeg_T1R_EE_p   id: Kdeg_T1R_EE
	Kdeg_T1R_EE_p=0.005;
		
// Kdeg_T2R_EE_p   id: Kdeg_T2R_EE
	Kdeg_T2R_EE_p=0.025;
		
// Kimp_Smad2c_p   id: Kimp_Smad2c
	Kimp_Smad2c_p=0.16;
		
// Kexp_Smad2n_p   id: Kexp_Smad2n
	Kexp_Smad2n_p=1;
		
// Kimp_Smad4c_p   id: Kimp_Smad4c
	Kimp_Smad4c_p=0.08;
		
// Kexp_Smad4n_p   id: Kexp_Smad4n
	Kexp_Smad4n_p=0.5;
		
// k_Smads_Complex_c_p   id: k_Smads_Complex_c
	k_Smads_Complex_c_p=6.85E-5;
		
// Kimp_Smads_Complex_c_p   id: Kimp_Smads_Complex_c
	Kimp_Smads_Complex_c_p=0.16;
		
// Kdiss_Smads_Complex_n_p   id: Kdiss_Smads_Complex_n
	Kdiss_Smads_Complex_n_p=0.1174;
		
// Total_Smad2n_p   id: Total_Smad2n
	Total_Smad2n_p=0;
		
// Total_Smad2c_p   id: Total_Smad2c
	Total_Smad2c_p=0;
		



xdot=[
//x(1)   ID: k_LRC  initialValue: 2197
	0;
	
//x(2)   ID: Smad2c  initialValue: 492.61
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*Kimp_Smad2c_p* x(2) ) + (-1)*(1)* (compartment_V_cyt*k_Smads_Complex_c_p* x(2) * x(4) * x(14) ) + (1)*(1)* (compartment_V_nuc*Kexp_Smad2n_p* x(3) ) );
	
//x(3)   ID: Smad2n  initialValue: 236.45
	(1/compartment_V_nuc)*( (-1)*(1)* (compartment_V_nuc*Kexp_Smad2n_p* x(3) ) + (1)*(1)* (compartment_V_cyt*Kimp_Smad2c_p* x(2) ) + (1)*(1)* (compartment_V_nuc*Kdiss_Smads_Complex_n_p* x(16) ) );
	
//x(4)   ID: Smad4c  initialValue: 1149.4
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*Kimp_Smad4c_p* x(4) ) + (-1)*(1)* (compartment_V_cyt*k_Smads_Complex_c_p* x(2) * x(4) * x(14) ) + (1)*(1)* (compartment_V_nuc*Kexp_Smad4n_p* x(5) ) );
	
//x(5)   ID: Smad4n  initialValue: 551.72
	(1/compartment_V_nuc)*( (-1)*(1)* (compartment_V_nuc*Kexp_Smad4n_p* x(5) ) + (1)*(1)* (compartment_V_cyt*Kimp_Smad4c_p* x(4) ) + (1)*(1)* (compartment_V_nuc*Kdiss_Smads_Complex_n_p* x(16) ) );
	
//x(6)   ID: T1R_Surf  initialValue: 0.237
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*ki_Cave_p* x(6) ) + (-1)*(1)* (compartment_V_cyt*ki_EE_p* x(6) ) + (-1)*(1)* (compartment_V_cyt* x(1) * x(17) * x(9) * x(6) ) + (1)*(1)* (compartment_V_cyt*v_T1R_p) + (1)*(1)* (compartment_V_cyt*kr_Cave_p* x(7) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(8) ) + (1)*(1)* (compartment_V_cyt*kr_Cave_p* x(13) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(14) ) );
	
//x(7)   ID: T1R_Cave  initialValue: 2.092
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_Cave_p* x(7) ) + (1)*(1)* (compartment_V_cyt*ki_Cave_p* x(6) ) );
	
//x(8)   ID: T1R_EE  initialValue: 2.06
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_EE_p* x(8) ) + (-1)*(1)* (compartment_V_cyt*Kdeg_T1R_EE_p* x(8) ) + (1)*(1)* (compartment_V_cyt*ki_EE_p* x(6) ) );
	
//x(9)   ID: T2R_Surf  initialValue: 0.202
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*ki_Cave_p* x(9) ) + (-1)*(1)* (compartment_V_cyt*ki_EE_p* x(9) ) + (-1)*(1)* (compartment_V_cyt* x(1) * x(17) * x(9) * x(6) ) + (1)*(1)* (compartment_V_cyt*v_T2R_p) + (1)*(1)* (compartment_V_cyt*kr_Cave_p* x(10) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(11) ) + (1)*(1)* (compartment_V_cyt*kr_Cave_p* x(13) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(14) ) );
	
//x(10)   ID: T2R_Cave  initialValue: 1.778
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_Cave_p* x(10) ) + (1)*(1)* (compartment_V_cyt*ki_Cave_p* x(9) ) );
	
//x(11)   ID: T2R_EE  initialValue: 1.148
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_EE_p* x(11) ) + (-1)*(1)* (compartment_V_cyt*Kdeg_T2R_EE_p* x(11) ) + (1)*(1)* (compartment_V_cyt*ki_EE_p* x(9) ) );
	
//x(12)   ID: LRC_Surf  initialValue: 0
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*ki_Cave_p* x(12) ) + (-1)*(1)* (compartment_V_cyt*ki_EE_p* x(12) ) + (1)*(1)* (compartment_V_cyt* x(1) * x(17) * x(9) * x(6) ) );
	
//x(13)   ID: LRC_Cave  initialValue: 0
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_Cave_p* x(13) ) + (-1)*(1)* (compartment_V_cyt*Klid_p* x(13) * x(16) ) + (1)*(1)* (compartment_V_cyt*ki_Cave_p* x(12) ) );
	
//x(14)   ID: LRC_EE  initialValue: 0
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*kr_EE_p* x(14) ) + (-1)*(1)* (compartment_V_cyt*Kcd_p* x(14) ) + (1)*(1)* (compartment_V_cyt*ki_EE_p* x(12) ) );
	
//x(15)   ID: Smads_Complex_c  initialValue: 0
	(1/compartment_V_cyt)*( (-1)*(1)* (compartment_V_cyt*Kimp_Smads_Complex_c_p* x(15) ) + (1)*(1)* (compartment_V_cyt*k_Smads_Complex_c_p* x(2) * x(4) * x(14) ) );
	
//x(16)   ID: Smads_Complex_n  initialValue: 0
	(1/compartment_V_nuc)*( (-1)*(1)* (compartment_V_nuc*Kdiss_Smads_Complex_n_p* x(16) ) + (1)*(1)* (compartment_V_cyt*Kimp_Smads_Complex_c_p* x(15) ) );
	
//x(17)   ID: TGF_beta  initialValue: 0.08
	(1/compartment_V_medium)*( (-1)*(1)* (compartment_V_cyt* x(1) * x(17) * x(9) * x(6) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(11) ) + (1)*(1)* (compartment_V_cyt*kr_Cave_p* x(13) ) + (1)*(1)* (compartment_V_cyt*kr_EE_p* x(14) ) )
	];


	
endfunction
        x0=[2197;492.61;236.45;1149.4;551.72;0.237;2.092;2.06;0.202;1.778;1.148;0;0;0;0;0;0.08];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17])

//real_variable:
	
	
//x(1)   id: k_LRC  initialValue: 2197
	
//x(2)   id: Smad2c  initialValue: 492.61
	
//x(3)   id: Smad2n  initialValue: 236.45
	
//x(4)   id: Smad4c  initialValue: 1149.4
	
//x(5)   id: Smad4n  initialValue: 551.72
	
//x(6)   id: T1R_Surf  initialValue: 0.237
	
//x(7)   id: T1R_Cave  initialValue: 2.092
	
//x(8)   id: T1R_EE  initialValue: 2.06
	
//x(9)   id: T2R_Surf  initialValue: 0.202
	
//x(10)   id: T2R_Cave  initialValue: 1.778
	
//x(11)   id: T2R_EE  initialValue: 1.148
	
//x(12)   id: LRC_Surf  initialValue: 0
	
//x(13)   id: LRC_Cave  initialValue: 0
	
//x(14)   id: LRC_EE  initialValue: 0
	
//x(15)   id: Smads_Complex_c  initialValue: 0
	
//x(16)   id: Smads_Complex_n  initialValue: 0
	
//x(17)   id: TGF_beta  initialValue: 0.08