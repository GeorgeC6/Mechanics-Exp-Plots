%% 应力应变曲线（反比例函数）
%   made by GeorgeC6 @GitHub

X = []; % 应变
Y = []; % 应力

fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[-Inf -Inf max(Y)],...
               'Upper',[0 0 Inf],...
               'StartPoint',[1 -10 900]);
f = fittype('a/(x-b) + c','options',fo); % a,b,c的值可双击 `myfit` 变量查看
myfit = fit(X',Y',f);

hold on
h = plot(myfit,'-',X,Y,'k.');
set(h, 'LineWidth',1.5, 'MarkerSize', 8)
plot([0 3000],[896.1 896.1],'--')
ylim([0 950])
ylabel('$F/\mathrm{N}$','Interpreter','latex','FontSize',15)
xlabel('$\varepsilon/10^{-6}$','Interpreter','latex','FontSize',15)
hold off