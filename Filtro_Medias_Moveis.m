t = linspace(-pi,pi,1000);  % vetor tempo, tamanho 1000
rng("default");
x = sin(t) + 0.3*rand(size(t)) - 0.15;  % gerando func seno com noise atraves do rand()
winSize = 11;  % eh o tamanho da janela, ou seja numero de dados usados nas medias, aka o den da media 
winSize2 = 10;

wr = rectwin(winSize)/sum(rectwin(winSize));  % tipo da janela usada(triang, rectwin)
wt = triang(winSize)/sum(triang(winSize));  % triang() com argumento impar é triangular
wtr = triang(winSize2)/sum(triang(winSize2));  % triang() com argumento par é trapezoidal

a = 1;
% filter: funçao do matlab que faz a filtragem do sinal
yr = filter(wr,a,x);  % sinal filtrado, janela retangular
yt = filter(wt,a,x);  % sinal filtrado, janela triangular
ytr = filter(wtr,a,x);  % sinal filtrado, janela trapezoidal

plot(t,x);  % plotando grafico do sinal com noise
hold on;

plot(t,yr, t,yt, t,ytr);  % plotando graficos do sinal filtrado
plot(t,sin(t));  % sinal sem noise, para comparação
grid on;
legend('Sinal Ruidoso','Sinal Filtrado - Retangular','Sinal Filtrado - Triangular','Sinal Filtrado - Trapezoidal', 'Sinal sem ruido');

%wvtool(triang(winSize2));


