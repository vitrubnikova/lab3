program lr3_2;

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
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;

begin
a:=4.7;
b:=4.3;
x:=1;

if abs(9-a-b)<=1e-14 then
  begin y:=power(cos(1.13*a-b-x), 0.2) + 0.68*cth(power(x, 3)) * 0.091*power(arch(b+5.03*sqr(x)), 0.5);
  n:=2 end
else if abs(9-a-b)>0 then
  begin y:=th(x) - power(3.347, a/1.39/b) - power(a, b);
  n:=3 end
else
  begin y:=0.348*power(b, 1.47*x/a) - 0.12*power(sh(x/sqr(b)), 0.9) * 0.099*tan(-1.18*a-b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.