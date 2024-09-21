function sbox = generate_Sbox(inp_bit,out_bit) 
    outsize = 2^out_bit;
    sbox = zeros(2^out_bit);
    N = 1000;

    x(1) = 0.41;
    r = 4;
    
    for i =1:N
        x(1) = r*x(1)*(1-x(1));
    end

    for i =1:N
        x(i+1) = r*x(i)*(1-x(i));
    end
    bits = mod(uint8(x*256),outsize);
    sbox = unique(bits,'stable');
    %plot(ones(1,N+1)',x,'.k')
end