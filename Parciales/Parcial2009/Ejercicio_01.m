clear
clc

A=[2,0,0,0;-1,4,0,0;3,-2,-1,0;1,-2,6,3]

B=[6,5,4,2]'

X = ForwardSubstitution(A, B)
X_M= A\B