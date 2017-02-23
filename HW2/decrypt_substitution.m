function [ key, plaintext ] = decrypt_substitution( ciphertext )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[f, relf]=zfrequency(ciphertext);
[B, index]=sort(relf, 'descend');
indexes = ['e'; 't'; 'a'; 'o'; 'i'; 'n'; 's'; 'h'; 'r'; 'd'; 'l'; 'c'; 'u'; 'm';...
    'w'; 'f'; 'g'; 'y'; 'p'; 'b'; 'v'; 'k'; 'j'; 'x'; 'q'; 'z'];

order = char(index+96)';
key = '*';

for j=1:25
    key = strcat(key, '*');
end

key;
c = 1;

for ind = index'
    key(ind) = indexes(c);
    c = c+1;
end
key;

key = search(ciphertext, key, 5, 5000);

plaintext = substitute(key, ciphertext);

% key = ukcesahpdyrizblxwqfnmotvgj
end

