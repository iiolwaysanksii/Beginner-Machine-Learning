avg = 0;
num = 0;
disp("Enter 10 numbers:");
for i=1:10,
  disp(i); disp("=>");
  num = input("");
  avg = avg + num;
endfor
 avg = avg/10