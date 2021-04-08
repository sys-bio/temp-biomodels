function f = Nuevo_Modelo_TMZ_P105(t,x)

global rho a1 a2
% Parámetros fijos
l= 24*0.3466; % Rate of decay of TMZ (lambda)
kmay = (4/3)*pi*(5^3)/2; % Carrying capacity (K)

% Parámetros que dependen de cada paciente
rho = 0.002931927432654; % Proliferation rate (rho) 
a1 = 0.102797130772265; % TMZ cell kill strength (alpha1)
a2= 0.139687759315195; % alpha2
kmin = 1; % Average of cycles completed before the mitotic catastrophe (k) 


f=[rho*x(1)*(1-((x(1)+x(2))/kmay))-a1*x(1)*x(3)-a2*x(1)*x(3);
    (-rho/kmin)*x(2)*(1-((x(1)+x(2))/kmay))+a1*x(1)*x(3);
    -l*x(3)];
end