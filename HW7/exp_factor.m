function [ d ] = exp_factor( a, k, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s = 0;
mu = [];

while mod(k, 2) == 0
    k = k/2;
    s = s + 1;
end
b = k;
s;

mu(1) = fast_exponentiation(a, b, n)


for i=2:s+1
    mu(i) = mod(mu(i-1)^2, n)
    if mu(i) == 1
        if mu(i-1) == n-1
            return;
        else
            d(1) = gcd(mu(i-1)-1, n);
            d(2) = n/d(1);
            return;
        end
    end
end

    
end

