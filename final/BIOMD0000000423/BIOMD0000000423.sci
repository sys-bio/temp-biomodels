
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// k1a_p   id: k1a
	k1a_p=0.153418;
		
// k1aBasic_p   id: k1aBasic
	k1aBasic_p=0.0383389;
		
// k1b_p   id: k1b
	k1b_p=3.4699E-6;
		
// k1c_p   id: k1c
	k1c_p=0.574266;
		
// k1d_p   id: k1d
	k1d_p=4.78844;
		
// k1e_p   id: k1e
	k1e_p=5.25027E-5;
		
// k1f_p   id: k1f
	k1f_p=119.353;
		
// k1g_p   id: k1g
	k1g_p=4.14899;
		
// k1r_p   id: k1r
	k1r_p=3.79547E4;
		
// k21_p   id: k21
	k21_p=538004;
		
// k22_p   id: k22
	k22_p=1.7252E-6;
		
// km2_p   id: km2
	km2_p=262759;
		
// km23_p   id: km23
	km23_p=88.9096;
		
// k3_p   id: k3
	k3_p=8.62917E-5;
		
// km3_p   id: km3
	km3_p=0.132671;
		
// ins_p   id: ins
	ins_p=100;
		
// measIRS1_p   id: measIRS1
	measIRS1_p=0;
		
// measIRp_p   id: measIRp
	measIRp_p=0;
		
// IRmem_p   id: IRmem
	IRmem_p=0;
		



xdot=[
//x(1)   ID: IR  initialValue: 8.94067597532632
	(1/compartment_default)*( (-1)*(1)* ((k1a_p*ins_p* x(1) )+(k1aBasic_p* x(1) )) + (1)*(1)* (k1b_p* x(2) ) + (1)*(1)* (k1g_p* x(3) ) + (1)*(1)* (k1r_p* x(5) ) );
	
//x(2)   ID: IRins  initialValue: 0.59688996214639
	(1/compartment_default)*( (-1)*(1)* (k1b_p* x(2) ) + (-1)*(1)* (k1c_p* x(2) ) + (1)*(1)* ((k1a_p*ins_p* x(1) )+(k1aBasic_p* x(1) )) );
	
//x(3)   ID: IRp  initialValue: 0.0383525925240207
	(1/compartment_default)*( (-1)*(1)* (k1d_p* x(3) ) + (-1)*(1)* (k1g_p* x(3) ) + (1)*(1)* (k1c_p* x(2) ) );
	
//x(4)   ID: IRiP  initialValue: 0.424076631823384
	(1/compartment_default)*( (-1)*(1)* ( x(4) *(k1e_p+((k1f_p* x(9) )/(( 1 )+ x(9) )))) + (1)*(1)* (k1d_p* x(3) ) );
	
//x(5)   ID: IRi  initialValue: 4.83863890758515E-6
	(1/compartment_default)*( (-1)*(1)* (k1r_p* x(5) ) + (1)*(1)* ( x(4) *(k1e_p+((k1f_p* x(9) )/(( 1 )+ x(9) )))) );
	
//x(6)   ID: IRS  initialValue: 9.43998194225544
	(1/compartment_default)*( (-1)*(1)* ((k21_p* x(6) *( x(3) +(k22_p* x(4) )))/(( 1 )+(km23_p* x(9) ))) + (1)*(1)* (km2_p* x(7) ) );
	
//x(7)   ID: IRSiP  initialValue: 0.560018057744573
	(1/compartment_default)*( (-1)*(1)* (km2_p* x(7) ) + (1)*(1)* ((k21_p* x(6) *( x(3) +(k22_p* x(4) )))/(( 1 )+(km23_p* x(9) ))) );
	
//x(8)   ID: X  initialValue: 9.99635886407151
	(1/compartment_default)*( (-1)*(1)* (k3_p* x(8) * x(7) ) + (1)*(1)* (km3_p* x(9) ) );
	
//x(9)   ID: Xp  initialValue: 0.00364113592848386
	(1/compartment_default)*( (-1)*(1)* (km3_p* x(9) ) + (1)*(1)* (k3_p* x(8) * x(7) ) )
	];


	
endfunction
        x0=[8.94067597532632;0.59688996214639;0.0383525925240207;0.424076631823384;4.83863890758515E-6;9.43998194225544;0.560018057744573;9.99635886407151;0.00364113592848386];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: IR  initialValue: 8.94067597532632
	
//x(2)   id: IRins  initialValue: 0.59688996214639
	
//x(3)   id: IRp  initialValue: 0.0383525925240207
	
//x(4)   id: IRiP  initialValue: 0.424076631823384
	
//x(5)   id: IRi  initialValue: 4.83863890758515E-6
	
//x(6)   id: IRS  initialValue: 9.43998194225544
	
//x(7)   id: IRSiP  initialValue: 0.560018057744573
	
//x(8)   id: X  initialValue: 9.99635886407151
	
//x(9)   id: Xp  initialValue: 0.00364113592848386