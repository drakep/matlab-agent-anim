function I = TestDist(j,Distro,A)
if j == 1
    loop = 2:numel(Distro(:,1));
else
    loop = [(1:(j-1)),((j+1):numel(Distro(:,1)))];
end
Test = zeros(1,numel(loop));
I = 0;
    for k = loop
        A1 = A(1,1);
        A2 = A(1,2);
        B1 = Distro(k,1);
        B2 = Distro(k,2);
        Test(k) = ((A1-B1)^2 + (A2-B2)^2)^.5;
    end
    for i = loop
        if Test(i) < 100
                I = 1;
        end
    end
