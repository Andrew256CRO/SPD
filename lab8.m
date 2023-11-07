%problema1,a)
lambda=0.93;
probabilitate=poisspdf(3,lambda)
%%
%problema 1, b)
lambda=0.93;
numar_maxim=10;%numar maxim de aparitii cutremure pe an
numar_minim=0;%numar minim de aparitii cutremure pe an
numar_cutremure=poissrnd(lambda);%generare njumar de cutremure aleatoriu folosind distributia poisson
numar_cutremure=max(min(numar_cutremure,numar_maxim),numar_minim);%verific ca nr de cutremure este in intervalul de maxim si minim
numar_cutremure %raspuns final b

%%
%problema 2
media=0.2;
t=-10:0.1:10;%pasul
f=exppdf(t,media);%functia de densitate de probabilitate
ff=expcdf(t,media);%functia de repartitie
subplot(2,1,1);
plot(t,f,'b');
grid on;
subplot(2,1,2);
plot(t,ff,'r');
grid on;
%calcul dispersie
lambda=1/media;
dispersia=1/(lambda*2)

%%
%problema 3
a=1;
b=10;
populatie=(a+(b-a)*rand(1000,1));
boxplot(populatie);
%Deoarece populatia este un vector, exista doar o cutie. In aceasta cutie,
%linia din mijloc rosie reprezinta mediana, iar marginile sunt Q1 si Q3.
%Mustatile/acele linii de la finalul liniilor intrerupte sunt cele mai extreme valori pe care algoritmul 
%le considera a nu depasi intervalul, iar valorile care depasesc intervalul
%sunt desenate(reprezentate) individual(acele linii intrerupte reprezentate
%grafic de dupa 'mustati' / linii continue orizontale.

