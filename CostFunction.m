function [ J , J_gradient ] = CostFunction(X,y,theta)

  m = 10;
  h_theta =  X * theta';
  J = sum((h_theta - y).^2)/(2*m);
  J_gradient = zeros(2,1);
  J_gradient(1) = sum((h_theta - y))/(m);
  J_gradient(2) = sum((h_theta - y)'*X(:,2))/(m);

end

