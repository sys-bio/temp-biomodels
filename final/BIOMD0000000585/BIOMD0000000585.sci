
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// k1_p   id: k1
	k1_p=0.00094915;
		
// k3_p   id: k3
	k3_p=0.0959796;
		
// k4_p   id: k4
	k4_p=0.0997621;
		
// k5_p   id: k5
	k5_p=298.763;
		
// k6_p   id: k6
	k6_p=0.0666851;
		
// k9_p   id: k9
	k9_p=4179.56;
		
// k10_p   id: k10
	k10_p=0.0583427;
		
// k11_p   id: k11
	k11_p=8.90244;
		
// k12_p   id: k12
	k12_p=12.2679;
		
// k13_p   id: k13
	k13_p=0.00949819;
		
// k14_p   id: k14
	k14_p=0.748449;
		
// taud_p   id: taud
	taud_p=277.363;
		
// tau_p   id: tau
	tau_p=79.3354;
		
// tauj_p   id: tauj
	tauj_p=451.937;
		
// scale_Stat1ex_p   id: scale_Stat1ex
	scale_Stat1ex_p=1;
		
// scale_Stat1cex_p   id: scale_Stat1cex
	scale_Stat1cex_p=0.747697;
		
// scale_Stat1nex_p   id: scale_Stat1nex
	scale_Stat1nex_p=1.21851;
		
// scale_Stat1Pex_p   id: scale_Stat1Pex
	scale_Stat1Pex_p=34.4009;
		
// scale_Stat1Pcex_p   id: scale_Stat1Pcex
	scale_Stat1Pcex_p=19.0574;
		
// scale_Stat1Pnex_p   id: scale_Stat1Pnex
	scale_Stat1Pnex_p=9.16777E4;
		
// scale_Socs1ex_p   id: scale_Socs1ex
	scale_Socs1ex_p=1;
		
// scale_RSNCex_p   id: scale_RSNCex
	scale_RSNCex_p=1;
		
// Stat1ex_s   id: Stat1ex
	Stat1ex_s=0.8058155;
		
// Stat1cex_s   id: Stat1cex
	Stat1cex_s=0.710624687346;
		
// Stat1nex_s   id: Stat1nex
	Stat1nex_s=0.80569465263;
		
// Stat1Pex_s   id: Stat1Pex
	Stat1Pex_s=0;
		
// Stat1Pcex_s   id: Stat1Pcex
	Stat1Pcex_s=0;
		
// Stat1Pnex_s   id: Stat1Pnex
	Stat1Pnex_s=0;
		
// Socs1ex_s   id: Socs1ex
	Socs1ex_s=0.108325;
		
// RSNCex_s   id: RSNCex
	RSNCex_s=0.69570757287846;
		



xdot=[
//x(1)   ID: Ifng  initialValue: 100
	        
          ((k1_p* x(1) * x(17) ))
        ;
	
//x(2)   ID: II  initialValue: 0
	        
          (k1_p* x(1) * x(17) )
        ;
	
//x(3)   ID: d1  initialValue: 0
	        
          ((( 4 )*( x(2) - x(3) ))/taud_p)
        ;
	
//x(4)   ID: d2  initialValue: 0
	        
          ((( 4 )*( x(3) - x(4) ))/taud_p)
        ;
	
//x(5)   ID: d3  initialValue: 0
	        
          ((( 4 )*( x(4) - x(5) ))/taud_p)
        ;
	
//x(6)   ID: d4  initialValue: 0
	        
          ((( 4 )*( x(5) - x(6) ))/taud_p)
        ;
	
//x(7)   ID: Stat1Pd  initialValue: 0
	        
          (((k4_p* x(2) * x(18) )/(( 1 )+(k14_p* x(16) )))-(k6_p* x(7) ))
        ;
	
//x(8)   ID: Stat1Pdn  initialValue: 0
	        
          ((k6_p* x(7) )-(k5_p* x(8) ))
        ;
	
//x(9)   ID: i1  initialValue: 0
	        
          ((( 4 )*( x(8) - x(9) ))/tau_p)
        ;
	
//x(10)   ID: i2  initialValue: 0
	        
          ((( 4 )*( x(9) - x(10) ))/tau_p)
        ;
	
//x(11)   ID: i3  initialValue: 0
	        
          ((( 4 )*( x(10) - x(11) ))/tau_p)
        ;
	
//x(12)   ID: i4  initialValue: 0
	        
          ((( 4 )*( x(11) - x(12) ))/tau_p)
        ;
	
//x(13)   ID: j1  initialValue: 0
	        
          ((( 4 )*( x(20) - x(13) ))/tauj_p)
        ;
	
//x(14)   ID: j2  initialValue: 0
	        
          ((( 4 )*( x(13) - x(14) ))/tauj_p)
        ;
	
//x(15)   ID: j3  initialValue: 0
	        
          ((( 4 )*( x(14) - x(15) ))/tauj_p)
        ;
	
//x(16)   ID: j4  initialValue: 0
	        
          ((( 4 )*( x(15) - x(16) ))/tauj_p)
        ;
	
//x(17)   ID: Ir  initialValue: 0.05721
	        
          ((k1_p* x(1) * x(17) ))
        ;
	
//x(18)   ID: Stat1U  initialValue: 0.950418
	        
          ((((k3_p* x(6) )+(k12_p* x(19) ))-(k11_p* x(18) ))-((k4_p* x(2) * x(18) )/(( 1 )+(k14_p* x(16) ))))
        ;
	
//x(19)   ID: Stat1Un  initialValue: 0.661213
	        
          (((k11_p* x(18) )-(k12_p* x(19) ))+(k5_p* x(8) ))
        ;
	
//x(20)   ID: mRNA  initialValue: 0.108325
	        
          ((k13_p+(k9_p* x(12) ))-(k10_p* x(20) ))
        
	];


	
endfunction
        x0=[100;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.05721;0.950418;0.661213;0.108325];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20])

//real_variable:
	
	
//x(1)   id: Ifng  initialValue: 100
	
//x(2)   id: II  initialValue: 0
	
//x(3)   id: d1  initialValue: 0
	
//x(4)   id: d2  initialValue: 0
	
//x(5)   id: d3  initialValue: 0
	
//x(6)   id: d4  initialValue: 0
	
//x(7)   id: Stat1Pd  initialValue: 0
	
//x(8)   id: Stat1Pdn  initialValue: 0
	
//x(9)   id: i1  initialValue: 0
	
//x(10)   id: i2  initialValue: 0
	
//x(11)   id: i3  initialValue: 0
	
//x(12)   id: i4  initialValue: 0
	
//x(13)   id: j1  initialValue: 0
	
//x(14)   id: j2  initialValue: 0
	
//x(15)   id: j3  initialValue: 0
	
//x(16)   id: j4  initialValue: 0
	
//x(17)   id: Ir  initialValue: 0.05721
	
//x(18)   id: Stat1U  initialValue: 0.950418
	
//x(19)   id: Stat1Un  initialValue: 0.661213
	
//x(20)   id: mRNA  initialValue: 0.108325