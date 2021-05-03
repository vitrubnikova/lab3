program lr3_4;

var a,b,x,y:real;
  n:integer;

function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=2.6;
b:=36.4;
x:=7;

if abs(a*x-0.5*b)<=1e-14 then
  begin y:=0.079*power(tg(6.16*a/b), 0.8) - power(x, a/6.96/b-x) + power(ctg(a*b), 2.5);
  n:=2 end
else if abs(a*x-0.5*b)>0 then
  begin y:=0.288*th(-3.01*x/b) * power(5.646, a*b/5.28/x) - sh(0.07*a/b-x);
  n:=3 end
else
  begin y:=0.162*arsh(6.03*a-b/power(x, 3)) * power(arcctg(a+b+2.37*x), 0.7) + log10(5.53*sqr(a)-x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.