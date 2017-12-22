function y=fastexp(a,k,n)

l=1;
z=1;
m=1;
i=1;
q=floor(k/2);
r=rem(k,2);
b=[];
b(i)=r;
while 2<=q
    k=q;
    i=i+1;
    q=floor(k/2);
    r=rem(k,2);
    b(i)=r;
end
i=i+1;
b(i)=q
b(1)

for i=1:length(b)
    if(b(i)==1)
        z=power(2,i-1)
        m=m*(power(a,z))   
    end
end
    
y=mod(m,n);


end