%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test sketch on a random matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [errs,bounds] = random()

  randn('seed',0)
  nCols = 100;   
  nRows = 10000; 
  A = rand(nRows,nCols);  %# A matrix of random values between 0 and 1

  % test different shetch size
  ll = [20,50,100,200,500,1000,2000,5000];
  n = length(ll);
  bounds = zeros(n,1);
  errs = zeros(n,1);

  for i = 1:n
    bounds(i,1) = 2*norm(A,'fro')^2/ll(i);
    B = createSketch(ll(i),A);
    errs(i,1) = norm(A'*A - B'*B);
  end

end

