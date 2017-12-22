clear all;
clc;

load('substitutioncipherexample.mat');
%challengesubstitutioncipher;
[key, plaintext] = decrypt_substitution(ciphertext);
key
plaintext

% key = ukcesahpdyrizblxwqfnmotvgj