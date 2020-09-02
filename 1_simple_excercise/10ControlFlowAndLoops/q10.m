disp("For loop");
for i=1:10,
  disp(i);
endfor

v = ones(10,1);
len = length(v);
for i = 1:len,
  v(i) = 2*i;
endfor
v

disp("While loop");
i = 1;
while i<=len,
  v(i) = 3*i;
  i++;
endwhile
v

disp("do-while loop");
i=1;
do
  v(i) = 4*i;
  i++;
until(i>=10)
v

disp("If- else");
num = input("Enetr a number: ");

if num>0,
  disp("Positive Number");
elseif num<0,
  disp("Negative Number");
else,
  disp("Zero")
endif

disp("Break after 5 iteration");
for i=1:10,
  disp(i);
  if i==5,
    break
  endif
endfor
