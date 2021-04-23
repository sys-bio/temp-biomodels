
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// F_AHP6_p   id: F_AHP6
	F_AHP6_p=0;
		
// F_CK_p   id: F_CK
	F_CK_p=0;
		
// F_IAA2_p   id: F_IAA2
	F_IAA2_p=0;
		
// F_ARR5_p   id: F_ARR5
	F_ARR5_p=0;
		
// F_PIN1_p   id: F_PIN1
	F_PIN1_p=0;
		
// F_PIN7_p   id: F_PIN7
	F_PIN7_p=0;
		
// F_PIN3_p   id: F_PIN3
	F_PIN3_p=0;
		
// p_ax_p   id: p_ax
	p_ax_p=0.06;
		
// p_ck_p   id: p_ck
	p_ck_p=2;
		
// d_ax_p   id: d_ax
	d_ax_p=1;
		
// d_ck_p   id: d_ck
	d_ck_p=10;
		
// phloem_rate_ax_p   id: phloem_rate_ax
	phloem_rate_ax_p=1;
		
// all_section_rate_ax_p   id: all_section_rate_ax
	all_section_rate_ax_p=1;
		
// phloem_rate_ck_p   id: phloem_rate_ck
	phloem_rate_ck_p=1;
		
// all_section_rate_ck_p   id: all_section_rate_ck
	all_section_rate_ck_p=1;
		
// lambda_AHP6_p   id: lambda_AHP6
	lambda_AHP6_p=2;
		
// lambda_IAA2_p   id: lambda_IAA2
	lambda_IAA2_p=10;
		
// lambda_ARR5_p   id: lambda_ARR5
	lambda_ARR5_p=20;
		
// lambda_PIN1_p   id: lambda_PIN1
	lambda_PIN1_p=0;
		
// lambda_PIN3_p   id: lambda_PIN3
	lambda_PIN3_p=0;
		
// lambda_PIN7_p   id: lambda_PIN7
	lambda_PIN7_p=1;
		
// mu_m_PHB_p   id: mu_m_PHB
	mu_m_PHB_p=1;
		
// mu_m_AHP6_p   id: mu_m_AHP6
	mu_m_AHP6_p=1;
		
// mu_m_IAA2_p   id: mu_m_IAA2
	mu_m_IAA2_p=10;
		
// mu_m_ARR5_p   id: mu_m_ARR5
	mu_m_ARR5_p=10;
		
// mu_m_PIN1_p   id: mu_m_PIN1
	mu_m_PIN1_p=0;
		
// mu_m_PIN3_p   id: mu_m_PIN3
	mu_m_PIN3_p=0;
		
// mu_m_PIN7_p   id: mu_m_PIN7
	mu_m_PIN7_p=1;
		
// delta_PHB_p   id: delta_PHB
	delta_PHB_p=1;
		
// delta_AHP6_p   id: delta_AHP6
	delta_AHP6_p=1;
		
// delta_IAA2_p   id: delta_IAA2
	delta_IAA2_p=10;
		
// delta_ARR5_p   id: delta_ARR5
	delta_ARR5_p=10;
		
// delta_PIN1_p   id: delta_PIN1
	delta_PIN1_p=0;
		
// delta_PIN3_p   id: delta_PIN3
	delta_PIN3_p=0;
		
// delta_PIN7_p   id: delta_PIN7
	delta_PIN7_p=5;
		
// delta_CKX3_p   id: delta_CKX3
	delta_CKX3_p=1;
		
// mu_p_PHB_p   id: mu_p_PHB
	mu_p_PHB_p=1;
		
// mu_p_AHP6_p   id: mu_p_AHP6
	mu_p_AHP6_p=1;
		
// mu_p_IAA2_p   id: mu_p_IAA2
	mu_p_IAA2_p=10;
		
// mu_p_ARR5_p   id: mu_p_ARR5
	mu_p_ARR5_p=10;
		
// mu_p_PIN1_p   id: mu_p_PIN1
	mu_p_PIN1_p=0;
		
// mu_p_PIN3_p   id: mu_p_PIN3
	mu_p_PIN3_p=0;
		
// mu_p_PIN7_p   id: mu_p_PIN7
	mu_p_PIN7_p=1;
		
// mu_p_CKX3_p   id: mu_p_CKX3
	mu_p_CKX3_p=1;
		
// theta_Ax_p   id: theta_Ax
	theta_Ax_p=0.25;
		
// theta_Ck_p   id: theta_Ck
	theta_Ck_p=0.5;
		
// theta_AHP6_p   id: theta_AHP6
	theta_AHP6_p=0.04;
		
// theta_ARR5_p   id: theta_ARR5
	theta_ARR5_p=0.1;
		
// theta_PHB_p   id: theta_PHB
	theta_PHB_p=0.4;
		
// theta_CKX3_p   id: theta_CKX3
	theta_CKX3_p=0.05;
		
// p_phb_p   id: p_phb
	p_phb_p=2;
		
// d_phb_p   id: d_phb
	d_phb_p=1;
		
// p_mirna_p   id: p_mirna
	p_mirna_p=32.5;
		
// d_mirna_p   id: d_mirna
	d_mirna_p=1;
		
// d_mirna_mrna_p   id: d_mirna_mrna
	d_mirna_mrna_p=10;
		
// p_ckx3_p   id: p_ckx3
	p_ckx3_p=5;
		
// d_ckx3_p   id: d_ckx3
	d_ckx3_p=1;
		
// b_pin3_p   id: b_pin3
	b_pin3_p=1;
		
// b_pin1_p   id: b_pin1
	b_pin1_p=0;
		
// b_pin7_p   id: b_pin7
	b_pin7_p=0;
		
