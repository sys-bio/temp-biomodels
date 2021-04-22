
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_deterministicOscillator   id: deterministicOscillator
	compartment_deterministicOscillator=1;
		
// gammaC_Reaction1   id: gammaC     reactionID: Reaction1
	gammaC_Reaction1=2;
	
// deltaA_Reaction2   id: deltaA     reactionID: Reaction2
	deltaA_Reaction2=1;
	
// deltaA_Reaction3   id: deltaA     reactionID: Reaction3
	deltaA_Reaction3=1;
	
// deltaR_Reaction4   id: deltaR     reactionID: Reaction4
	deltaR_Reaction4=0.2;
	
// gammaA_Reaction5   id: gammaA     reactionID: Reaction5
	gammaA_Reaction5=1;
	
// thetaA_Reaction6   id: thetaA     reactionID: Reaction6
	thetaA_Reaction6=50;
	
// alphaA_Reaction7   id: alphaA     reactionID: Reaction7
	alphaA_Reaction7=50;
	
// alphaAp_Reaction8   id: alphaAp     reactionID: Reaction8
	alphaAp_Reaction8=500;
	
// deltaMA_Reaction9   id: deltaMA     reactionID: Reaction9
	deltaMA_Reaction9=10;
	
// betaA_Reaction10   id: betaA     reactionID: Reaction10
	betaA_Reaction10=50;
	
// gammaR_Reaction11   id: gammaR     reactionID: Reaction11
	gammaR_Reaction11=1;
	
// thetaR_Reaction12   id: thetaR     reactionID: Reaction12
	thetaR_Reaction12=100;
	
// alphaR_Reaction13   id: alphaR     reactionID: Reaction13
	alphaR_Reaction13=0.01;
	
// alphaRp_Reaction14   id: alphaRp     reactionID: Reaction14
	alphaRp_Reaction14=50;
	
// deltaMR_Reaction15   id: deltaMR     reactionID: Reaction15
	deltaMR_Reaction15=0.5;
	
// betaR_Reaction16   id: betaR     reactionID: Reaction16
	betaR_Reaction16=5;
	



xdot=[
//x(1)   ID: EmptySet  initialValue: 0
	0;
	
//x(2)   ID: A  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(2) * x(10) *gammaC_Reaction1) + (-1)*(1)* ( x(2) *deltaA_Reaction2) + (-1)*(1)* ( x(2) * x(4) *gammaA_Reaction5) + (-1)*(1)* ( x(2) * x(6) *gammaR_Reaction11) + (1)*(1)* ( x(5) *thetaA_Reaction6) + (1)*(1)* ( x(8) *betaA_Reaction10) + (1)*(1)* ( x(7) *thetaR_Reaction12) );
	
//x(3)   ID: C  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(3) *deltaA_Reaction3) + (1)*(1)* ( x(2) * x(10) *gammaC_Reaction1) );
	
//x(4)   ID: DA  initialValue: 1
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(2) * x(4) *gammaA_Reaction5) + (-1)*(1)* ( x(4) *alphaA_Reaction7) + (1)*(1)* ( x(5) *thetaA_Reaction6) + (1)*(1)* ( x(4) *alphaA_Reaction7) );
	
//x(5)   ID: DAp  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(5) *thetaA_Reaction6) + (-1)*(1)* ( x(5) *alphaAp_Reaction8) + (1)*(1)* ( x(2) * x(4) *gammaA_Reaction5) + (1)*(1)* ( x(5) *alphaAp_Reaction8) );
	
//x(6)   ID: DR  initialValue: 1
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(2) * x(6) *gammaR_Reaction11) + (-1)*(1)* ( x(6) *alphaR_Reaction13) + (1)*(1)* ( x(7) *thetaR_Reaction12) + (1)*(1)* ( x(6) *alphaR_Reaction13) );
	
//x(7)   ID: DRp  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(7) *thetaR_Reaction12) + (-1)*(1)* ( x(7) *alphaRp_Reaction14) + (1)*(1)* ( x(2) * x(6) *gammaR_Reaction11) + (1)*(1)* ( x(7) *alphaRp_Reaction14) );
	
//x(8)   ID: MA  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(8) *deltaMA_Reaction9) + (-1)*(1)* ( x(8) *betaA_Reaction10) + (1)*(1)* ( x(4) *alphaA_Reaction7) + (1)*(1)* ( x(5) *alphaAp_Reaction8) + (1)*(1)* ( x(8) *betaA_Reaction10) );
	
//x(9)   ID: MR  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(9) *deltaMR_Reaction15) + (-1)*(1)* ( x(9) *betaR_Reaction16) + (1)*(1)* ( x(6) *alphaR_Reaction13) + (1)*(1)* ( x(7) *alphaRp_Reaction14) + (1)*(1)* ( x(9) *betaR_Reaction16) );
	
//x(10)   ID: R  initialValue: 0
	(1/compartment_deterministicOscillator)*( (-1)*(1)* ( x(2) * x(10) *gammaC_Reaction1) + (-1)*(1)* ( x(10) *deltaR_Reaction4) + (1)*(1)* ( x(3) *deltaA_Reaction3) + (1)*(1)* ( x(9) *betaR_Reaction16) )
	];


	
endfunction
        x0=[0;0;0;1;0;1;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: EmptySet  initialValue: 0
	
//x(2)   id: A  initialValue: 0
	
//x(3)   id: C  initialValue: 0
	
//x(4)   id: DA  initialValue: 1
	
//x(5)   id: DAp  initialValue: 0
	
//x(6)   id: DR  initialValue: 1
	
//x(7)   id: DRp  initialValue: 0
	
//x(8)   id: MA  initialValue: 0
	
//x(9)   id: MR  initialValue: 0
	
//x(10)   id: R  initialValue: 0