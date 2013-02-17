function A = initgrid(N,density)
% N is the grid size, density is the probability something is populated.
% Lower is less dense, higher is denser.
A = zeros(N,N);
B = rand(N,N);
count = 0;
for j = 1:N;
    for k = 1:N;
        if B(j,k) < density
            A(j,k) = rand();
            count = count+1;
        end
    end
end
count
A = sparse(A);