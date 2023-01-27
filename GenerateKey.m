function [binSubkeys, hexSubkeys] = GenerateKey(key)

    % initializing subkeys
    binSubkeys = [];
    hexSubkeys = [];
    
    binkey = HexadecimalToBinary(key);
    
    % Dropping Parity bits
    ParityDropping = ParityDrop();
    result = Permute(binkey, ParityDropping, 56);
    
    strcmp(BinaryToHexadecimal(result), 'C3C033A33F0CFA')
    
    
    [LeftKey, RightKey] = Split(result);
    
    
    % SplitingKey
    shiftTable = ShiftTable();

    % For 16 Rounds generate key
    for i = 1:16
        combinedKey = '';        
        LeftKey = ShiftLeft(LeftKey, shiftTable(i));
        RightKey = ShiftLeft(RightKey, shiftTable(i));
        combinedKey = strcat(LeftKey, RightKey); 
        RoundKey = Permute(combinedKey, KeyCompressionTable, 48);
        binSubkeys = [binSubkeys; RoundKey];
        hexSubkeys = [hexSubkeys; BinaryToHexadecimal(RoundKey)];
        
    end
end