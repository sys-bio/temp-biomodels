
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// alpha_reaction_1   id: alpha     reactionID: reaction_1
	alpha_reaction_1=0.001;
	
// kd_reaction_3   id: kd     reactionID: reaction_3
	kd_reaction_3=1;
	
// kappa_reaction_2   id: kappa     reactionID: reaction_2
	kappa_reaction_2=0.5;
	
// phi_reaction_4   id: phi     reactionID: reaction_4
	phi_reaction_4=5E-6;
	
// delta_reaction_4   id: delta     reactionID: reaction_4
	delta_reaction_4=1E-5;
	
// gamma_reaction_4   id: gamma     reactionID: reaction_4
	gamma_reaction_4=1E-5;
	



xdot=[
//x(1)   ID: c  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (kd_reaction_3* x(1) ) + (-1)*(1)* ((phi_reaction_4* x(1) )/(delta_reaction_4+(gamma_reaction_4* x(1) ))) + (1)*(1)* alpha_reaction_1 + (1)*(1)* ( x(1) /(kappa_reaction_2+ x(1) )) )
	];


	
endfunction
        x0=[1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)'],[1])

//real_variable:
	
	
//x(1)   id: c  initialValue: 1