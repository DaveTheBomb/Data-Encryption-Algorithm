% Name and surname: Siphamandla Malaza
% Student number: 1892513
% Course: Dataand Informatin management

function Test
    
    %% Question 1   
    index = 3;
    key = '1FFEFE1F0EFEFE0E';
    binkey = HexadecimalToBinary(key);
    IthSubKey = GenerateIthKey(binkey, index);
        
%%     Question 2    
    
    disp('Question 2');
    
    key1 = '1F1F1F1F0E0E0E0E';
    key2 = '1FFE1FFE0EFE0EFE';
    key3 = '1FFEFE1F0EFEFE0E';
    
    [bk1, hk1] = GenerateKey(key1);
    [bk2, hk2] = GenerateKey(key2);
    [bk3, hk3] = GenerateKey(key3);
    
    keyNumber = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16];    
    h = table(keyNumber, hk1, hk2, hk3);
    disp(h);
    
    disp('Question 2');
    Key1UniqueKeys = ReportKeys(hk1)     
    Key2UniqueKeys = ReportKeys(hk2)
    Key3UniqueKeys = ReportKeys(hk3)

     
%%  Question 3

     disp('Question 3');
     Plaintext = '123456ABCD132536';    
     [binaryKeys, hexadecimalKeys] = GenerateKey(key3);
     for k = 1:16
        index = k;
        subKey1Hex = hexadecimalKeys(index, :);

        [leftOutput, rightOutput] = PerformAround(Plaintext, index, subKey1Hex);    
        disp(strcat("Q3 Round ", num2str(index), "  ", leftOutput, " ", rightOutput, "  "));     
     end
     
     
    
    %% Question 4
    key = '123456ABCD132536';
    key1 = '0000000000000000';
    key2 = 'AAAAAAAAAAAAAAAA';
    key3 = 'ABABABABABABABAB';
    key4 = 'ABCDEABCDEABCDEA';
    key5 = 'D1B497103EEBAC6D';
    key6 = 'ADC614834DEBAE88';
    key7 = 'ABCCAD2DE56EA7AC';
    key8 = '1376ABD435234AEC';
    key9 = 'DDADDF1934AAD512';
    key10 = '134AD0D0DEAB9839';

    Plaintext = 'AABB09182736CCDD';
    Plaintext1 = 'AAB456ABCD132536';
    Plaintext2 = '12ADE362001234ED';    
    Plaintext3 = '012ADE4973019384';
    Plaintext4 = 'BEBDCC120135798B';    
    Plaintext5 = 'EB355EE21CDD0016';
    Plaintext6 = '00423DAACEB56110'; 
    Plaintext7 = 'CD132201357B3556';    
    Plaintext8 = '201357EB3AAB4E3E';
    Plaintext9 = 'A01234EDABE32536';
    Plaintext10 = 'BEB56ABCD7EE336';
    
    cipher = Encryption(Plaintext, key);  
    key 
    Plaintext
    
    % reverse function not properly implemented.
    % newreversedBinaryKeys = reverseAllKeys(binaryKeys);
    newreversedHexadecimalKeys = reverseAllKeys(hexadecimalKeys);
    
    %decipher = Decryption(cipher, newreversedHexadecimalKeys);
    
end
