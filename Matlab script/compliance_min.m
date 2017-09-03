%This is a Program to minimize the joint compliance in any 3 link robotic
%arm and find the optimum degrees of angle or of each joint for minimum
%deflection at the end effector 

%%%%%%%%%%%%%%%%%%% Initialization of variables %%%%%%%%%%%%%%%%%%%%%

theta1=[0;180;180];%initializing angular deflextion matrix with zeros
k1=input('enter the diagonal elements of the stiffness matrix');
k=diag(k1);


%%%%%%%%%%%%%%%%%%% minimizing function by functtion calling %%%%%%%%%%%%%%%%%%%%%

%theta2 = fminsearch(@(theta)theta3(theta,k),theta1);
theta2 = fmincon(@(theta)theta3(theta,k),theta1);

%%%%%%%%%%%%%% displaying results %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp ('the joint angles for minimum deflection are');
disp (theta2);
disp('the minimum value of the compliance norm function at the minimum deflection angles is'); 
disp (theta3(theta2,k));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% end %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


