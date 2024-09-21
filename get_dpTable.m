function differential_probability = get_dpTable(sbox,input_size,output_size)

differential_probability = zeros(2^input_size, 2^output_size);

% Iterate through all possible input differences
for input_diff = 0:(2^input_size - 1)
    for input_x = 0:(2^input_size - 1)
        % Calculate the second input for the difference
        input_y = bitxor(input_x, input_diff);
        
        % Compute the corresponding outputs using the AES S-Box
        output_x = sbox(input_x+1);
        output_y = sbox(input_y+1);
        
        % Calculate the output difference
        output_diff = bitxor(output_x, output_y);
        
        % Increment the count in the differential probability table
        differential_probability(input_diff + 1, output_diff + 1) = ...
            differential_probability(input_diff + 1, output_diff + 1) + 1;
    end
end


% Normalize the differential probability table
total_inputs = 2^input_size;

%differential for first value is equal to input size
differential_probability(1) = 0; 

end