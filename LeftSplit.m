function x = LeftSplit(text)
    LPT = '';
    for i = 1:(length(text)/2)
        LPT = strcat(LPT, text(i));
    end
    x = LPT;
end