format long
fplot(@volume,[0,4]); % plot(@function,intervalo no eixo dos xx
grid;

fx1=volume(0.25);
fx2=volume(0.5);
x1 = 0.25;
x2 = 0.5;
x3 = x2-((x2-x1).*fx2)./(fx2-fx1);


function f = volume(x)
f = ((pi.*x.^2.*(3-x))./3)-0.5;
end
