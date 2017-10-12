x = [1.3; 2.4; 3.4; 4.6; 5.3; 6.6; 6.4; 8.0; 8.9; 9.2];
y = [5.7; 7.3; 10.5; 11.8; 13.9; 16.3; 15.3; 17.9; 20.8; 20.9]; % y = m*1

m = length(y);
theta = zeros(1,2); % 1*2

X = [ones(m,1) y]  % X = m*2

# Compute Cost
[J J_gradient] = CostFunction(X,theta)

options = optimset('GradObj','on','MaxIter','1500')
[optTheta, functionVal, exitFlag] = fminunc(@CostFunction,theta',options);

