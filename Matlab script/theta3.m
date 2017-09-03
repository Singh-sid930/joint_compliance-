function f = theta3(theta,k)
%%%%%%%%%%%%%%%%%%% Initialization of variables %%%%%%%%%%%%%%%%%%%%%

f=0;
force=ones(3,1); %fixed force matrix with magnitude one of each force component
link=ones(3,1); %initializing length of the each link as 1
jacobian=zeros(3,1);
jacobian(1,1)=link(1,1)*sin(theta(1,1))+link(2,1)*sin(theta(2,1)+theta(1,1))+link(3,1)*sin(theta(1,1)+theta(2,1)+theta(3,1));
jacobian(1,2)=(-(link(2,1)*sin(theta(2,1)+theta(1,1))+link(3,1)*sin(theta(1,1)+theta(2,1)+theta(3,1))));
jacobian(1,3)=(-(link(3,1)*sin(theta(1,1)+theta(2,1)+theta(3,1))));
jacobian(2,1)=link(1,1)*cos(theta(1,1))+link(2,1)*cos(theta(2,1)+theta(1,1))+link(3,1)*cos(theta(1,1)+theta(2,1)+theta(3,1));
jacobian(2,2)=(-(link(2,1)*cos(theta(2,1)+theta(1,1))+link(3,1)*cos(theta(1,1)+theta(2,1)+theta(3,1))));
jacobian(2,3)=(-(link(3,1)*cos(theta(1,1)+theta(2,1)+theta(3,1))));
jacobian(3,1)=1;
jacobian(3,2)=1;
jacobian(3,3)=1;

%%%%%%%%%%%%%%%%%%%creating the function for minimization %%%%%%%%%%%%%%%%%%%%%

compliance =jacobian*(inv(k))*(transpose(jacobian)); %creating the jacobian matrix for the given link robot
f=f+norm(compliance*force); %finding the euclidean norm formulation for error minimization



