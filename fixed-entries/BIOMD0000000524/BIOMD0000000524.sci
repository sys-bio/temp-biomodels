
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// kon_FADD_p   id: kon_FADD
	kon_FADD_p=0.000811711012144556;
		
// koff_FADD_p   id: koff_FADD
	koff_FADD_p=0.00566528253772301;
		
// kDISC_p   id: kDISC
	kDISC_p=0.000491828591049766;
		
// kD216_p   id: kD216
	kD216_p=0.0114186392006403;
		
// kD374trans_p55_p   id: kD374trans_p55
	kD374trans_p55_p=0.000446994772958953;
		
// kD374trans_p43_p   id: kD374trans_p43
	kD374trans_p43_p=0.00343995957326369;
		
// kdiss_p18_p   id: kdiss_p18
	kdiss_p18_p=0.0949914492651531;
		
// kBid_p   id: kBid
	kBid_p=0.00052867403363568;
		
// kD374probe_p   id: kD374probe
	kD374probe_p=0.00152252549827479;
		
// KDR_p   id: KDR
	KDR_p=8.98496674617627;
		
// KDL_p   id: KDL
	KDL_p=15.421878766215;
		
// CD95act_p   id: CD95act
	CD95act_p=0;
		



xdot=[
//x(1)   ID: CD95  initialValue: 12
	0;
	
//x(2)   ID: FADD  initialValue: 90
	(1/compartment_cell)*( (-1)*(1)* (kon_FADD_p* ( (((power( x(1) ,( 3 )))*(power(KDL_p,( 2 )))* x(18) )/(( x(18) +KDL_p)*(((power( x(1) ,( 2 )))*(power(KDL_p,( 2 ))))+(KDR_p*(power( x(18) ,( 2 ))))+(( 2 )*KDR_p*KDL_p* x(18) )+(KDR_p*(power(KDL_p,( 2 ))))))) ) * x(2) *compartment_cell) + (1)*(1)* (koff_FADD_p* x(7) *compartment_cell) );
	
//x(3)   ID: p55free  initialValue: 127
	(1/compartment_cell)*( (-1)*(1)* (kDISC_p* x(3) * x(7) *compartment_cell) );
	
//x(4)   ID: Bid  initialValue: 224
	(1/compartment_cell)*( (-1)*(1)* (kBid_p* x(4) *( x(10) + x(11) )*compartment_cell) );
	
//x(5)   ID: PrNES_mCherry  initialValue: 1909
	(1/compartment_cell)*( (-1)*(1)* (kD374probe_p* x(5) *( x(10) + x(11) )*compartment_cell) );
	
//x(6)   ID: PrER_mGFP  initialValue: 3316
	(1/compartment_cell)*( (-1)*(1)* (kD374probe_p* x(6) * x(11) *compartment_cell) );
	
//x(7)   ID: DISC  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (koff_FADD_p* x(7) *compartment_cell) + (-1)*(1)* (kDISC_p* x(3) * x(7) *compartment_cell) + (1)*(1)* (kon_FADD_p* ( (((power( x(1) ,( 3 )))*(power(KDL_p,( 2 )))* x(18) )/(( x(18) +KDL_p)*(((power( x(1) ,( 2 )))*(power(KDL_p,( 2 ))))+(KDR_p*(power( x(18) ,( 2 ))))+(( 2 )*KDR_p*KDL_p* x(18) )+(KDR_p*(power(KDL_p,( 2 ))))))) ) * x(2) *compartment_cell) + (1)*(1)* (kD216_p* x(10) *compartment_cell) + (1)*(1)* (kD374trans_p55_p* x(9) *( x(8) + x(9) )*compartment_cell) + (1)*(1)* (kD374trans_p43_p* x(9) * x(10) *compartment_cell) );
	
//x(8)   ID: DISCp55  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kD216_p* x(8) *compartment_cell) + (-1)*(1)* (kD374trans_p55_p* x(8) *( x(8) + x(9) )*compartment_cell) + (-1)*(1)* (kD374trans_p43_p* x(8) * x(10) *compartment_cell) + (1)*(1)* (kDISC_p* x(3) * x(7) *compartment_cell) );
	
//x(9)   ID: p30  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kD374trans_p55_p* x(9) *( x(8) + x(9) )*compartment_cell) + (-1)*(1)* (kD374trans_p43_p* x(9) * x(10) *compartment_cell) + (1)*(1)* (kD216_p* x(8) *compartment_cell) );
	
//x(10)   ID: p43  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kD216_p* x(10) *compartment_cell) + (1)*(1)* (kD374trans_p55_p* x(8) *( x(8) + x(9) )*compartment_cell) + (1)*(1)* (kD374trans_p43_p* x(8) * x(10) *compartment_cell) );
	
//x(11)   ID: p18  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdiss_p18_p* x(11) *compartment_cell) + (1)*(1)* (kD216_p* x(10) *compartment_cell) + (1)*(1)* (kD374trans_p55_p* x(9) *( x(8) + x(9) )*compartment_cell) + (1)*(1)* (kD374trans_p43_p* x(9) * x(10) *compartment_cell) );
	
//x(12)   ID: p18inactive  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kdiss_p18_p* x(11) *compartment_cell) );
	
//x(13)   ID: tBid  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kBid_p* x(4) *( x(10) + x(11) )*compartment_cell) );
	
//x(14)   ID: PrNES  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kD374probe_p* x(5) *( x(10) + x(11) )*compartment_cell) );
	
//x(15)   ID: mCherry  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kD374probe_p* x(5) *( x(10) + x(11) )*compartment_cell) );
	
//x(16)   ID: PrER  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kD374probe_p* x(6) * x(11) *compartment_cell) );
	
//x(17)   ID: mGFP  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kD374probe_p* x(6) * x(11) *compartment_cell) );
	
//x(18)   ID: CD95L  initialValue: 16.6
	0
	];


	
endfunction
        x0=[12;90;127;224;1909;3316;0;0;0;0;0;0;0;0;0;0;0;16.6];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18])

//real_variable:
	
	
//x(1)   id: CD95  initialValue: 12
	
//x(2)   id: FADD  initialValue: 90
	
//x(3)   id: p55free  initialValue: 127
	
//x(4)   id: Bid  initialValue: 224
	
//x(5)   id: PrNES_mCherry  initialValue: 1909
	
//x(6)   id: PrER_mGFP  initialValue: 3316
	
//x(7)   id: DISC  initialValue: 0
	
//x(8)   id: DISCp55  initialValue: 0
	
//x(9)   id: p30  initialValue: 0
	
//x(10)   id: p43  initialValue: 0
	
//x(11)   id: p18  initialValue: 0
	
//x(12)   id: p18inactive  initialValue: 0
	
//x(13)   id: tBid  initialValue: 0
	
//x(14)   id: PrNES  initialValue: 0
	
//x(15)   id: mCherry  initialValue: 0
	
//x(16)   id: PrER  initialValue: 0
	
//x(17)   id: mGFP  initialValue: 0
	
//x(18)   id: CD95L  initialValue: 16.6