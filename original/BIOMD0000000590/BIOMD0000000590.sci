
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// vmax1_p   id: vmax1
	vmax1_p=3.61602627459517;
		
// bc_p   id: bc
	bc_p=1.52264278250403;
		
// glu_p   id: glu
	glu_p=0.54620785996429;
		
// K_utp_p   id: K_utp
	K_utp_p=1.413855257896;
		
// K_q_p   id: K_q
	K_q_p=0.05784981576165;
		
// K_bc_p   id: K_bc
	K_bc_p=2.3716657188714;
		
// vmax2_p   id: vmax2
	vmax2_p=2.44590712912244;
		
// asp_p   id: asp
	asp_p=0.0972544685826559;
		
// atp_p   id: atp
	atp_p=0.150650172583633;
		
// K_atp_p   id: K_atp
	K_atp_p=1.28940553329954;
		
// K_m2_p   id: K_m2
	K_m2_p=2.00489353757245;
		
// vmax3_p   id: vmax3
	vmax3_p=28.6613123782585;
		
// K_m3_p   id: K_m3
	K_m3_p=1.27179181717468;
		
// vmax4_p   id: vmax4
	vmax4_p=91.7802875108298;
		
// K_m4_p   id: K_m4
	K_m4_p=0.0160033122150611;
		
// vmax5_p   id: vmax5
	vmax5_p=5227.49670547203;
		
// K_m5_p   id: K_m5
	K_m5_p=0.0195216150005324;
		
// prpp_p   id: prpp
	prpp_p=0.181644900226225;
		
// vmax6_p   id: vmax6
	vmax6_p=34.9720846528477;
		
// K_m6_p   id: K_m6
	K_m6_p=20.3406449182435;
		
// vmax10_p   id: vmax10
	vmax10_p=6.55543523218919;
		
// K_m10_p   id: K_m10
	K_m10_p=0.0267841313759584;
		
// vmax7_p   id: vmax7
	vmax7_p=5.83104141997666;
		
// K_m7_p   id: K_m7
	K_m7_p=0.166382738667754;
		
// g_pyr_p   id: g_pyr
	g_pyr_p=0.198306450999093;
		
// K_Mp_p   id: K_Mp
	K_Mp_p=5.48714446027226;
		
// vmax8_p   id: vmax8
	vmax8_p=0.162943604164789;
		
// K_m8_p   id: K_m8
	K_m8_p=0.00435621076587497;
		
// K_asp_p   id: K_asp
	K_asp_p=0.168308889432487;
		
// d_p   id: d
	d_p=0.1;
		



xdot=[
//x(1)   ID: cp  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(2)   ID: ca  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(3)   ID: dho  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(4)   ID: oro  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(5)   ID: omp  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(6)   ID: ump  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(7)   ID: udp  initialValue: 0.002886
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(8)   ID: utp  initialValue: 0.00666
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) );
	
//x(9)   ID: ctp  initialValue: 0.00037
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* (compartment_compartment*()) + (1)*(1)* (compartment_compartment*()) )
	];


	
endfunction
        x0=[0.00037;0.00037;0.00037;0.00037;0.00037;0.00037;0.002886;0.00666;0.00037];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)'],[1;2;3;4;5;6;7;8;9])

//real_variable:
	
	
//x(1)   id: cp  initialValue: 0.00037
	
//x(2)   id: ca  initialValue: 0.00037
	
//x(3)   id: dho  initialValue: 0.00037
	
//x(4)   id: oro  initialValue: 0.00037
	
//x(5)   id: omp  initialValue: 0.00037
	
//x(6)   id: ump  initialValue: 0.00037
	
//x(7)   id: udp  initialValue: 0.002886
	
//x(8)   id: utp  initialValue: 0.00666
	
//x(9)   id: ctp  initialValue: 0.00037