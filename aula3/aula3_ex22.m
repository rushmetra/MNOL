format long;

x1 = [1,-2]
[x,favl,exitflag,output] = fsolve(@ex22,x1);

function [ F ] = ex22(x)
 F(1) = -x(2) + 2*x(1)^2 - 4;
 F(2) = -x(2)- x(2)^3 - x(1) - 8;
end