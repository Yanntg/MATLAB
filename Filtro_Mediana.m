t = linspace(-pi,pi,1000);  % vetor tempo
rng("default");
x = sin(t) + 0.3*rand(size(t)) - 0.15;  % gerando func seno com noise atraves do rand()
winSize = 100;  % eh o tamanho da janela, ou seja numero de dados usados nas medias, aka o den da media 

w = rectwin(winSize)/winSize;  % tipo da janela usada(triang, rectwin)
a = 1;

y = medfilt1(x, winSize);  % funçao do matlab que faz a filtragem do sinal

plot(t,x);  % plotando grafico do sinal com noise
hold on;

plot(t,y);  % plotando grafico do sinal filtrado
plot(t,sin(t));  % para comparação
legend('Sinal Ruidoso','Sinal Filtrado', 'Sinal sem ruido');



