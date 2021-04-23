
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Vmax1_v1   id: Vmax1     reactionID: v1
	Vmax1_v1=0.286;
	
// Km1Fruex_v1   id: Km1Fruex     reactionID: v1
	Km1Fruex_v1=0.2;
	
// Ki1Fru_v1   id: Ki1Fru     reactionID: v1
	Ki1Fru_v1=1;
	
// Vmax2_v2   id: Vmax2     reactionID: v2
	Vmax2_v2=0.286;
	
// Km2Glcex_v2   id: Km2Glcex     reactionID: v2
	Km2Glcex_v2=0.2;
	
// Ki2Glc_v2   id: Ki2Glc     reactionID: v2
	Ki2Glc_v2=1;
	
// Vmax3_v3   id: Vmax3     reactionID: v3
	Vmax3_v3=0.197;
	
// Km3Glc_v3   id: Km3Glc     reactionID: v3
	Km3Glc_v3=0.07;
	
// Km3ATP_v3   id: Km3ATP     reactionID: v3
	Km3ATP_v3=0.25;
	
// Km4Fru_v3   id: Km4Fru     reactionID: v3
	Km4Fru_v3=10;
	
// Ki3G6P_v3   id: Ki3G6P     reactionID: v3
	Ki3G6P_v3=0.1;
	
// Ki4F6P_v3   id: Ki4F6P     reactionID: v3
	Ki4F6P_v3=10;
	
// Vmax4_v4   id: Vmax4     reactionID: v4
	Vmax4_v4=0.197;
	
// Km4Fru_v4   id: Km4Fru     reactionID: v4
	Km4Fru_v4=10;
	
// Km4ATP_v4   id: Km4ATP     reactionID: v4
	Km4ATP_v4=0.25;
	
// Km3Glc_v4   id: Km3Glc     reactionID: v4
	Km3Glc_v4=0.07;
	
// Ki3G6P_v4   id: Ki3G6P     reactionID: v4
	Ki3G6P_v4=0.1;
	
// Ki4F6P_v4   id: Ki4F6P     reactionID: v4
	Ki4F6P_v4=10;
	
// Vmax5_v5   id: Vmax5     reactionID: v5
	Vmax5_v5=0.164;
	
// Ki5Fru_v5   id: Ki5Fru     reactionID: v5
	Ki5Fru_v5=12;
	
// Km5Fru_v5   id: Km5Fru     reactionID: v5
	Km5Fru_v5=0.1;
	
// Km5ATP_v5   id: Km5ATP     reactionID: v5
	Km5ATP_v5=0.085;
	
// Ki5ADP_v5   id: Ki5ADP     reactionID: v5
	Ki5ADP_v5=2;
	
// Vmax6f_v6   id: Vmax6f     reactionID: v6
	Vmax6f_v6=0.379;
	
// Keq6_v6   id: Keq6     reactionID: v6
	Keq6_v6=10;
	
// Ki6Suc6P_v6   id: Ki6Suc6P     reactionID: v6
	Ki6Suc6P_v6=0.07;
	
// Km6F6P_v6   id: Km6F6P     reactionID: v6
	Km6F6P_v6=0.6;
	
// Ki6Pi_v6   id: Ki6Pi     reactionID: v6
	Ki6Pi_v6=3;
	
// Ki6UDPGlc_v6   id: Ki6UDPGlc     reactionID: v6
	Ki6UDPGlc_v6=1.4;
	
// Km6UDPGlc_v6   id: Km6UDPGlc     reactionID: v6
	Km6UDPGlc_v6=1.8;
	
// Vmax6r_v6   id: Vmax6r     reactionID: v6
	Vmax6r_v6=0.2;
	
// Km6UDP_v6   id: Km6UDP     reactionID: v6
	Km6UDP_v6=0.3;
	
// Km6Suc6P_v6   id: Km6Suc6P     reactionID: v6
	Km6Suc6P_v6=0.1;
	
// Ki6F6P_v6   id: Ki6F6P     reactionID: v6
	Ki6F6P_v6=0.4;
	
// Vmax7_v7   id: Vmax7     reactionID: v7
	Vmax7_v7=0.5;
	
// Km7Suc6P_v7   id: Km7Suc6P     reactionID: v7
	Km7Suc6P_v7=0.1;
	
// Vmax8f_v8   id: Vmax8f     reactionID: v8
	Vmax8f_v8=0.677;
	
