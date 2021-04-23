
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_wholeCell   id: wholeCell
	compartment_wholeCell=1;
		
// dccpt_p   id: dccpt
	dccpt_p=15.06;
		
// bccperp_p   id: bccperp
	bccperp_p=0.069;
		
// ubccperp_p   id: ubccperp
	ubccperp_p=0.262;
		
// bccpt_p   id: bccpt
	bccpt_p=51;
		
// dperm_p   id: dperm
	dperm_p=0.053;
		
// tlper_p   id: tlper
	tlper_p=36;
		
// tcccperp_p   id: tcccperp
	tcccperp_p=11;
		
// tcdvpmt_p   id: tcdvpmt
	tcdvpmt_p=0.028;
		
// dvri_p   id: dvri
	dvri_p=1.226;
		
// tcclkp_p   id: tcclkp
	tcclkp_p=1.42;
		
// bcc_p   id: bcc
	bcc_p=2.349;
		
// dclk_p   id: dclk
	dclk_p=0.2;
		
// ubcc_p   id: ubcc
	ubcc_p=0.89;
		
// bpt_p   id: bpt
	bpt_p=1.1;
		
// ubpt_p   id: ubpt
	ubpt_p=2.93;
		
// dper_p   id: dper
	dper_p=0.62;
		
// tcccvrip_p   id: tcccvrip
	tcccvrip_p=16.86;
		
// tcccpdpp_p   id: tcccpdpp
	tcccpdpp_p=9.831;
		
// dvrim_p   id: dvrim
	dvrim_p=0.07;
		
// dpdpm_p   id: dpdpm
	dpdpm_p=0.06;
		
// ubccpt_p   id: ubccpt
	ubccpt_p=7.89;
		
// tlvri_p   id: tlvri
	tlvri_p=14.68;
		
// tlpdp_p   id: tlpdp
	tlpdp_p=1.87;
		
// bccvrip_p   id: bccvrip
	bccvrip_p=0.1;
		
// bccpdpp_p   id: bccpdpp
	bccpdpp_p=0.062;
		
// ubccvrip_p   id: ubccvrip
	ubccvrip_p=0.276;
		
// ubccpdpp_p   id: ubccpdpp
	ubccpdpp_p=0.145;
		
// tcpdpclkp_p   id: tcpdpclkp
	tcpdpclkp_p=125.54;
		
// dclkm_p   id: dclkm
	dclkm_p=0.643;
		
// bvriclkp_p   id: bvriclkp
	bvriclkp_p=1.858;
		
// bpdpclkp_p   id: bpdpclkp
	bpdpclkp_p=1.155;
		
// ubvriclkp_p   id: ubvriclkp
	ubvriclkp_p=1.043;
		
// ubpdpclkp_p   id: ubpdpclkp
	ubpdpclkp_p=0.952;
		
// tcvriclkp_p   id: tcvriclkp
	tcvriclkp_p=0.053;
		
// dpdp_p   id: dpdp
	dpdp_p=0.156;
		
// tlclk_p   id: tlclk
	tlclk_p=35;
		
// dcc_p   id: dcc
	dcc_p=0.184;
		
// dpt_p   id: dpt
	dpt_p=0.279;
		
// dtim_p   id: dtim
	dtim_p=0.62;
		
// dtimm_p   id: dtimm
	dtimm_p=0.053;
		
// tltim_p   id: tltim
	tltim_p=36;
		
// bcctimp_p   id: bcctimp
	bcctimp_p=0.069;
		
// ubcctimp_p   id: ubcctimp
	ubcctimp_p=0.262;
		
// tccctimp_p   id: tccctimp
	tccctimp_p=11;
		
// npt_p   id: npt
	npt_p=5;
		
// nvri_p   id: nvri
	nvri_p=4;
		
// npdp_p   id: npdp
	npdp_p=6;
		
// CYC_s   id: CYC
	CYC_s=1;
		



