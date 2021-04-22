
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// a0_p   id: a0
	a0_p=0.001;
		
// a1_p   id: a1
	a1_p=0.02;
		
// a2_p   id: a2
	a2_p=0.0125;
		
// a3_p   id: a3
	a3_p=0.025;
		
// b0_p   id: b0
	b0_p=1;
		
// b1_p   id: b1
	b1_p=0.02;
		
// b2_p   id: b2
	b2_p=0.0125;
		
// b3_p   id: b3
	b3_p=0.03;
		
// b4_p   id: b4
	b4_p=10;
		
// b5_p   id: b5
	b5_p=10;
		
// gamma1_p   id: gamma1
	gamma1_p=0.1;
		
// c0_p   id: c0
	c0_p=0.001;
		
// c1_p   id: c1
	c1_p=0.05;
		
// c2_p   id: c2
	c2_p=0.0125;
		
// d0_p   id: d0
	d0_p=0.001;
		
// d1_p   id: d1
	d1_p=0.05;
		
// d2_p   id: d2
	d2_p=0.0125;
		
// d3_p   id: d3
	d3_p=0.05;
		
// gamma2_p   id: gamma2
	gamma2_p=0.1;
		
// e0_p   id: e0
	e0_p=0.001;
		
// e1_p   id: e1
	e1_p=0.1;
		
// e2_p   id: e2
	e2_p=0.1;
		
// f0_p   id: f0
	f0_p=0.001;
		
// f1_p   id: f1
	f1_p=0.1;
		
// f2_p   id: f2
	f2_p=0.1;
		
// f3_p   id: f3
	f3_p=10;
		
// gamma3_p   id: gamma3
	gamma3_p=0.1;
		
// g0_p   id: g0
	g0_p=0.001;
		
// g1_p   id: g1
	g1_p=2;
		
// h0_p   id: h0
	h0_p=2;
		
// h1_p   id: h1
	h1_p=5;
		
// gamma4_p   id: gamma4
	gamma4_p=0.1;
		
// i0_p   id: i0
	i0_p=0.001;
		
// i1_p   id: i1
	i1_p=0.1;
		
// i2_p   id: i2
	i2_p=0.1;
		
// j0_p   id: j0
	j0_p=0.1;
		
// j1_p   id: j1
	j1_p=0.1;
		
// gamma5_p   id: gamma5
	gamma5_p=0.1;
		
// p0_p   id: p0
	p0_p=0.1;
		
// p1_p   id: p1
	p1_p=1;
		
// p2_p   id: p2
	p2_p=0.00025;
		
// q0_p   id: q0
	q0_p=1;
		
// q1_p   id: q1
	q1_p=0.00025;
		
// q2_p   id: q2
	q2_p=15;
		
// gammag_p   id: gammag
	gammag_p=0.01;
		
// gamman_p   id: gamman
	gamman_p=0.01;
		



xdot=[
//x(1)   ID: OCT4_Gene  initialValue: 0
	0;
	
//x(2)   ID: NANOG_Gene  initialValue: 0
	0;
	
//x(3)   ID: SOX2_Gene  initialValue: 0
	0;
	
//x(4)   ID: GATA6_Gene  initialValue: 0
	0;
	
//x(5)   ID: CDX2_Gene  initialValue: 0
	0;
	
//x(6)   ID: GCNF_Gene  initialValue: 0
	0;
	
//x(7)   ID: targetGene  initialValue: 0.01
	0;
	
//x(8)   ID: degradation  initialValue: 0
	0;
	
//x(9)   ID: p53  initialValue: 0
	0;
	
//x(10)   ID: A  initialValue: 10
	0;
	
//x(11)   ID: OCT4  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gamma1_p* x(11) ) + (1)*(1)* ((a0_p+(a1_p* x(10) )+(a2_p* x(11) * x(12) )+(a3_p* x(11) * x(12) * x(13) ))/(( 1 )+(b0_p* x(10) )+(b1_p* x(11) )+(b2_p* x(11) * x(12) )+(b3_p* x(11) * x(12) * x(13) )+(b4_p* x(15) * x(11) )+(b5_p* x(16) ))) );
	
//x(12)   ID: SOX2  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gamma2_p* x(12) ) + (1)*(1)* ((c0_p+(c1_p* x(11) * x(12) )+(c2_p* x(11) * x(12) * x(13) ))/(( 1 )+(d0_p* x(11) )+(d1_p* x(11) * x(12) )+(d2_p* x(11) * x(12) * x(13) ))) );
	
//x(13)   ID: NANOG  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gamman_p* x(13) ) + (1)*(1)* (((a1_p* x(17) )+(a2_p* x(17) * x(13) ))/(( 1 )+(b1_p* x(17) )+(b2_p* x(17) * x(13) )+(b3_p* x(17) * x(14) ))) );
	
//x(14)   ID: GATA6  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gammag_p* x(14) ) + (1)*(1)* (((c1_p* x(17) )+(c2_p* x(14) ))/(( 1 )+(d1_p* x(17) )+(d2_p* x(14) )+(d3_p* x(13) ))) );
	
//x(15)   ID: CDX2  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gamma4_p* x(15) ) + (1)*(1)* ((g0_p+(g1_p* x(15) ))/(( 1 )+(h0_p* x(15) )+(h1_p* x(15) * x(11) ))) );
	
//x(16)   ID: GCNF  initialValue: 0.01
	(1/compartment_cell)*( (-1)*(1)* (gamma5_p* x(16) ) + (1)*(1)* ((i0_p+(i1_p* x(15) )+(i2_p* x(14) ))/(( 1 )+(j0_p* x(15) )+(j1_p* x(14) ))) );
	
//x(17)   ID: OCT4_SOX2  initialValue: 0.1
	0;
	
//x(18)   ID: Protein  initialValue: 0
	0
	];


	
endfunction
        x0=[0;0;0;0;0;0;0.01;0;0;10;0.01;0.01;0.01;0.01;0.01;0.01;0.1;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18])

//real_variable:
	
	
//x(1)   id: OCT4_Gene  initialValue: 0
	
//x(2)   id: NANOG_Gene  initialValue: 0
	
//x(3)   id: SOX2_Gene  initialValue: 0
	
//x(4)   id: GATA6_Gene  initialValue: 0
	
//x(5)   id: CDX2_Gene  initialValue: 0
	
//x(6)   id: GCNF_Gene  initialValue: 0
	
//x(7)   id: targetGene  initialValue: 0.01
	
//x(8)   id: degradation  initialValue: 0
	
//x(9)   id: p53  initialValue: 0
	
//x(10)   id: A  initialValue: 10
	
//x(11)   id: OCT4  initialValue: 0.01
	
//x(12)   id: SOX2  initialValue: 0.01
	
//x(13)   id: NANOG  initialValue: 0.01
	
//x(14)   id: GATA6  initialValue: 0.01
	
//x(15)   id: CDX2  initialValue: 0.01
	
//x(16)   id: GCNF  initialValue: 0.01
	
//x(17)   id: OCT4_SOX2  initialValue: 0.1
	
//x(18)   id: Protein  initialValue: 0