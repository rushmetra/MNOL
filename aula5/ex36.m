x = [10 12 18 27 30 34];
y = [20 18 15 9 12 10];

xx = [10 18 27 34];
yy = [20 15 9 10];

f_linha_0 = (20-18)/(10-12);
f_linha_n = (12-10)/(30-34);

s_completa=spline(xx, [f_linha_0 yy f_linha_n])
s_completa.coefs