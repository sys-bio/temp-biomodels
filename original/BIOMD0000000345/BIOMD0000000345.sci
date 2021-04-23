
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment1   id: compartment1
	compartment_compartment1=1;
		
// kins_p   id: kins
	kins_p=0.001;
		
// kins1d_p   id: kins1d
	kins1d_p=0.0004;
		
// kins2d_p   id: kins2d
	kins2d_p=0.04;
		
// kins1den_p   id: kins1den
	kins1den_p=0.001925;
		
// kins2den_p   id: kins2den
	kins2den_p=0.00385;
		
// kyd_p   id: kyd
	kyd_p=0.00385;
		
// kyden_p   id: kyden
	kyden_p=0.00722;
		
// kyp_p   id: kyp
	kyp_p=0.0231;
		
// intk1_p   id: intk1
	intk1_p=0.00055;
		
// intk2_p   id: intk2
	intk2_p=0.0002;
		
// reck1_p   id: reck1
	reck1_p=0.001533;
		
// Rtotal_p   id: Rtotal
	Rtotal_p=40;
		
// k1ub_p   id: k1ub
	k1ub_p=0.35;
		
// k2ub_p   id: k2ub
	k2ub_p=0.2;
		
// pansec_p   id: pansec
	pansec_p=0.0016976;
		
// Kpan_p   id: Kpan
	Kpan_p=0.5;
		
// mliver_p   id: mliver
	mliver_p=10;
		
// vp_p   id: vp
	vp_p=0.00675;
		
// rholiver_p   id: rholiver
	rholiver_p=1051;
		
// vhep_p   id: vhep
	vhep_p=0.00742150333016175;
		
// vd_p   id: vd
	vd_p=0.0021216;
		
// mkidney_p   id: mkidney
	mkidney_p=1.47826086956522;
		
// Kkidney_p   id: Kkidney
	Kkidney_p=3.32608695652174E-5;
		
// r1_p   id: r1
	r1_p=3.53837;
		
// r2_p   id: r2
	r2_p=0;
		
// r3_p   id: r3
	r3_p=0;
		
// r4_p   id: r4
	r4_p=0;
		
// r5_p   id: r5
	r5_p=0;
		
// r6_p   id: r6
	r6_p=0;
		
// r7_p   id: r7
	r7_p=0;
		
// i1_p   id: i1
	i1_p=0;
		
// i2_p   id: i2
	i2_p=0;
		
// i3_p   id: i3
	i3_p=0;
		
// i4_p   id: i4
	i4_p=-1.70974345792274E-17;
		
// i5_p   id: i5
	i5_p=0;
		
// i6_p   id: i6
	i6_p=0;
		
// i7_p   id: i7
	i7_p=3.20632409511745E-17;
		
// f1_p   id: f1
	f1_p=-4.78999999985533E-8;
		
// f2_p   id: f2
	f2_p=0;
		
// f3_p   id: f3
	f3_p=0;
		
// f4_p   id: f4
	f4_p=0;
		
// f5_p   id: f5
	f5_p=0;
		
// f6_p   id: f6
	f6_p=0;
		
// bw_p   id: bw
	bw_p=200;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=3.89037403531029;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0.492753623188406;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=4.38312765849869;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=88.757944974909;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=11.242055025091;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=1.57560148430067;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=0.199565217391304;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=1.77516670169197;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=-1.11022302462516E-16;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=-1.11022302462516E-16;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=0;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=0;
		
// parameter_13_p   id: parameter_13
	parameter_13_p=-1.11022302462516E-16;
		
// parameter_14_p   id: parameter_14
	parameter_14_p=-1.11022302462516E-16;
		
// ins_s   id: ins
	ins_s=100;
		
// I2RPen_s   id: I2RPen
	I2RPen_s=-4.44089209850063E-15;
		



