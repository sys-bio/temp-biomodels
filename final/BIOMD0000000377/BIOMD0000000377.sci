
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// Cm_p   id: Cm
	Cm_p=4524;
		
// Vm_p   id: Vm
	Vm_p=-22;
		
// VCa_p   id: VCa
	VCa_p=100;
		
// gCa_p   id: gCa
	gCa_p=280;
		
// minf_p   id: minf
	minf_p=0.0573241758988688;
		
// sm_p   id: sm
	sm_p=7.5;
		
// ICa_p   id: ICa
	ICa_p=-2295.26000299071;
		
// IK_p   id: IK
	IK_p=1443;
		
// VK_p   id: VK
	VK_p=-80;
		
// gK_p   id: gK
	gK_p=1300;
		
// lambda_p   id: lambda
	lambda_p=1.1;
		
// tnbar_p   id: tnbar
	tnbar_p=8.3;
		
// Vn_p   id: Vn
	Vn_p=-9;
		
// sn_p   id: sn
	sn_p=10;
		
// taun_p   id: taun
	taun_p=8.03194764300286;
		
// ninf_p   id: ninf
	ninf_p=0.0322954646984505;
		
// Is1_p   id: Is1
	Is1_p=74;
		
// gs1_p   id: gs1
	gs1_p=20;
		
// s1inf_p   id: s1inf
	s1inf_p=0.00247262315663477;
		
// Vs1_p   id: Vs1
	Vs1_p=-40;
		
// ss1_p   id: ss1
	ss1_p=0.5;
		
// taus1_p   id: taus1
	taus1_p=1000;
		
// Vs2_p   id: Vs2
	Vs2_p=-42;
		
// s2inf_p   id: s2inf
	s2inf_p=0.0758581800212435;
		
// ss2_p   id: ss2
	ss2_p=0.4;
		
// gs2_p   id: gs2
	gs2_p=32;
		
// taus2_p   id: taus2
	taus2_p=120000;
		
// Is2_p   id: Is2
	Is2_p=513.856;
		
// Il_p   id: Il
	Il_p=-75;
		
// gl_p   id: gl
	gl_p=25;
		
// Vl_p   id: Vl
	Vl_p=-40;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=587.856;
		



xdot=[
//x(1)   ID: V  initialValue: -43
	        
          ((( ( (gCa_p* ( (( 1 )/(( 1 )+(exp(((Vm_p- x(1) )/sm_p))))) ) *( x(1) -VCa_p)) ) + ( (gK_p* x(2) *( x(1) -VK_p)) ) + ( (gl_p*( x(1) -Vl_p)) ) + ( (gs1_p* x(3) *( x(1) -VK_p)) ) + ( (gs2_p* x(4) *( x(1) -VK_p)) ) ))/Cm_p)
        ;
	
//x(2)   ID: n  initialValue: 0.03
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vn_p- x(1) )/sn_p))))) ) - x(2) )/ ( (tnbar_p/(( 1 )+(exp((( x(1) -Vn_p)/sn_p))))) ) )
        ;
	
//x(3)   ID: s1  initialValue: 0.1
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vs1_p- x(1) )/ss1_p))))) ) - x(3) )/taus1_p)
        ;
	
//x(4)   ID: s2  initialValue: 0.434
	        
          (( ( (( 1 )/(( 1 )+(exp(((Vs2_p- x(1) )/ss2_p))))) ) - x(4) )/taus2_p)
        
	];


	
endfunction
        x0=[-43;0.03;0.1;0.434];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: V  initialValue: -43
	
//x(2)   id: n  initialValue: 0.03
	
//x(3)   id: s1  initialValue: 0.1
	
//x(4)   id: s2  initialValue: 0.434