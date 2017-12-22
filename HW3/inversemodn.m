function [ x ] = inversemodn( a, n )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[gcd, X, Y] = extendedEuclideanAlgo(a, n);

if gcd ~=1
   disp('No inverse');
else
   x = mod(X, n);
end

