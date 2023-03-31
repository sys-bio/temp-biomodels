function hepatocyte
global Ins


%initial conditions
Ins	=100;% [nM]


R	=35.3837;% [nM]
IR	=0; % [nM]
I2R	=0 ; % [nM]
Rp	=0;% [nM]
IRp	=0;% [nM]
I2Rp	=0;% [nM]
 R_en	=4.6163; % [nM]
IR_en	=0; % [nM]
I2R_en	=0; % [nM]
Rp_en	=0;% [nM]
IRp_en	=0;% [nM]
I2Rp_en	=0;% [nM]
Ins_label  	=0;% [nM]


tend=60*60;


c0=[R IR I2R Rp IRp I2Rp R_en IR_en I2R_en Rp_en IRp_en I2Rp_en];

[t,x]=ode15s(@sim_hepatocyte,[0 tend],c0);


R	= x(:,1); 
IR	= x(:,2); 
I2R	= x(:,3); 
Rp	= x(:,4);
IRp	= x(:,5);
I2Rp	= x(:,6);
R_en	= x(:,7); 
IR_en	= x(:,8); 
I2R_en	= x(:,9); 
Rp_en	= x(:,10);
IRp_en	= x(:,11);
I2Rp_en	= x(:,12);

plot(t,x)


function dxdt=sim_hepatocyte(t,x);
global Ins

R	= x(1); 
IR	= x(2); 
I2R	= x(3); 
Rp	= x(4);
IRp	= x(5);
I2Rp	= x(6);
R_en	= x(7); 
IR_en	= x(8); 
I2R_en	= x(9); 
Rp_en	= x(10);
IRp_en	= x(11);
I2Rp_en	= x(12);


% parameters
kins = 10^(-3); % [1/(nM*s)]
kins1d = 4*10^(-4); %[1/s]
kins2d = 4*10^(-2); %[1/s]
kins1den = 1.925*10^(-3);  %[1/s]
kins2den =  3.85*10^(-3);  %[1/s]
kyd = 0.00385;  %[1/s]
kyden = 0.00722;  %[1/s]
kyp = 0.0231;  %[1/s]
intk1 = 5.5*10^(-4);  %[1/s]
intk2 = 2*10^(-4);  %[1/s]
reck1 = 1.533*10^(-3); %[1/s]


r1=kins*R*Ins-kins1d*IR;  %[nM/s]
r2=kins*Rp*Ins-kins1d*IRp; 

r3=kins*IR*Ins-kins2d*I2R; 
r4=kins*IRp*Ins-kins2d*I2Rp; 

r5=kyd*Rp;		
r6=kyp*IR-kyd*IRp;  
r7=kyp*I2R-kyd*I2Rp;  

i1=kins1den*IR_en;  
i2=kins1den*IRp_en; 

i3=kins2den*I2R_en; 
i4=kins2den*I2Rp_en; 

i5=kyden*Rp_en;		
i6=kyp*IR_en-kyden*IRp_en;
i7=kyp*I2R_en-kyden*I2Rp_en; 

f1=intk2*R-reck1*R_en;		
f2=intk2*IR;  
f3=intk2*I2R;  
f4=intk1*Rp-reck1*Rp_en; 
f5=intk1*IRp;  
f6=intk1*I2Rp; 



dxdt = [-r1+r5-f1;  			% R
            r1-r3-r6-f2; 			% IR
            r3-r7-f3; 				% I2R
            -r2-r5-f4; 				% Rp
            r2-r4+r6-f5; 			% IRp
            r4+r7-f6; 				% I2Rp
            i1+i5+f1;  			% R_en
            -i1+i3-i6+f2; 			% IR_en
            -i3-i7+f3; 				% I2R_en
            i2-i5+f4; 				% Rp_en
            -i2+i4+i6+f5; 			% IRp_en
            -i4+i7+f6; 				% I2Rp_en
   ];
