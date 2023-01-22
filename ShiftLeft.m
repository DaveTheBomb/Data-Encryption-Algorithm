function x = ShiftLeft(key, numberOfShifts)
    s = '';
    for i = 1:numberOfShifts
       for j = 2:1:28
          s = strcat(s, key(j)); 
       end
       
       s = strcat(s, key(1));
       key = s;
       s = '';
    end
    x = key;
end