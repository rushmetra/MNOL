x = [10 12 18 27 30 34];
y = [20 18 15 9 12 10];

xx = [10 18 27 34];
yy = [20 15 9 10];

f_linha_0 = (20-18)/(10-12);
f_linha_n = (12-10)/(30-34);

s_completa=spline(xx, [f_linha_0 yy f_linha_n])
s_completa.coefs
% -0.0070(x-10)^3 + 0.1027(x-10)^2   -1.0000(x-10) + 20.0000
% 0.0076(x-18)^3  - 0.0648(x-18)^2  - 0.6966(x-18) + 15.0000
% -0.0165(x-27)^3 + 0.1395(x-27)^2   - 0.0240(x-27) + 9.0000

s_29=spline(xx, [f_linha_0 yy f_linha_n], 29)

novo_x=10:0.1:34;
novo_y=spline(xx, [f_linha_0 yy f_linha_n],novo_x);
plot(x,y, 'o')