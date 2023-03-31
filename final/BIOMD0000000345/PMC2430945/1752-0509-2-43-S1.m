function insulin_dynamics
clear all;

bw=190; %body weight
t_in	= 0; % duration of injection  [s]
n_in=47.5;%[nmol]
n_label_in=0;

tend=60*40+t_in;


% if t_in is set to zero, adapt initial conditions : 
v_p= 0.03375*bw*10^(-3); % plasma volume [l]
Ins=0.07+(n_in+n_label_in)/v_p;
Ins_label=n_label_in/v_p;
% and set  u_in and  u_label_in to zero (already done below)
% if t_in is not equal to zero, set  u_in and  u_label_in to the right value (below)

%initial conditions

%Ins	= 0.07;% [nM] if t_in not equal to zero

R	=31.619;% [nM]
IR	=0.430007; % [nM]
I2R	=0.000696311 ; % [nM]
Rp	=0.227528;% [nM]
IRp	=2.07275;% [nM]
I2Rp	=0.00363012;% [nM]
R_en	=4.88528; % [nM]
IR_en	=0.145537; % [nM]
I2R_en	=0.000121295; % [nM]
Rp_en	=0.122602;% [nM]
IRp_en	=0.492464;% [nM]
I2Rp_en	=0.000433466;% [nM]
%Ins_label  	=0;% [nM]  if t_in not equal to zero

Ins_ub	=1.29948*10^(-6)*bw;% [nmol]  % for literature values of k1ub and k2ub
Ins_label_ub=0;% [nmol]



c0=[Ins R IR I2R Rp IRp I2Rp R_en IR_en I2R_en Rp_en IRp_en I2Rp_en Ins_label Ins_ub Ins_label_ub];

[t,x]=ode15s(@sim_clearance,[0 tend],c0,[],bw,n_in,n_label_in,t_in);



%if 	t=0 at the beginning of injection: use t/60 as time argument in plots

	subplot(2,1,1);
		plot(t/60-t_in/60,x(:,1),'k'); %t=0 after end of injection
		xlabel('[min]');ylabel('[nM]');
		title('total insulin in plasma');

	subplot(2,1,2);
		plot(t/60-t_in/60,x(:,14),'k');%t=0 after end of injection
		xlabel('[min]');ylabel('[nM]');
	title('labeled insulin in plasma');


function dxdt=sim_clearance(t,x,bw,n_in,n_label_in,t_in);

Ins	= x(1);
R	= x(2); 
IR	= x(3); 
I2R	= x(4); 
Rp	= x(5);
IRp	= x(6);
I2Rp	= x(7);
R_en	= x(8); 
IR_en	= x(9); 
I2R_en	= x(10); 
Rp_en	= x(11);
IRp_en	= x(12);
I2Rp_en	= x(13);
Ins_label=x(14);
Ins_ub=x(15);
Ins_label_ub=x(16);

rho_liver=1.051*10^3; %[g/l]
m_liver=0.05*bw; %[g]
v_p= 0.03375*bw*10^(-3); % plasma volume [l]
v_hep= (m_liver/rho_liver)*0.78; % hepatocyte volume  [l]
v_d = 0.272*v_hep*rho_liver*10^(-3); % space of Disse [l]

% injection if t_in is not equal to zero
%u_in = (n_in/t_in)*(1-(t^50/(t^50+t_in^50)))/ v_p; %[nM/s]
%u_label_in=(n_label_in/t_in)*(1-(t^50/(t^50+t_in^50))) /v_p; %[nM/s]


% only for t_in=0:
u_in=0;
u_label_in=0;

%   pancreas
kpan = 0.5; % [nM]
pansec=0.0016976;%[nM/s]
r_pan = pansec*(1 - (Ins^10/(Ins^10+ kpan^10)));  %[nM/s]

% liver
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

r_liv = (-r1-r2-r3-r4)*v_hep/v_p; %[nM/s]

% nonspecific insulin binding
k1_ub = 0.35; % [1/s]
k2_ub = 0.2; % [1/s]

r_ub =(k1_ub*(Ins-Ins_label)*v_d - k2_ub*Ins_ub)/v_p; %[nM/s]

r_label_ub =(k1_ub*Ins_label*v_d - k2_ub*Ins_label_ub)/v_p; %[nM/s]

% kidney
m_kidney=2*0.85*bw/230; %[g]
Kkidney=(0.0225/10^3)*m_kidney;%[l/s]
r_kid=-Kkidney*Ins/v_p;  %[nM/s]


dxdt = [ 
	    r_liv  + r_kid + r_pan + u_in+ u_label_in - r_label_ub - r_ub; %total insulin in plasma
	   -r1+r5-f1;  			% R
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
	    (r_liv + r_kid )*(Ins_label/Ins) + u_label_in - r_label_ub; %labeled insulin in plasma
	    r_ub*v_p; % nonspecifically bound unlabeled insulin (amount of substance)
	   r_label_ub*v_p;	 % nonspecifically bound labeled insulin (amount of substance)
			       ];
