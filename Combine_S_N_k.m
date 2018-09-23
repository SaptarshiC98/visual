function [R] = Combine_S_N_k(share,k,a,A,M,D,S)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[r,c,~]=size(share);
R=zeros(r,c);
for i=1:r
    for l=1:c
        s=0;
        for j=1:k
            p=1;
            J=1:k;
            J(j)=[];
            for m=J
                p=M(p+1,D(a(m)+1,S(a(m)+1,a(j)+1))+1);
            end
            s=A(s+1,M(share(i,l,a(j))+1,p+1)+1);
        end
        R(i,l)=s;
    end
end
R=uint8(R);
end

