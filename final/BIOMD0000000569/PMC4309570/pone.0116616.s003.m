function allost1Rosenmund;

global N L_S L_M L_L K_AS K_AL K_B

% This program plots the state concentrations against the ligand
% concentration.

%AS=small, AM=medium, AL=large

%Experimental data (matrix y)

%y(1,1)=0/(1.1+0.02+0)
%y(1,2)=0.02/(1.1+0.02+0)
%y(1,3)=1.1/(1.1+0.02+0)

%y(2,1)=0.03/(1+0.1+0.03)
%y(2,2)=0.1/(1+0.1+0.03)
%y(2,3)=1/(1+0.1+0.03)

%y(3,1)=0.22/(0.55+0.2+0.22)
%y(3,2)=0.2/(0.55+0.2+0.22)
%y(3,3)=0.55/(0.55+0.2+0.22)

%y(4,1)=0.7/(0+0.07+0.7)
%y(4,2)=0.07/(0+0.07+0.7)
%y(4,3)=0/(0+0.07+0.7)

N=4;
i_max=200;
j_max=2;

j=1;



%Parameters from GA optimization with Copasi
%with all data points
 
 
L_S=2.86708;
L_M=207.5;
L_L=1e+006;
K_AS=5.40708e-005;
K_AM=3.33022e-006;
K_AL=2.29795e-007;
K_B=0.000899078;

%Stu's data
% L_S=2.33E-02;
% L_M=0.000945;
% L_L=0.00002268;
% K_AS=5.73E-08;
% K_AM=2.67E-08;
% K_AL=2.67E-08;
% K_B=5.33E-05;

    
c_S=K_AS/K_B;
c_M=K_AM/K_B;
c_L=K_AL/K_B;


i=1;

y(1)=1*10^-8;

%state functions

    b(1)=(1+y(1)/K_B)^N/((1+y(1)/K_B)^N+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);

    s(1)=(1/L_S)*(1+y(1)/K_AS)^N/((1+y(1)/K_B)^N+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    m(1)=(1/L_M)*(1+y(1)/K_AM)^N/((1+y(1)/K_B)^N+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    l(1)=(1/L_L)*(1+y(1)/K_AL)^N/((1+y(1)/K_B)^N+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);

    B(1)=b(1)/(b(1)+s(1)+m(1)+l(1));
    
    S(1)=s(1)/(b(1)+s(1)+m(1)+l(1));
    
    M(1)=m(1)/(b(1)+s(1)+m(1)+l(1));
    
    L(1)=l(1)/(b(1)+s(1)+m(1)+l(1));
      
%binding functions

alpha(1)=(y(1)/K_B*(1+y(1)/K_B)^3+1/L_S*y(1)/K_AS*(1+y(1)/K_AS)^3+1/L_M*y(1)/K_AM*(1+y(1)/K_AM)^3+1/L_L*y(1)/K_AL*(1+y(1)/K_AL)^3)/((1+y(1)/K_B)^N+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);

deltay=1.1;	



while i < i_max;
    
    i=i+1;
    
    y(i)=y(i-1)*deltay;
    
    b(i)=(1+y(i)/K_B)^N/((1+y(i)/K_B)^N+(1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    s(i)=(1/L_S)*(1+y(i)/K_AS)^N/((1+y(i)/K_B)^N+(1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    m(i)=(1/L_M)*(1+y(i)/K_AM)^N/((1+y(i)/K_B)^N+(1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    l(i)=(1/L_L(j))*(1+y(i)/K_AL)^N/((1+y(i)/K_B)^N+(1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
       
    B(i)=b(i)/(b(i)+s(i)+m(i)+l(i));
    
    S(i)=s(i)/(b(i)+s(i)+m(i)+l(i));
    
    M(i)=m(i)/(b(i)+s(i)+m(i)+l(i));
    
    L(i)=l(i)/(b(i)+s(i)+m(i)+l(i));
    


    alpha(i)=(y(i)/K_B*(1+y(i)/K_B)^3+1/L_S*y(i)/K_AS*(1+y(i)/K_AS)^3+1/L_M*y(i)/K_AM*(1+y(i)/K_AM)^3+1/L_L*y(i)/K_AL*(1+y(i)/K_AL)^3)/((1+y(i)/K_B)^N+(1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
end;

AS_bar_min=(1/L_S)/(1+(1/L_S)+(1/L_M)+(1/L_L));						
AM_bar_min=(1/L_M)/(1+(1/L_S)+(1/L_M)+(1/L_L));						
AL_bar_min=(1/L_L)/(1+(1/L_S)+(1/L_M)+(1/L_L));	


AS_bar_max=(1/(L_S*c_S^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));						
AM_bar_max=(1/(L_M*c_M^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));						
AL_bar_max=(1/(L_L*c_L^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));		

figure(1);
semilogy(log10(y),b,'r');
hold on;
plot(log10(10^-6),(0.6805),'r*');
hold on;
plot(log10(2*10^-6),(0.6269),'r*');
hold on;
plot(log10(6*10^-6),(0.4809),'r*');
hold on;
plot(log10(300*10^-6),(0.2749),'r*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
title('State and binding functions of the small, medium and large conductance states')
hold on;

figure(1);
semilogy(log10(y),s,'g');
hold on;
plot(log10(10^-6),(0.2468),'g*');
hold on;
plot(log10(2*10^-6),(0.2855),'g*');
hold on;
plot(log10(6*10^-6),(0.3047),'g*');
hold on;
plot(log10(300*10^-6),(0.2604),'g*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),m,'b');
hold on;
plot(log10(10^-6),(0.0098),'b*');
hold on;
plot(log10(2*10^-6),(0.0337),'b*');
hold on;
plot(log10(6*10^-6),(0.1269),'b*');
hold on;
plot(log10(300*10^-6),(0.2460),'b*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),l,'k');
hold on;
plot(log10(10^-6),(4.4502e-004),'k*');
hold on;
plot(log10(2*10^-6),(0.0081),'k*');
hold on;
plot(log10(6*10^-6),(0.0575),'k*');
hold on;
plot(log10(300*10^-6),(0.1508),'k*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1)
semilogy(log10(y),alpha,'m');
hold on;



% figure(2);
% plot(log10(y),a,'r');
% hold on;
% plot(log10(y(1)),AS_bar_min,'r*');
% plot(log10(y(i)),AS_bar_max,'r*');
% ylabel('frequency')
% xlabel('concentration of the ligand (M)')
% title('small, medium and large conductance states')
% hold on;
% 
% figure(2);
% semilogy(log10(y),b,'g');
% hold on;
% plot(log10(y(1)),AM_bar_min,'g*');
% plot(log10(y(i)),AM_bar_max,'g*');
% ylabel('frequency')
% xlabel('concentration of the ligand (M)')
% hold on;
% 
% figure(2);
% semilogy(log10(y),c,'b');
% hold on;
% plot(log10(y(1)),AL_bar_min,'b*');
% plot(log10(y(i)),AL_bar_max,'b*');
% ylabel('frequency')
% xlabel('concentration of the ligand (M)')
% hold on;


%The sum of the squared residuals
%Res=minimization 
















