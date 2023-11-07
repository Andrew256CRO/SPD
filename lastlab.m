X1=[1 2 3 4 5 6 7]';
Y1=[5 4 7 6 10 8 9]';
corr(X1,Y1)
corr(X1,Y1,'type','Spearman')
scatter(X1,Y1);
%%
X2=X1;
Y2=[ 10 8 7 7 6 4 1]';
corr(X2,Y2)
corr(X2,Y2,'type','Spearman')
scatter(X2,Y2);
hold on;
plot(X2,Y2);%DE AIA NU FOLOSIM PLOT

%%
%ex2
%a)
X4=0+(1-0)*rand(100,1);
Y4=exp(X4);
corr(X4,Y4)
corr(X4,Y4,'type','Spearman')
scatter(X4,Y4);

%%
%ex2
%b)
X5=0+sqrt(1)*randn(100,1);
Y5=exp(X5);
corr(X5,Y5)
corr(X5,Y5,'type','Spearman')
scatter(X5,Y5);

%%
%ex3
V1 = [ones(length(X4),1) X4];
b = V1\Y4
V2 = V1*b;
scatter(X4,Y4)
hold on
plot(X4,V2,'--')