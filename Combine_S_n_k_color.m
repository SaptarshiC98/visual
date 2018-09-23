function [R] = Combine_S_n_k_color( share,k,a,A,M,D,S )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[r,c,~,~]=size(share);
R=zeros(r,c,3);
for i=1:3
    R(:,:,i)=Combine_S_N_k(share(:,:,i,:),k,a,A,M,D,S);
end
R=uint8(R);
end

