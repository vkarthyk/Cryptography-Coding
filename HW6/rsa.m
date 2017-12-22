n = 8439833;
e = 5711029;
c = 62472;

prime_factors = [];
for i=2:n/2
    if mod(n, i) == 0
        prime_factors = [prime_factors i];
    end
end

phi_n = (prime_factors(1) - 1) * (prime_factors(2) - 1);

d = invmodn(e, phi_n);

m = fast_exponentiation(n, c, d)

