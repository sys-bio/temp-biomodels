
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_V   id: V
	compartment_V=1;
		
// prim_11_rim11_1   id: prim_11     reactionID: rim11_1
	prim_11_rim11_1=0.01;
	
// urim_11_rim11_1   id: urim_11     reactionID: rim11_1
	urim_11_rim11_1=0.1;
	
// pume_6_pume6_1   id: pume_6     reactionID: pume6_1
	pume_6_pume6_1=0.3;
	
// uume_6_pume6_1   id: uume_6     reactionID: pume6_1
	uume_6_pume6_1=0.01;
	
// csok_2_sok2_1   id: csok_2     reactionID: sok2_1
	csok_2_sok2_1=0.05;
	
// psok_2_sok2_1   id: psok_2     reactionID: sok2_1
	psok_2_sok2_1=0.7;
	
// usok_2_sok2_1   id: usok_2     reactionID: sok2_1
	usok_2_sok2_1=1;
	
// c_1_ime1_1   id: c_1     reactionID: ime1_1
	c_1_ime1_1=0.01;
	
// cime_1_ime1_1   id: cime_1     reactionID: ime1_1
	cime_1_ime1_1=0.01;
	
// dime_1_ime1_1   id: dime_1     reactionID: ime1_1
	dime_1_ime1_1=1;
	
// dprimeime_1_ime1_1   id: dprimeime_1     reactionID: ime1_1
	dprimeime_1_ime1_1=1;
	
// pime_1_ime1_1   id: pime_1     reactionID: ime1_1
	pime_1_ime1_1=2;
	
// sime_1_ime1_1   id: sime_1     reactionID: ime1_1
	sime_1_ime1_1=10;
	
// dpime_1_pime1_1   id: dpime_1     reactionID: pime1_1
	dpime_1_pime1_1=1;
	
// pime_1_pime1_1   id: pime_1     reactionID: pime1_1
	pime_1_pime1_1=2;
	
// c_2_ime2_1   id: c_2     reactionID: ime2_1
	c_2_ime2_1=1.4;
	
// c_3_ime2_1   id: c_3     reactionID: ime2_1
	c_3_ime2_1=2;
	
// dime_2_ime2_1   id: dime_2     reactionID: ime2_1
	dime_2_ime2_1=8;
	
// sime_2_ime2_1   id: sime_2     reactionID: ime2_1
	sime_2_ime2_1=10;
	
// sprimeime_2_ime2_1   id: sprimeime_2     reactionID: ime2_1
	sprimeime_2_ime2_1=3;
	



xdot=[
//x(1)   ID: Rim11  initialValue: 0
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) );
	
//x(2)   ID: pUme6  initialValue: 0
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) );
	
//x(3)   ID: pSok2  initialValue: 0.999999999999971
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) );
	
//x(4)   ID: Ime1  initialValue: 0
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) );
	
//x(5)   ID: pIme1  initialValue: 0
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) );
	
//x(6)   ID: Ime2  initialValue: 0
	(1/compartment_V)*( (1)*(1)* (compartment_V*()) )
	];


	
endfunction
        x0=[0;0;0.999999999999971;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: Rim11  initialValue: 0
	
//x(2)   id: pUme6  initialValue: 0
	
//x(3)   id: pSok2  initialValue: 0.999999999999971
	
//x(4)   id: Ime1  initialValue: 0
	
//x(5)   id: pIme1  initialValue: 0
	
//x(6)   id: Ime2  initialValue: 0