// Keq8_v8   id: Keq8     reactionID: v8
	Keq8_v8=5;
	
// Ki8Fru_v8   id: Ki8Fru     reactionID: v8
	Ki8Fru_v8=4;
	
// Km8Suc_v8   id: Km8Suc     reactionID: v8
	Km8Suc_v8=50;
	
// Ki8UDP_v8   id: Ki8UDP     reactionID: v8
	Ki8UDP_v8=0.3;
	
// Km8UDP_v8   id: Km8UDP     reactionID: v8
	Km8UDP_v8=0.3;
	
// Vmax8r_v8   id: Vmax8r     reactionID: v8
	Vmax8r_v8=0.3;
	
// Km8UDPGlc_v8   id: Km8UDPGlc     reactionID: v8
	Km8UDPGlc_v8=0.3;
	
// Km8Fru_v8   id: Km8Fru     reactionID: v8
	Km8Fru_v8=4;
	
// Ki8Suc_v8   id: Ki8Suc     reactionID: v8
	Ki8Suc_v8=40;
	
// Vmax9_v9   id: Vmax9     reactionID: v9
	Vmax9_v9=0.372;
	
// Ki9Glc_v9   id: Ki9Glc     reactionID: v9
	Ki9Glc_v9=15;
	
// Km9Suc_v9   id: Km9Suc     reactionID: v9
	Km9Suc_v9=10;
	
// Ki9Fru_v9   id: Ki9Fru     reactionID: v9
	Ki9Fru_v9=15;
	
// Vmax10_v10   id: Vmax10     reactionID: v10
	Vmax10_v10=0.1;
	
// Km10F6P_v10   id: Km10F6P     reactionID: v10
	Km10F6P_v10=0.2;
	
// Vmax11_v11   id: Vmax11     reactionID: v11
	Vmax11_v11=1;
	
// Km11Suc_v11   id: Km11Suc     reactionID: v11
	Km11Suc_v11=100;
	



