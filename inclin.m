function [ alpha ] = inclin(lambda)
% this function computes the inclination(in deg) of a body at a given
% latitude(lambda,in deg)
% it makes use of the formular tanI = 2tanL, where I is inclination, and L
% is Lambda

alpha = (180/pi)*(atan(2*tan(lambda*(pi/180))));

end

