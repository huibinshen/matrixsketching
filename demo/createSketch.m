function B = createSketch(l, A)
	[n, m] = size(A);
	B = zeros(l, m);
	
	for i = 1 : n
		B_hasZeroRows = false;
		indZeroRow = -1;
		
		for j = 1 : l
			if (sum(B(j, :)) == 0)
				B_hasZeroRows = true;
				indZeroRow = j;
				break;
			end
		end
		
		if (B_hasZeroRows)
			B(indZeroRow, :) = A(i, :);
		else
			[U, S, V] = svd(B);
			diagS = diag(S);
			
			if (l <= m)
				delta = diagS(l / 2) ^ 2;
			else
				delta = diagS(ceil(m / 2)) ^ 2;
			end
			
			I_l = eye(l);
			
			if (l > m)
				I_delta = I_l(:, 1 : m);
			elseif (l < m)
				d = m - l;
				I_delta = [I_l, zeros(l, d)];
			end
			
			I_delta = I_delta .* delta;
			
			S_check = sqrt(max((S .^ 2) - I_delta, 0));
			B = S_check * V;
		end
	end
end
