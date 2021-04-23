
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// ai_p   id: ai
	ai_p=0.341;
		
// am_p   id: am
	am_p=0.2;
		
// Ao_p   id: Ao
	Ao_p=4000;
		
// ATP_init_p   id: ATP_init
	ATP_init_p=3700;
		
// Cac_init_p   id: Cac_init
	Cac_init_p=0.1;
		
// Cam_init_p   id: Cam_init
	Cam_init_p=0.2;
		
// Cmit_p   id: Cmit
	Cmit_p=1.82;
		
// Cmp_p   id: Cmp
	Cmp_p=6158;
		
// F_p   id: F
	F_p=96480;
		
// fi_p   id: fi
	fi_p=0.01;
		
// fm_p   id: fm
	fm_p=0.0003;
		
// G3P_init_p   id: G3P_init
	G3P_init_p=30;
		
// gKCa_p   id: gKCa
	gKCa_p=25;
		
// Glu_p   id: Glu
	Glu_p=8;
		
// gmVCa_p   id: gmVCa
	gmVCa_p=20;
		
// hgl_p   id: hgl
	hgl_p=1.7;
		
// hp_p   id: hp
	hp_p=8;
		
// hpc_p   id: hpc
	hpc_p=8;
		
// kat_p   id: kat
	kat_p=-0.00492;
		
// kATP_p   id: kATP
	kATP_p=4E-5;
		
// kATPCa_p   id: kATPCa
	kATPCa_p=9E-5;
		
// kbt_p   id: kbt
	kbt_p=-0.00443;
		
// kCaA_p   id: kCaA
	kCaA_p=30;
		
// KCaj_p   id: KCaj
	KCaj_p=8;
		
// KCam_p   id: KCam
	KCam_p=0.05;
		
// KgNc_p   id: KgNc
	KgNc_p=0.09;
		
// kgpd_p   id: kgpd
	kgpd_p=1E-5;
		
// Klnc_p   id: Klnc
	Klnc_p=1;
		
// klp_p   id: klp
	klp_p=0.0305;
		
// Kmadp_p   id: Kmadp
	Kmadp_p=20;
		
// KmATP_p   id: KmATP
	KmATP_p=500;
		
// Kmg3p_p   id: Kmg3p
	Kmg3p_p=200;
		
// Kmgl_p   id: Kmgl
	Kmgl_p=7;
		
// KmLD_p   id: KmLD
	KmLD_p=47.5;
		
// KmNh_p   id: KmNh
	KmNh_p=3000;
		
// Kmph_p   id: Kmph
	Kmph_p=131.4;
		
// Kmpyr_p   id: Kmpyr
	Kmpyr_p=47.5;
		
// knadhc_p   id: knadhc
	knadhc_p=0.0001;
		
// knadhm_p   id: knadhm
	knadhm_p=0.0001;
		
// KNaj_p   id: KNaj
	KNaj_p=8000;
		
// KpCam_p   id: KpCam
	KpCam_p=0.165;
		
// KPNm_p   id: KPNm
	KPNm_p=81;
		
// ksg_p   id: ksg
	ksg_p=2E-5;
		
// KTNc_p   id: KTNc
	KTNc_p=0.002;
		
// KTNm_p   id: KTNm
	KTNm_p=16.78;
		
// NADHc_init_p   id: NADHc_init
	NADHc_init_p=10;
		
// NADHm_init_p   id: NADHm_init
	NADHm_init_p=50;
		
// Nam_p   id: Nam
	Nam_p=5000;
		
// Ni_p   id: Ni
	Ni_p=10000;
		
// Ntc_p   id: Ntc
	Ntc_p=2000;
		
// Ntm_p   id: Ntm
	Ntm_p=2200;
		
// PCa_p   id: PCa
	PCa_p=0.004;
		
// Plb_p   id: Plb
	Plb_p=0.0012;
		
// Plr_p   id: Plr
	Plr_p=0.0012;
		
// PYR_init_p   id: PYR_init
	PYR_init_p=10;
		
// Tnadh_p   id: Tnadh
	Tnadh_p=0.05;
		
// Tv_p   id: Tv
	Tv_p=26.73;
		
// u1_p   id: u1
	u1_p=1.5;
		
// u2_p   id: u2
	u2_p=1.1;
		
// Vci_p   id: Vci
	Vci_p=0.764;
		
// Vi_p   id: Vi
	Vi_p=0.53;
		
// Vm_init_p   id: Vm_init
	Vm_init_p=100;
		
// Vme_p   id: Vme
	Vme_p=22;
		
// Vmglu_p   id: Vmglu
	Vmglu_p=0.011;
		
// Vmgpd_p   id: Vmgpd
	Vmgpd_p=0.5;
		
// Vmldh_p   id: Vmldh
	Vmldh_p=1.2;
		
