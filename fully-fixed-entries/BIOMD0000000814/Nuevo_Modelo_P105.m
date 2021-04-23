clear all
close all
clc    
global rho a1 a2

% Initial conditions
x0(1)=1.449520751410526e+02;
x0(2)=0;
x0(3)=0;

% Parameters related to the drug
beta=2.1E-3; % Fraction of TMZ getting to brain interstitium (beta)
d=150; % Dose (d)
b=1.9; % Surface of the patient's body (b)
c=beta*d*b; % Effective dose (c)
% Treatment
Tratamiento=[55 56 57 58 59]; % Treatment onset
e=608; %Treatment end
u=28; % Total days of a treatment cycle
n=20; % Number of cycles
tf=1022;
ER=0; % (Modelo-Datos)^2

r=[0 132 260 414 603 825 1022];
m=[143.94 157.1 123.29 125.7 111 118.2 142.9];

for i=1:n-1
    Tratamiento=[Tratamiento Tratamiento(1)+i*u Tratamiento(2)+i*u Tratamiento(3)+i*u Tratamiento(4)+i*u Tratamiento(5)+i*u];
end

Dosis=c*ones(1,length(Tratamiento));

[z,w]=ode45(@Nuevo_Modelo_TMZ_P105,0:1:Tratamiento(1)-0.01,[x0(1) x0(2) x0(3)]);
T=z;
X=w;

for i=1:length(Tratamiento)-1
    tIntermedio1=Tratamiento(i);
    tIntermedio2=Tratamiento(i+1);
    dosis=Dosis(i);
    [z,w]=ode45(@Nuevo_Modelo_TMZ_P105,tIntermedio1:0.01:tIntermedio2-0.01,[w(end,1) w(end,2) w(end,3)+dosis]);
    X=[X;w];
    T=[T;z];
end

t0=Tratamiento(end);
[z,w]=ode45(@Nuevo_Modelo_TMZ_P105,t0:0.02:tf,[w(end,1) w(end,2) w(end,3)+Dosis(end)]);
X=[X;w];
T=[T;z];
H=X(:,1)+X(:,2);

rho
a1
a2

for q=1:length(r)
ER=ER+(m(q)-H(find(T==r(q))))^2;
end
RSME_105=sqrt(ER/length(r))

figure (1)
    plot(T/365,H,'LineWidth',3.5,'Color',[0.9,0.2,0]); 
    xlabel('Time (years)','FontSize',20),
    ylabel('Tumour volume (cc)','FontSize',20), 
    xlim([0 T(end)/365]);
    %xticks([0 0.5 1 1.5 2 2.5]);
    ylim([50 190]);
    %yticks([50 75 100 125 150 175]);
%     text(1.2,175,'K/2','FontSize',20)
    text(2.65,184,'e)','FontSize',20)
    set(gca,'FontSize',20)
    
    hold on
    plot([Tratamiento(1)/365 Tratamiento(1)/365],[0 190],'--','LineWidth',3,'Color',[0,1,0]);
    plot([e/365 e/365],[0 190],'--','LineWidth',3,'Color',[0,1,0]);
    plot(r/365,m,'o','Markersize',14,'MarkerEdgeColor',[0,0,0.8],...
        'MarkerFaceColor',[0,0,0.8])
    text(0.04,56,'id:105','FontSize',20)
    err = 0.2*m;
    errorbar(r/365,m,err,'bo','LineWidth', 2)