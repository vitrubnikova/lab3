program lr3_5;

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
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=4.1;
b:=2;
x:=3.9;

if abs(a+x-4*b)<=1e-14 then
  begin y:=0.074*power(arccos(a/b/2.09/x), 1.2) + cos(power(a, 4)/3.81/b+x) * power(arch(a-b), 1.4);
  n:=2 end
else if abs(a+x-4*b)>0 then
  begin y:=abs(a/5.09/b-x) - power(log10(2.82*power(a, 4)*b+x), 2.8) * arth(b/4.4/power(a, 3));
  n:=3 end
else
  begin y:=0.328*power(9.013, x/1.45/b) + power(arsh(x+1.34*b), 3) * 0.055*cosech(1.59*sqr(a)-b-x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.