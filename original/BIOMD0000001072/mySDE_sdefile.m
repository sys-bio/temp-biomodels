function [out1,out2,out3] = mySDE_sdefile(t,x,flag,bigtheta,SDETYPE,NUMDEPVARS,NUMSIM)

% SDE model definition: drift, diffusion, derivatives and initial conditions.
%
% [out1,out2,out3] = M4_sdefile(t,x,flag,bigtheta,SDETYPE,NUMDEPVARS,NUMSIM)
%
% IN:     t; working value of independent variable (time)
%         x; working value of dependent variable
%         flag; a switch, with values 'init' or otherwise
%         bigtheta; complete structural parameter vector
%         SDETYPE; the SDE definition: can be 'Ito' or 'Strat' (Stratonovich)
%         NUMDEPVARS; the number of dependent variables, i.e. the SDE dimension
%         NUMSIM; the number of desired simulations for the SDE numerical integration
% OUT:    out1; in case of flag='init' is just the initial time, otherwise it is the (vector of) SDE drift(s)
%         out2; in case of flag='init' is the initial value of the dependent variables. Otherwise it is the SDE diffusion(s)
%         out3; in case of flag='init' it is nothing. Otherwise it is the SDE's partial derivative(s) of the diffusion term

% Copyright (C) 2007, Umberto Picchini
% umberto.picchini@biomatematica.it
% http://www.biomatematica.it/Pages/Picchini.html
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.


%Initial conditions
Xzero1=bigtheta(1) ;
Xzero2=bigtheta(2);
Xzero3= bigtheta(3);
Xzero4= bigtheta(4);
Xzero5= bigtheta(5);
Xzero6= bigtheta(6);

%Parameters
alpha_null=bigtheta(6+1); %unit: 1/s
I_null=bigtheta(6+2);
I_one=bigtheta(6+3);
p=bigtheta(6+4);
beta=bigtheta(6+5); %unit: 1/s
G=bigtheta(6+6);
r=bigtheta(6+7);
h=bigtheta(6+8);
q=bigtheta(6+9);
rho=bigtheta(6+10);
kappa=bigtheta(6+11); %unit: s
f=bigtheta(6+12);
tau_c=bigtheta(6+13); %unit: h
gamma=bigtheta(6+14);
delta=bigtheta(6+15);
a=bigtheta(6+16);
k=bigtheta(6+17);
b=bigtheta(6+18);
v_vd=bigtheta(6+19);
v_md=bigtheta(6+20);
v_vb=bigtheta(6+21);
eta=bigtheta(6+22);
A_null=bigtheta(6+23);
D_null=bigtheta(6+24);
chi=bigtheta(6+25); %unit: s
mu=bigtheta(6+26);
v_vh=bigtheta(6+27);
Q_max=bigtheta(6+28);
theta=bigtheta(6+29);
sigma_comma=bigtheta(6+30);
v_vm=bigtheta(6+31);
v_mv=bigtheta(6+32);
tau_v=bigtheta(6+33);
tau_m=bigtheta(6+34);
I_on=bigtheta(6+35);
n_v=bigtheta(6+36); %unit: mV/sqrt(s)
n_m=bigtheta(6+37); %unit: mV/sqrt(s)



if nargin < 3 || isempty(flag)
    
    xsplitted  =  SDE_split_sdeinput(x,NUMDEPVARS);
    
    %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    %::::::::::::::::::::::  DEFINE HERE THE SDE  :::::::::::::::::::::::::::::::::
    %::::: (define the initial conditions at the bottom of the page) ::::::::::::::
    %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    V_v=xsplitted{1};
    V_m=xsplitted{2};
    x=xsplitted{3};
    y=xsplitted{4};
    H=xsplitted{5};
    n=xsplitted{6};
    
    switch upper(SDETYPE)
        case 'ITO'
            I_tilded=omega(firing_rate(V_m))*I_on*I(mod(t,24*3600));
            alpha=alpha_null*(I_tilded/I_null)^p*(I_tilded/(I_tilded+I_one));
            B_circumflex=G*alpha*(1-n);
            B=(1-r*x).*(1-r*y).*B_circumflex;
            F_d=a*k*(x+delta)+b;
            D=v_vd*F_d+v_vh*eta*H+v_vb*eta*B+D_null;
            driftX5=(mu*firing_rate(V_m)-H)/chi;
            A=v_md*F_d+A_null;
            driftX1=(v_vm*firing_rate(V_m)+D-V_v)/tau_v;
            driftX2=(v_mv*firing_rate(V_v)+A-V_m)/tau_m;
            N_s=rho*(1/3-Theta(firing_rate(V_m)))*(1-tanh(q*x));
            driftX3=(y+gamma*(x/3+4/3*x.^3-256/105*x.^7)+B+N_s)/kappa;
            driftX4=(B.*y/3-x.*((24/(f*tau_c))^2+h*B))/kappa;
            driftX6=60*(alpha*(1-n)-beta*n);
            
            diffusionX1 = n_v/tau_v;
            diffusionX2 = n_m/tau_m;
            diffusionX3 = 0;
            diffusionX4 = 0;
            diffusionX5 = 0;
            diffusionX6 = 0;
            
            % the Ito SDE diffusion
            derivativeX = [];         % the diffusion derivative w.r.t. x
    end
    
    %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    out1 = zeros(1,NUMDEPVARS*NUMSIM);
    out1(1:NUMDEPVARS:end) = driftX1;
    out1(2:NUMDEPVARS:end) = driftX2;
    out1(3:NUMDEPVARS:end) = driftX3;
    out1(4:NUMDEPVARS:end) = driftX4;
    out1(5:NUMDEPVARS:end) = driftX5;
    out1(6:NUMDEPVARS:end) = driftX6;
    out2 = zeros(1,NUMDEPVARS*NUMSIM);
    out2(1:NUMDEPVARS:end) = diffusionX1;
    out2(2:NUMDEPVARS:end) = diffusionX2;
    out2(3:NUMDEPVARS:end) = diffusionX3;
    out2(4:NUMDEPVARS:end) = diffusionX4;
    out2(5:NUMDEPVARS:end) = diffusionX5;
    out2(6:NUMDEPVARS:end) = diffusionX6;
    out3 = zeros(1,NUMDEPVARS*NUMSIM);
    out3(1:end) = 0;
    
    
else
    
    switch(flag)
        case 'init'
            out1 = t;
            %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            %::::::::::::::::::::::  DEFINE HERE THE SDE INITAL CONDITIONS  :::::::::::::::::::::::::::::::::
            %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            
            out2 = [Xzero1 Xzero2 Xzero3 Xzero4 Xzero5 Xzero6];   % write here the SDE initial condition(s)
            
            %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            %:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: :::::::::::::::::::::::::::::::::
            %::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            
            out3 = [];
            
            
        otherwise
            error(['Unknown flag ''' flag '''.']);
    end
end
end

function Q = firing_rate(V_j)
global Q_max theta sigma_comma;
Q=Q_max./(1+exp((theta-V_j)/sigma_comma));
end

function om=omega(firing_rate)
if (firing_rate<=1)
    om=0.03;
else
    om=1;
end
end

function Th=Theta(firing_rate)
if (firing_rate<=1)
    Th=1;
else
    Th=0;
end
end

function i=I(t)
if (t<12*3600)
    i=1; %environmental light
else
    i=0;
end
end