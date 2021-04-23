
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// L_p   id: L
	L_p=1;
		
// KDL_p   id: KDL
	KDL_p=1.5;
		
// kxR0_p   id: kxR0
	kxR0_p=0.3;
		
// kminusx_p   id: kminusx
	kminusx_p=0.007;
		
// ke_p   id: ke
	ke_p=0.2;
		
// kt_p   id: kt
	kt_p=0.005;
		
// alphaPI3K_p   id: alphaPI3K
	alphaPI3K_p=80;
		
// kappaPI3K_p   id: kappaPI3K
	kappaPI3K_p=0.3;
		
// k3PI_p   id: k3PI
	k3PI_p=1;
		
// KGR_p   id: KGR
	KGR_p=495;
		
// KGP_p   id: KGP
	KGP_p=5.09;
		
// kRas_p   id: kRas
	kRas_p=1;
		
// Gamma_p   id: Gamma
	Gamma_p=0.1;
		
// kdx1_p   id: kdx1
	kdx1_p=0.745;
		
// kdx2_p   id: kdx2
	kdx2_p=2.85;
		
// Kx2_p   id: Kx2
	Kx2_p=6.77;
		
// VmaxOVERKMx11_p   id: VmaxOVERKMx11
	VmaxOVERKMx11_p=1.18;
		
// KMx11_p   id: KMx11
	KMx11_p=30.3;
		
// VmaxOVERKMx21_p   id: VmaxOVERKMx21
	VmaxOVERKMx21_p=0.405;
		
// KMx21_p   id: KMx21
	KMx21_p=13.7;
		
// VmaxOVERKMyph1_p   id: VmaxOVERKMyph1
	VmaxOVERKMyph1_p=1.65;
		
// KMyph1_p   id: KMyph1
	KMyph1_p=23;
		
// VmaxOVERKMx12_p   id: VmaxOVERKMx12
	VmaxOVERKMx12_p=3.45;
		
// KMx12_p   id: KMx12
	KMx12_p=18.6;
		
// VmaxOVERKMx22_p   id: VmaxOVERKMx22
	VmaxOVERKMx22_p=1.09;
		
// KMx22_p   id: KMx22
	KMx22_p=9.59;
		
// VmaxOVERKMyph2_p   id: VmaxOVERKMyph2
	VmaxOVERKMyph2_p=4.2;
		
// KMyph2_p   id: KMyph2
	KMyph2_p=7.99;
		
// VmaxOVERKMy1_p   id: VmaxOVERKMy1
	VmaxOVERKMy1_p=6.57;
		
// KMy1_p   id: KMy1
	KMy1_p=9.91;
		
// VmaxOVERKMzph1_p   id: VmaxOVERKMzph1
	VmaxOVERKMzph1_p=0.167;
		
// KMzph1_p   id: KMzph1
	KMzph1_p=8.27;
		
// VmaxOVERKMy2_p   id: VmaxOVERKMy2
	VmaxOVERKMy2_p=31.9;
		
// KMy2_p   id: KMy2
	KMy2_p=8.81;
		
// VmaxOVERKMzph2_p   id: VmaxOVERKMzph2
	VmaxOVERKMzph2_p=0.228;
		
// KMzph2_p   id: KMzph2
	KMzph2_p=31.5;
		
// kFBf_p   id: kFBf
	kFBf_p=0.976;
		
// Zf_p   id: Zf
	Zf_p=0.272;
		
// n_p   id: n
	n_p=1.03;
		
// Kf_p   id: Kf
	Kf_p=3.76;
		
// kdw_p   id: kdw
	kdw_p=0.0333;
		
// kFBph_p   id: kFBph
	kFBph_p=2.34;
		
// Wph_p   id: Wph
	Wph_p=0.385;
		
// p_p   id: p
	p_p=1.98;
		
// Kph_p   id: Kph
	Kph_p=4.64;
		
// r_s   id: r
	r_s=0;
		
// c1_s   id: c1
	c1_s=0;
		
// ePI3K_s   id: ePI3K
	ePI3K_s=0;
		
// eGEF_s   id: eGEF
	eGEF_s=0;
		
// yp_s   id: yp
	yp_s=0;
		
// zp_s   id: zp
	zp_s=0;
		



