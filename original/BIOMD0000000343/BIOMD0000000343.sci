
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0000001   id: compartment_0000001
	compartment_compartment_0000001=1;
		
// k1a_p   id: k1a
	k1a_p=0.3892881852;
		
// k1abasic_p   id: k1abasic
	k1abasic_p=0.012452744;
		
// k1b_p   id: k1b
	k1b_p=0.02000224505;
		
// k1e_p   id: k1e
	k1e_p=4.38334E-5;
		
// k1f_p   id: k1f
	k1f_p=20.0726035037;
		
// k1g_p   id: k1g
	k1g_p=286.6994648072;
		
// k1r_p   id: k1r
	k1r_p=3.6327773442;
		
// k21_p   id: k21
	k21_p=1.6722503302;
		
// k22_p   id: k22
	k22_p=0.036381619;
		
// km2_p   id: km2
	km2_p=32.5942371891;
		
// k3_p   id: k3
	k3_p=1.6286590231;
		
// km3_p   id: km3
	km3_p=0.1131073982;
		
// ky1_p   id: ky1
	ky1_p=152.9631668536;
		
// ky2_p   id: ky2
	ky2_p=8936.219557405;
		
// kyanna_p   id: kyanna
	kyanna_p=1.67601203140926E4;
		
// kyDosR_p   id: kyDosR
	kyDosR_p=1.37404321729991E4;
		
// ins_p   id: ins
	ins_p=100;
		
// k1c_p   id: k1c
	k1c_p=0.3635167928;
		
// k1d_p   id: k1d
	k1d_p=1580.6782649401;
		
// V1a_s   id: V1a
	V1a_s=389.41271264;
		
// V1b_s   id: V1b
	V1b_s=0;
		
// V1c_s   id: V1c
	V1c_s=0;
		
// V1d_s   id: V1d
	V1d_s=0;
		
// V1e_s   id: V1e
	V1e_s=0;
		
// V1g_s   id: V1g
	V1g_s=0;
		
// V1r_s   id: V1r
	V1r_s=0;
		
// V2_s   id: V2
	V2_s=0;
		
// Vm2_s   id: Vm2
	Vm2_s=0;
		
// V3_s   id: V3
	V3_s=0;
		
// Vm3_s   id: Vm3
	Vm3_s=0;
		
// simXP_s   id: simXP
	simXP_s=0;
		
// intamount_s   id: intamount
	intamount_s=0;
		
// measdoublestep_s   id: measdoublestep
	measdoublestep_s=0;
		
// measanna_s   id: measanna
	measanna_s=0;
		
// measdosR_s   id: measdosR
	measdosR_s=0;
		



xdot=[
//x(1)   ID: IR  initialValue: 10
	        
          (( ( ((k1a_p*ins_p* x(1) )+(k1abasic_p* x(1) )) ) )+ ( (k1b_p* x(2) ) ) + ( (k1r_p* x(5) ) ) + ( (k1g_p* x(3) ) ) )
        ;
	
//x(2)   ID: IRins  initialValue: 0
	        
          (( ( ((k1a_p*ins_p* x(1) )+(k1abasic_p* x(1) )) ) - ( (k1b_p* x(2) ) ) )- ( (k1c_p* x(2) ) ) )
        ;
	
//x(3)   ID: IRp  initialValue: 0
	        
          (( ( (k1c_p* x(2) ) ) - ( (k1d_p* x(3) ) ) )- ( (k1g_p* x(3) ) ) )
        ;
	
//x(4)   ID: IRip  initialValue: 0
	        
          ( ( (k1d_p* x(3) ) ) - ( ( x(4) *(k1e_p+((k1f_p* x(9) )/(( 1 )+ x(9) )))) ) )
        ;
	
//x(5)   ID: IRi  initialValue: 0
	        
          ( ( ( x(4) *(k1e_p+((k1f_p* x(9) )/(( 1 )+ x(9) )))) ) - ( (k1r_p* x(5) ) ) )
        ;
	
//x(6)   ID: IRS  initialValue: 10
	        
          (( ( (k21_p*( x(3) +(k22_p* x(4) ))* x(6) ) ) )+ ( (km2_p* x(7) ) ) )
        ;
	
//x(7)   ID: IRSip  initialValue: 0
	        
          ( ( (k21_p*( x(3) +(k22_p* x(4) ))* x(6) ) ) - ( (km2_p* x(7) ) ) )
        ;
	
//x(8)   ID: X  initialValue: 10
	        
          (( ( (k3_p* x(8) * x(7) ) ) )+ ( (km3_p* x(9) ) ) )
        ;
	
//x(9)   ID: Xp  initialValue: 0
	        
          ( ( (k3_p* x(8) * x(7) ) ) - ( (km3_p* x(9) ) ) )
        ;
	
//x(10)   ID: measIRp  initialValue: 1
	0
	];


	
endfunction
        x0=[10;0;0;0;0;10;0;10;0;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: IR  initialValue: 10
	
//x(2)   id: IRins  initialValue: 0
	
//x(3)   id: IRp  initialValue: 0
	
//x(4)   id: IRip  initialValue: 0
	
//x(5)   id: IRi  initialValue: 0
	
//x(6)   id: IRS  initialValue: 10
	
//x(7)   id: IRSip  initialValue: 0
	
//x(8)   id: X  initialValue: 10
	
//x(9)   id: Xp  initialValue: 0
	
//x(10)   id: measIRp  initialValue: 1