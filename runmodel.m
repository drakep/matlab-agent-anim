clear all
clc
N = 100;
P = .001;
A = initgrid(N,P);
[Dist,Distro] = calcdist(N,A);
Danger = zeros(1,numel(Distro(:,1)));
[Danger,Distro] = rules(Distro,Danger);
imagesc(A)
Distro
sum(Distro(:,3,:))
for JK = 1:5000
    [Danger,Distro] = rules(Distro,Danger);
     Ani = Animate(Distro);
     imagesc(Ani)
     pause(.00001)
    if numel(Distro(:,1)) == 1
        break
    end
    JK
end
Ani = Animate(Distro);
imagesc(Ani)
Distro