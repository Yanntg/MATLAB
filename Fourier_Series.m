% declaraçao de variaveis
t = -10:0.01:10;  % vetor tempo
A = 1;  % amplitude
a0 = A/4;  % relaçao entre T e tau
n = 100000;  %  numero de termos somados 
w = 1;
f = a0;


for i = 1:1:n
    f = f + ((2*A)/(i*pi))*sin(i*pi/4)*cos(i*w*t); %serie de fourier
end


 figure
plot(t,f);
grid;
hold on;
xlabel("Tempo(seg)");
ylabel("Amplitude");
title("Onda quadrada");