xdot=[
//x(1)   ID: CC  initialValue: 0.5566
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(1) * x(7) *bccpt_p) + (-1)*(1)* (compartment_wholeCell* x(1) *dcc_p) + (-1)*(1)* (compartment_wholeCell* x(1) *ubcc_p) + (1)*(1)* (compartment_wholeCell* x(14) *bcc_p*CYC_s) + (1)*(1)* (compartment_wholeCell* x(2) *ubccpt_p) );
	
//x(2)   ID: CCPT  initialValue: 0.4982
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(2) *dccpt_p) + (-1)*(1)* (compartment_wholeCell* x(2) *ubccpt_p) + (1)*(1)* (compartment_wholeCell* x(1) * x(7) *bccpt_p) );
	
//x(3)   ID: clkp  initialValue: 0.003185
	0;
	
//x(4)   ID: perp  initialValue: 0.003185
	0;
	
//x(5)   ID: clkm  initialValue: 0.2583
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(5) *dclkm_p) + (1)*(1)* (compartment_wholeCell*(( x(22) *tcvriclkp_p)+( x(23) *tcpdpclkp_p)+(((( 1 )- x(22) )- x(23) )*tcclkp_p))* x(3) ) );
	
//x(6)   ID: perm  initialValue: 0.2395
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(6) *dperm_p) + (1)*(1)* (compartment_wholeCell*(((( 1 )-(power((( 1 )- x(19) ),npt_p)))*tcccperp_p)+((power((( 1 )- x(19) ),npt_p))*tcdvpmt_p))* x(4) ) );
	
//x(7)   ID: PT  initialValue: 0.4014
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(1) * x(7) *bccpt_p) + (-1)*(1)* (compartment_wholeCell* x(7) *dpt_p) + (-1)*(1)* (compartment_wholeCell* x(7) *ubpt_p) + (1)*(1)* (compartment_wholeCell* x(15) * x(18) *bpt_p) + (1)*(1)* (compartment_wholeCell* x(2) *ubccpt_p) );
	
//x(8)   ID: vrip  initialValue: 0.003185
	0;
	
//x(9)   ID: vrim  initialValue: 0.2571
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(9) *dvrim_p) + (1)*(1)* (compartment_wholeCell*(((( 1 )-(power((( 1 )- x(20) ),nvri_p)))*tcccvrip_p)+((power((( 1 )- x(20) ),nvri_p))*tcdvpmt_p))* x(8) ) );
	
//x(10)   ID: VRI  initialValue: 3.175
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(10) *dvri_p) + (1)*(1)* (compartment_wholeCell* x(9) *tlvri_p) );
	
//x(11)   ID: pdpp  initialValue: 0.003185
	0;
	
//x(12)   ID: pdpm  initialValue: 0.3175
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(12) *dpdpm_p) + (1)*(1)* (compartment_wholeCell*(((( 1 )-(power((( 1 )- x(21) ),npdp_p)))*tcccpdpp_p)+((power((( 1 )- x(21) ),npdp_p))*tcdvpmt_p))* x(11) ) );
	
//x(13)   ID: PDP  initialValue: 4.1953
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(13) *dpdp_p) + (1)*(1)* (compartment_wholeCell* x(12) *tlpdp_p) );
	
//x(14)   ID: CLK  initialValue: 3.6628
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(14) *bcc_p*CYC_s) + (-1)*(1)* (compartment_wholeCell* x(14) *dclk_p) + (1)*(1)* (compartment_wholeCell* x(5) *tlclk_p) + (1)*(1)* (compartment_wholeCell* x(1) *ubcc_p) );
	
//x(15)   ID: PER  initialValue: 2.7527
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(15) * x(18) *bpt_p) + (-1)*(1)* (compartment_wholeCell* x(15) *dper_p) + (1)*(1)* (compartment_wholeCell* x(6) *tlper_p) + (1)*(1)* (compartment_wholeCell* x(7) *ubpt_p) );
	
//x(16)   ID: timp  initialValue: 0.003185
	0;
	
