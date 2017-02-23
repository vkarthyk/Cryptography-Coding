function y = corr(v);
% This function calculates the dot product of the vector v with the
%  26 shifts of the alphabet frequency vector

[vx,vy]=size(v);

% If v is the a column vector instead of a row vector, we transpose
% to make everything ok
if (vx==5) & (vy==1), 
   v = v';   
end

if (~((vx==5) | (vx==1))) | (~((vy==5) | (vy==1))) ,
   error('The vector v needs to be 26x1 or 1x26');
end


fvec=[.05 .20 .25 .35 .15];


%Loop over all shifts
y=zeros(5,1);
for j=0:4,
   % fsh=[fvec(1+j:26) fvec(1:1+j-1)]; % my way
   fsh=[fvec(5-j+1:5) fvec(1:5-j)]; % Dr. W's way
   y(j+1)=v*fsh';
end
