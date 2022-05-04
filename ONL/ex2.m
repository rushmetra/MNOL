%m´etodo quasi-Newton, iniciando o processo com x(1) = (0, 0) e


% usando o m´etodo quasi-Newton e a f´ormula de atualiza¸c˜ao da Hessiana BFGS 
%[x,fval,exitflag,output]=fminunc(@QN1,[0,0])


% usando a f´ormula de atualiza¸c˜ao DFP (da matriz Hessiana)
% op=optimset('hessupdate','dfp')
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

% usando a op¸c˜ao da representa¸c˜ao gr´afica dos valores da fun¸c˜ao objetivo, ao longo das itera¸c˜oes
%(optimset(’PlotFcns’,@optimplotfval))

% op=optimset('PlotFcn',@optimplotfval);
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

%  usando tolX = 10−2 e a f´ormula de atualiza¸c˜ao BFGS
% op=optimset('tolx',1e-2);
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

% usando tolX = 10−2 e a f´ormula de atualiza¸c˜ao DFP
% op=optimset('tolx',1e-2,'hessupdate','dfp');
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

% usando T olF un = 10−12 e a f´ormula de atualiza¸c˜ao BFGS
% op=optimset('TolFun',1e-12);
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

% usando no m´aximo 2 itera¸c˜oes, a f´ormula de atualiza¸c˜ao BFGS e visualizando os resultados obtidos
% em cada itera¸c˜ao
% op=optimset('MaxIter',2,'Display','iter');
% [x,fval,exitflag,output]=fminunc(@QN1,[0,0],op)

function [f] = QN1(x)
f=-(20*x(1)+26*x(2)+4*x(1)*x(2)-4*x(1)^2-3*x(2)^2);
end