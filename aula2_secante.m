fplot(@volume,[0,4]); % plot(@function,intervalo no eixo dos xx
grid;
function f = volume(x)
f = ((pi.*x.^2.*(3-x))./3)-0.5;
end