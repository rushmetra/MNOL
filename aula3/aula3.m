format long;
% Usar 5 casas decimais 
% clear apaga os valores de todas as variaveis
% clc limpa a consola

%
% Exercicio feito a mão com as contas realizadas aqui
%

x1 = 6;
fx1 = exerc16(x1);
fx1_dir = exerc16_dir(x1);

% 1º iteração
x2 = x1 - fx1./fx1_dir;
fx2 = exerc16(x2);
fx2_dir = exerc16_dir(x2);
cp1x2 = abs(fx2);
%como cp1x2 não é menor que 0.001 ent não se faz o cp2x2
%cp2fx2 = abs(x2-x1)./abs(x2)

% 2º iteração
x3 = x2 - fx2./fx2_dir;
fx3 = exerc16(x3);
fx3_dir = exerc16_dir(x3);
cp1x3 = abs(fx3);
cp2x3 = abs(x3-x2)./abs(x3);
%como cp2x3 é maior que 0.001 então é necessário fazer mais uma iteração

% 3º iteração
x4 = x3 - fx3./fx3_dir;
fx4 = exerc16(x4);
fx4_dir = exerc16_dir(x4);
cp1x4 = abs(fx4);
cp2x4 = abs(x4-x3)./abs(x4);

%x* = 5.31144
%fx* = -2.638*10^-11

%
% Exercicio feito no Matlab
%

% Pode-se usar help fplot para ter a documentação do fplot (um genero de man
% do linux

%
% Para desenhar a função
%
% fplot(@(x)exerc16(x),[0,10]);
% grid;

% help fsolve
%
% Para descobrir o 0 (através do algoritmo de newton, apesar de não o ser)
%
% Mostrar o que aconteceu em todas as iterações
% op1 = optimset('Display','iter');
% [x,favl,exitflag,output] = fsolve(@exerc16, 6, op1);

%
% op2 = optimset('tolfun',1e-3)
% [x,favl,exitflag,output] = fsolve(@exerc16, 6, op2)

function f = exerc16(x)
f = 7*(2-0.9^(x))-10;
end

function f_dir = exerc16_dir(x)
f_dir = -7*0.9^(x).*log(0.9);
end