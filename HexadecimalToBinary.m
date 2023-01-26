function x = HexadecimalToBinary(HexadecimalValue)
    n = length(HexadecimalValue);
    BinaryValue = '';
    
    for i = 1:n
       singHexadecimalValue = HexadecimalValue(i);
       switch singHexadecimalValue
           case '0'
               BinaryValue = strcat(BinaryValue, '0000');
           case '1'
               BinaryValue = strcat(BinaryValue, '0001');
           case '2'
               BinaryValue = strcat(BinaryValue, '0010');
           case '3'
               BinaryValue = strcat(BinaryValue, '0011');
           case '4'
               BinaryValue = strcat(BinaryValue, '0100');    
           case '5'
               BinaryValue = strcat(BinaryValue, '0101');
           case '6'
               BinaryValue = strcat(BinaryValue, '0110');
           case '7'
               BinaryValue = strcat(BinaryValue, '0111');
           case '8'
               BinaryValue = strcat(BinaryValue, '1000');
           case '9'
               BinaryValue = strcat(BinaryValue, '1001');
           case 'A'
               BinaryValue = strcat(BinaryValue, '1010');             
           case 'B'
               BinaryValue = strcat(BinaryValue, '1011');
           case 'C'
               BinaryValue = strcat(BinaryValue, '1100');
           case 'D'
               BinaryValue = strcat(BinaryValue, '1101');
           case 'E'
               BinaryValue = strcat(BinaryValue, '1110');
           case 'F'
               BinaryValue = strcat(BinaryValue, '1111');                  
           otherwise
               disp('The hexadecimal number is invalid!');                   
       end
              
    end
    x = BinaryValue;
end