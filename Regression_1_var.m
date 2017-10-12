x = [1.3 2.4 3.4 4.6 5.3 6.6 6.4 8.0 8.9 9.2];
y = [5.7 7.3 10.5 11.8 13.9 16.3 15.3 17.9 20.8 20.9];

%plot(x,y)

if length(x) != length(y)
   "Error: Both Vectors should be of same length"
endif

% Sumation of (X_i^2)
Square_X_i = 0;
X_i =0;
XY_i = 0;
Y_i = 0;

for i = 1:length(x)
    Square_X_i = Square_X_i + x(i)^2;
    X_i = X_i  + x(i);
    XY_i = XY_i + x(i)*y(i);
    Y_i = Y_i + y(i);
    
endfor

A = [Square_X_i X_i; X_i length(x)]
B = [XY_i ; Y_i]

X = inv(A)*B

for i = 1:10
    Y(i) = X(1)*i + X(2);
endfor
i = 1:10;
plot(x,y,'*')
hold on
plot(i,Y,'r')



