function x = ReportKeys(key)
    n = length(key);
    uniqueKeys = [key(1,:)];
    
    for i = 1:n
        found = false; 
        [r, c] = size(uniqueKeys);      
        for j = 1:r
            if key(i,:) == uniqueKeys(j,:)
                found = true;
            end
        end
        if found ==  false
            [r, c] = size(uniqueKeys);            
            uniqueKeys(r+1,:) = key(i,:);
        end
    end
    x = uniqueKeys;
end