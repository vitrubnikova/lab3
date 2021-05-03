program lr3_2;

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
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=19.4;
b:=3.3;
x:=2.3;

if abs(7*x+b-a)<=1e-14 then
  begin y:=abs(-2.24*power(x, 3)/b) * 0.174*ch(x/a) * power(cos(x/a), 0.4);
  n:=2 end
else if abs(7*x+b-a)>0 then
  begin y:=cth(2.96*a/power(b, 3)+x) - power(sh(2.33*a/power(b, 4)*x), 2.7) + ln(a+b-1.41*x);
  n:=3 end
else
  begin y:=arccos(b/a) - power(sin(a+x), 3) * log10(a/1.18/x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.