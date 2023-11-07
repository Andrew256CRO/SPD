a=1;
b=7;
x=a+(b-a)*rand(10000,1);
media=mean(x)
disperia=var(x)
%%
medie=[];
dispersie=[];
for i=1:50
indexi=randperm(10000,30);
medie=[medie mean(x(indexi))];
dispersie=[dispersie var(x(indexi))];
end

medie=mean(medie)
dipersie=mean(dispersie)

%%
 if (abs((media-medie)/media))*100 <0.01
     fprintf('estimator nedeviat');
 else
     fprintf('estimator deviat');
 end
 