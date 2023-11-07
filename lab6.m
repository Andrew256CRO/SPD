x1=-2+4*rand(1,1000);
x2=0 + sqrt(0.25)*randn(1,1000);
x1
x2
save('date');
load('date');
%%
fa=myfct(x2,10,-2,2);
y=hist(x2);
stem(y);
%%
x3=[139 141 162 180 186 150 153 192 196 182 2 168 256 399];

y3=mean(x3)
median(y3)

boxplot(x1)
min(x1)
mode(x1)
range(x1)