function [Danger,Distro] = rules(Distro,Danger)
%Danger = zeros(1,numel(Distro(:,1)));%9 ways to move, choose one
for j = 1:numel(Distro(:,1))
if Danger(j) == 1
    [~,Distro] = Jeopardy(Distro,j,Danger);
    Danger = ReTestDist(Distro);
else
val = rand();
if val < (1/9)
    A = Distro(j,:);
    A(1,1) = A(1,1) - 1;
    A(1,2) = A(1,2) + 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (1/9)) && (val < (2/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1) + 1;
    A(1,2) = A(1,2);
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (2/9)) && (val < (3/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1) + 1;
    A(1,2) = A(1,2) + 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (3/9)) && (val < (4/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1);
    A(1,2) = A(1,2) + 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (4/9)) && (val < (5/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1) - 1;
    A(1,2) = A(1,2);
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (5/9)) && (val < (6/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1) - 1;
    A(1,2) = A(1,2) - 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (6/9)) && (val < (7/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1);
    A(1,2) = A(1,2) - 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if ((val >= (7/9)) && (val < (8/9)))
    A = Distro(j,:);
    A(1,1) = A(1,1) + 1;
    A(1,2) = A(1,2) - 1;
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
if val >= (8/9)
    A = Distro(j,:);
    I = TestDist(j,Distro,A);
    Danger(j) = I;
    Distro(j,:) = A;
end
end
end