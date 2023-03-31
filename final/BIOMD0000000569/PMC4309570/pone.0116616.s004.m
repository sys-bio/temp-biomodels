function willardiines;

global L_S L_M L_L K_AS K_AL k_AS k_AM k_AL K_aS K_aM K_aL


% This program plots the state concentrations against the ligand
% concentration.

%AS=small, AM=medium, AL=large


N=4;
i_max=200;
j_max=2;

j=1;



%Parameters from GA optimization with Copasi
%with all data points
 

%K_AS=IW, k_AS=BrW, K_aS=glutamate
 
L_S=2.86708;
L_M=207.5;
L_L=1e+006;
K_AS=0.00137598;
K_AM=8.58039e-5;
K_AL=1.19816e-5;
k_AS=0.00431675;
k_AM=4.96527e-6;
k_AL=5.02469e-6;
K_aS=1;
K_aM=1;
K_aL=1;



i=1;

y(1)=1*10^-8;

%state functions


    I_s(1)=(1/L_S)*(1+y(1)/K_AS)^N/((1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    Br_s(1)=(1/L_S)*(1+y(1)/k_AS)^N/((1/L_S)*(1+y(1)/k_AS)^N+(1/L_M)*(1+y(1)/k_AM)^N+(1/L_L)*(1+y(1)/k_AL)^N);
    
    Glu_s(1)=(1/L_S)*(1+y(1)/K_aS)^N/((1/L_S)*(1+y(1)/K_aS)^N+(1/L_M)*(1+y(1)/K_aM)^N+(1/L_L)*(1+y(1)/K_aL)^N);
    
    
    I_m(1)=(1/L_M)*(1+y(1)/K_AM)^N/((1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    Br_m(1)=(1/L_M)*(1+y(1)/k_AM)^N/((1/L_S)*(1+y(1)/k_AS)^N+(1/L_M)*(1+y(1)/k_AM)^N+(1/L_L)*(1+y(1)/k_AL)^N);
    
    Glu_m(1)=(1/L_M)*(1+y(1)/K_aM)^N/((1/L_S)*(1+y(1)/K_aS)^N+(1/L_M)*(1+y(1)/K_aM)^N+(1/L_L)*(1+y(1)/K_aL)^N);
    
    
    I_l(1)=(1/L_L)*(1+y(1)/K_AL)^N/((1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    Br_l(1)=(1/L_L)*(1+y(1)/k_AL)^N/((1/L_S)*(1+y(1)/k_AS)^N+(1/L_M)*(1+y(1)/k_AM)^N+(1/L_L)*(1+y(1)/k_AL)^N);
    
    Glu_l(1)=(1/L_L)*(1+y(1)/K_aL)^N/((1/L_S)*(1+y(1)/K_aS)^N+(1/L_M)*(1+y(1)/K_aM)^N+(1/L_L)*(1+y(1)/K_aL)^N);
    
    
    I_S(1)=I_s(1)/(I_s(1)+I_m(1)+I_l(1));
    
    Br_S(1)=Br_s(1)/(Br_s(1)+Br_m(1)+Br_l(1));
    
    Glu_S(1)=Glu_s(1)/(Glu_s(1)+Glu_m(1)+Glu_l(1));
    
    
    I_M(1)=I_m(1)/(I_s(1)+I_m(1)+I_l(1));
    
    Br_M(1)=Br_m(1)/(Br_s(1)+Br_m(1)+Br_l(1));
    
    Glu_M(1)=Glu_m(1)/(Glu_s(1)+Glu_m(1)+Glu_l(1));
    
    
    I_L(1)=I_l(1)/(I_s(1)+I_m(1)+I_l(1));
      
    Br_L(1)=Br_l(1)/(Br_s(1)+Br_m(1)+Br_l(1));
    
    Glu_L(1)=Glu_l(1)/(Glu_s(1)+Glu_m(1)+Glu_l(1));


deltay=1.1;	



while i < i_max;
    
    i=i+1;
    
    y(i)=y(i-1)*deltay;
    
    I_s(i)=(1/L_S)*(1+y(i)/K_AS)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    Br_s(i)=(1/L_S)*(1+y(i)/k_AS)^N/((1/L_S)*(1+y(i)/k_AS)^N+(1/L_M)*(1+y(i)/k_AM)^N+(1/L_L)*(1+y(i)/k_AL)^N);
    
    Glu_s(i)=(1/L_S)*(1+y(i)/K_aS)^N/((1/L_S)*(1+y(i)/K_aS)^N+(1/L_M)*(1+y(i)/K_aM)^N+(1/L_L)*(1+y(i)/K_aL)^N);
    
    
    I_m(i)=(1/L_M)*(1+y(i)/K_AM)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    Br_m(i)=(1/L_M)*(1+y(i)/k_AM)^N/((1/L_S)*(1+y(i)/k_AS)^N+(1/L_M)*(1+y(i)/k_AM)^N+(1/L_L)*(1+y(i)/k_AL)^N);
    
    Glu_m(i)=(1/L_M)*(1+y(i)/K_aM)^N/((1/L_S)*(1+y(i)/K_aS)^N+(1/L_M)*(1+y(i)/K_aM)^N+(1/L_L)*(1+y(i)/K_aL)^N);
    
    
    I_l(i)=(1/L_L(j))*(1+y(i)/K_AL)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    Br_l(i)=(1/L_L(j))*(1+y(i)/k_AL)^N/((1/L_S)*(1+y(i)/k_AS)^N+(1/L_M)*(1+y(i)/k_AM)^N+(1/L_L)*(1+y(i)/k_AL)^N);
    
    Glu_l(i)=(1/L_L(j))*(1+y(i)/K_aL)^N/((1/L_S)*(1+y(i)/K_aS)^N+(1/L_M)*(1+y(i)/K_aM)^N+(1/L_L)*(1+y(i)/K_aL)^N);
    

    
    I_S(i)=I_s(i)/(I_s(i)+I_m(i)+I_l(i));
    
    Br_S(i)=Br_s(i)/(Br_s(i)+Br_m(i)+Br_l(i));
    
    Glu_S(i)=Glu_s(i)/(Glu_s(i)+Glu_m(i)+Glu_l(i));
    
    
    
    I_M(i)=I_m(i)/(I_s(i)+I_m(i)+I_l(i));
    
    Br_M(i)=Br_m(i)/(Br_s(i)+Br_m(i)+Br_l(i));
    
    Glu_M(i)=Glu_m(i)/(Glu_s(i)+Glu_m(i)+Glu_l(i));
    
    
    I_L(i)=I_l(i)/(I_s(i)+I_m(i)+I_l(i));
    
    Br_L(i)=Br_l(i)/(Br_s(i)+Br_m(i)+Br_l(i));
    
    Glu_L(i)=Glu_l(i)/(Glu_s(i)+Glu_m(i)+Glu_l(i));

    
end;



figure(1);
semilogy(log10(y),I_s,'r');
hold on;
plot(log10(150*10^-6),(0.63),'r*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Br_s,'r--');
hold on;
plot(log10(80*10^-6),(0.55),'r*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Glu_s,'r.');
hold on;
plot(log10(10^-3),(0.27),'r*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),I_m,'g');
hold on;
plot(log10(150*10^-6),(0.33),'g*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Br_m,'g--');
hold on;
plot(log10(80*10^-6),(0.33),'g*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Glu_m,'g.');
hold on;
plot(log10(10^-3),(0.53),'g*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;


figure(1);
semilogy(log10(y),I_l,'k');
hold on;
plot(log10(150*10^-6),(0.04),'k*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Br_l,'k--');
hold on;
plot(log10(80*10^-6),(0.12),'k*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),Glu_l,'k.');
hold on;
plot(log10(10^-3),(0.20),'k*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;