xdot=[
//x(1)   ID: Fru  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((Vmax4_v4*( x(1) /Km4Fru_v4)*( x(11) /Km4ATP_v4))/((( 1 )+( x(11) /Km4ATP_v4))*(( 1 )+( x(2) /Km3Glc_v4)+( x(1) /Km4Fru_v4)+((( 0.113 )* x(3) )/Ki3G6P_v4)+((( 0.0575 )* x(3) )/Ki4F6P_v4))))) + (-1)*(1)* (compartment_compartment*(((Vmax5_v5/(( 1 )+( x(1) /Ki5Fru_v5)))*( x(1) /Km5Fru_v5)*( x(11) /Km5ATP_v5))/(( 1 )+( x(1) /Km5Fru_v5)+( x(11) /Km5ATP_v5)+(( x(1) * x(11) )/(Km5Fru_v5*Km5ATP_v5))+( x(10) /Ki5ADP_v5)))) + (-1)*(1)* (compartment_compartment*(((Vmax8f_v8)*(( x(5) * x(9) )-(( x(1) *( 0.8231 )* x(3) )/Keq8_v8)))/(( x(5) * x(9) *(( 1 )+( x(1) /Ki8Fru_v8)))+(Km8Suc_v8*( x(9) +Ki8UDP_v8))+(Km8UDP_v8* x(5) )+((Vmax8f_v8/(Vmax8r_v8*Keq8_v8))*((Km8UDPGlc_v8* x(1) *(( 1 )+( x(9) /Ki8UDP_v8)))+(( 0.8231 )* x(3) *((Km8Fru_v8*(( 1 )+((Km8UDP_v8* x(5) )/(Ki8UDP_v8*Km8Suc_v8))))+( x(1) *(( 1 )+( x(5) /Ki8Suc_v8)))))))))) + (1)*(1)* (compartment_compartment*((Vmax1_v1* x(13) )/((Km1Fruex_v1*(( 1 )+( x(1) /Ki1Fru_v1)))+ x(13) ))) + (1)*(1)* (compartment_compartment*(((Vmax9_v9/(( 1 )+( x(2) /Ki9Glc_v9)))* x(5) )/((Km9Suc_v9*(( 1 )+( x(1) /Ki9Fru_v9)))+ x(5) ))) );
	
//x(2)   ID: Glc  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((Vmax3_v3*( x(2) /Km3Glc_v3)*( x(11) /Km3ATP_v3))/((( 1 )+( x(11) /Km3ATP_v3))*(( 1 )+( x(2) /Km3Glc_v3)+( x(1) /Km4Fru_v3)+((( 0.113 )* x(3) )/Ki3G6P_v3)+((( 0.0575 )* x(3) )/Ki4F6P_v3))))) + (1)*(1)* (compartment_compartment*((Vmax2_v2* x(12) )/((Km2Glcex_v2*(( 1 )+( x(2) /Ki2Glc_v2)))+ x(12) ))) + (1)*(1)* (compartment_compartment*(((Vmax9_v9/(( 1 )+( x(2) /Ki9Glc_v9)))* x(5) )/((Km9Suc_v9*(( 1 )+( x(1) /Ki9Fru_v9)))+ x(5) ))) );
	
//x(3)   ID: HexP  initialValue: 1
	(1/compartment_compartment)*( (-1)*(2)* (compartment_compartment*((Vmax6f_v6*((( 0.0575 )* x(3) *( 0.8231 )* x(3) )-(( x(4) * x(9) )/Keq6_v6)))/((( 0.0575 )* x(3) *( 0.8231 )* x(3) *(( 1 )+( x(4) /Ki6Suc6P_v6)))+(Km6F6P_v6*(( 1 )+( x(8) /Ki6Pi_v6))*((( 0.8231 )* x(3) )+Ki6UDPGlc_v6))+(Km6UDPGlc_v6*( 0.0575 )* x(3) )+((Vmax6f_v6/(Vmax6r_v6*Keq6_v6))*((Km6UDP_v6* x(4) *(( 1 )+((( 0.8231 )* x(3) )/Ki6UDPGlc_v6)))+( x(9) *((Km6Suc6P_v6*(( 1 )+((Km6UDPGlc_v6*( 0.0575 )* x(3) )/(Ki6UDPGlc_v6*Km6F6P_v6*(( 1 )+( x(8) /Ki6Pi_v6))))))+( x(4) *(( 1 )+((( 0.0575 )* x(3) )/Ki6F6P_v6)))))))))) + (-1)*(1)* (compartment_compartment*(((Vmax8f_v8)*(( x(5) * x(9) )-(( x(1) *( 0.8231 )* x(3) )/Keq8_v8)))/(( x(5) * x(9) *(( 1 )+( x(1) /Ki8Fru_v8)))+(Km8Suc_v8*( x(9) +Ki8UDP_v8))+(Km8UDP_v8* x(5) )+((Vmax8f_v8/(Vmax8r_v8*Keq8_v8))*((Km8UDPGlc_v8* x(1) *(( 1 )+( x(9) /Ki8UDP_v8)))+(( 0.8231 )* x(3) *((Km8Fru_v8*(( 1 )+((Km8UDP_v8* x(5) )/(Ki8UDP_v8*Km8Suc_v8))))+( x(1) *(( 1 )+( x(5) /Ki8Suc_v8)))))))))) + (-1)*(1)* (compartment_compartment*((Vmax10_v10*( 0.0575 )* x(3) )/(Km10F6P_v10+(( 0.0575 )* x(3) )))) + (1)*(1)* (compartment_compartment*((Vmax3_v3*( x(2) /Km3Glc_v3)*( x(11) /Km3ATP_v3))/((( 1 )+( x(11) /Km3ATP_v3))*(( 1 )+( x(2) /Km3Glc_v3)+( x(1) /Km4Fru_v3)+((( 0.113 )* x(3) )/Ki3G6P_v3)+((( 0.0575 )* x(3) )/Ki4F6P_v3))))) + (1)*(1)* (compartment_compartment*((Vmax4_v4*( x(1) /Km4Fru_v4)*( x(11) /Km4ATP_v4))/((( 1 )+( x(11) /Km4ATP_v4))*(( 1 )+( x(2) /Km3Glc_v4)+( x(1) /Km4Fru_v4)+((( 0.113 )* x(3) )/Ki3G6P_v4)+((( 0.0575 )* x(3) )/Ki4F6P_v4))))) + (1)*(1)* (compartment_compartment*(((Vmax5_v5/(( 1 )+( x(1) /Ki5Fru_v5)))*( x(1) /Km5Fru_v5)*( x(11) /Km5ATP_v5))/(( 1 )+( x(1) /Km5Fru_v5)+( x(11) /Km5ATP_v5)+(( x(1) * x(11) )/(Km5Fru_v5*Km5ATP_v5))+( x(10) /Ki5ADP_v5)))) );
	
//x(4)   ID: Suc6P  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((Vmax7_v7* x(4) )/(Km7Suc6P_v7+ x(4) ))) + (1)*(1)* (compartment_compartment*((Vmax6f_v6*((( 0.0575 )* x(3) *( 0.8231 )* x(3) )-(( x(4) * x(9) )/Keq6_v6)))/((( 0.0575 )* x(3) *( 0.8231 )* x(3) *(( 1 )+( x(4) /Ki6Suc6P_v6)))+(Km6F6P_v6*(( 1 )+( x(8) /Ki6Pi_v6))*((( 0.8231 )* x(3) )+Ki6UDPGlc_v6))+(Km6UDPGlc_v6*( 0.0575 )* x(3) )+((Vmax6f_v6/(Vmax6r_v6*Keq6_v6))*((Km6UDP_v6* x(4) *(( 1 )+((( 0.8231 )* x(3) )/Ki6UDPGlc_v6)))+( x(9) *((Km6Suc6P_v6*(( 1 )+((Km6UDPGlc_v6*( 0.0575 )* x(3) )/(Ki6UDPGlc_v6*Km6F6P_v6*(( 1 )+( x(8) /Ki6Pi_v6))))))+( x(4) *(( 1 )+((( 0.0575 )* x(3) )/Ki6F6P_v6)))))))))) );
	
//x(5)   ID: Suc  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*(((Vmax9_v9/(( 1 )+( x(2) /Ki9Glc_v9)))* x(5) )/((Km9Suc_v9*(( 1 )+( x(1) /Ki9Fru_v9)))+ x(5) ))) + (-1)*(1)* (compartment_compartment*((Vmax11_v11* x(5) )/(Km11Suc_v11+ x(5) ))) + (1)*(1)* (compartment_compartment*((Vmax7_v7* x(4) )/(Km7Suc6P_v7+ x(4) ))) + (1)*(1)* (compartment_compartment*(((Vmax8f_v8)*(( x(5) * x(9) )-(( x(1) *( 0.8231 )* x(3) )/Keq8_v8)))/(( x(5) * x(9) *(( 1 )+( x(1) /Ki8Fru_v8)))+(Km8Suc_v8*( x(9) +Ki8UDP_v8))+(Km8UDP_v8* x(5) )+((Vmax8f_v8/(Vmax8r_v8*Keq8_v8))*((Km8UDPGlc_v8* x(1) *(( 1 )+( x(9) /Ki8UDP_v8)))+(( 0.8231 )* x(3) *((Km8Fru_v8*(( 1 )+((Km8UDP_v8* x(5) )/(Ki8UDP_v8*Km8Suc_v8))))+( x(1) *(( 1 )+( x(5) /Ki8Suc_v8)))))))))) );
	
//x(6)   ID: Sucvac  initialValue: 0
	0;
	
//x(7)   ID: glycolysis  initialValue: 0
	0;
	
//x(8)   ID: phos  initialValue: 5.1
	0;
	
//x(9)   ID: UDP  initialValue: 0.2
	0;
	
//x(10)   ID: ADP  initialValue: 0.2
	0;
	
//x(11)   ID: ATP  initialValue: 1
	0;
	
//x(12)   ID: Glcex  initialValue: 5
	0;
	
//x(13)   ID: Fruex  initialValue: 5
	0
	];


	
endfunction
        x0=[1;1;1;1;1;0;0;5.1;0.2;0.2;1;5;5];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: Fru  initialValue: 1
	
//x(2)   id: Glc  initialValue: 1
	
//x(3)   id: HexP  initialValue: 1
	
//x(4)   id: Suc6P  initialValue: 1
	
//x(5)   id: Suc  initialValue: 1
	
//x(6)   id: Sucvac  initialValue: 0
	
//x(7)   id: glycolysis  initialValue: 0
	
//x(8)   id: phos  initialValue: 5.1
	
//x(9)   id: UDP  initialValue: 0.2
	
//x(10)   id: ADP  initialValue: 0.2
	
//x(11)   id: ATP  initialValue: 1
	
//x(12)   id: Glcex  initialValue: 5
	
//x(13)   id: Fruex  initialValue: 5