program lr3_3;

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
a:=2.8;
b:=0.4;
x:=48.3;

if abs(6.9*a/b-x)<=1e-14 then
  begin y:=power(sin(sqr(b)/a), 2.9) - 0.056*power(10.999, a/4.76/x) - power(x, 0.34*b-a);
  n:=2 end
else if abs(6.9*a/b-x)>0 then
  begin y:=0.284*arsh(-1.03*a/b-power(x, 3)) - sqr(arth(3.03*b/x)) * power(b, -0.89*a+b*x);
  n:=3 end
else
  begin y:=sh(a+power(b, 4)) + exp(a-b/-0.45/x) - cos(7.94*a-sqr(b)/x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.