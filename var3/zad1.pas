program lr3_1;

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

begin
a:=7.3;
b:=80.1;
x:=9.1;

if abs(a+8*x-b)<=1e-14 then
  begin y:=power(sech(a/x), 0.5) - arcctg(6.87*a*b-x) * 0.133*power(ctg(-0.39*a*b/x), 2.7);
  n:=2 end
else if abs(a+8*x-b)>0 then
  begin y:=log10(5.44*a-b+sqr(x)) + power(cosec(a), 1.4) + cth(4.03*a/x);
  n:=3 end
else
  begin y:=0.89*power(6.406, a/-0.21/b/x) + 0.066*power(b, 5.18*a/b/x) - sh(a/-0.15/b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.