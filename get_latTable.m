function L = get_latTable(S, n, m)
    L = zeros(2^n, 2^m);
    for alpha = 0:(2^n - 1)
        for beta = 0:(2^m - 1)
            L(alpha + 1, beta + 1) = bias_integer(S, alpha, beta, n);
        end
    end
end