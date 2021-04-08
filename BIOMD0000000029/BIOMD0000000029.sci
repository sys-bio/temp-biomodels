
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// Km1_p   id: Km1
	Km1_p=410;
		
// kcat1_p   id: kcat1
	kcat1_p=1.08;
		
// Km2_p   id: Km2
	Km2_p=40;
		
// kcat2_p   id: kcat2
	kcat2_p=0.007;
		
// Km3_p   id: Km3
	Km3_p=20;
		
// kcat3_p   id: kcat3
	kcat3_p=0.008;
		
// Km4_p   id: Km4
	Km4_p=300;
		
// kcat4_p   id: kcat4
	kcat4_p=0.45;
		
// Km5_p   id: Km5
	Km5_p=22;
		
// kcat5_p   id: kcat5
	kcat5_p=0.084;
		
// Km6_p   id: Km6
	Km6_p=18;
		
// kcat6_p   id: kcat6
	kcat6_p=0.06;
		
// Km7_p   id: Km7
	Km7_p=34;
		
// kcat7_p   id: kcat7
	kcat7_p=0.108;
		
// Km8_p   id: Km8
	Km8_p=40;
		
// MEK_s   id: MEK
	MEK_s=180;
		
// MKP3_s   id: MKP3
	MKP3_s=100;
		



xdot=[
//x(1)   ID: M  initialValue: 800
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((kcat1_p*MEK_s* x(1) )/Km1_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (-1)*(1)* (compartment_cell*(((kcat3_p*MEK_s* x(1) )/Km3_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (1)*(1)* (compartment_cell*(((kcat6_p*MKP3_s* x(3) )/Km6_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) + (1)*(1)* (compartment_cell*(((kcat7_p*MKP3_s* x(2) )/Km7_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) );
	
//x(2)   ID: MpY  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((kcat2_p*MEK_s* x(2) )/Km2_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (-1)*(1)* (compartment_cell*(((kcat7_p*MKP3_s* x(2) )/Km7_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) + (1)*(1)* (compartment_cell*(((kcat1_p*MEK_s* x(1) )/Km1_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) );
	
//x(3)   ID: MpT  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((kcat4_p*MEK_s* x(3) )/Km4_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (-1)*(1)* (compartment_cell*(((kcat6_p*MKP3_s* x(3) )/Km6_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) + (1)*(1)* (compartment_cell*(((kcat3_p*MEK_s* x(1) )/Km3_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (1)*(1)* (compartment_cell*(((kcat5_p*MKP3_s* x(4) )/Km5_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) );
	
//x(4)   ID: Mpp  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((kcat5_p*MKP3_s* x(4) )/Km5_p)/(( 1 )+( x(4) /Km5_p)+( x(3) /Km6_p)+( x(2) /Km7_p)+( x(1) /Km8_p)))) + (1)*(1)* (compartment_cell*(((kcat2_p*MEK_s* x(2) )/Km2_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) + (1)*(1)* (compartment_cell*(((kcat4_p*MEK_s* x(3) )/Km4_p)/(( 1 )+( x(1) *((Km1_p+Km3_p)/(Km1_p*Km3_p)))+( x(2) /Km2_p)+( x(3) /Km4_p)))) )
	];


	
endfunction
        x0=[800;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: M  initialValue: 800
	
//x(2)   id: MpY  initialValue: 0
	
//x(3)   id: MpT  initialValue: 0
	
//x(4)   id: Mpp  initialValue: 0