%% punto4
f = @(x) exp(x)-x*sin(x);
[l,raiz]=Localizacionraices(f,-2,1);
tabla=array2table(l,'VariableNames',{'k','ak','bk','pk','f(ak)','f(bk)','f(pk)'})
disp(['raiz(c): ',num2str(raiz),' f(c)=',num2str(f(raiz))])
%% punto 5
f= @(x) log(x)-x*cos(x)-2;
[l,raiz]=Localizacionraices(f,1,4);
tabla=array2table(l,'VariableNames',{'k','ak','bk','pk','f(ak)','f(bk)','f(pk)'})
disp(['c: ',num2str(raiz),' f(c)=',num2str(f(raiz))])
x = 0:pi/100:2*pi;
y=log(x)-x.*cos(x);
plot(x,y)
hold on 
a1=l(1,2);
a8=l(3,2);
a18=l(18,2);
b1=l(1,3);
b8=l(3,3);
b18=l(18,3);


xline([a1 a8 a18],'-g',{'a1','a8','a18'})
xline([b1 b8 b18],'-r',{'b1','b8','b18'})



