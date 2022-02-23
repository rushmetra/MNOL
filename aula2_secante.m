format long
fplot(@volume,[0,4]); % plot(@function,intervalo no eixo dos xx
grid;

fx1 = volume(0.25);
fx2 = volume(0.5);
fx3 = volume(0.4186);
fx4 = volume(0.4305);
x1 = 0.25;
x2 = 0.5;
x3 = x2-((x2-x1).*fx2)./(fx2-fx1);

%2 iter
x4 = x3-((x3-x2).*fx3)./(fx3-fx2);
cp2 = (x4-x3)./x4;
%3 iter
x5 = x4-((x4-x3).*fx4)./(fx4-fx3);
fx5 = volume(0.4311)
function f = volume(x)
f = ((pi.*x.^2.*(3-x))./3)-0.5;
end
