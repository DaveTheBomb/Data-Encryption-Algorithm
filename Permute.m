function x = Permute(query, arrangement, totalNumberOfBits)
    permutationOutput = '';
    for i = 1:totalNumberOfBits
        permutationOutput = strcat(permutationOutput, query(arrangement(i)));
    end
    x = permutationOutput;
end