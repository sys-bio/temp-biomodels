
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// YT_s   id: YT
	YT_s=0;
		
// CT_s   id: CT
	CT_s=0;
		
// k6_Reaction1   id: k6     reactionID: Reaction1
	k6_Reaction1=1;
	
// k8notP_Reaction2   id: k8notP     reactionID: Reaction2
	k8notP_Reaction2=1000000;
	
// k9_Reaction3   id: k9     reactionID: Reaction3
	k9_Reaction3=1000;
	
// k3_Reaction4   id: k3     reactionID: Reaction4
	k3_Reaction4=200;
	
// k5notP_Reaction5   id: k5notP     reactionID: Reaction5
	k5notP_Reaction5=0;
	
// k1aa_Reaction6   id: k1aa     reactionID: Reaction6
	k1aa_Reaction6=0.015;
	
// k2_Reaction7   id: k2     reactionID: Reaction7
	k2_Reaction7=0;
	
// k7_Reaction8   id: k7     reactionID: Reaction8
	k7_Reaction8=0.6;
	
// k4_Reaction9   id: k4     reactionID: Reaction9
	k4_Reaction9=180;
	
// k4prime_Reaction9   id: k4prime     reactionID: Reaction9
	k4prime_Reaction9=0.018;
	



xdot=[
//x(1)   ID: EmptySet  initialValue: 0
	0;
	
//x(2)   ID: C2  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(2) *k8notP_Reaction2) + (1)*(1)* (compartment_cell*k6_Reaction1* x(4) ) + (1)*(1)* (compartment_cell* x(3) *k9_Reaction3) );
	
//x(3)   ID: CP  initialValue: 0.75
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(3) *k9_Reaction3) + (-1)*(1)* (compartment_cell* x(3) *k3_Reaction4* x(6) ) + (1)*(1)* (compartment_cell* x(2) *k8notP_Reaction2) );
	
//x(4)   ID: M  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k6_Reaction1* x(4) ) + (-1)*(1)* (compartment_cell*k5notP_Reaction5* x(4) ) + (1)*(1)* (compartment_cell* x(5) *(k4prime_Reaction9+(k4_Reaction9*(power(( x(4) / ( ( x(2) + x(3) + x(4) + x(5) ) ) ),( 2 )))))) );
	
//x(5)   ID: pM  initialValue: 0.25
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(5) *(k4prime_Reaction9+(k4_Reaction9*(power(( x(4) / ( ( x(2) + x(3) + x(4) + x(5) ) ) ),( 2 )))))) + (1)*(1)* (compartment_cell* x(3) *k3_Reaction4* x(6) ) + (1)*(1)* (compartment_cell*k5notP_Reaction5* x(4) ) );
	
//x(6)   ID: Y  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell* x(3) *k3_Reaction4* x(6) ) + (-1)*(1)* (compartment_cell*k2_Reaction7* x(6) ) + (1)*(1)* (compartment_cell*k1aa_Reaction6) );
	
//x(7)   ID: YP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k7_Reaction8* x(7) ) + (1)*(1)* (compartment_cell*k6_Reaction1* x(4) ) )
	];


	
endfunction
        x0=[0;0;0.75;0;0.25;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: EmptySet  initialValue: 0
	
//x(2)   id: C2  initialValue: 0
	
//x(3)   id: CP  initialValue: 0.75
	
//x(4)   id: M  initialValue: 0
	
//x(5)   id: pM  initialValue: 0.25
	
//x(6)   id: Y  initialValue: 0
	
//x(7)   id: YP  initialValue: 0