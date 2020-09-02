grade = 0;
perc = 0;
disp("Enter marks of 5 subjects (out of 100)");
for i=1:5,
  disp(i); disp("=>");
  num = input("");
  perc = perc + num;
endfor
 perc = perc/5;
 disp("Percenatge obtained:"); perc
 
 disp("Grade obtained:");
 
 if perc >=90,
   grade = 'A';
 elseif perc >=80,
   grade = 'B';
 elseif perc >=70,
   grade = 'C';
 elseif perc >=60,
   grade = 'D';
 else,
   grade = 'F';
 endif

 grade