// Vmmit_p   id: Vmmit
	Vmmit_p=0.0144;
		
// Vmnc_p   id: Vmnc
	Vmnc_p=0.025;
		
// Vmpdh_p   id: Vmpdh
	Vmpdh_p=0.3;
		
// Vmph_p   id: Vmph
	Vmph_p=8;
		
// Vp_init_p   id: Vp_init
	Vp_init_p=-70;
		
// ZCa_p   id: ZCa
	ZCa_p=2;
		
// ACa_p   id: ACa
	ACa_p=0;
		
// AD_p   id: AD
	AD_p=0;
		
// ADP_p   id: ADP
	ADP_p=0;
		
// AT_p   id: AT
	AT_p=0;
		
// DelJNCa_p   id: DelJNCa
	DelJNCa_p=0;
		
// FDe_p   id: FDe
	FDe_p=0;
		
// FLNADc_p   id: FLNADc
	FLNADc_p=0;
		
// FNADc_p   id: FNADc
	FNADc_p=0;
		
// FPCa_p   id: FPCa
	FPCa_p=0;
		
// FPNAD_p   id: FPNAD
	FPNAD_p=0;
		
// FPYR_p   id: FPYR
	FPYR_p=0;
		
// FTe_p   id: FTe
	FTe_p=0;
		
// hCa_p   id: hCa
	hCa_p=0;
		
// IKCa_p   id: IKCa
	IKCa_p=0;
		
// IVCa_p   id: IVCa
	IVCa_p=0;
		
// JGlu_p   id: JGlu
	JGlu_p=0;
		
// Jgpd_p   id: Jgpd
	Jgpd_p=0;
		
// Jhl_p   id: Jhl
	Jhl_p=0;
		
// Jhres_p   id: Jhres
	Jhres_p=0;
		
// JLDH_p   id: JLDH
	JLDH_p=0;
		
// JNCa_p   id: JNCa
	JNCa_p=0;
		
// JO2_p   id: JO2
	JO2_p=0;
		
// Jph_p   id: Jph
	Jph_p=0;
		
// JPYR_p   id: JPYR
	JPYR_p=0;
		
// Jtnadh_p   id: Jtnadh
	Jtnadh_p=0;
		
// Juni_p   id: Juni
	Juni_p=0;
		
// MgADP_p   id: MgADP
	MgADP_p=0;
		
// NADc_p   id: NADc
	NADc_p=0;
		
// NADm_p   id: NADm
	NADm_p=0;
		
// nKCa_p   id: nKCa
	nKCa_p=0;
		
// PVCa_p   id: PVCa
	PVCa_p=0;
		



