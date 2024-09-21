function LP = getMaxLP(sbox,input_size)
 total_combinations = 2^input_size;  % Total number of possible input combinations for 5-bit input
 max_count = 0;

    % Iterate through all possible input and output combinations
    for input_mask = 0:total_combinations-1
        output_mask = sbox(input_mask+1);
        count = sum(bitget(bitand(input_mask, output_mask), 1:5));  % Count the number of matching bits
        if count > max_count
            max_count = count;
        end
    end

    LP = 1/2 * (2 * max_count - 5);

end