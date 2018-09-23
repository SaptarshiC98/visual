function [share] = Shamir_n_k_grey(n,k,im,A,M)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[r,c]=size(im);
share=zeros(r,c,n);
for i=1:r
    for j=1:c
        a=[im(i,j),randsample(0:255,k-1)];
        b=zeros(1,n);
        for s= 1:n
        share(i,j,s)=polyeval(a,s,M,A);
        end
    end
end
end

