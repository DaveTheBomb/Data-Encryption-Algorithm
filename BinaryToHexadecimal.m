function x = BinaryToHexadecimal(BinaryValue)
    n = length(BinaryValue);
    FourBits = '';
    HexadecimalValue = ''; 
    for i = 0:(n/4) -1
        % copying by group of 4 bits
        FourBits = '';
        for j = 1:4
           FourBits = strcat(FourBits, BinaryValue(4*i + j));
        end
 
        switch FourBits
           case '0000'
               HexadecimalValue = strcat(HexadecimalValue, '0');
           case '0001'
               HexadecimalValue = strcat(HexadecimalValue, '1');
           case '0010'
               HexadecimalValue = strcat(HexadecimalValue, '2');
           case '0011'
               HexadecimalValue = strcat(HexadecimalValue, '3');
           case '0100'
               HexadecimalValue = strcat(HexadecimalValue, '4');    
           case '0101'
               HexadecimalValue = strcat(HexadecimalValue, '5');
           case '0110'
               HexadecimalValue = strcat(HexadecimalValue, '6');
           case '0111'
               HexadecimalValue = strcat(HexadecimalValue, '7');
           case '1000'
               HexadecimalValue = strcat(HexadecimalValue, '8');
           case '1001'
               HexadecimalValue = strcat(HexadecimalValue, '9');
           case '1010'
               HexadecimalValue = strcat(HexadecimalValue, 'A');             
           case '1011'
               HexadecimalValue = strcat(HexadecimalValue, 'B');
           case '1100'
               HexadecimalValue = strcat(HexadecimalValue, 'C');
           case '1101'
               HexadecimalValue = strcat(HexadecimalValue, 'D');
           case '1110'
               HexadecimalValue = strcat(HexadecimalValue, 'E');
           case '1111'
               HexadecimalValue = strcat(HexadecimalValue, 'F');                  
           otherwise
               disp('The hexadecimal number is invalid!');                   
       end
         
        
      
          x = HexadecimalValue;
      
        
    end
end