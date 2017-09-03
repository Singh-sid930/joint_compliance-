
disp('if you want to calculate compliance by force and deflection vectors input 1 or if you want to calculate complicance by jacobian matrix and k matrix enter 2')
x=input('input your choice')
if x==1
    disp ('input hand deflection matrix by entering x y and z components of deflection and x,y,z components of the force being put on the hand');
    d=rand(3,1);
    f=zeros(3,1);
    clearvars
    for nn=1:3
        d(nn,1)=input('input vallue');
    end 
    for mm=1:3
        f(mm,1)=input('input vallue');
    end
    disp(f)
    disp(d)
    compliance=d/f;
    disp('the compliance for the given forces and angular deflections is');
    disp(compliance)
    break 
elseif x==2
    disp ('input jacobian matrix and k matrix of sizes 3X3');
    j=rand(3,3);
    k=zeros(3,3);
    for nn=1:3
        for jj=1:3
            j(nn,jj)=input('input vallue of jacobian matrix one row at a time');
        end
        disp('change of row');
    end 
    for mm=1:3
        for kk=1:3
            k(mm,kk)=input('input vallue of k matrix one row at a time');
        end 
        disp('line chage');
    end 
    disp(j)
    disp(k)
    compliance=j*(inv(k))*(transpose(j));
    disp('the compliance for the given forces and angular deflections is');
    disp(compliance)
end
