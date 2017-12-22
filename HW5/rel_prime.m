function [ p ] = rel_prime( M, N )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
clc;

n = 0;
for i=1:N
    r_1 = randi([1 M],1,1);
    r_2 = randi([1 M],1,1);
    d = gcd(r_1, r_2);
    if d == 1
        n = n+1;
    end
end
p = n/N;
%0.6080
