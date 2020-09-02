num1 = 0;
num2 = 1;
disp(num1); disp(num2);
for i = 1:10,
  numn = num1+num2;
  disp(numn);
  num1 = num2;
  num2 = numn; 
endfor
