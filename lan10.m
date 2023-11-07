%problema 3
populatie=randi([18 22],1,100);
abatere=sqrt(var(populatie));
esantion=populatie(randperm(100,35));
H=ztest(esantion,20,abatere);
H

%problema 4
E=[51 38 49 28 34 45 21 49 28 35 42 24 36 38 32 28 37 48 18 44];
[h1,p1,ci1]=ttest(E,40)