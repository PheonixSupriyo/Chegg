clear all
k=4;
TOL=10^-4;
syms x;
f=2*x^3+x^2-13*x+6;
F = @(x) 2*x^3+x^2-13*x+6;
fp=diff(f);
p(1)=2.5;    %Given starting point 
for i=1:3
    p(i+1)=p(i)-subs(f,p(i))/subs(fp,p(i));
end
q(1)=-1;
for i=1:k
    p(i+3)=p(i+2)-subs(f,p(i+2))/subs(fp,p(i+2));
    q(i+1)=p(i)-((p(i+1)-p(i))^2/(p(i+2)-2*p(i+1)+p(i)));
    if abs(q(i+1)-q(i))<TOL
        break
    end
end

for i = 1:5
    fprintf('for  k = %d,  ',i-1)
    fprintf('f(k) = %f\n',F(q(i)))
end
    
