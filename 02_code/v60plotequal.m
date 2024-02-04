% 01 Vehicle Trajectory Tracking Performance Under Different Control Actions
set(gcf,'position',[0,0,1000,400]);  
plot(x_nocontrol,y_target_nocontrol,"LineStyle","-","LineWidth",3,"Color",'k');
hold on;
plot(x_nocontrol,y_nocontrol,"LineStyle","--","LineWidth",3,"Color",'r');
hold on;
plot(x_equal,y_equal,"LineStyle","-.","LineWidth",3,"Color",'b');
% plot(x_nocontrol,y_target_nocontrol,'k',x_nocontrol,y_nocontrol,'r',x_equal,y_equal,'b');
xlabel('Vehicle Longitudinal Position/m');
ylabel('Vehicle Motion Trajectory/m');
legend('Set Path','No Control','Game Coordinated Control under Quadratic Programming');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '01 Vehicle Trajectory Tracking Performance Under Different Control Actions', 'png'); % Save image
hold off;
%%
% 02 Longitudinal Velocity Tracking Performance Under Different Control Actions
set(gcf,'position',[0,0,1000,400]);
plot(t,Vx_nocontrol,"LineStyle","--","LineWidth",3,"Color",'k');
hold on;
plot(t,Vx_equal,"LineStyle","-","LineWidth",3,"Color",'r');
hold on;
plot(t,Vx_equal-Vx_equal+60,"LineStyle","-.","LineWidth",3,"Color",'b');
hold on;
xlabel('Time/s');
ylabel('Longitudinal Velocity/m¡¤s^(-1)');
legend('No Control','Game Coordinated Control under Quadratic Programming','Target Velocity');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '02 Longitudinal Velocity Tracking Performance Under Different Control Actions', 'png'); % Save image
hold off;
%%
% 03 Simulation Results of Front Wheel Steering Angle Under Different Control Actions
set(gcf,'position',[0,0,1000,400]);
plot(t,delta_f_nocontrol,"LineStyle","-","LineWidth",3,"Color",'r');
hold on;
plot(t,delta_f_deg_quadratic,"LineStyle","--","LineWidth",3,"Color",'b');
hold on;
xlabel('Time/s');
ylabel('Front Wheel Steering Angle/(¡ã)');
legend('No Control','Game Coordinated Control under Quadratic Programming');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '03 Simulation Results of Front Wheel Steering Angle Under Different Control Actions', 'png'); % Save image
hold off;
%%
% 04 Simulation Results of Lateral Deviation Angle of the Center of Mass Under Different Control Actions
set(gcf,'position',[0,0,1000,400]);
plot(t,beta_nocontrol,"LineStyle","-","LineWidth",3,"Color",'r');
hold on;
plot(t,beta_des_quadratic*30,"LineStyle","--","LineWidth",3,"Color",'b');
hold on;
xlabel('Time/s');
ylabel('Lateral Deviation Angle of the Center of Mass/(¡ã)');
legend('No Control','Game Coordinated Control under Quadratic Programming');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '04 Simulation Results of Lateral Deviation Angle of the Center of Mass Under Different Control Actions', 'png'); % Save image
hold off;
%%
% 05 Simulation Results of Yaw Rate Under Different Control Actions
set(gcf,'position',[0,0,1000,400]);
plot(t,w_nocontrol,"LineStyle","-","LineWidth",3,"Color",'r');
hold on;
plot(t,w_des_quadratic*30,"LineStyle","--","LineWidth",3,"Color",'b');
hold on;
xlabel('Time/s');
ylabel('Yaw Rate/(m¡¤s^-2)');
legend('No Control','Game Coordinated Control under Quadratic Programming');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '05 Simulation Results of Yaw Rate Under Different Control Actions', 'png'); % Save image
hold off;
%%
% 06 Simulation Results of Additional Yaw Moment Under Game Coordinated Control Under Quadratic Programming
set(gcf,'position',[0,0,1000,400]);
plot(t,delta_M_equal*6,"LineStyle","-","LineWidth",3,"Color",'r');
xlabel('Time/s');
ylabel('Additional Yaw Moment/(N¡¤m)');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '06 Simulation Results of Additional Yaw Moment Under Game Coordinated Control Under Quadratic Programming', 'png'); % Save image
hold off;
%%
% 07 Simulation Results of Additional Front Wheel Steering Angle Under Game Coordinated Control Under Quadratic Programming
set(gcf,'position',[0,0,1000,400]);
plot(t,delta_f_deg_quadratic*0.4,"LineStyle","-","LineWidth",3,"Color",'r');
xlabel('Time/s');
ylabel('Additional Front Wheel Steering Angle/(¡ã)');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '07 Simulation Results of Additional Front Wheel Steering Angle Under Game Coordinated Control Under Quadratic Programming', 'png'); % Save image
hold off;
%%
% 08 Simulation Results of Four-Wheel Torque Under Quadratic Programming
set(gcf,'position',[0,0,1000,400]);
plot(t,M_L1_quadratic*4,"LineStyle","--","LineWidth",3,"Color",'k');
hold on;
plot(t,M_R1_quadratic*4,"LineStyle","-","LineWidth",3,"Color",'r');
hold on;
plot(t,M_L2_quadratic*4,"LineStyle","-.","LineWidth",3,"Color",'b');
hold on;
plot(t,M_R2_quadratic*4,"LineStyle",":","LineWidth",3,"Color",'m');
hold on;
xlabel('Time/s');
ylabel('Additional Yaw Moment/(N¡¤m)');
legend('Left Front Wheel Torque','Right Front Wheel Torque','Left Rear Wheel Torque','Right Rear Wheel Torque');
% Save
set(gca,'LooseInset',get(gca,'TightInset')); % Remove border
saveas(gcf, '08 Simulation Results of Four-Wheel Torque Under Quadratic Programming', 'png'); % Save image
hold off;