xdot=[
//x(1)   ID: Vp  initialValue: 0
	        
          ((( ( (gmVCa_p* ( (( 1 )*(( 1 )/(( 1 )+(exp((( 0.105263157894737 )*(( -19 )+( x(1) )))))))) ) * ( (( 1 )*(( 1 )/(( 1 )+(exp((( 0.166666666666667 )*(( 15 )+ x(1) ))))))) ) *(( -100 )+ x(1) )) ) + ( (gKCa_p* ( ((power( x(2) ,( 3 )))*(( 1 )/(( 0.015625 )+(power( x(2) ,( 3 )))))) ) *(( 75 )+ x(1) )) ) )*(( 1 )/Cmp_p)))
        ;
	
//x(2)   ID: Cac  initialValue: 0
	        
          (((fi_p* ( (gmVCa_p* ( (( 1 )*(( 1 )/(( 1 )+(exp((( 0.105263157894737 )*(( -19 )+( x(1) )))))))) ) * ( (( 1 )*(( 1 )/(( 1 )+(exp((( 0.166666666666667 )*(( 15 )+ x(1) ))))))) ) *(( -100 )+ x(1) )) ) *(( 1 )/(( 2 )*F_p*Vci_p))))+((ksg_p* x(2) )))
        ;
	
//x(3)   ID: G3P  initialValue: 0
	        
          ((((( 2 )* ( (Vmglu_p*(power(Glu_p,hgl_p))* x(5) *(( 1 )/((power(Kmgl_p,hgl_p))+(power(Glu_p,hgl_p))))*(( 1 )/(KmATP_p+ x(5) ))) ) )+( ( (Vmgpd_p* x(3) * ( (Ntc_p+( x(7) )) ) *(( 1 )/( x(3) +Kmg3p_p))*(( 1 )/(KgNc_p+( ( (Ntc_p+( x(7) )) ) *(( 1 )/ x(7) ))))*(( 1 )/ x(7) )) ) ))*(( 1 )/Vi_p))+((kgpd_p* x(3) )))
        ;
	
//x(4)   ID: PYR  initialValue: 0
	        
          (( ( (Vmgpd_p* x(3) * ( (Ntc_p+( x(7) )) ) *(( 1 )/( x(3) +Kmg3p_p))*(( 1 )/(KgNc_p+( ( (Ntc_p+( x(7) )) ) *(( 1 )/ x(7) ))))*(( 1 )/ x(7) )) ) +( ( (Vmpdh_p* ( ( ( (Ntm_p+( x(6) )) ) *(( 1 )/(KPNm_p+( ( (Ntm_p+( x(6) )) ) *(( 1 )/ x(6) ))))*(( 1 )/ x(6) )) ) * ( (( 1 )*(( 1 )/(( 1 )+(u2_p*(( 1 )+(u1_p*(( 1 )/(power((( 1 )+( x(9) *(( 1 )/KCam_p))),( 2 )))))))))) ) * ( ( x(4) *(( 1 )/(Kmpyr_p+ x(4) ))) ) ) ) )+( ( (Vmldh_p* ( ( x(7) *(( 1 )/(Klnc_p+( x(7) *(( 1 )/ ( (Ntc_p+( x(7) )) ) ))))*(( 1 )/ ( (Ntc_p+( x(7) )) ) )) ) * x(4) *(( 1 )/(KmLD_p+ x(4) ))) ) ))*(( 1 )/(Vi_p+Vmmit_p)))
        ;
	
//x(5)   ID: ATP  initialValue: 0
	        
          ((((kATP_p+(kATPCa_p* x(2) ))* x(5) ))+(((( 2 )* ( (Vmglu_p*(power(Glu_p,hgl_p))* x(5) *(( 1 )/((power(Kmgl_p,hgl_p))+(power(Glu_p,hgl_p))))*(( 1 )/(KmATP_p+ x(5) ))) ) )+(( 0.231 )* ( (Vmph_p* ( ( ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) * ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) *(( 1 )/(( ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) * ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) )+(Kmadp_p*Kmadp_p)))) ) * ( ((power( x(8) ,hp_p))*(( 1 )/((power(Kmph_p,hp_p))+(power( x(8) ,hp_p))))) ) * ( (( 1 )+((( 1 )*(( 1 )/(exp(( x(9) *(( 1 )/KpCam_p)))))))) ) ) ) ))*(( 1 )/Vi_p)))
        ;
	
//x(6)   ID: NADHm  initialValue: 0
	        
          ((((( 4.6 )* ( (Vmpdh_p* ( ( ( (Ntm_p+( x(6) )) ) *(( 1 )/(KPNm_p+( ( (Ntm_p+( x(6) )) ) *(( 1 )/ x(6) ))))*(( 1 )/ x(6) )) ) * ( (( 1 )*(( 1 )/(( 1 )+(u2_p*(( 1 )+(u1_p*(( 1 )/(power((( 1 )+( x(9) *(( 1 )/KCam_p))),( 2 )))))))))) ) * ( ( x(4) *(( 1 )/(Kmpyr_p+ x(4) ))) ) ) ) )+((( 0.1 )* ( (Vme_p* ( ((( 1 )+(kat_p* x(8) ))*(( 1 )/(( 1 )+(kbt_p* x(8) )))) ) * ( ( x(6) *(( 1 )/(KmNh_p+ x(6) ))) ) ) ) ))+ ( (Tnadh_p* ( ( x(7) *(( 1 )/(KTNc_p+( x(7) *(( 1 )/ ( (Ntc_p+( x(7) )) ) ))))*(( 1 )/ ( (Ntc_p+( x(7) )) ) )) ) * ( (Ntm_p+( x(6) )) ) *(( 1 )/(KTNm_p+( ( (Ntm_p+( x(6) )) ) *(( 1 )/ x(6) ))))*(( 1 )/ x(6) )) ) )*(( 1 )/Vmmit_p))+((knadhm_p* x(6) )))
        ;
	
//x(7)   ID: NADHc  initialValue: 0
	        
          ((( ( (Vmgpd_p* x(3) * ( (Ntc_p+( x(7) )) ) *(( 1 )/( x(3) +Kmg3p_p))*(( 1 )/(KgNc_p+( ( (Ntc_p+( x(7) )) ) *(( 1 )/ x(7) ))))*(( 1 )/ x(7) )) ) +( ( (Tnadh_p* ( ( x(7) *(( 1 )/(KTNc_p+( x(7) *(( 1 )/ ( (Ntc_p+( x(7) )) ) ))))*(( 1 )/ ( (Ntc_p+( x(7) )) ) )) ) * ( (Ntm_p+( x(6) )) ) *(( 1 )/(KTNm_p+( ( (Ntm_p+( x(6) )) ) *(( 1 )/ x(6) ))))*(( 1 )/ x(6) )) ) )+( ( (Vmldh_p* ( ( x(7) *(( 1 )/(Klnc_p+( x(7) *(( 1 )/ ( (Ntc_p+( x(7) )) ) ))))*(( 1 )/ ( (Ntc_p+( x(7) )) ) )) ) * x(4) *(( 1 )/(KmLD_p+ x(4) ))) ) ))*(( 1 )/Vi_p))+((knadhc_p* x(7) )))
        ;
	
