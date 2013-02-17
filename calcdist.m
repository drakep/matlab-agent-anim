function [Dist,Distro] = calcdist(N,A)
count = 1;
for j = 1:N
    for k = 1:N
        if A(j,k) ~= 0
            Distro(count,1) = j;
            Distro(count,2) = k;
            Distro(count,3) = A(j,k);
            count = count + 1;
        end
    end
end
numb = numel(Distro(:,1));
for j = 1:numb
    for k = 1:numb
        A1 = Distro(j,1); A2 = Distro(j,2); B1 = Distro(k,1); B2 = Distro(k,2);
        Dist(j,k) = ((A1-B1)^2 + (A2-B2)^2)^.5;
    end
end

%[I,J] = ind2sub(3,find(A))