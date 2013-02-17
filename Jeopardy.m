function [Danger,Distro] = Jeopardy(Distro,j)
Moves = move();
Danger = ReTestDist(Distro);
if sum(Danger) == 0
Danger = ReTestDist(Distro);
else
A = Distro(j,:);
c = 1; % prey
d = 1; % pred
count = 1;
CC2 = inf;
BB2 = 0;
if j == 1
    loop = 2:numel(Danger);
else
    loop = [(1:(j-1)),((j+1):numel(Danger))];
end
for k = loop
    if Danger(k) == 1
        BB1 = Distro(k,:);
        CC1 = ((A(1,1) - BB1(1,1))^2 + (A(1,2) - BB1(1,2))^2)^.5;
        if CC1 < CC2
           CC2 = CC1;
           BB2 = BB1;
           Sk = k;
        end
    end 
end

if (A(1,1) == BB2(1,1)) && (A(1,2) == BB2(1,2))
   if A(3) < BB2(3)
        BB2(3) = A(3) + BB2(3);
        if j == 1
            Distro(Sk,:) = BB2;
            Distro = Distro([2:numel(Danger)],:);
        else
            Distro(Sk,:) = BB2;
            Distro = [Distro([1:(j-1)],:);Distro([(j+1):numel(Danger)],:)];
        end
   else
       BB2(3) = A(3) + BB2(3);
       if j == 1
           Distro(j,:) = BB2;
           Distro = Distro([2:numel(Danger)],:);
           
       else
           Distro(j,:) = BB2;
           Distro = [Distro([1:(Sk-1)],:);Distro([(Sk+1):numel(Danger)],:)];
       end
   end
   Danger = ReTestDist(Distro);
end
%[a,b] = EdgeTest(Distro,j);
% if A(3) < BB2(3)
%     Test = zeros(1,a);
%     for k = 1:a
%         A(1,1) = A(1,1) + d*Moves(1,k,b);
%         A(1,2) = A(1,2) + d*Moves(2,k,b);
%         Test(k) = ((A(1,1)-(BB2(1,1)))^2 + (A(1,2)-BB2(1,2))^2)^.5;
%         if k == 1
%             C = A;
%             RR = Test(1);
%         else
%             if Test(k) > RR
%                 C = A;
%                 RR = Test(k);
%             else
%                 0;
%             end
%         end
%     end
%     Distro(j,:) = C;
%     Danger = ReTestDist(Distro);
% elseif A(3) > BB2(3)
%    Test = zeros(1,a);
    a = 9;
    b = 1;
    for k = 1:a
        A(1,1) = A(1,1) + c*Moves(1,k,b);
        A(1,2) = A(1,2) + c*Moves(2,k,b);
        Test(k) = ((A(1,1)-(BB2(1,1)))^2 + (A(1,2)-BB2(1,2))^2)^.5;
        if k == 1
            C = A;
            RR = Test(1);
        else
%             if Test(k) == 0
%                 C = A;
%                 break
%             else
            if Test(k) < RR
                C = A;
                RR = Test(k);
            else
                0;
            end
            %end
        end
    end
    Distro(j,:) = C;
    Danger = ReTestDist(Distro);   
%end

if (A(1,1) == BB2(1,1)) && (A(1,2) == BB2(1,2))
   if A(3) < BB2(3)
        BB2(3) = A(3) + BB2(3);
        if j == 1
            Distro(Sk,:) = BB2;
            Distro = Distro([2:numel(Danger)],:);
        else
            Distro(Sk,:) = BB2;
            Distro = [Distro([1:(j-1)],:);Distro([(j+1):numel(Danger)],:)];
        end
   else
       BB2(3) = A(3) + BB2(3);
       if j == 1
           Distro(j,:) = BB2;
           Distro = Distro([2:numel(Danger)],:);
           
       else
           Distro(j,:) = BB2;
           Distro = [Distro([1:(Sk-1)],:);Distro([(Sk+1):numel(Danger)],:)];
       end
   end
   Danger = ReTestDist(Distro);
end
end