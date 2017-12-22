function [ ans ] = fast_exponentiation( n, a, k )

c = 0;
bin_arr = [];
l = k;
while l ~= 0
    bin_arr = [bin_arr mod(l, 2)];
    l = floor(l/2);
end

bin_arr;

m = mod(a, n);
arr = [m];
for i=bin_arr(2:end)
    m = mod(m^2, n);
    arr = [arr m];
end

p = 1;
c = 1;
for j=bin_arr
    if j == 1
        p = p * arr(c);
    end
    c = c+1;
end

ans =  mod(p,n);

end

