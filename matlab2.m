% Gaussian Quadratute Algorithm
 % Find the integral of y=sin(x) from 0 to pi.
 
 function integral = Gaussian_quadrature()
 a = input('Enter lower limit, a:  ');
 b = input('Enter upper limit, b:  ');
 n = input('Enter the order, n:  ');
 
 if (n < 2 | n > 8)
   fprintf('This code works only for order from 2 to 8\n');
 else
   a0 = 0.5*(b+a);
   a1 = 0.5*(b-a);
 if (n == 2)
   c(1) = 1.0;
   c(2) = c(1);
   x_table(1) = -0.577350269;
   x_table(2) = -x_table(1);
 elseif (n == 3)
   c(1) = 0.555555556;
   c(2) = 0.888888889;
   c(3) = c(1);
   x_table(1) = -0.774596669;
   x_table(2) = 0.0;
   x_table(3) = -x_table(1);
 elseif (n == 4)
   c(1) = 0.347854845;
   c(2) = 0.652145155;
   c(3) = c(2);
   c(4) = c(1);
   x_table(1) = -0.861136312;
   x_table(2) = -0.339981044;
   x_table(3) = -x_table(2);
   x_table(4) = -x_table(1);
 elseif (n == 5)
   c(1) = 0.236926885;
   c(2) = 0.478628670;
   c(3) = 0.568888889;
   c(4) = c(2);
   c(5) = c(1);
   x_table(1) = -0.906179846;
   x_table(2) = -0.538469310;
   x_table(3) = 0.0;
   x_table(4) = -x_table(2);
   x_table(5) = -x_table(1);
 elseif (n == 6)
   c(1) = 0.171324492;
   c(2) = 0.360761573;
   c(3) = 0.467913935;
   c(4) = c(3);
   c(5) = c(2);
   c(6) = c(1);
   x_table(1) = -0.932469514;
   x_table(2) = -0.661209386;
   x_table(3) = -0.238619186;
   x_table(4) = -x_table(3);
   x_table(5) = -x_table(2);
   x_table(6) = -x_table(1);
 elseif (n == 7)
   c(1) = 0.129484966;
   c(2) = 0.279705391;
   c(3) = 0.381830050;
   c(4) = 0.417959184;
   c(5) = c(3);
   c(6) = c(2);
   c(7) = c(1);
   x_table(1) = -0.949107912;
   x_table(2) = -0.741531186;
   x_table(3) = -0.405845151;
   x_table(4) = 0.0;
   x_table(5) = -x_table(3);
   x_table(6) = -x_table(2);
   x_table(7) = -x_table(1);
 elseif (n == 8)
   c(1) = 0.101228536;
   c(2) = 0.222381034;
   c(3) = 0.313706645;
   c(4) = 0.362683783;
   c(5) = c(4);
   c(6) = c(3);
   c(7) = c(2);
   c(8) = c(1);
 x_table(1) = -0.960289856;
 x_table(2) = -0.796666477;
 x_table(3) = -0.525532409;
 x_table(4) = -0.183434642;
 x_table(5) = -x_table(4);
 x_table(6) = -x_table(3);
 x_table(7) = -x_table(2);
 x_table(8) = -x_table(1);
end

 integral = 0.0;
 for i = 1:1:n
 x(i) = a0 + a1*x_table(i);
 f(i) = funkeval(x(i));
 integral = integral + c(i)*f(i);
 end
 integral = integral*a1;
 fprintf('The integral is: %10.8f\n\n',integral);
end


 function f = funkeval(x)
 f= x*sin(x);
