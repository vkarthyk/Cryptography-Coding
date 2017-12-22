function [ gcd, X, Y ] = extendedEuclideanAlgo( a, b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x=[]; y=[]; q=[]; arr=[];
x(1)=1; x(2)=0;
y(1)=0; y(2)=1;
arr(1)=a; arr(2)=b;
q(2)=floor(arr(1)/arr(2));
j=2;

while arr(j)~=0
    x(j+1) = x(j-1) + q(j)*x(j);
    y(j+1) = y(j-1) + q(j)*y(j);
    arr(j+1) = (power(-1, j) * x(j+1) * a) + (power(-1, j+1) * y(j+1) * b);
    q(j+1) = floor(arr(j)/arr(j+1));
    j=j+1;
end
x
y
q
arr
gcd = arr(j-1);
X = power(-1, j) * x(j-1);
Y = power(-1, j+1) * y(j-1);

