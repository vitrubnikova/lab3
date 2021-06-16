program lr3_4;

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
a:=0.5;
b:=3.1;
x:=5.5;

if abs(4.8*a+b-x)<=1e-14 then
  begin y:=power(tan(2.7*a/b-x), 2.5) + arsh(0.37*a+b) + abs(b-sqr(x));
  n:=2 end
else if abs(4.8*a+b-x)>0 then
  begin y:=exp(a-b/1.55/x) - power(arctan(b-a), 2.1) + 0.35*cth(power(a, 4)-b);
  n:=3 end
else
  begin y:=power(b, -1.87*b-x) - power(cosech(5.74*power(a, 4)/b+x), 1.7) - arch(a+b+2.16*power(x, 4));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.