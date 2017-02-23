function [ vigenere_key ] = decrypt_vigenere( ciphertext )
%function that breaks the Vigenere cipher. 
%The input is the Vigenere ciphertext, 
%and the output is the Vigenere key.

temp=[];
for i=1:20
    temp=[temp; coinc(ciphertext,i)];
end

key_length=find(temp==max(temp));

vigenere_key=zeros(1, key_length);

for i=1:key_length
    [f, relf]=zfrequency(choose(ciphertext,key_length,i));
    cr=corr(relf);
    [val,pos]=max(cr);
    vigenere_key(i)=pos-1;
end

plaintext=vigenere(ciphertext,-vigenere_key)

end

