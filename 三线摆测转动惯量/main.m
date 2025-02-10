%% 三线摆测转动惯量
%   made by GeorgeC6 @GitHub

T = []; % 单次摆动周期数据
d = []; % 对应的砝码间距

T_true % = _______; % 放上模型后的单次摆动周期

R2crit = 0.99;

pCoeff = polyfit(T.^2,d.^2,1); % d^2 - T^2 线性拟合

hold on
plot(T.^2,d.^2,'ko')
plot(T.^2,polyval(pCoeff,T.^2),'LineWidth',1.5)
fprintf("The equivalent d is %f\n", sqrt(polyval(pCoeff,T_true^2))) % 等效的d