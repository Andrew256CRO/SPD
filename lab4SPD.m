A=[1 2 3 4; 0.48 0.27 0.13 0.12];
%media
M=sum(A(1,:).*A(2,:));
M

%dispersia
D=((A(1,:)-M).^2).*A(2,:);
D
%%
V=[1 2 3 4 5 6];
P=1/6;%probabilitate
N=3;%numar de repetari
Y=binopdf(V,N,P);
plot(V,Y,'r');
grid on;
%stem(V,Y);
%%
lambda=50;
X=[1:1:100];
Y=poisspdf(X,lambda);
plot(X,Y,'r');
grid on;
%%
V=[1:19];
P=0.2;
N=19;
Y=binopdf(V,N,P);
plot(V,Y,'r');
grid on;

CelMult7=sum(Y(1:8));
CelPutin7=sum(Y(8:20));
Exact7=Y(8);


