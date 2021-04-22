    function dydt = mvb(t,y)
 psi_1 = 1.3398;
 psi_2 = 0.25; 
 delta = 3.0218;
 nu_1 = 0.00218; 
 sigma_1 = 0.3;  %3.8835; % 0-1 still gives stable results
 sigma_2 = 0.5; 
 nu_2 = 0.7279;
 rho = 0.1; 
 mu_2 = 0.24;      
 k = 2.02;
nu_3 = 300;
mu_1 = 1; 


dydt = [psi_1*y(1)*(1-psi_2*y(1))+delta*y(1)*y(2)/(k+y(1))-nu_1*y(1)*y(2);
    sigma_1 *y(2)*(1-sigma_2*y(2))-nu_2*y(1)*y(2);
    rho*y(1)*y(2) - mu_2*y(3);
  ( y(4)/(3*(1-(y(2)+y(3))))) *(sigma_1 *y(2)*(1-sigma_2*y(2))-mu_2*y(3))
    nu_3*y(1)*y(2)-mu_1*y(5)];

end

    
    
    