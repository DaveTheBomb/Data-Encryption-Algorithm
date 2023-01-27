function result = Encryption(hexPlaintext, Keys)

    [BinaryKeys, HexadecimalKeys] = GenerateKey(Keys);
    HexadecimalKeys

   % BinaryKeys = [];     
   % [rows, column] = size(HexadecimalKeys);
   % for u = 1:rows
   %     BinaryKeys = [BinaryKeys; HexadecimalToBinary(HexadecimalKeys(u,:))];        
   % end    

    binPlaintext = HexadecimalToBinary(hexPlaintext);
    IP = InitialPermutation();
    binPlaintext = Permute(binPlaintext, IP, 64);
    [LeftPlaintext, RightPlaintext] = Split(binPlaintext);
    XOROutput = '';
    for i = 1:16
        DBox = DBoxTable();
        rightExpanded = Permute(RightPlaintext, DBox, 48);
        XOROutput = XOR(BinaryKeys(i,:), rightExpanded);
        SBoxingOutput = ApplySBox(XOROutput);  
        SPT = StraightPermutationTable();
        SBoxingOutputPermuted = Permute(SBoxingOutput, SPT, 32);
        LeftPlaintext = XOR(SBoxingOutputPermuted, LeftPlaintext);
        % Swapping
        if i ~= 16
            temp = LeftPlaintext;
            LeftPlaintext = RightPlaintext;
            RightPlaintext = temp;
        end
        Qt = strcat("Round ", num2str(i), "  ", BinaryToHexadecimal(LeftPlaintext), " ", BinaryToHexadecimal(RightPlaintext ), "  " ,HexadecimalKeys(i,:)) 
    end    
    combinedCipher = strcat(LeftPlaintext, RightPlaintext);
    FP = FinalPermutationTable();
    cipherText = Permute(combinedCipher, FP, 64);
    result = BinaryToHexadecimal(cipherText);
end