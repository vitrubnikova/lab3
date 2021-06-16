program lr3_1;

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
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;

begin
a:=2.8;
b:=2.5;
x:=0.3;

if abs(b-a+x)<=1e-14 then
  begin y:=power(b, a+4.33*x) - arcth(b-1.49*x) + power(arcsin(power(x, 3)/b), 2.2);
  n:=2 end
else if abs(b-a+x)>0 then
  begin y:=arccos(a-b+0.18*x) * power(ln(a*b), 0.1) * 0.189*cosec(x);
  n:=1 end
else
  begin y:=sin(5.87*power(b, 3)) - 0.005*power(arsh(7.17*a-power(b, 4)-x), 2.4) * power(x, -1.9*a/b-x);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.