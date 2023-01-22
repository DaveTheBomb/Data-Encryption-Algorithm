function x = ApplySBox(x)
    output = '';
    for i = 1:8 
       row  = 2*double(x((i-1)*6 + 1) - double('0')) + double(x((i-1)*6 + 6) - double('0'));
       col = 8*double(x((i-1)*6 + 2) -  double('0')) + 4*double(x((i-1)*6 + 3) - double('0')) + 2*double(x((i-1)*6 + 4) - double('0')) + double(x((i-1)*6 + 5) - double('0'));
       SBox = SBoxTable();
       Si = SBox(i,:);
       val = Si(16*(row) + (col+1));
       
       output = strcat(output, char((val/8) + double('0')));
       val = mod(val, 8);
       output = strcat(output, char((val/4) + double('0')));
       val = mod(val, 4);
       output = strcat(output, char((val/2) + double('0')));
       val = mod(val, 2);
       output = strcat(output, char(val + double('0')));       
    end
    x = output;
end