program lr3_3;

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
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=1.8;
b:=0.1;
x:=8.2;

if abs(4.5*a-x+b)<=1e-14 then
  begin y:=0.014*abs(power(a, 3)/-0.4/b-x) - 0.18*tg(b/2.43/sqr(a)) - power(b, 2.28*a/b/x);
  n:=2 end
else if abs(4.5*a-x+b)>0 then
  begin y:=ctg(power(a, 4)+b/2.32/x) * ln(b+0.66*a)/ln(2) - 0.6*cosec(b+5.14*x);
  n:=1 end
else
  begin y:=0.096*sh(power(a, 4)-5.24*b-x) * power(arctan(a-3.92*power(b, 3)+x), 2.3) + arch(x/a);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.