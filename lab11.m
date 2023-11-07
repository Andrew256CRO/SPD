%%
load cities

%%
data_healt=ratings(:,3);
data_education=ratings(:,6);

%%
figure;
hist(data_healt);
figure;
hist(data_education);

%%
a1=range(data_healt);
mod1=mode(data_healt);
med1=median(data_healt);
a1
mod1
med1

a2=range(data_education);
mod2=mode(data_education);
med2=median(data_education);
a2
mod2
med2

%%
disp('numar orase scor atipic pt healt');
sum(isoutlier(data_healt));

disp('numar orase scor atipic pt education');
sum(isoutlier(data_education));

index=find(isoutlier(data_education));
for i=1:length(index)
    disp(names(index(i),:));
    disp(data_education(index(i)));
end

disp(names(index,:));
disp(data_education(index,:));

%%
boxplot(data_education);

%%
x1=sum(data_healt>=mean(data_healt));
x2=sum(data_education>=mean(data_education));
x3=x1+x2
%%
y=0.05;
h=data_healt;
s=std(h);
n=sqrt(length(h));
x=mean(h);
z=norminv(y/2,1-y/2);
i=x+z*(s/n)

%%
ztest(h,2800,std(h))%ipoteza nula =2800, ipoteza alternativa !=2800,alpha>0.05(5%)
ztest(h,2800,std(h),"tail","right","alpha",0.1)%ipoteza nula =2800, ipoteza alternativa>2800 alpha=0.1