xdot=[
//x(1)   ID: sumrc1  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* ((kt_p*(( 1 )- x(1) ))+(( 2 )*((kminusx_p* x(2) )-(kxR0_p*(power( ( ((L_p* x(1) )/(KDL_p+L_p)) ) ,( 2 ))))))) );
	
//x(2)   ID: c2  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((kxR0_p*(power( ( ((L_p* x(1) )/(KDL_p+L_p)) ) ,( 2 ))))-((kminusx_p+ke_p)* x(2) )) );
	
//x(3)   ID: m3PI  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (k3PI_p*( ( (((( 1 )+kappaPI3K_p+(( 2 )*alphaPI3K_p* x(2) ))-(power(((power((( 1 )+kappaPI3K_p+(( 2 )*alphaPI3K_p* x(2) )),( 2 )))-(( 8 )*alphaPI3K_p* x(2) )),( 0.5 ))))/( 2 )) ) - x(3) )) );
	
//x(4)   ID: mRas  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kRas_p*(((( 1 )+Gamma_p)* ( ((((KGR_p* x(2) )+(KGP_p* x(3) ))/(( 1 )+(KGR_p* x(2) )+(KGP_p* x(3) )))* x(11) ) ) )-((( 1 )+(Gamma_p* ( ((((KGR_p* x(2) )+(KGP_p* x(3) ))/(( 1 )+(KGR_p* x(2) )+(KGP_p* x(3) )))* x(11) ) ) ))* x(4) ))) );
	
//x(5)   ID: x1  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kdx1_p*( x(4) -( x(5) /(( 1 )+( x(7) /KMx11_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx12_p))))) );
	
//x(6)   ID: x2  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kdx2_p*((((( 1 )+Kx2_p)* x(3) )/(( 1 )+(Kx2_p* x(3) )))-( x(6) /(( 1 )+( x(7) /KMx21_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx22_p))))) );
	
//x(7)   ID: y  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* ((((VmaxOVERKMyph1_p* ( ((( 1 )- x(7) )- x(8) ) ) )/(( 1 )+( ( ((( 1 )- x(7) )- x(8) ) ) /KMyph1_p)+( x(8) /KMyph2_p)))-((VmaxOVERKMx11_p* x(5) * x(7) )/(( 1 )+( x(7) /KMx11_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx12_p))))-((VmaxOVERKMx21_p* x(6) * x(7) )/(( 1 )+( x(7) /KMx21_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx22_p)))) );
	
//x(8)   ID: ypp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((((VmaxOVERKMx12_p* x(5) * ( ((( 1 )- x(7) )- x(8) ) ) )/(( 1 )+( x(7) /KMx11_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx12_p)))+((VmaxOVERKMx22_p* x(6) * ( ((( 1 )- x(7) )- x(8) ) ) )/(( 1 )+( x(7) /KMx21_p)+( ( ((( 1 )- x(7) )- x(8) ) ) /KMx22_p))))-((VmaxOVERKMyph2_p* x(8) )/(((( 1 )+( x(9) /KMy1_p)+( ( ((( 1 )- x(9) )- x(10) ) ) /KMy2_p))*(( 1 )+( ( ((( 1 )- x(7) )- x(8) ) ) /KMyph1_p)))+( x(8) /KMyph2_p)))) );
	
//x(9)   ID: z  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* (((VmaxOVERKMzph1_p* x(13) * ( ((( 1 )- x(9) )- x(10) ) ) )/(( 1 )+( ( ((( 1 )- x(9) )- x(10) ) ) /KMzph1_p)+( x(10) /KMzph2_p)))-((VmaxOVERKMy1_p* x(8) * x(9) )/(( 1 )+( x(9) /KMy1_p)+( ( ((( 1 )- x(9) )- x(10) ) ) /KMy2_p)))) );
	
//x(10)   ID: zpp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (((VmaxOVERKMy2_p* x(8) * ( ((( 1 )- x(9) )- x(10) ) ) )/(( 1 )+( x(9) /KMy1_p)+( ( ((( 1 )- x(9) )- x(10) ) ) /KMy2_p)))-((VmaxOVERKMzph2_p* x(13) * x(10) )/(( 1 )+( ( ((( 1 )- x(9) )- x(10) ) ) /KMzph1_p)+( x(10) /KMzph2_p)))) );
	
//x(11)   ID: fGEF  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* (kFBf_p*(((( 1 )- x(11) )/Kf_p)-(((power( x(10) ,n_p))/((power(Zf_p,n_p))+(power( x(10) ,n_p))))* x(11) ))) );
	
//x(12)   ID: w  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (kdw_p*( x(10) - x(12) )) );
	
//x(13)   ID: eph  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* (kFBph_p*(((power( x(12) ,p_p))/((power(Wph_p,p_p))+(power( x(12) ,p_p))))-(( x(13) -( 1 ))/Kph_p))) )
	];


	
endfunction
        x0=[1;0;0;0;0;0;1;0;1;0;1;0;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: sumrc1  initialValue: 1
	
//x(2)   id: c2  initialValue: 0
	
//x(3)   id: m3PI  initialValue: 0
	
//x(4)   id: mRas  initialValue: 0
	
//x(5)   id: x1  initialValue: 0
	
//x(6)   id: x2  initialValue: 0
	
//x(7)   id: y  initialValue: 1
	
//x(8)   id: ypp  initialValue: 0
	
//x(9)   id: z  initialValue: 1
	
//x(10)   id: zpp  initialValue: 0
	
//x(11)   id: fGEF  initialValue: 1
	
//x(12)   id: w  initialValue: 0
	
//x(13)   id: eph  initialValue: 1