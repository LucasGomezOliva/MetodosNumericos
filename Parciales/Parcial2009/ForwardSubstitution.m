function [ X ] = ForwardSubstitution( A, B )
N=length(A);
X=zeros(N,1);
X(1)=B(1)/A(1,1);
for k = 2:N
    X(k)=(B(k)-A(k,1:1:k-1)*X(1:1:k-1))/A(k,k);
end

