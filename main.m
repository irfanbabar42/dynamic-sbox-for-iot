% Define the AES S-Box as a 16x16 matrix (hexadecimal values)
clear all;

% Define the S-Box size
input_size = 5;
output_size = 5;

sbox = generate_Sbox(input_size,output_size);

% Initialize an array to store the differential probability
differential_probability = get_dpTable(sbox,input_size,output_size);
linear_appx_table = get_latTable(sbox, input_size, output_size);
max_LP = getMaxLP(sbox,input_size);
non_linearity = getNonLinearity(sbox,input_size);
avgNL = mean(non_linearity);

sbox2 = [sbox(1:16); sbox(17:end)];
hex_sbox = dec2hex(sbox);