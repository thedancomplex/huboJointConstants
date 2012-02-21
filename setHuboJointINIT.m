% Init for setHuboJoint()
% must be run first
% assummes that robot is not moving and is at all zero pos 

huboJointConst          % load the joint constants


deg = zeros(jointMax,5);	% [ deg(0), deg(1), deg(2), deg(3) ]
degSet = zeros(jointMax,1);	% Desired pos
t = zeros(jointMax,1);		% time in seconds
save huboMotorPos.mat deg degSet t
