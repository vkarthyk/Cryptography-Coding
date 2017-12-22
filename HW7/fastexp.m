function [y]=fastexp(x,k,n)

% y=fastexp(x,k,n) computes y=x^k mod n

bin=[];
while k~=0
    bin = [bin mod(k, 2)];
    k = floor(k/2);
end
len=length(bin);
z=mod(x,n);
for i=2:len
    z=[z mod(z(i-1)^2,n)];
end
y=1;
for i=1:len
    if ~(bin(i)==0)
        y=mod(y*z(i),n);
    end
end