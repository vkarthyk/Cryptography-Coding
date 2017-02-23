function [ key ] = swap( key, start, last )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
i = round((last-start)*rand(1,1) + start);
j = round((last-start)*rand(1,1) + start);

while i==j
    j = round((last-start)*rand(1,1) + start);
end

temp = key(i);
key(i) = key(j);
key(j) = temp;

end

