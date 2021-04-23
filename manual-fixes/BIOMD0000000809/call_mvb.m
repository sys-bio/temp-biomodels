function [T,Y] = call_osc()
tspan = [0 10];
y1_0 = 0.3;
y2_0 = 0.8;
y3_0 = 0.1;
y4_0 = 0.8;
[T,Y] = ode23s(@mvb,tspan,[y1_0 y2_0 y3_0 y4_0 0.000001]);
u1 =Y(:,1);
u2 =Y(:,2);
u3 =Y(:,3);
u4 =Y(:,4);
u5 =Y(:,5);

%plot(T,Y(:,4),'LineWidth',4)


figure 
plot(T,u1,'LineWidth',2,'color','green');hold on;
plot(T,u2,'LineWidth',2,'color','red');hold on;
%plot(T,u3,'--','LineWidth',5,'color','green');
%plot(T,u4,'LineWidth',4,'color','blue');
legend('Immune cells','Tumour cells ');
xlabel('Time','FontSize',10);
ylabel('Cell densities','FontSize',10);
H=gca;
set(H,'LineWidth',1.3);
%xlim([0 10   ]);
%ylim([0 1]);


%figure 
%plot(T,u4,'LineWidth',2.2,'color','magenta')
%xlabel('Time','FontSize',10);
%ylabel('Tumour radius','FontSize',10);
%H=gca;
%set(H,'LineWidth',1.5);
%xlim([0 10]);
%ylim([0 1.4]);







[T5,Y] = ode23s(@mvb,tspan,[0.3, 0.8, 0.1 0.2 0.1]);
u25 =Y(:,4);
[T6,Y] = ode23s(@mvb,tspan,[0.3, 0.8, 0.1 0.4 0.1]);
u26 =Y(:,4);
[T7,Y] = ode23s(@mvb,tspan,[0.3, 0.8, 0.1 0.6 0.1]);
u27 =Y(:,4);
[T8,Y] = ode23s(@mvb,tspan,[0.3, 0.8, 0.1 0.8 0.1]);
u28 =Y(:,4);

%% Varying y_0
[T1,Y] = ode23s(@mvb,tspan,[0.3, 0.2, 0.1 0.8 0.1]);
u21 =Y(:,4);
[T2,Y] = ode23s(@mvb,tspan,[0.3, 0.4, 0.1 0.8 0.1]);
u22 =Y(:,4);
[T3,Y] = ode23s(@mvb,tspan,[0.3, 0.6, 0.1 0.8 0.1 ]);
u23 =Y(:,4);
[T4,Y] = ode23s(@mvb,tspan,[0.3, 0.8, 0.1 0.8 0.1]);
u24 =Y(:,4);


figure
plot(T1,u21,'green','LineWidth',2);hold on;
plot(T2,u22,'blue','LineWidth',2);hold on;
plot(T3,u23,'cyan','LineWidth',2);hold on;
plot(T4,u24,'magenta','LineWidth',2);
legend('y(0)=0.2','y(0)=0.4','y(0)=0.6','y(0)= 0.8');
xlabel('Time','FontSize',10);
ylabel('Tumour radius (R(t))','FontSize',10);
xlim([0 5]);
ylim([0 1.4]);
H=gca;
set(H,'LineWidth',1.8);



figure
plot(T5,u25,'green','LineWidth',2);hold on;
plot(T6,u26,'blue','LineWidth',2);hold on;
plot(T7,u27,'cyan','LineWidth',2);hold on;
plot(T8,u28,'magenta','LineWidth',2);
legend('R(0)=0.2','R(0)=0.4','R(0)=0.6','R(0)= 0.8');
xlabel('Time','FontSize',10);
ylabel('Tumour radius (R(t))','FontSize',10);
xlim([0 5]);
ylim([0 1.4]);
H=gca;
set(H,'LineWidth',1.8);






figure()
plot3(u1,u2,u5,'cyan','LineWidth',2);hold on;
xlabel('Immune density')
ylabel('Tumour density')
zlabel('Chemokine')

figure() 
plot(u1,u2)

end
% [T5,Y] = ode23s(@osc,tspan,[0.3, 0.5, 0.1 0.5]);
%u25 =Y(:,4);
%[T6,Y] = ode23s(@osc,tspan,[0.3, 0.5, 0.1 0.6]);
%u26 =Y(:,4);
%[T7,Y] = ode23s(@osc,tspan,[0.3, 0.5, 0.1 0.7]);
%u27 =Y(:,4);
%[T8,Y] = ode23s(@osc,tspan,[0.3, 0.5, 0.1 0.8]);
%u28 =Y(:,4);




%plot(T5,u25,'green','LineWidth',2);hold on;
%plot(T6,u26,'blue','LineWidth',2);hold on;
%plot(T7,u27,'white','LineWidth',2);hold on;
%plot(T8,u28,'black','LineWidth',2);







