function [leftResult, rightResult] = PerformAround(hexPlaintext, index, subkey)

    subkey = HexadecimalToBinary(subkey);
    binPlaintext = HexadecimalToBinary(hexPlaintext);
    IP = InitialPermutation();
    binPlaintext = Permute(binPlaintext, IP, 64);
    [LeftPlaintext, RightPlaintext] = Split(binPlaintext);
    XOROutput = '';
                    
    i = index;
    DBox = DBoxTable();
    rightExpanded = Permute(RightPlaintext, DBox, 48);                   
    XOROutput = XOR(subkey, rightExpanded);
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
    leftResult = BinaryToHexadecimal(LeftPlaintext);
    rightResult = BinaryToHexadecimal(RightPlaintext);
end
    

