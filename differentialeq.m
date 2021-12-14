A =[[1 6];[4 -5];[6 -8]]   %a  create matrix A
B = [[5,9,-3];[6,-1,7]]    %a  create matrix B
C=A.^5                     %b  A^5
D = B/5                    %c  divide matriix B by 5
X = transpose(B);DA = A/X  %d
DA(1,:) =-99               %e  First row of DA to -99
f =A-7                     %f  Subtracting 7 from matrix A
g=transpose(DA)-5          %g  Subtracting 5 from matrix (DA)'
h=A.*C                     %h  element by element multiplication
i=B./D                     %i  element by element division




%syms x
%f = @(x) x^2 + sqrt(x+9);
%prompt ='Enter the value of x:';
%x=input(prompt)
%if x>=-3
    f(x)
%else
    'Error!!!! x value is less than -3'
%end

M = [[1.1,-0.5,-0.1];[-0.5,1,-0.5];[-0.1,-0.5,0.85]]
N = [0 ;3 ;0]
l = inv(M)
det(M)
adjoint(M)
l*N