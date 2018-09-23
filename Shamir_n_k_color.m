function [share] = Shamir_n_k_color(n,k,im,A,M)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[r,c,~]=size(im);
share=zeros(r,c,3,n);
for i=1:3
    share(:,:,i,:)=Shamir_n_k_grey(n,k,im(:,:,i),A,M);
end

end