// b_ahp6_p   id: b_ahp6
	b_ahp6_p=0;
		
// b_arr5_p   id: b_arr5
	b_arr5_p=0;
		
// b_iaa2_p   id: b_iaa2
	b_iaa2_p=0;
		
// hill_ax_p   id: hill_ax
	hill_ax_p=2;
		
// hill_ck_p   id: hill_ck
	hill_ck_p=2;
		
// hill_arr5_p   id: hill_arr5
	hill_arr5_p=3;
		
// hill_ckx3_p   id: hill_ckx3
	hill_ckx3_p=5;
		
// hill_ahp6_p   id: hill_ahp6
	hill_ahp6_p=3;
		
// hill_phb_p   id: hill_phb
	hill_phb_p=3;
		



xdot=[
//x(1)   ID: Auxin  initialValue: 0
	        
          ((phloem_rate_ax_p*p_ax_p)-(d_ax_p* x(1) ))
        ;
	
//x(2)   ID: Cytokinin  initialValue: 0
	        
          (((phloem_rate_ck_p*p_ck_p)* ( (( 1 )/(( 1 )+(power(( x(12) /theta_CKX3_p),hill_ckx3_p)))) ) )-(d_ck_p* x(2) ))
        ;
	
//x(3)   ID: AHP6m  initialValue: 0
	        
          ((lambda_AHP6_p* ( ((b_ahp6_p+(power(( x(1) /theta_Ax_p),hill_ax_p)))/((( 1 )+(power(( x(1) /theta_Ax_p),hill_ax_p)))+(power(( x(10) /theta_PHB_p),hill_phb_p)))) ) )-(mu_m_AHP6_p* x(3) ))
        ;
	
//x(4)   ID: AHP6p  initialValue: 0
	        
          ((delta_AHP6_p* x(3) )-(mu_p_AHP6_p* x(4) ))
        ;
	
//x(5)   ID: IAA2m  initialValue: 0
	        
          ((lambda_IAA2_p* ( ((b_iaa2_p+(power(( x(1) /theta_Ax_p),hill_ax_p)))/(( 1 )+(power(( x(1) /theta_Ax_p),hill_ax_p)))) ) )-(mu_m_IAA2_p* x(5) ))
        ;
	
//x(6)   ID: IAA2p  initialValue: 0
	        
          ((delta_IAA2_p* x(5) )-(mu_p_IAA2_p* x(6) ))
        ;
	
//x(7)   ID: ARR5m  initialValue: 0
	        
          ((lambda_ARR5_p* ( ((b_arr5_p+(power(( x(2) /theta_Ck_p),hill_ck_p)))/((( 1 )+(power(( x(2) /theta_Ck_p),hill_ck_p)))+(power(( x(4) /theta_AHP6_p),hill_ahp6_p)))) ) )-(mu_m_ARR5_p* x(7) ))
        ;
	
//x(8)   ID: ARR5p  initialValue: 0
	        
          ((delta_ARR5_p* x(7) )-(mu_p_ARR5_p* x(8) ))
        ;
	
//x(9)   ID: PHBm  initialValue: 0
	        
          ((p_phb_p-(d_phb_p* x(9) ))-((d_mirna_mrna_p* x(9) )* x(16) ))
        ;
	
//x(10)   ID: PHBp  initialValue: 0
	        
          ((delta_PHB_p* x(9) )-(mu_p_PHB_p* x(10) ))
        ;
	
//x(11)   ID: CKX3m  initialValue: 0
	0;
	
//x(12)   ID: CKX3p  initialValue: 0
	        
          ((delta_CKX3_p* x(11) )-(mu_p_CKX3_p* x(12) ))
        ;
	
//x(13)   ID: PIN3m  initialValue: 0
	        
          ((lambda_PIN3_p* ( ) )-(mu_m_PIN3_p* x(13) ))
        ;
	
//x(14)   ID: PIN1m  initialValue: 0
	        
          ((lambda_PIN1_p* ( ((b_pin1_p+(power(( x(8) /theta_ARR5_p),hill_arr5_p)))/(( 1 )+(power(( x(8) /theta_ARR5_p),hill_arr5_p)))) ) )-(mu_m_PIN1_p* x(14) ))
        ;
	
//x(15)   ID: PIN7m  initialValue: 0
	        
          ((lambda_PIN7_p* ( ((b_pin7_p+(power(( x(8) /theta_ARR5_p),hill_arr5_p)))/(( 1 )+(power(( x(8) /theta_ARR5_p),hill_arr5_p)))) ) )-(mu_m_PIN7_p* x(15) ))
        ;
	
//x(16)   ID: miRNA  initialValue: 0
	        
          (0)

        
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16])

//real_variable:
	
	
//x(1)   id: Auxin  initialValue: 0
	
//x(2)   id: Cytokinin  initialValue: 0
	
//x(3)   id: AHP6m  initialValue: 0
	
//x(4)   id: AHP6p  initialValue: 0
	
//x(5)   id: IAA2m  initialValue: 0
	
//x(6)   id: IAA2p  initialValue: 0
	
//x(7)   id: ARR5m  initialValue: 0
	
//x(8)   id: ARR5p  initialValue: 0
	
//x(9)   id: PHBm  initialValue: 0
	
//x(10)   id: PHBp  initialValue: 0
	
//x(11)   id: CKX3m  initialValue: 0
	
//x(12)   id: CKX3p  initialValue: 0
	
//x(13)   id: PIN3m  initialValue: 0
	
//x(14)   id: PIN1m  initialValue: 0
	
//x(15)   id: PIN7m  initialValue: 0
	
//x(16)   id: miRNA  initialValue: 0