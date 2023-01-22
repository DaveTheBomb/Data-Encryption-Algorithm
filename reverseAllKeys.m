function x = reverseAllKeys(keys)
    [n,m] = size(keys);
    newKeys = '';
    for i = 1:n
        newKeys(n-i+1,:) = keys(i,:);
    end
    x =  newKeys;
end