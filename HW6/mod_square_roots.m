function [ m ] = mod_square_roots( c, p, q )

c_1(1) = fast_exponentiation(p, c, (p+1)/4);
c_1(2) = mod((p*q) - c_1(1), p);
c_2(1) = fast_exponentiation(q, c, (q+1)/4);
c_2(2) = mod((p*q) - c_2(1), q);

m(1) = mod(crt([p q], [c_1(1), c_2(1)]), p*q);
m(2) = mod(crt([p q], [c_1(2), c_2(1)]), p*q);
m(3) = mod(crt([p q], [c_1(1), c_2(2)]), p*q);
m(4) = mod(crt([p q], [c_1(2), c_2(2)]), p*q);

end

