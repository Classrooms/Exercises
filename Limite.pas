program limite;
var
  m,d,ls,ld,c,s,e,h,fx,fh,a,b:real;
begin
  e:=0.00001;
  h:=0.1;
  write('inserisci la tendenza--> ');readln(c);
  write('inserisci coeff. num. ');readln(a);
  write('inserisci coeff. den. ');readln(b);
  if c=b then
  begin
  s:=c-1;
  fx:=((s*s)-a)/(s-b);
  s:=s+h;
  fh:=((s*s)-a)/(s-b);
  while abs(fh-fx)<e do
  begin
    fx:=fh;
    s:=s+h;
    fh:=((s*s)-a)/(s-b);
  end;
  ls:=fh;
  d:=c+1;
  fx:=((d*d)-a)/(d-b);
  d:=d-h;
  fh:=((d*d)-a)/(d-b);
  while abs(fh-fx)<e do
  begin
    fx:=fh;
    d:=d-h;
    fh:=((d*d)-a)/(d-b);
  end;
  ld:=fh;
  m:=(ls+ld)/2;
  write('il limite--->  ');write(m);
end
else
 begin
   m:=((c*c)-a)/(c-b);
   write(m);
 end;
end.