//x(17)   ID: timm  initialValue: 0.2395
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(17) *dtimm_p) + (1)*(1)* (compartment_wholeCell*(((( 1 )-(power((( 1 )- x(24) ),npt_p)))*tccctimp_p)+((power((( 1 )- x(24) ),npt_p))*tcdvpmt_p))* x(16) ) );
	
//x(18)   ID: TIM  initialValue: 2.7527
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(15) * x(18) *bpt_p) + (-1)*(1)* (compartment_wholeCell* x(18) *dtim_p) + (1)*(1)* (compartment_wholeCell* x(7) *ubpt_p) + (1)*(1)* (compartment_wholeCell* x(17) *tltim_p) );
	
//x(19)   ID: prcper  initialValue: 0.0431
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(19) *ubccperp_p) + (1)*(1)* (compartment_wholeCell*(( 1 )- x(19) )*bccperp_p* x(1) ) );
	
//x(20)   ID: prcv  initialValue: 0.0585
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell*ubccvrip_p* x(20) ) + (1)*(1)* (compartment_wholeCell*(( 1 )- x(20) )*bccvrip_p* x(1) ) );
	
//x(21)   ID: prcpdp  initialValue: 0.08
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell*ubccpdpp_p* x(21) ) + (1)*(1)* (compartment_wholeCell*(( 1 )- x(21) )*bccpdpp_p* x(1) ) );
	
//x(22)   ID: prvc  initialValue: 0.489
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(22) *ubvriclkp_p) + (1)*(1)* (compartment_wholeCell*((( 1 )- x(22) )- x(23) )*bvriclkp_p* x(10) ) );
	
//x(23)   ID: prpc  initialValue: 0.426
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(23) *ubpdpclkp_p) + (1)*(1)* (compartment_wholeCell*((( 1 )- x(22) )- x(23) )*bpdpclkp_p* x(13) ) );
	
//x(24)   ID: prct  initialValue: 0.043
	(1/compartment_wholeCell)*( (-1)*(1)* (compartment_wholeCell* x(24) *ubcctimp_p) + (1)*(1)* (compartment_wholeCell*(( 1 )- x(24) )*bcctimp_p* x(1) ) )
	];


	
endfunction
        x0=[0.5566;0.4982;0.003185;0.003185;0.2583;0.2395;0.4014;0.003185;0.2571;3.175;0.003185;0.3175;4.1953;3.6628;2.7527;0.003185;0.2395;2.7527;0.0431;0.0585;0.08;0.489;0.426;0.043];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24])

//real_variable:
	
	
//x(1)   id: CC  initialValue: 0.5566
	
//x(2)   id: CCPT  initialValue: 0.4982
	
//x(3)   id: clkp  initialValue: 0.003185
	
//x(4)   id: perp  initialValue: 0.003185
	
//x(5)   id: clkm  initialValue: 0.2583
	
//x(6)   id: perm  initialValue: 0.2395
	
//x(7)   id: PT  initialValue: 0.4014
	
//x(8)   id: vrip  initialValue: 0.003185
	
//x(9)   id: vrim  initialValue: 0.2571
	
//x(10)   id: VRI  initialValue: 3.175
	
//x(11)   id: pdpp  initialValue: 0.003185
	
//x(12)   id: pdpm  initialValue: 0.3175
	
//x(13)   id: PDP  initialValue: 4.1953
	
//x(14)   id: CLK  initialValue: 3.6628
	
//x(15)   id: PER  initialValue: 2.7527
	
//x(16)   id: timp  initialValue: 0.003185
	
//x(17)   id: timm  initialValue: 0.2395
	
//x(18)   id: TIM  initialValue: 2.7527
	
//x(19)   id: prcper  initialValue: 0.0431
	
//x(20)   id: prcv  initialValue: 0.0585
	
//x(21)   id: prcpdp  initialValue: 0.08
	
//x(22)   id: prvc  initialValue: 0.489
	
//x(23)   id: prpc  initialValue: 0.426
	
//x(24)   id: prct  initialValue: 0.043