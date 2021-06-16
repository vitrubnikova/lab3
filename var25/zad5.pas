program lr3_5;

var a, b, x, y: real;
n: integer;

function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;

begin
a:=7.2;
b:=6.1;
x:=27.7;

if abs(b+3*a-x)<=1e-14 then
  begin y:=power(arcctg(sqr(b)/2.35/a), 1.5) + cos(sqr(a)-1.9*b-x) - power(arctan(a-4.12*b/power(x, 3)), 2.7);
  n:=2 end
else if abs(b+3*a-x)>0 then
  begin y:=logN(6, x) + 0.39*power(13.516, 0.31*a*b/x) * arcsin(a/-0.76/power(x, 3));
  n:=3 end
else
  begin y:=0.462*power(x, b/-1.11/x) + 0.071*sin(a+b+1.08*x) * exp(a+b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.