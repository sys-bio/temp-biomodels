function native;

global N L_S L_M L_L K_AS K_AL K_B

% This program plots the state concentrations against the ligand
% concentration.

%Data from Smith, Howe, Nature 2000

%AS=small, AM=medium, AL=large


N=4;
i_max=200;
j_max=2;

j=1;



%Parameters from GA optimization with Copasi
%with all data points
 
 
L_S=20.3868;
L_M=28.8975;
L_L=1066.73;
K_AS=0.001;
K_AM=0.000373026;
K_AL=0.00010946;



i=1;

y(1)=1*10^-8;

%state functions

    s(1)=(1/L_S)*(1+y(1)/K_AS)^N/((1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    m(1)=(1/L_M)*(1+y(1)/K_AM)^N/(+(1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);
    
    l(1)=(1/L_L)*(1+y(1)/K_AL)^N/((1/L_S)*(1+y(1)/K_AS)^N+(1/L_M)*(1+y(1)/K_AM)^N+(1/L_L)*(1+y(1)/K_AL)^N);

    
    S(1)=s(1)/(s(1)+m(1)+l(1));
    
    M(1)=m(1)/(s(1)+m(1)+l(1));
    
    L(1)=l(1)/(s(1)+m(1)+l(1));
      



deltay=1.1;	



while i < i_max;
    
    i=i+1;
    
    y(i)=y(i-1)*deltay;
   
    
    s(i)=(1/L_S)*(1+y(i)/K_AS)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    m(i)=(1/L_M)*(1+y(i)/K_AM)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    l(i)=(1/L_L(j))*(1+y(i)/K_AL)^N/((1/L_S)*(1+y(i)/K_AS)^N+(1/L_M)*(1+y(i)/K_AM)^N+(1/L_L)*(1+y(i)/K_AL)^N);
    
    S(i)=s(i)/(s(i)+m(i)+l(i));
    
    M(i)=m(i)/(s(i)+m(i)+l(i));
    
    L(i)=l(i)/(s(i)+m(i)+l(i));
    

end;

%AS_bar_min=(1/L_S)/(1+(1/L_S)+(1/L_M)+(1/L_L));						
%AM_bar_min=(1/L_M)/(1+(1/L_S)+(1/L_M)+(1/L_L));						
%AL_bar_min=(1/L_L)/(1+(1/L_S)+(1/L_M)+(1/L_L));	


%AS_bar_max=(1/(L_S*c_S^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));						
%AM_bar_max=(1/(L_M*c_M^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));						
%AL_bar_max=(1/(L_L*c_L^N))/(1+(1/(L_S*c_S^N))+(1/(L_M*c_M^N))+(1/(L_L*c_L^N)));		


figure(1);
semilogy(log10(y),s,'g');
hold on;
plot(log10(20*10^-6),(0.67),'g*');
hold on;
plot(log10(200*10^-6),(0.21),'g*');
hold on;
plot(log10(2000*10^-6),(0.07),'g*');
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),m,'b');
hold on;
plot(log10(20*10^-6),(0.31),'b*');
hold on;
plot(log10(200*10^-6),(0.65),'b*');
hold on;
plot(log10(2000*10^-6),(0.25),'b*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
hold on;

figure(1);
semilogy(log10(y),l,'k');
hold on;
plot(log10(20*10^-6),(0.02),'k*');
hold on;
plot(log10(200*10^-6),(0.14),'k*');
hold on;
plot(log10(2000*10^-6),(0.68),'k*');
hold on;
ylabel('frequency')
xlabel('concentration of the ligand (M)')
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
















