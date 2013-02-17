function Danger = ReTestDist(Distro)
Danger = zeros(1,numel(Distro(:,1)));
for j = 1:numel(Distro(:,1))
    A = Distro(j,:);
    I = TestDist(j,Distro,A);
    Danger(j) = I;
end