function x = XOR(a, b)
   
    n = length(a);
    out = ''; 
    for i = 1:n
       if a(i) == b(i)
          out = strcat(out, '0');
       else
           out = strcat(out, '1');
       end
    end
    x = out;
end