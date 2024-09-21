function NL = getNonLinearity(sbox,input_size)
    NL = zeros(1,2^input_size);
    for i=0:2^input_size-1
        inp = dec2bin(i,input_size);
        out = dec2bin(sbox(i+1),input_size);
        hamming_distance = sum(inp ~= out);
    
        NL(i+1) = hamming_distance; 
    end
end