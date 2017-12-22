function [ x ] = crt( n, b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%n = [5 7 9 11 13];
%b = [1 2 3 4 5];

k = length(n);
m = n(1,1);
c = b(1,1);
for i=2:k
    [gcd, X, Y] = extendedEuclideanAlgo(m, n(1,i));
    x = c*Y*n(1,i) + b(1,i)*X*m;
    m = n(1,i)*m;
    c = x;
end

x = mod(x, m);
