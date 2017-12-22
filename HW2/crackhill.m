function [plaintext]=crackhill(snippetplaintext,ciphertext,blocklength)
% Decrypts a hill cipher given a plaintext snippet,
%   ciphertext and the block length 
y=ciphertext;
hill_cipher=y-97;
x=snippetplaintext;
plain=block(x,1,blocklength)-97;
for i=1:length(plain)-blocklength+1;
    plaineve=plain(:,i:i+blocklength-1);
    ciphertext=block(y,1,blocklength)-97;
    ciphereve=ciphertext(:,i:i+blocklength-1);
    d=det(plaineve);
    d=round(d)
    if mod(d,2) ~= 0
        recipd=powermod(d,-1,26);
        plaineveinverse=recipd*d*inv(plaineve);
        plaineveinverse=mod(plaineveinverse,26);
        eveKey=mod(ciphereve*plaineveinverse,26);
        eveKey=round(eveKey)
        det_key=det(eveKey);
        det_key=round(det_key)
        recipd_key=powermod(det_key,-1,26);
        key_inv=recipd_key*det_key*inv(eveKey);
        key_inv=round(key_inv);
        key_inv=mod(key_inv,26);
        plaintext_decrypt=mod(key_inv*ciphertext,26);
        plaintext = block(char(plaintext_decrypt+97),-1,blocklength);
        return
    end
end


end

