function Ani = Animate(Distro)
b = 1;
% for j = 1:numel(Distro(:,1))
% A = Distro(j,:);
% if (((A(1,1) - 1) < 1) || ((A(1,2) - 1) < 1))
% end
% if (((A(1,1) - 1) < 1) || ((A(1,2) - 1) < 1))
% Distro(j,1) = Distro(j,1) + 1;
% Distro(j,2) = Distro(j,2) + 1;
% end
% end
Distro = abs(Distro) + 1;
for j = 1:numel(Distro(:,1))
    A(Distro(j,1),Distro(j,2)) = 1;
end
Ani = sparse(A);