xdot=[
//x(1)   ID: R  initialValue: 35.3837
	        
          ((( ( ((kins_p* x(1) *ins_s)-(kins1d_p* x(2) )) ) )+ ( (kyd_p* x(4) ) ) )- ( ((intk2_p* x(1) )-(reck1_p* x(7) )) ) )
        ;
	
//x(2)   ID: IR  initialValue: 0
	        
          ((( ( ((kins_p* x(1) *ins_s)-(kins1d_p* x(2) )) ) - ( ((kins_p* x(2) *ins_s)-(kins2d_p* x(3) )) ) )- ( ((kyp_p* x(2) )-(kyd_p* x(5) )) ) )- ( (intk2_p* x(2) ) ) )
        ;
	
//x(3)   ID: I2R  initialValue: 0
	        
          (( ( ((kins_p* x(2) *ins_s)-(kins2d_p* x(3) )) ) - ( ((kyp_p* x(3) )-(kyd_p* x(6) )) ) )- ( (intk2_p* x(3) ) ) )
        ;
	
//x(4)   ID: Rp  initialValue: 0
	        
          ((( ( ((kins_p* x(4) *ins_s)-(kins1d_p* x(5) )) ) )- ( (kyd_p* x(4) ) ) )- ( ((intk1_p* x(4) )-(reck1_p* x(10) )) ) )
        ;
	
//x(5)   ID: IRp  initialValue: 0
	        
          ((( ( ((kins_p* x(4) *ins_s)-(kins1d_p* x(5) )) ) - ( ((kins_p* x(5) *ins_s)-(kins2d_p* x(6) )) ) )+ ( ((kyp_p* x(2) )-(kyd_p* x(5) )) ) )- ( (intk1_p* x(5) ) ) )
        ;
	
//x(6)   ID: I2Rp  initialValue: 0
	        
          (( ( ((kins_p* x(5) *ins_s)-(kins2d_p* x(6) )) ) + ( ((kyp_p* x(3) )-(kyd_p* x(6) )) ) )- ( (intk1_p* x(6) ) ) )
        ;
	
//x(7)   ID: Ren  initialValue: 4.6163
	        
          ( ( (kins1den_p* x(8) ) ) + ( (kyden_p* x(10) ) ) + ( ((intk2_p* x(1) )-(reck1_p* x(7) )) ) )
        ;
	
//x(8)   ID: IRen  initialValue: 0
	        
          (((( ( (kins1den_p* x(8) ) ) )+ ( (kins2den_p* x(9) ) ) )- ( ((kyp_p* x(8) )-(kyden_p* x(11) )) ) )+ ( (intk2_p* x(2) ) ) )
        ;
	
//x(9)   ID: I2Ren  initialValue: 0
	        
          ((( ( (kins2den_p* x(9) ) ) )- ( ((kyp_p* x(9) )-(kyden_p* ( (((((((((((Rtotal_p- x(1) )- x(2) )- x(3) )- x(4) )- x(5) )- x(6) )- x(7) )- x(8) )- x(9) )- x(10) )- x(11) ) ) )) ) )+ ( (intk2_p* x(3) ) ) )
        ;
	
//x(10)   ID: RPen  initialValue: 0
	        
          (( ( (kins1den_p* x(11) ) ) - ( (kyden_p* x(10) ) ) )+ ( ((intk1_p* x(4) )-(reck1_p* x(10) )) ) )
        ;
	
//x(11)   ID: IRPen  initialValue: 0
	        
          (( ( (kins1den_p* x(11) ) ) )+ ( (kins2den_p* ( (((((((((((Rtotal_p- x(1) )- x(2) )- x(3) )- x(4) )- x(5) )- x(6) )- x(7) )- x(8) )- x(9) )- x(10) )- x(11) ) ) ) ) + ( ((kyp_p* x(8) )-(kyden_p* x(11) )) ) + ( (intk1_p* x(5) ) ) )
        
	];


	
endfunction
        x0=[35.3837;0;0;0;0;0;4.6163;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: R  initialValue: 35.3837
	
//x(2)   id: IR  initialValue: 0
	
//x(3)   id: I2R  initialValue: 0
	
//x(4)   id: Rp  initialValue: 0
	
//x(5)   id: IRp  initialValue: 0
	
//x(6)   id: I2Rp  initialValue: 0
	
//x(7)   id: Ren  initialValue: 4.6163
	
//x(8)   id: IRen  initialValue: 0
	
//x(9)   id: I2Ren  initialValue: 0
	
//x(10)   id: RPen  initialValue: 0
	
//x(11)   id: IRPen  initialValue: 0