function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    h =  X * theta;
    theta_0 = theta(1) - (alpha/m) * (sum((h - y)));
    theta_1 = theta(2) - (alpha/m) * (sum((h - y)' * X(:,2)));
    theta_2 = theta(3) - (alpha/m) * (sum((h - y)' * X(:,3)));
    
    theta(1) = theta_0;
    theta(2) = theta_1;
    theta(3) = theta_2;


    % ============================================================

    % Save the cost J in every iteration

    J_history(iter) = computeCost(X, y, theta);

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
