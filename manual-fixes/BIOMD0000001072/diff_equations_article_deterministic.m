function result=diff_equations_article(t, variables)
%without noise

%there are differencies between small and big letters in MATLAB!

set_parameters_article();

global alpha_null I_null I_one p beta G r h q rho kappa f tau_c gamma delta;
global a k b v_vd v_md v_vb eta A_null D_null chi mu v_vh v_vm v_mv tau_v tau_m;
global I_on;

V_v=variables(1);
V_m=variables(2);
x=variables(3);
y=variables(4);
H=variables(5);
n=variables(6);

I_tilded=omega(firing_rate(V_m))*I_on*I(mod(t,24*3600));
alpha=alpha_null*(I_tilded/I_null)^p*(I_tilded/(I_tilded+I_one));
B_circumflex=G*alpha*(1-n);
B=(1-r*x).*(1-r*y).*B_circumflex;
F_d=a*k*(x+delta)+b;
D=v_vd*F_d+v_vh*eta*H+v_vb*eta*B+D_null;
H_deriv=(mu*firing_rate(V_m)-H)/chi;
A=v_md*F_d+A_null;
V_v_deriv=(v_vm*firing_rate(V_m)+D-V_v)/tau_v;
V_m_deriv=(v_mv*firing_rate(V_v)+A-V_m)/tau_m;
N_s=rho*(1/3-Theta(firing_rate(V_m)))*(1-tanh(q*x));
x_deriv=(y+gamma*(x/3+4/3*x.^3-256/105*x.^7)+B+N_s)/kappa;
y_deriv=(B.*y/3-x.*((24/(f*tau_c))^2+h*B))/kappa;
n_deriv=60*(alpha*(1-n)-beta*n);

result(1)=V_v_deriv;
result(2)=V_m_deriv;
result(3)=x_deriv;
result(4)=y_deriv;
result(5)=H_deriv;
result(6)=n_deriv;

result=result';
end



function set_parameters_article()
global alpha_null I_null I_one p beta G r h q rho kappa f tau_c gamma delta a k b v_vd v_md ;
global v_vb eta A_null D_null chi mu v_vh Q_max theta sigma_comma v_vm v_mv tau_v tau_m;
global I_on;

%spider monkey
%DD conditions

alpha_null=6/3600; %unit: 1/s
I_null=9500;
I_one=10;
p=0.5;
beta=0.4/3600; %unit: 1/s

G=37;
r=0.4;
h=0.55;

q=10;
rho=0.032;

kappa=12/pi*3600; %unit: s
f=0.99729;
tau_c=24.2; %unit: h
gamma=0.13;

delta=-0.7;
a=1;
k=17;
b=4.8;

v_vd=-0.17;
v_md=-0.08;

v_vb=0;
eta=1;
A_null=1.3;
D_null=-4.8;

chi=22*3600; %unit: s
mu=4.4;
v_vh=1;

Q_max=100;
theta=10;
sigma_comma=3;

v_vm=-2.1;
v_mv=-1.8;
tau_v=10;
tau_m=10;

I_on=0; %500
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