//x(8)   ID: Vm  initialValue: 0
	        
          (( ( (Vme_p* ( ((( 1 )+(kat_p* x(8) ))*(( 1 )/(( 1 )+(kbt_p* x(8) )))) ) * ( ( x(6) *(( 1 )/(KmNh_p+ x(6) ))) ) ) ) +( ( (Vmph_p* ( ( ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) * ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) *(( 1 )/(( ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) * ( (( 0.055 )* ( (Ao_p+( x(5) )) ) ) ) )+(Kmadp_p*Kmadp_p)))) ) * ( ((power( x(8) ,hp_p))*(( 1 )/((power(Kmph_p,hp_p))+(power( x(8) ,hp_p))))) ) * ( (( 1 )+((( 1 )*(( 1 )/(exp(( x(9) *(( 1 )/KpCam_p)))))))) ) ) ) )+( ( ((Plb_p+Plr_p)*(exp((klp_p* x(8) )))) ) )+((( 2 )* ( (PCa_p*ZCa_p* x(8) *((am_p* x(9) *(exp((( x(8) *ZCa_p*(( 1 )/Tv_p))))))+((ai_p* x(2) )))*(( 1 )/Tv_p)*(( 1 )/(( -1 )+(exp((( x(8) *ZCa_p*(( 1 )/Tv_p)))))))) ) ))+( ( (Vmnc_p*((exp((( 0.5 )* x(8) *(power(Ni_p,( 3 )))* x(9) *(( 1 )/(Tv_p*(power(KNaj_p,( 3 )))*KCaj_p)))))+((exp(((( 0.5 )* x(8) *(power(Nam_p,( 3 )))* x(2) *(( 1 )/(Tv_p*(power(KNaj_p,( 3 )))*KCaj_p))))))))*(( 1 )/ ( (( 1 )+((power(Ni_p,( 3 )))*(( 1 )/(power(KNaj_p,( 3 )))))+( x(9) *(( 1 )/KCaj_p))+((power(Ni_p,( 3 )))* x(9) *(( 1 )/((power(KNaj_p,( 3 )))*KCaj_p)))+((power(Nam_p,( 3 )))*(( 1 )/(power(KNaj_p,( 3 )))))+( x(2) *(( 1 )/KCaj_p))+((power(Nam_p,( 3 )))* x(2) *(( 1 )/((power(KNaj_p,( 3 )))*KCaj_p)))) ) )) ) ))*(( 1 )/Cmit_p))
        ;
	
//x(9)   ID: Cam  initialValue: 0
	        
          (fm_p*( ( (PCa_p*ZCa_p* x(8) *((am_p* x(9) *(exp((( x(8) *ZCa_p*(( 1 )/Tv_p))))))+((ai_p* x(2) )))*(( 1 )/Tv_p)*(( 1 )/(( -1 )+(exp((( x(8) *ZCa_p*(( 1 )/Tv_p)))))))) ) +( ( (Vmnc_p*((exp((( 0.5 )* x(8) *(power(Ni_p,( 3 )))* x(9) *(( 1 )/(Tv_p*(power(KNaj_p,( 3 )))*KCaj_p)))))+((exp(((( 0.5 )* x(8) *(power(Nam_p,( 3 )))* x(2) *(( 1 )/(Tv_p*(power(KNaj_p,( 3 )))*KCaj_p))))))))*(( 1 )/ ( (( 1 )+((power(Ni_p,( 3 )))*(( 1 )/(power(KNaj_p,( 3 )))))+( x(9) *(( 1 )/KCaj_p))+((power(Ni_p,( 3 )))* x(9) *(( 1 )/((power(KNaj_p,( 3 )))*KCaj_p)))+((power(Nam_p,( 3 )))*(( 1 )/(power(KNaj_p,( 3 )))))+( x(2) *(( 1 )/KCaj_p))+((power(Nam_p,( 3 )))* x(2) *(( 1 )/((power(KNaj_p,( 3 )))*KCaj_p)))) ) )) ) ))*(( 1 )/Vmmit_p))
        
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: Vp  initialValue: 0
	
//x(2)   id: Cac  initialValue: 0
	
//x(3)   id: G3P  initialValue: 0
	
//x(4)   id: PYR  initialValue: 0
	
//x(5)   id: ATP  initialValue: 0
	
//x(6)   id: NADHm  initialValue: 0
	
//x(7)   id: NADHc  initialValue: 0
	
//x(8)   id: Vm  initialValue: 0
	
//x(9)   id: Cam  initialValue: 0